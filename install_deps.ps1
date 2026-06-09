Param()
Write-Host "Installing Python dependencies for IV Games..." -ForegroundColor Cyan
try {
    & python -V
} catch {
    Write-Host "Python not found in PATH. Ensure Python 3.10+ is installed and 'python' is on PATH." -ForegroundColor Red
    exit 1
}

Write-Host "Upgrading pip and installing from requirements.txt..." -ForegroundColor Green
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

Write-Host "If you use Python 3.14 and have issues installing pygame, run:" -ForegroundColor Yellow
Write-Host "  pip install pygame-ce" -ForegroundColor Yellow
Write-Host "Or visit https://www.pygame.org/ and follow platform-specific install notes." -ForegroundColor Yellow

Write-Host "Done. To run the web server: python app.py" -ForegroundColor Cyan
