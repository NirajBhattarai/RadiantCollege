@echo off

REM Assuming XAMPP is installed in C:\xampp
set XAMPP_PATH=C:\xampp

REM Create directories
mkdir "%XAMPP_PATH%\cgi-bin" 2>nul
mkdir "%XAMPP_PATH%\htdocs" 2>nul

REM Copy files
copy form_handler.cgi "%XAMPP_PATH%\cgi-bin\"
copy simple_form.html "%XAMPP_PATH%\htdocs\"

REM Set permissions
icacls "%XAMPP_PATH%\cgi-bin\form_handler.cgi" /grant Everyone:F

REM Configure Apache for CGI
echo LoadModule cgi_module modules/mod_cgi.so >> "%XAMPP_PATH%\apache\conf\httpd.conf"
echo ScriptAlias /cgi-bin/ "%XAMPP_PATH%/cgi-bin/" >> "%XAMPP_PATH%\apache\conf\httpd.conf"
echo ^<Directory "%XAMPP_PATH%/cgi-bin"^> >> "%XAMPP_PATH%\apache\conf\httpd.conf"
echo Options +ExecCGI >> "%XAMPP_PATH%\apache\conf\httpd.conf"
echo AddHandler cgi-script .cgi >> "%XAMPP_PATH%\apache\conf\httpd.conf"
echo Require all granted >> "%XAMPP_PATH%\apache\conf\httpd.conf"
echo ^</Directory^> >> "%XAMPP_PATH%\apache\conf\httpd.conf"

REM Restart Apache
net stop Apache2.4
net start Apache2.4

echo Setup complete! Access the form at: http://localhost/simple_form.html 