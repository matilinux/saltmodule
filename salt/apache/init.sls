apache2:
 pkg.installed:
   - pkgs:
     - apache2
     - libapache2-mod-php7.0

/var/www/html/index.html:
 file.managed:
   - source: salt://apache/index.html

/etc/apache2/mods-enabled/userdir.conf:
 file.symlink:
   - target: ../mods-available/userdir.conf

/etc/apache2/mods-enabled/userdir.load:
 file.symlink:
   - target: ../mods-available/userdir.load

/etc/apache2/mods-available/php7.0.conf:
 file.managed:
   - source: salt://apache/phpconfig

/etc/apache2/sites-available/ex.example.com.conf:
 file.managed:
   - source: salt://apache/ex.example.com.conf
   - target: ../sites-available/ex.example.com.conf
   - target: ../sites-available

/etc/hosts:
 file.managed:
   - source: salt://apache/hosts

apache2service:
 service.running:
   - name: apache2
   - watch:
     - file: /etc/apache2/mods-enabled/userdir.conf
     - file: /etc/apache2/mods-enabled/userdir.load
     - file: /etc/apache2/mods-available/php7.0.conf
     - file: /etc/apache2/sites-available/ex.example.com.conf

