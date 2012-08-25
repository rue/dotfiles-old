" Regexp matching for """blah""".r --eeppa
syn region scalaRegexp start="\<\"\"\"" end="\"\"\".r\>" contains=scalaRegexpEscape
syn match scalaRegexpEscape "\\u[0-9a-fA-F]\{4}" contained
syn match scalaRegexpEscape "\\[nrfvb\\\"]" contained

" Regexp highlight --eeppa
hi link scalaRegexp Special
hi link scalaRegexpEscape Special

hi link scalaDefName Keyword

let b:current_syntax = "scala"
