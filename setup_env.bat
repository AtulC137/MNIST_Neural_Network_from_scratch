@echo off
echo ===============================
echo Creating virtual environment...
echo ===============================
python -m venv myenv

echo.
echo ===============================
echo Activating virtual environment...
echo ===============================
call myenv\Scripts\activate

echo.
echo ===============================
echo Upgrading pip...
echo ===============================
python -m pip install --upgrade pip

echo.
echo ===============================
echo Installing required packages...
echo ===============================
pip install jupyter numpy pandas matplotlib scikit-learn tensorflow seaborn ipykernel

echo.
echo ===============================
echo Registering Jupyter kernel...
echo ===============================
python -m ipykernel install --user --name=myenv --display-name "Python (myenv)"

echo.
echo ✅ Done!
echo Open Jupyter and choose "Python (myenv)" as the kernel.
pause
