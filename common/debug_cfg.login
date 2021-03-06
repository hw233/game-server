-- required config
thread    = 4
bootstrap = "snlua bootstrap"
cpath     = "skynet-dist/cservice/?.so;"

harbor    = 0
--logger    = "./log/login.log"
--daemon    = 'login.pid'
start     = "login_main"

local function concat(args)
  local r = ''
  for i = 1, # args do
    r = r .. ';' .. args[i]
  end
  return r
end

lualoader  = "skynet-dist/lualib/loader.lua"

luaservice = concat {
  "skynet-dist/service/?.lua",

  "service/?.lua",
  "service/?/?.lua",
  "service/login/?.lua",

  "service/websockets/?.lua",
  "service/config/?.lua",

  "service/webagent/?.lua",

  "service/agent/?.lua",
  "service/world/?.lua",
  "service/hall/?.lua",
}

lua_path   = concat {
  "skynet-dist/lualib/?.lua",

  "common/?.lua",
  "lualib/?.lua",

  "service/?.lua",
}

lua_cpath  = concat {
  "skynet-dist/luaclib/?.so",
  "luaclib/?.so",
}

cluster    = "common/clustername.lua"

