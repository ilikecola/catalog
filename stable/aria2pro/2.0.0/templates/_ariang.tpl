{{/* Define the ariang container */}}
{{- define "aria2pro.ariang" -}}
image: {{ .Values.ariangImage.repository }}:{{ .Values.ariangImage.tag }}
imagePullPolicy: '{{ .Values.ariangImage.pullPolicy }}'
securityContext:
  runAsUser: {{ .Values.securityContext.container.runAsUser }}
  runAsGroup: {{ .Values.securityContext.runAsGroup }}
  readOnlyRootFilesystem: {{ .Values.securityContext.container.readOnlyRootFilesystem }}
  runAsNonRoot: {{ .Values.securityContext.container.runAsNonRoot }}
ports:
  - containerPort: {{ .Values.service.ariang.ports.ariang.port }}
    name: main
probes:
  liveness:
    type: tcp
    path: /
    port: "{{ .Values.service.ariang.ports.main.port }}"
  readiness:
    type: tcp
    path: /
    port: "{{ .Values.service.ariang.ports.main.port }}"
  startup:
    type: tcp
    path: /
    port: "{{ .Values.service.ariang.ports.main.port }}"
{{- end -}}
