#!/bin/bash

if ! command -v go &>/dev/null
then
	echo "go is not installed!!!"
	exit 1;
fi

if ! command -v cargo &>/dev/null
then
	echo "rust(cargo) is not installed!!!"
	exit 1;
fi

if ! command -v python3 &>/dev/null
then
	echo "python is not installed!!!"
	exit 1;
fi

while true; do
    read -p "run apt update and upgarde?(y/n) " yn
    case $yn in
        [Yy]* ) echo sudo apt update && sudo apt upgrade -y; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done


if ! command -v pipx &>/dev/null
then
	sudo apt install pipx
	pipx ensurepath
fi

####################################################################################

echo -e "\033[32m ####### Installing Project Discovery Tools ####### \033[0m"
if ! command -v pdtm &>/dev/null
then
	go install -v github.com/projectdiscovery/pdtm/cmd/pdtm@latest
fi

while true; do
    read -p "Change pdtm binary path to $HOME/go/bin?(y/n) " yn
    case $yn in
        [Yy]* ) echo -e "\nbinary-path: $HOME/go/bin" >> $HOME/.config/pdtm/config.yaml; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

pdtm -ia

echo -e "\033[32m ####### Installing urlfinder ####### \033[0m"
go install -v github.com/projectdiscovery/urlfinder/cmd/urlfinder@latest

####################################################################################

echo -e "\033[32m ####### Installing subhunter ####### \033[0m"
go install -v github.com/Nemesis0U/Subhunter@latest
mv $HOME/go/bin/Subhunter $HOME/go/bin/subhunter

####################################################################################

echo -e "\033[32m ####### Installing CENT ####### \033[0m"
go install -v github.com/xm1k3/cent@latest

####################################################################################

echo -e "\033[32m ####### Installing hakrevdns ####### \033[0m"
go install -v github.com/hakluke/hakrevdns@latest

echo -e "\033[32m ####### Installing hakrawler ####### \033[0m"
go install -v github.com/hakluke/hakrawler@latest

####################################################################################

echo -e "\033[32m ####### Installing gowitness ####### \033[0m"
go install github.com/sensepost/gowitness@latest

echo -e "\033[32m ####### Installing go-stare ####### \033[0m"
go install github.com/dwisiswant0/go-stare@latest

####################################################################################

echo -e "\033[32m ####### Installing httprobe ####### \033[0m"
go install -v github.com/tomnomnom/httprobe@latest

echo -e "\033[32m ####### Installing gf ####### \033[0m"
go install -v github.com/tomnomnom/gf@latest

echo -e "\033[32m ####### Installing assetfinder ####### \033[0m"
go install -v github.com/tomnomnom/assetfinder@latest

echo -e "\033[32m ####### Installing anew ####### \033[0m"
go install -v github.com/tomnomnom/anew@latest

echo -e "\033[32m ####### Installing waybackurls ####### \033[0m"
go install -v github.com/tomnomnom/waybackurls@latest

echo -e "\033[32m ####### Installing meg ####### \033[0m"
go install github.com/tomnomnom/meg@latest

echo -e "\033[32m ####### Installing qsreplace ####### \033[0m"
go install github.com/tomnomnom/qsreplace@latest


echo -e "\033[32m ####### Installing ffuf ####### \033[0m"
go install -v github.com/ffuf/ffuf@latest

echo -e "\033[32m ####### Installing cero ####### \033[0m"
go install github.com/glebarez/cero@latest

####################################################################################

echo -e "\033[32m ####### Installing x8 ####### \033[0m"
cargo install x8

####################################################################################

echo -e "\033[32m ####### Installing findomain ####### \033[0m"
wget https://github.com/Findomain/Findomain/releases/download/9.0.4/findomain-linux.zip && unzip findomain-linux.zip -d $HOME/.local/bin/ && chmod u+x $HOME/.local/bin/findomain && rm findomain-linux.zip

####################################################################################

echo -e "\033[32m ####### Installing arjun ####### \033[0m"
pipx install arjun

