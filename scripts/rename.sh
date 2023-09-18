SolutionRoot=.
appName=$2
oldAppName=$1
# Update Solution.xml
xml ed -u "/ImportExportXml/SolutionManifest/UniqueName" -v $solutionName $solutionRoot/src/Other/Solution.xml
xml ed -u "/ImportExportXml/SolutionManifest/LocalizedNames/LocalizedName[@languagecode=1033]/@description" -v $solutionName $solutionRoot/src/Other/Solution.xml
xml ed -u "/ImportExportXml/SolutionManifest/RootComponents/RootComponent[@schemaName=pdgo_pdgo_0000]" -v $appName $solutionRoot/src/Other/Solution.xml

# Update the CanvasApp file
xml ed -u "/CanvasApp/Name" -v $appName $solutionRoot/src/CanvasApps/pdgo_pdgo_0000.xml
xml ed -u "/CanvasApp/BackgroundImageUri" -v /CanvasApps/$appName.png $solutionRoot/src/CanvasApps/pdgo_pdgo_0000.xml
xml ed -u "/CanvasApp/DocumentUri" -v /CanvasApps/$appName.msapp $solutionRoot/src/CanvasApps/pdgo_pdgo_0000.xml

# Rename the files
rename "s/$appName/pdgo_pdgo_0000" $solutionRoot/src/CanvasApps/*.*
mv $solutionRoot/src/CanvasApps/src/$appName $solutionRoot/src/CanvasApps/src/pdgo_pdgo_0000
