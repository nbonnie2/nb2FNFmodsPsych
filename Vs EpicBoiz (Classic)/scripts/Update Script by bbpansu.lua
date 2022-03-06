--UPDATE CHECK

curver = 0;
function onCreate()

bit = string.gsub(version,"%.","")
curver = tonumber(bit)
end
function onStartCountdown()

	if curver < 51 then
	debugPrint("PSYCH ENGINE("..version..") IS OUTDATED!!!")
	debugPrint("UPDATE TO THE LATEST PSYCH ENGINE BUILD (0.5.1)")
	debugPrint("YOU ARE TRUELY AN IDIOT......")
	return Function_Stop;
	end

end