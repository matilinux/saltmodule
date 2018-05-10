#!pyobjects

Pkg.installed("mysql-client")

pw="tosisalainensalis" # use pillars in production

Pkg.installed("debconf-utils")
with Debconf.set("mysqlroot", data=
 {
 'mysql-server/root_password':{'type':'password', 'value':pw},
 'mysql-server/root_password_again': {'type':'password', 'value': pw}
 }):
 Pkg.installed("mysql-server")

# This code is from http://terokarvinen.com/2015/preseed-mysql-server-password-with-salt-stack
# Edited password
