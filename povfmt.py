"""12/2025 MTS, OUJ"""
#!/usr/bin/env python3
# POV-Ray formatter (simple)
# Supports:
# - Indent based on braces
# - Single-line directives (#declare, #include, #local)
# - Join "#declare foo =" with next line
# - Compact "pigment { color Red }"
# - Format vectors <1,2,3> → <1, 2, 3>
# - Special handling for:
#     texture { ... }
#     object { ... }
#     text { ttf ... }
#     camera { ... }
#     union { ... }
#     difference { ... }
#     merge { ... }
#     isosurface { ... }
#     light_source { ... }
# - Indent width = 2

import re
import sys

INDENT = 2

SINGLE_LINE_DIRECTIVES = {
    "#declare", "#local", "#include", "#version"
}

VECTOR_RE = re.compile(r"<\s*([^>]+?)\s*>")

def format_vector(text):
    def repl(m):
        inside = m.group(1)
        parts = [p.strip() for p in inside.split(",")]
        return "<" + ", ".join(parts) + ">"
    return VECTOR_RE.sub(repl, text)

def is_single_line_directive(line):
    stripped = line.strip()
    for d in SINGLE_LINE_DIRECTIVES:
        if stripped.startswith(d):
            return True
    return False

def compact_single_line_block(line):
    # pigment { color Red }
    m = re.match(r"(\w+)\s*\{\s*(.*?)\s*\}", line)
    if m:
        key = m.group(1)
        body = m.group(2)
        return f"{key} {{ {body} }}"
    return line

def join_declare(lines):
    out = []
    skip = False
    for i in range(len(lines)):
        if skip:
            skip = False
            continue
        line = lines[i].rstrip()
        if line.strip().startswith("#declare") and line.strip().endswith("="):
            if i + 1 < len(lines):
                next_line = lines[i + 1].strip()
                combined = line + " " + next_line
                out.append(combined)
                skip = True
            else:
                out.append(line)
        else:
            out.append(line)
    return out

# ------------------------------------------------------------
# CAMERA BLOCK
# ------------------------------------------------------------
def format_camera_block(lines, start_index):
    out = []
    i = start_index
    out.append(lines[i].strip())  # camera {
    i += 1
    while i < len(lines):
        line = lines[i].strip()
        if line.startswith("}"):
            out.append("}")
            return out, i
        if any(line.startswith(k) for k in ["location", "look_at", "right", "up", "sky", "angle"]):
            line = format_vector(line)
            out.append("  " + line)
        else:
            out.append("  " + line)
        i += 1
    return out, i

# ------------------------------------------------------------
# TEXT BLOCK
# ------------------------------------------------------------
def format_text_block(lines, start_index):
    out = []
    i = start_index
    out.append(lines[i].strip())  # text {
    i += 1
    first = True
    while i < len(lines):
        line = lines[i].strip()
        if line.startswith("}"):
            out.append("}")
            return out, i
        if first and line.startswith("ttf"):
            line = re.sub(r"\s*,\s*", ", ", line)
            out.append("  " + line)
            first = False
        else:
            out.append("  " + line)
        i += 1
    return out, i

# ------------------------------------------------------------
# OBJECT BLOCK
# ------------------------------------------------------------
def format_object_block(lines, start_index):
    out = []
    i = start_index
    header = lines[i].strip()
    i += 1
    body = []
    while i < len(lines):
        line = lines[i].strip()
        if line.startswith("}"):
            if len(body) == 1:
                return [f"{header} {{ {body[0]} }}"], i
            out.append(header + " {")
            for b in body:
                out.append("  " + b)
            out.append("}")
            return out, i
        body.append(line)
        i += 1
    return out, i

# ------------------------------------------------------------
# UNION / DIFFERENCE / MERGE BLOCKS
# ------------------------------------------------------------
def format_unionlike_block(lines, start_index, keyword):
    out = []
    i = start_index
    header = lines[i].strip()  # union {
    i += 1
    body = []
    while i < len(lines):
        line = lines[i].strip()
        if line.startswith("}"):
            if len(body) == 1:
                return [f"{keyword} {{ {body[0]} }}"], i
            out.append(f"{keyword} {{")
            for b in body:
                out.append("  " + b)
            out.append("}")
            return out, i
        body.append(line)
        i += 1
    return out, i

