return {
	--Snippet for vectors
	s({ trig = "vv", snippetType = "autosnippet" }, {
		t("\\vec{"),
		i(1),
		t("}"),
	}),
	--Snippet for square root
	s({ trig = "sqr", snippetType = "autosnippet" }, {
		t("\\sqrt{"),
		i(1),
		t("}"),
	}),
	--Snippet for math
	s({ trig = "$", snippetType = "autosnippet" }, {
		t("$"),
		i(1),
		t({ "$" }),
	}), -- Vector snippet
	s({ trig = "vv", snippetType = "autosnippet" }, {
		t("\\vec{"),
		i(1),
		t("}"),
	}),
	-- Fraction snippet
	s(
		{ trig = "ff", snippetType = "autosnippet" },
		fmta([[\frac{<>}{<>}]], {
			i(1),
			i(2),
		})
	),
	s(
		{ trig = "lim;", snippetType = "autosnippet" },
		fmta([[\lim_{<>\to<>}<>]], {
			i(1),
			i(2),
			i(3),
		})
	),
	s(
		{ trig = "sum;", snippetType = "autosnippet" },
		fmta([[\sum_{<>}^{<>}<>]], {
			i(1),
			i(2),
			i(3),
		})
	),
	s(
		{ trig = "int;", snippetType = "autosnippet" },
		fmta([[\int_{<>\to<>}<>]], {
			i(1),
			i(2),
			i(3),
		})
	),
}
