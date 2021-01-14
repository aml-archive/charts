# charts
Helm charts

## Using a chart

Add the remote repo to your local repo:

    helm repo add avidaml https://avidaml.github.io/charts/

Do a "dry run" deploy:

    helm upgrade --install SERVICE_NAME --repo https://avidaml.github.io/charts/ --values values.yaml --dry-run

## Update repo index
1. Make sure the the charts tgz file exist in this folder, if not switch to `master` branch and do `helm package CHART_NAME`
2. Switch back to `gh-pages` branch, and run `helm repo index .` with working directy being this project root.
3. Add & commit the tgz file as well as the updated index.yaml file.