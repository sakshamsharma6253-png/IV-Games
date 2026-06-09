@echo off
echo Installing Python dependencies for IV Games...
python -V || (
  echo Python not found in PATH. Ensure Python 3.10+ is installed.
  pause
  exit /b 1
)
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
echo.
echo If you use Python 3.14 and pip fails to install pygame, try:
echo   pip install pygame-ce
echo.
echo Run the local server with: python app.py
pause
