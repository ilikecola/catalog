{{/* Define path for aria2pro rpc */}}
{{- define "aria2pro.rpc" -}}
{{- $fullname := include "tc.v1.common.lib.chart.names.fullname" . -}}
path: {{ .Values.aria2pro.path }}
# -- Ignored if not kubeVersion >= 1.14-0
pathType: Prefix
service:
  # -- Overrides the service name reference for this path
  name: {{ printf "%s-rpc" $fullname }}
  port: {{ .Values.service.main.ports.main.port }}
{{- end -}}
