# PR: feat/migrate-mongoose-v9

## Objetivo
Actualizar `mongoose` en `server` de la serie `8.x` a `9.x` e incluir guía de migración.

## Cambios propuestos
- Actualizar `server/package.json`: `mongoose` → `^9.6.2`.
- Actualizar `server/package-lock.json` tras instalar dependencias.

## Consideraciones de migración
1. `mongoose` 9 introduce cambios en la conexión, tipos y comportamientos por defecto. Revisar breaking changes oficiales.
2. Revisar modelos y validaciones; ejecutar tests que cubran esquemas y queries.
3. Revisar compatibilidad con versiones de Node y drivers de MongoDB.

## Pasos de verificación
```bash
cd server
npm ci --legacy-peer-deps
npm test
```
Probar en staging las operaciones de lectura/escritura y los flujos que usen índices o transacciones.

## Lista de verificación
- [ ] Tests unitarios pasan.
- [ ] End-to-end en staging validados.
- [ ] Actualizar documentación si hay cambios de comportamiento.

## Rollback
- Revertir la versión en `package.json` y restaurar `package-lock.json` anterior.
