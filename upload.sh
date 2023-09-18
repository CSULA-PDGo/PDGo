. ./settings.sh
appName=pdgo_$solutionName_$pdGoNumber

# Change the names to the custom names
./scripts/rename pdgo_pdgo_0000 $appName
# Package the current
pac solution pack -f ./src -pca -z package.zip
pac solution import -p package.zip

# Normalize the names again
./scripts/rename $appName pdgo_pdgo_0000
