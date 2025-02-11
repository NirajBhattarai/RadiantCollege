#!/bin/bash

# Install Apache
sudo yum update
sudo yum install httpd

# Enable and start Apache
sudo systemctl enable httpd
sudo systemctl start httpd

# Create directories
sudo mkdir -p /var/www/cgi-bin
sudo mkdir -p /var/www/html

# Copy files
sudo cp form_handler.cgi /var/www/cgi-bin/
sudo cp simple_form.html /var/www/html/

# Set permissions
sudo chmod +x /var/www/cgi-bin/form_handler.cgi
sudo chown apache:apache /var/www/cgi-bin/form_handler.cgi

# Create and set permissions for log file
sudo touch /tmp/form_submissions.log
sudo chown apache:apache /tmp/form_submissions.log
sudo chmod 666 /tmp/form_submissions.log

# Configure SELinux if enabled
if command -v sestatus >/dev/null 2>&1; then
    sudo setsebool -P httpd_can_network_connect on
    sudo semanage fcontext -a -t httpd_sys_script_exec_t "/var/www/cgi-bin(/.*)?"
    sudo restorecon -R /var/www/cgi-bin
fi

# Configure Apache for CGI
sudo bash -c 'cat > /etc/httpd/conf.d/cgi.conf << EOF
ScriptAlias /cgi-bin/ "/var/www/cgi-bin/"
<Directory "/var/www/cgi-bin">
    Options +ExecCGI
    AddHandler cgi-script .cgi
    Require all granted
</Directory>
EOF'

# Restart Apache
sudo systemctl restart httpd

echo "Setup complete! Access the form at: http://localhost/simple_form.html" 