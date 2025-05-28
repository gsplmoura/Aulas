# Replace 

# ![](any text)

# with

# ---
# ![](any text)
# ---

# Read the entire file as a single string
text <- readChar("ESPEN_M.qmd", file.info("ESPEN_M.qmd")$size)

# Apply the substitution
text_new <- gsub(
    pattern = "(!\\[[^\\]]*\\]\\([^\\)]+\\))",
    replacement = "---\n\\1\n---",
    x = text
)

# Write it back to a file
writeLines(text_new, "ESPEN_M.qmd")
