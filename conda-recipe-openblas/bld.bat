:: Uncoment following two lines for local test build
cd %RECIPE_DIR%
cd ..

:: Clear old build attempts
RD /S /Q _skbuild

set BLAS_ROOT=%PREFIX%
set LAPACK_ROOT=%PREFIX%
set NUMPY_INCLUDE=%PREFIX%\Include
set F2PY=%PREFIX%\Scripts\f2py.exe

"%PYTHON%" setup.py install

if errorlevel 1 exit 1

:: Add more build steps here, if they are necessary.

:: See
:: https://conda.io/docs/user-guide/tasks/build-packages/environment-variables.html
:: for a list of environment variables that are set during the build process.
