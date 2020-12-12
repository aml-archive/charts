{{ define "chart.metadata" }}
  name: {{ .Release.Name }}
  namespace: {{ .Release.Namespace }}
  labels:
    helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
    app.kubernetes.io/managed-by: {{ .Release.Service }}
    app.kubernetes.io/version: {{ .Chart.AppVersion }}
    app.kubernetes.io/instance: {{ .Release.Name }}
  annotations:
    meta.helm.sh/release-name:  {{ .Release.Name }}
    meta.helm.sh/release-namespace: {{ .Release.Namespace }}
{{ end }}