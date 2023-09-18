solutionRoot=.
appName=$3
oldAppName=$2
solutionName=$1
# Update Solution.xml
echo "Updating Solution.xml"
xml ed -L -u "/ImportExportXml/SolutionManifest/UniqueName" -v $solutionName $solutionRoot/src/Other/Solution.xml
xml ed -L -u "/ImportExportXml/SolutionManifest/LocalizedNames/LocalizedName[@languagecode=1033]/@description" -v $solutionName $solutionRoot/src/Other/Solution.xml
xml ed -L -u "/ImportExportXml/SolutionManifest/RootComponents/RootComponent/@schemaName" -v $appName $solutionRoot/src/Other/Solution.xml

# Update the CanvasApp file
echo "Updating CanvasApp file"
xml ed -L -u "/CanvasApp/Name" -v $appName $solutionRoot/src/CanvasApps/$oldAppName.meta.xml
xml ed -L -u "/CanvasApp/BackgroundImageUri" -v /CanvasApps/$appName.png $solutionRoot/src/CanvasApps/$oldAppName.meta.xml
xml ed -L -u "/CanvasApp/DocumentUri" -v /CanvasApps/$appName.msapp $solutionRoot/src/CanvasApps/$oldAppName.meta.xml

# Rename the files
echo "Renaming files"
file-rename "s/$oldAppName\_\w*/$appName/" $solutionRoot/src/CanvasApps/*.*
mv $solutionRoot/src/CanvasApps/src/$oldAppName $solutionRoot/src/CanvasApps/src/$appName
