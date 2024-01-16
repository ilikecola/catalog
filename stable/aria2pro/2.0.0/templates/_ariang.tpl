{{/* Define the ariang container */}}
{{- define "aria2.ariang" -}}
image: {{ .Values.ariangImage.repository }}:{{ .Values.ariangImage.tag }}
imagePullPolicy: '{{ .Values.ariangImage.pullPolicy }}'
securityContext:
  runAsUser: {{ .Values.podSecurityContext.runAsUser }}
  runAsGroup: {{ .Values.podSecurityContext.runAsGroup }}
  readOnlyRootFilesystem: {{ .Values.securityContext.readOnlyRootFilesystem }}
  runAsNonRoot: {{ .Values.securityContext.runAsNonRoot }}
ports:
  - containerPort: {{ .Values.service.main.ports.main.port }}
{{- end -}}