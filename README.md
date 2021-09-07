# charts
Helm charts

## Using a chart

Add the remote repo to your local repo:

    helm repo add avidaml https://avidaml.github.io/charts/

Do a "dry run" deploy:

    helm upgrade --install SERVICE_NAME --repo https://avidaml.github.io/charts/ --values values.yaml --dry-run

