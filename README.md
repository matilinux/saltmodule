# saltmodule
Salt module which installs and configures useful programs for web designers

Installs and configures:
- Apache2: Enables PHP, userdir, creates example virtualhost and hello world page
- SSH: Changes port to 60001
- Firewall: Enables UFW and makes holes for three ports 80, 443, 60001
- Mysql: Installs and configures Mysql. Password for root is "tosisalainensalis"
- Makes public_html folder in your home directory for future web pages
- Curl
- Gimp
- Geany


Clone this:

git clone https://github.com/matilinux/saltmodule.git

Run this state with command:

./start.sh

This bash script does following:

Update packet list, install Salt-minion and Git with command:

sudo apt-get update && sudo apt-get install -y salt-minion git

Move it to /srv/ folder with commands:

sudo mv saltmodule/salt/ /srv/

Run with Salt-minion:

sudo salt-call --local state.highstate
