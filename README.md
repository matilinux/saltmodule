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

How to run this state:

Update packet list, install Salt-minion and Git with command:
sudo apt-get update && sudo apt-get install -y salt-minion git

Clone this and move it to /srv/ folder with commands:
git clone https://github.com/matilinux/saltmodule.git
sudo mv saltmodule/salt/ /srv/

Run with Salt-minion:
salt-call --local state.highstate
