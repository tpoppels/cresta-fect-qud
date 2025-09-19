@echo off
echo Rendering Jupyter notebook to HTML...
py -m jupyter nbconvert --to html --execute reports/analysis.ipynb --output-dir docs --output index.html
if %errorlevel% equ 0 (
    echo.
    echo ✅ Notebook rendered successfully!
    echo 📄 Output: docs/index.html
    echo.
    echo Opening in browser...
    start docs/index.html
) else (
    echo.
    echo ❌ Error rendering notebook
    exit /b %errorlevel%
)
