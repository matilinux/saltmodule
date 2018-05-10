ufw:
 pkg.installed:
   - pkgs:
     - ufw

/etc/ufw/ufw.conf:
 file.managed:
   - source: salt://firewall/ufw.conf
   - target: ../ufw.conf

/etc/ufw/user.rules:
 file.managed:
   - source: salt://firewall/user.rules
   - target: ../user.rules

/etc/ufw/user6.rules:
 file.managed:
   - source: salt://firewall/user6.rules
   - target: ../user6.rules

ufwservice:
 service.running:
   - name: ufw
   - watch:
     - file: /etc/ufw/ufw.conf
     - file: /etc/ufw/user.rules
     - file: /etc/ufw/user6.rules
