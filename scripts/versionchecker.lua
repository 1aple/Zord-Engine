curentVersion = 0;
targetVersion = 0;
targetVersionString = "0.5.2h";
function onCreate()

bit = string.gsub(version,"%.","")
bit2 = string.gsub(targetVersionString,"%.","")
curentVersion = tonumber(bit)
targetVersion = tonumber(bit2)
end
function onStartCountdown()

	if curentVersion < targetVersion then
		--do when outdated
		debugPrint("CURRENT VERSION: "..version.." ")
		debugPrint("VERSION NEEDED: "..targetVersionString.." ")
        debugPrint("PLEASE UPDATE PSYCH ENGINE TO "..targetVersionString.." ")
		return Function_Stop;
	end

end