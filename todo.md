# Registro de acciones — Checkmate

Fecha: 2026-05-15

Resumen de acciones realizadas durante la sesión:

- Creado `TODO.md` en la raíz del repositorio con las tareas solicitadas (intervalos, Node LTS, dependencias, linter) y pasos sugeridos.
- Actualizada la validación del intervalo mínimo en `client/src/Validation/monitor.ts` de 15000 ms (15s) a 1000 ms (1s).
- Añadidas opciones de frecuencia en el formulario de creación de monitores en `client/src/Pages/CreateMonitor/index.tsx`: 1s, 2s, 5s, 10s (manteniendo las opciones previas).
- Añadidas traducciones para las nuevas opciones en `client/src/locales/en.json` y `client/src/locales/es.json`.
- Marcada la tarea "Revisar intervalos de consulta" como completada en la lista de TODO interna.
- Actualizada la base a Node 24.15 en `server/package.json`, Dockerfiles, documentación y workflows de CI.
- Creado el flujo local multiarch para `server` y `dist-mono`, con `docker compose` validado en ARM.
- Añadido `apt-get upgrade -y` en los Dockerfiles de servidor para mantener las capas base al día al construir imágenes.

Archivos modificados (resumen):

- `TODO.md` (nuevo)
- `todo.md` (este archivo, nuevo)
- `client/src/Validation/monitor.ts` (validación `interval`)
- `client/src/Pages/CreateMonitor/index.tsx` (selector de frecuencias)
- `client/src/locales/en.json` (nuevas claves de frecuencia)
- `client/src/locales/es.json` (nuevas claves de frecuencia)

Próximos pasos sugeridos:

- Ejecutar la aplicación en local y probar la creación/edición de monitores con intervalos de 1s/2s/5s/10s.
- Actualizar el resto de archivos de locales si quieres soporte completo en todos los idiomas.
- Proceder con la tarea 2: actualizar Node a la última LTS.

Tareas (estado)

- [x] Revisar intervalos de consulta — validación y UI actualizadas (1s,2s,5s,10s).
- [x] Actualizar Node a LTS — completado (Node 24.15 en `server/package.json`, Dockerfiles y workflows).
- [x] Probar despliegue local multiarch — completado (stack `server` y `dist-mono` validado en ARM).
- [x] Actualizar dependencias base — completado (actualización de paquetes base en Dockerfiles de servidor).
- [ ] Revisiones de linter — pendiente.
- [x] Registrar acciones en `todo.md` — completado (este fichero).

Propuestas de mejoras (priorizadas)

- **Alta — Seguridad y mantenimiento:**
	- [ ] Activar Dependabot o Renovate para actualizaciones automáticas de dependencias.
	- [ ] Ejecutar `npm audit` en `server` y `client` y corregir vulnerabilidades críticas (ej. actualizar `multer` a 2.x si es necesario).
	- [ ] Añadir paso SCA (Snyk / GitHub Advanced Security) al CI para bloquear PRs con vulnerabilidades graves.

- **Alta — Estabilidad del entorno:**
	- [ ] Revisar y documentar la política de versiones de Node (actualmente `node >=24.15.0` en `server/package.json`).
	- [ ] Asegurar uso de lockfiles y `npm ci` en CI para reproducibilidad.

- **Media — Calidad y CI:**
	- [ ] Añadir verificación de cobertura mínima de tests en CI y fallar builds por cobertura insuficiente.
	- [ ] Activar `husky` + `lint-staged` para formateo y lint local (pre-commit).
	- [ ] Añadir escaneo de secretos en PRs (GitHub action que detecte secretos accidentalmente incluidos).

- **Media/Baja — Experiencia de desarrollo y mantenimiento:**
	- [ ] Añadir `README.md` para desarrollo local con pasos `npm install`, `npm run dev` (client + server), y versiones requeridas.
	- [ ] Añadir `CODEOWNERS` y plantillas de PR/Issue para facilitar revisiones.
	- [ ] Revisar y optimizar Dockerfiles (usar multi-stage, reducir tamaño de imágenes, asegurar actualizaciones periódicas).

Pasos sugeridos inmediatos

- Ejecutar `npm audit` y `npm outdated` en `server` y `client` para priorizar actualizaciones.
- Crear una configuración inicial de Dependabot (`.github/dependabot.yml`).
- Añadir una job en CI que ejecute `npm audit --audit-level=high`.

Estados propuestos (para seguir en este fichero)

- [ ] Ejecutar `npm audit` (server)
- [ ] Ejecutar `npm audit` (client)
- [ ] Añadir Dependabot
- [ ] Añadir SCA en CI
- [ ] Documentar versión Node y setup de desarrollo
