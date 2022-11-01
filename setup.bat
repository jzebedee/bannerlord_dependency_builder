rd /s ./bin/
rd /s ./Modules/
del BannerlordDependencies.zip
set "gamefolder=C:\Games\Steam\steamapps\common\Mount & Blade II Bannerlord"
xcopy "%gamefolder%\bin\Win64_Shipping_Client\TaleWorlds.*.dll" ".\bin\Win64_Shipping_Client\" /exclude:exclude.txt
xcopy "%gamefolder%\Modules\Native\bin\Win64_Shipping_Client\*.dll" ".\Modules\Native\bin\Win64_Shipping_Client\"
xcopy "%gamefolder%\Modules\SandBox\bin\Win64_Shipping_Client\*.dll" ".\Modules\SandBox\bin\Win64_Shipping_Client\"
xcopy "%gamefolder%\Modules\SandBoxCore\bin\Win64_Shipping_Client\*.dll" ".\Modules\SandBoxCore\bin\Win64_Shipping_Client\"
xcopy "%gamefolder%\Modules\StoryMode\bin\Win64_Shipping_Client\*.dll" ".\Modules\StoryMode\bin\Win64_Shipping_Client\"
"C:\Program Files\7-Zip\7z.exe" -r -sdel a BannerlordDependencies.zip "bin" "Modules"