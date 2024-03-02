return {
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
