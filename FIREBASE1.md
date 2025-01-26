# Cómo Hacer que una Realtime Database de Firebase Sea de Acceso Público

Para permitir el acceso público a tu Firebase Realtime Database, sigue estos pasos:

## 1. Accede a la Consola de Firebase
- Ve a [Firebase Console](https://console.firebase.google.com/).
- Selecciona tu proyecto.

## 2. Navega a la Base de Datos
- En el menú de la izquierda, selecciona **"Realtime Database"**.

## 3. Configura las Reglas de Seguridad
- Haz clic en la pestaña **"Rules"** (Reglas).
- Cambia las reglas para permitir el acceso público. Usa las siguientes reglas:

```json
{
  "rules": {
    ".read": "true",
    ".write": "true"
  }
}
```

## 4. Publica los Cambios
- Haz clic en **"Publish"** (Publicar) para aplicar las nuevas reglas.
