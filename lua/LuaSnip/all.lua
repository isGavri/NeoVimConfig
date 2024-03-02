---@diagnostic disable-next-line: unused-local
local gt = function(args, parent)
	if #parent.snippet.env.LS_SELECT_RAW > 0 then
		return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
	else
		return sn(nil, i(1))
	end
end

return {
	-- Snippet for wrapping () around text
	s(
		{ trig = "(", dscr = "Wraps () around text", wordTrig = false, snippetType = "autosnippet" },
		fmta("(<>)", {
			d(1, gt),
		})
	),
	-- Snippet for wrapping text in []
	s(
		{ trig = "[", dscr = "Wraps [] around text", wordTrig = false, snippetType = "autosnippet" },
		fmta("[<>]", {
			d(1, gt),
		})
	),
	-- Snippet for wrapping text in ""
	s(
		{ trig = '"', dscr = 'Wraps "" around text', wordTrig = false, snippetType = "autosnippet" },
		fmta('"<>"', {
			d(1, gt),
		})
	),
	-- Snippet for wrapping text in {}
	s(
		{ trig = "{", dscr = "Wraps {} around text", wordTrig = false, snippetType = "autosnippet" },
		fmta("{<>}", {
			d(1, gt),
		})
	),
	-- Snippet for wrapping text in ''
	s(
		{ trig = "'", dscr = "Wraps '' around text", wordTrig = false, snippetType = "autosnippet" },
		fmta("'<>'", {
			d(1, gt),
		})
	),
}
