# PR: feat/migrate-multer-v2

## Objetivo
Actualizar `multer` en `server` de la rama `1.x` a `2.x` y proveer una guía de migración.

## Cambios propuestos
- Actualizar `server/package.json`: `multer` → `^2.1.1`.
- Actualizar `server/package-lock.json` tras instalar dependencias.

## Pasos de migración y verificación
1. Revisar usos de `multer` en el proyecto (uploads, rutas, middlewares). `multer` v2 puede introducir cambios en la API y en el manejo de tipos.
2. Cambios comunes a revisar:
   - Inicialización del middleware (p.ej. `multer()` props).
   - Manejo de `req.file` / `req.files` y nuevos tipos async/stream.
   - Integración con `express` y pruebas de endpoints que aceptan ficheros.
3. Ejecutar localmente:
```bash
cd server
npm ci --legacy-peer-deps
npm test
```
4. Probar manualmente uploads en staging (formularios y API), validar que los archivos se reciben y que no hay regresiones.

## Lista de verificación antes de merge
- [ ] Tests unitarios pasan.
- [ ] Endpoints de upload validados en staging.
- [ ] Documentar cualquier cambio de API en `docs/`.

## Rollback
- Revertir la dependencia en `package.json` y restaurar `package-lock.json` anterior.

---
Generado automáticamente; editar si se requiere detalle adicional.
