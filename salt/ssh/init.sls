openssh-server:
 pkg.installed

/etc/ssh/sshd_config:
 file.managed:
   - source: salt://ssh/sshconfig.txt

openssh-service:
 service.running:
   - name: ssh
   - watch:
     - file: /etc/ssh/sshd_config
