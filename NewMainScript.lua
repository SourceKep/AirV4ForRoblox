local function Checker()
     pcall(function() 
         if game:isloaded then 
            loadstring(game:HttpGet("https://raw.githubusercontent.com/SourceKep/AirV4ForRoblox/main/NotificationLoading.lua", true))()
             loadstring(game:HttpGet("https://raw.githubusercontent.com/SourceKep/AirV4ForRoblox/main/NinjaMain.lua", true))()
       end
   end)
end
Checker()