
helm package microservice
helm repo index . --url https://github.com/avidaml/charts

$ helm repo add avidaml https://github.com/avidaml/charts
$ helm repo list