{{ define "chart.metadata" }}
  name: {{ .Release.Name }}
  namespace: {{ .Release.Namespace }}
  labels:
    helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
    app.kubernetes.io/managed-by: Helm
    app.kubernetes.io/version: {{ .Chart.AppVersion }}
    app.kubernetes.io/instance: {{ .Release.Name }}
  annotations:
    meta.helm.sh/release-name:  es-agent
    meta.helm.sh/release-namespace: kube-system
{{ end }}
{{- define "es-agent.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "es-agent.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}