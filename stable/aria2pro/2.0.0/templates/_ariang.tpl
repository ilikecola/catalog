{{/* Define the ariang container */}}
{{- define "aria2.ariang" -}}
image: {{ .Values.aria2proImage.repository }}:{{ .Values.aria2proImage.tag }}
imagePullPolicy: '{{ .Values.aria2proImage.pullPolicy }}'
securityContext:
  runAsUser: {{ .Values.securityContext.runAsUser }}
  runAsGroup: {{ .Values.securityContext.runAsGroup }}
  readOnlyRootFilesystem: {{ .Values.securityContext.readOnlyRootFilesystem }}
  runAsNonRoot: {{ .Values.securityContext.runAsNonRoot }}
ports:
  - containerPort: {{ .Values.service.rpc.ports.rpc.port }}
{{- end -}}