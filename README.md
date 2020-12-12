# Avid AML Helm Chart Repo

## Update charts

Once a chart has been created and tested it can be packaged and added to the [Avid AML chart repo](https://avidaml.github.io/charts/):

    helm package microservice

Update the chart repo index:

    helm repo index . --url https://github.com/avidaml/charts

## Update repo

Upload the artefacts (`microservice-1.tgz` and `index.yaml`) from the previous step to the `gh-pages` branch of the repo (`https://github.com/avidaml/charts`).

These artefacts do not need to be committed.

## Using a chart

    helm repo add avidaml https://avidaml.github.io/charts/
    helm repo list