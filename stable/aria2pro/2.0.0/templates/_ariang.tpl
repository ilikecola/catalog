{{/* Define the ariang container */}}
{{- define "aria2.ariang" -}}
image: {{ .Values.ariangImage.repository }}:{{ .Values.ariangImage.tag }}
imagePullPolicy: '{{ .Values.ariangImage.pullPolicy }}'
securityContext:
  runAsUser: {{ .Values.securityContext.container.runAsUser }}
  runAsGroup: {{ .Values.securityContext.runAsGroup }}
  readOnlyRootFilesystem: {{ .Values.securityContext.container.readOnlyRootFilesystem }}
  runAsNonRoot: {{ .Values.securityContext.container.runAsNonRoot }}
ports:
  - containerPort: {{ .Values.service.ariang.ports.ariang.port }}
{{- end -}}
