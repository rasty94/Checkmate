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
