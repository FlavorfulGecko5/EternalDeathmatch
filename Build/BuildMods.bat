@echo off

set OUTPUT_CLASSIC=Classic.zip
set OUTPUT_CLASSIC_AC=ClassicAC.zip
set OUTPUT_ETERNAL=Eternal.zip
set OUTPUT_ETERNAL_AC=EternalAC.zip

if exist %OUTPUT_CLASSIC% (del %OUTPUT_CLASSIC%)
if exist %OUTPUT_CLASSIC_AC% (del %OUTPUT_CLASSIC_AC%)
if exist %OUTPUT_ETERNAL% (del %OUTPUT_ETERNAL%)
if exist %OUTPUT_ETERNAL_AC% (del %OUTPUT_ETERNAL_AC%)

EternalModBuilder.exe -c ..\Configs\_Common.json -c ..\Configs\Classic_Common.json -c ..\Configs\Classic.json -s ..\GameFiles -o Classic.zip -t 8
EternalModBuilder.exe -c ..\Configs\_Common.json -c ..\Configs\Classic_Common.json -c ..\Configs\ClassicAC.json -s ..\GameFiles -o ClassicAC.zip -t 8
EternalModBuilder.exe -c ..\Configs\_Common.json -c ..\Configs\Eternal_Common.json -c ..\Configs\Eternal.json -s ..\GameFiles -o Eternal.zip -t 8
EternalModBuilder.exe -c ..\Configs\_Common.json -c ..\Configs\Eternal_Common.json -c ..\Configs\EternalAC.json -s ..\GameFiles -o EternalAC.zip -t 8

echo Build process complete for all mod versions
pause
