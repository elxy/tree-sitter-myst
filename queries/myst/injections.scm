(fenced_code_block
  (info_string
    (language) @language)
  (#not-match? @language "elm")
  (code_fence_content) @content (#exclude_children! @content))

(directive_block
  (directive_info
    (language) @language)
  (directive_content) @content)

((html_block) @html)

(math_block) @latex

((minus_metadata) @yaml (#offset! @yaml 1 0 -1 0))
((plus_metadata) @toml (#offset! @toml 1 0 -1 0))

((inline) @markdown_inline (#exclude_children! @markdown_inline))
