. ./settings.sh
appName=pdgo_$solutionName_$pdGoNumber

# Download the customized solution from PowerPlatform
pack solution export --name $solutionName -pca

./scripts/rename $appName pdgo_pdgo_0000