# ------------------------------------------------------------
# ISOSURFACE BLOCK
# ------------------------------------------------------------
def format_isosurface_block(lines, start_index):
    out = []
    i = start_index
    out.append(lines[i].strip())  # isosurface {
    i += 1
    while i < len(lines):
        line = lines[i].strip()
        if line.startswith("}"):
            out.append("}")
            return out, i
        if any(line.startswith(k) for k in ["function", "contained_by", "threshold", "accuracy", "max_gradient"]):
            line = format_vector(line)
            out.append("  " + line)
        else:
            out.append("  " + line)
        i += 1
    return out, i

# ------------------------------------------------------------
# LIGHT_SOURCE BLOCK
# ------------------------------------------------------------
def format_light_block(lines, start_index):
    out = []
    i = start_index
    out.append(lines[i].strip())  # light_source {
    i += 1
    while i < len(lines):
        line = lines[i].strip()
        if line.startswith("}"):
            out.append("}")
            return out, i
        line = format_vector(line)
        out.append("  " + line)
        i += 1
    return out, i


# ------------------------------------------------------------
# MAIN FORMATTER
# ------------------------------------------------------------
def format_pov(text):
    lines = text.splitlines()
    lines = join_declare(lines)

    out = []
    indent = 0
    i = 0

    while i < len(lines):
        raw = lines[i]
        line = raw.rstrip()

        # Empty line
        if line.strip() == "":
            out.append("")
            i += 1
            continue

        # Comments
        if line.strip().startswith("//") or line.strip().startswith("/*"):
            out.append(" " * (indent * INDENT) + line.strip())
            i += 1
            continue

        # Single-line directive
        if is_single_line_directive(line):
            out.append(" " * (indent * INDENT) + line.strip())
            i += 1
            continue

        # Vector formatting
        line = format_vector(line)

        # Compact single-line blocks
        line = compact_single_line_block(line)

        # camera block
        if line.strip().startswith("camera {"):
            block, end = format_camera_block(lines, i)
            for b in block:
                out.append(" " * (indent * INDENT) + b)
            i = end + 1
            continue

        # text block
        if line.strip().startswith("text {"):
            block, end = format_text_block(lines, i)
            for b in block:
                out.append(" " * (indent * INDENT) + b)
            i = end + 1
            continue

        # object block
        if line.strip().startswith("object {"):
            block, end = format_object_block(lines, i)
            for b in block:
                out.append(" " * (indent * INDENT) + b)
            i = end + 1
            continue

        # union block
        if line.strip().startswith("union {"):
            block, end = format_unionlike_block(lines, i, "union")
            for b in block:
                out.append(" " * (indent * INDENT) + b)
            i = end + 1
            continue

        # difference block
        if line.strip().startswith("difference {"):
            block, end = format_unionlike_block(lines, i, "difference")
            for b in block:
                out.append(" " * (indent * INDENT) + b)
            i = end + 1
            continue

        # merge block
        if line.strip().startswith("merge {"):
            block, end = format_unionlike_block(lines, i, "merge")
            for b in block:
                out.append(" " * (indent * INDENT) + b)
            i = end + 1
            continue

        # isosurface block
        if line.strip().startswith("isosurface {"):
            block, end = format_isosurface_block(lines, i)
            for b in block:
                out.append(" " * (indent * INDENT) + b)
            i = end + 1
            continue

        # light_source block
        if line.strip().startswith("light_source {"):
            block, end = format_light_block(lines, i)
            for b in block:
                out.append(" " * (indent * INDENT) + b)
            i = end + 1
            continue

        # Count braces
        open_braces = line.count("{")
        close_braces = line.count("}")

        # If line starts with '}', reduce indent first
        if line.lstrip().startswith("}"):
            indent = max(indent - 1, 0)

        # Output line
        out.append(" " * (indent * INDENT) + line.strip())

        # Adjust indent
        indent += open_braces
        indent -= close_braces
        if indent < 0:
            indent = 0

        i += 1

    return "\n".join(out) + "\n"


# ------------------------------------------------------------
# MAIN ENTRY
# ------------------------------------------------------------
def main():
    if len(sys.argv) == 1:
        src = sys.stdin.read()
    else:
        with open(sys.argv[1], "r", encoding="utf-8") as f:
            src = f.read()
    print(format_pov(src), end="")


if __name__ == "__main__":
    main()