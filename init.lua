module(..., package.seeall)

local TMPLS = {
	['basic'] = '../plugins/slide/views/basic.html'

}

--[[

datasource's element shall be the form as follows:
1. element.url;
2. element.title;
3. element.path;
4. element.thumb_path;



{^ slide _tag="xxx",
	datasource = xxxx,
	

^}
--]]
function main(args, env)
	assert(args._tag, '[Error] @plugin slide - missing _tag.')

	local tmpl = args.tmpl and TMPLS[args.tmpl] and args.tmpl or 'basic'
	
	return View(TMPLS[tmpl])(args)
end

