# ValentinesProposal

Sitio estatico para GitHub Pages.

**Registro de respuestas (gratis) con Google Apps Script**
1. Crea un Google Sheet (puede ser en blanco).
1. Abre `Extensions` -> `Apps Script`.
1. Reemplaza el contenido por este ejemplo y guarda:

```javascript
function doPost(e) {
    const ss = SpreadsheetApp.getActiveSpreadsheet();
    const sheet = ss.getSheetByName("responses") || ss.insertSheet("responses");

    if (sheet.getLastRow() === 0) {
        sheet.appendRow(["timestamp", "answer", "userAgent", "pageUrl", "referrer"]);
    }

    const data = JSON.parse((e && e.postData && e.postData.contents) || "{}");

    sheet.appendRow([
        data.timestamp || new Date().toISOString(),
        data.answer || "",
        data.userAgent || "",
        data.pageUrl || "",
        data.referrer || ""
    ]);

    return ContentService.createTextOutput("ok").setMimeType(ContentService.MimeType.TEXT);
}
```

1. Despliega como Web app:
1. `Deploy` -> `New deployment` -> selecciona `Web app`.
1. `Execute as`: `Me`.
1. `Who has access`: `Anyone`.
1. Copia la URL del deployment.

1. Pega la URL en `config.js` (const `ENDPOINT_URL`).

**Como probar**
1. Abre `index.html` localmente.
1. Presiona `YES` (debe mandar POST al endpoint).
1. Revisa la hoja `responses` en el Google Sheet.


