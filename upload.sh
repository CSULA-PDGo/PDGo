. ./settings.sh
appName=pdgo_$solutionName\_$pdGoNumber

# Change the names to the custom names
./scripts/rename.sh $solutionName pdgo_pdgo_0000 $appName
# Package the current
pac solution pack -f ./src -pca -z package.zip
pac solution import -p package.zip

# Normalize the names again
./scripts/rename.sh pdgo $appName pdgo_pdgo_0000
