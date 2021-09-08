# Ticc AML Helm Chart Repo

## Test 'raw' chart

From the root directory of a service:
 
    helm upgrade --install SERVICE ../charts/microservice --values ./.circleci/helm-values.yaml --dry-run
    
## Auto publish chart (Default process)

Whenever a commit or pull request to `master` branch (README.md excluded) will trigger a Github action which will automatically package chart and publish it to the `gh-pages` branch.

**Alternatively, you can follow the steps below to mannually publish the chart.**

## Package chart

Once a chart has been created and tested it can be packaged and added to the [chart repo](https://ticcaml.github.io/charts/).

Package a chart from the project root:

    helm package CHART_NAME

e.g. `helm package service`

Update the repo index (using the GitHub pages URL):

    helm repo index . --url https://ticcaml.github.io/charts/

## Update repo

The chart repo is hosted using GitHub Pages (on `gh-pages` branch).

To upload new or updated artefacts from the previous step, switch to the `gh-pages` branch and add the artefacts.

For example, upload `microservice-1.tgz` and `index.yaml` from the previous step.

## Using a chart

Add the remote repo to your local repo:

    helm repo add ticcaml https://ticcaml.github.io/charts/

Do a "dry run" deploy:

    helm upgrade --install SERVICE service --repo https://ticcaml.github.io/charts/ --values values.yaml --dry-run
