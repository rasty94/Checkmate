# PR: chore/update-server-critical-deps

## Resumen
Actualiza dependencias críticas y añade automatizaciones de auditoría:

- `server/package.json`: actualiza `ws` a `^8.20.1` y `@typescript-eslint/*` a `^8.59.4` para mitigar avisos de seguridad.
- Añade `.github/dependabot.yml` para actualizaciones automáticas de dependencias.
- Añade `.github/workflows/audit.yml` para ejecutar `npm audit` en `server` y `client` en PRs y pushes.
- Incluye los reports generados en `reports/` (`npm audit` y `npm outdated`) para referencia.
- Actualiza `todo.md` con propuestas y pasos de seguimiento.

## Por qué
Se detectaron vulnerabilidades de severidad moderada y múltiples dependencias desactualizadas en el módulo `server`. Estos cambios son pasos rápidos y poco intrusivos para reducir el riesgo mientras se planifican migraciones mayores (p.ej. `multer` v2, `mongoose` v9).

## Cambios detallados
- Bump `ws` v8.19.0 → v8.20.1 (fix de seguridad).
- Bump `@typescript-eslint/eslint-plugin` y `@typescript-eslint/parser` a 8.59.4.
- Añadido Dependabot config para root/server/client (weekly).
- Añadida GitHub Action `audit.yml` que ejecuta `npm ci` y `npm audit --audit-level=high` en `server` y `client`.
- Añadidos `reports/` con salida JSON de `npm audit` y `npm outdated` actuales para auditoría.

## Pruebas realizadas
- Ejecutado `npm audit` y `npm outdated` antes y después de los cambios (informes en `reports/`).
- Instalación local de dependencias con `npm ci --legacy-peer-deps` en `server` para actualizar lockfile.

## Riesgos y mitigación
- Cambios de versionado mínimos; riesgo bajo. Sin embargo, hay dependencias que requieren migraciones manuales (ej. `multer` 1→2, `mongoose` 8→9). No las incluimos en este PR.
- Se recomienda revisar pipelines CI que usen `node` para asegurar compatibilidad; añadimos workflow que usa `node:24`.

## Pasos para QA / revisión
1. Revisar los reportes en `reports/`.
2. Ejecutar `npm ci && npm test` en `server` y `client` localmente bajo Node 24.
3. Validar despliegue en staging si procede.

## Rollback
- Revertir el PR si se detectan problemas en staging o en CI.

## Recomendados como reviewers
- @backend-team
- @devops
- @maintainers

---
Generado automáticamente por el asistente; editar si quieres añadir más contexto.