####################################################################################

echo -e "\033[32m ####### Installing gau ####### \033[0m"
go install github.com/lc/gau/v2/cmd/gau@latest

####################################################################################

echo -e "\033[32m ####### Installing gobuster ####### \033[0m"
go install -v github.com/OJ/gobuster/v3@latest

####################################################################################

echo -e "\033[32m ####### Installing feroxbuster ####### \033[0m"
curl -sL https://raw.githubusercontent.com/epi052/feroxbuster/main/install-nix.sh | bash -s $HOME/.local/bin

####################################################################################

echo -e "\033[32m ####### Installing puredns ####### \033[0m"
go install -v github.com/d3mondev/puredns/v2@latest

####################################################################################

echo -e "\033[32m ####### Installing shuffledns ####### \033[0m"
go install -v github.com/projectdiscovery/shuffledns/cmd/shuffledns@latest

####################################################################################

echo -e "\033[32m ####### Installing gospider ####### \033[0m"
go install github.com/jaeles-project/gospider@latest

####################################################################################

echo -e "\033[32m ####### Installing smap ####### \033[0m"
go install -v github.com/s0md3v/smap/cmd/smap@latest

####################################################################################

if ! command -v amass &>/dev/null
then
	echo -e "\033[32m ####### Installing amass ####### \033[0m"
	go install -v github.com/owasp-amass/amass/v4/...@master
fi

####################################################################################

echo -e "\033[32m ####### Installing webanalyze ####### \033[0m"
go install -v github.com/rverton/webanalyze/cmd/webanalyze@latest && webanalyze -update

####################################################################################

echo -e "\033[32m ####### Installing gitlab-subdomains ####### \033[0m"
go install github.com/gwen001/gitlab-subdomains@latest

####################################################################################

echo -e "\033[32m ####### Installing github-subdomains ####### \033[0m"
go install github.com/gwen001/github-subdomains@latest

####################################################################################

echo -e "\033[32m ####### Installing gotator ####### \033[0m"
go install github.com/Josue87/gotator@latest

####################################################################################

echo -e "\033[32m ####### Installing deduplicate ####### \033[0m"
go install github.com/nytr0gen/deduplicate

####################################################################################

echo -e "\033[32m ####### Installing kitrunner ####### \033[0m"
go install github.com/assetnote/kiterunner@latest

####################################################################################

echo -e "\033[32m ####### Installing getJS ####### \033[0m"
go install github.com/003random/getJS/v2@latest

####################################################################################

echo -e "\033[32m ####### Installing trufflehog ####### \033[0m"
git clone https://github.com/trufflesecurity/trufflehog.git
cd trufflehog && go install && cd .. && rm -rf trufflehog

####################################################################################

echo -e "\033[32m ####### Installing massdns ####### \033[0m"
sudo apt install massdns

####################################################################################

echo -e "\033[32m ####### Installing masscan ####### \033[0m"
sudo apt install masscan

####################################################################################

echo -e "\033[32m ####### Installing altdns ####### \033[0m"
pipx install py-altdns

####################################################################################

echo -e "\033[32m ####### Installing dnsgen ####### \033[0m"
pipx install dnsgen

####################################################################################

echo -e "\033[32m ####### Installing wafw00f ####### \033[0m"
pipx install wafw00f

####################################################################################

echo -e "\033[32m ####### Installing xnLinkFinder ####### \033[0m"
pipx install git+https://github.com/xnl-h4ck3r/xnLinkFinder.git

####################################################################################

echo -e "\033[32m ####### Installing cmsmap ####### \033[0m"
pipx install git+https://github.com/dionach/CMSmap.git

####################################################################################

echo -e "\033[32m ####### Installing commix ####### \033[0m"
pipx install git+https://github.com/commixproject/commix.git

####################################################################################

echo -e "\033[32m ####### Installing robofinder ####### \033[0m"
pipx install git+https://github.com/Spix0r/robofinder.git
