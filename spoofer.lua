--- ///

call(function() -- for games that ban on error
if not getgenv().MTAPIMutex then loadstring(game:HttpGet("https://raw.githubusercontent.com/catvskid/spoofmobile/main/source/file.lua", true))() end
local UserInputService = game:GetService("UserInputService")


UserInputService:AddGetHook("TouchEnabled", function(t,...)
    if getcallingscript():IsDescendantOf(game.CoreGui) then return false end
    return true
end)
UserInputService:AddGetHook("MouseEnabled",function(t,...)
    if getcallingscript():IsDescendantOf(game.CoreGui) then return true end
    return false
end)
UserInputService:AddGetHook("KeyboardEnabled", function(t,...)
    if getcallingscript():IsDescendantOf(game.CoreGui) then return true end
    return false
end)

end)
