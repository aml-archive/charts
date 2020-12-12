# Avid AML Helm Chart Repo

## Create artefacts

Once a chart has been created and tested it can be packaged and added to the [chart repo](https://avidaml.github.io/charts/).

Package a chart from the project root:

    helm package microservice

Update the repo index (using the GitHub pages URL):

    helm repo index . --url https://avidaml.github.io/charts/

## Update repo

The chart repo is hosted using GitHub Pages (on `gh-pages` branch).

To upload new or updated artefacts from the previous step, switch to the `gh-pages` branch and add the artefacts.

For example, upload `microservice-1.tgz` and `index.yaml` from the previous step.

## Using a chart

Add the remote repo to your local repo:

    helm repo add avidaml https://avidaml.github.io/charts/

Do a "dry run" deploy:

    helm upgrade --install user microservice --repo https://avidaml.github.io/charts/ --values values.yaml --dry-run