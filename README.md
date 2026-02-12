# Image to PDF (PyQt6)

Desktop app to merge images into a single PDF with layout controls.

## Features
- Add images and/or a whole folder; drag-and-drop supported
- Reorder via drag-and-drop; remove/clear items; rotate per item
- Sorting: by filename or file date; remove duplicates
- Preview pane reflecting page size, orientation, margins, and fit mode
- Page size presets (A4, Letter) + Custom size; Portrait/Landscape
- Fit modes: Fit (contain), Fill (cover crop), Center (no scale)
- Margins (mm), DPI, JPEG quality
- PDF metadata (Title, Author, Subject, Keywords)
- Optional PDF password (user/owner)

## Run
1. (Optional) Create and activate a virtual environment.
2. Install dependencies:

   ```powershell
   pip install -r requirements.txt
   ```

3. Start the app:

   ```powershell
   python .\main.py
   ```

## Optional: Telegram launch notification
To send a message to your Telegram bot each time the app starts, set these environment variables (do not hardcode secrets):
- `TELEGRAM_BOT_TOKEN` – your bot token
- `TELEGRAM_CHAT_ID` – the chat id (user or group) to send to
- `APP_LOCATION` – optional free text describing user location

Example (PowerShell):

```powershell
$env:TELEGRAM_BOT_TOKEN = '{{TELEGRAM_BOT_TOKEN}}'
$env:TELEGRAM_CHAT_ID = '{{TELEGRAM_CHAT_ID}}'
$env:APP_LOCATION = 'Phnom Penh, KH'
python .\main.py
```

## Notes
- Supported formats: .jpg, .jpeg, .png, .bmp, .tif, .tiff
- Transparency is flattened onto white.
- Page size dimensions are in millimeters and rendered at the chosen DPI.
- JPEG quality affects PDF size; 85 is a good default.
- Password protection is applied after generation using PyPDF2 encryption.
"# ImageToPDF" 
# ImageToPDF
