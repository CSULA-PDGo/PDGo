. ./settings.sh
appName=pdgo_$solutionName\_$pdGoNumber

./scripts/rename.sh $solutionName pdgo_pdgo_0000 $appName

# Download the customized solution from PowerPlatform
#pac solution sync -pca

./scripts/rename.sh pdgo $appName pdgo_pdgo_0000