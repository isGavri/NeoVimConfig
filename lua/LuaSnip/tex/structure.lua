return {
  -- Snippet for report
  s(
    { trig = "report;" },
    fmta(
      [[
      \documentclass[12pt]{report}
      \title{<>}
      \author{Estefan Gabriel Partida Toalá<>}
      \date{<>}
      \begin{document}
      \maketitle
      \end{document}
]],
      {
        i(1),
        i(2),
        i(3)
      }
    )
  ),
  -- Snippet for enviroment
  s(
    { trig = "env;", snippetType = "autosnippet" },
    fmta(
      [[
      \begin{<>}
        <>
      \end{<>}
      ]],
      {
        i(1),
        i(2),
        rep(1),
      }
    )
  ),
  s(
    { trig = "hr", snippetType = "autosnippet" },
    fmta([[\href{<>}{<>}]], {
      i(1),
      i(2),
    })
  ),
}
