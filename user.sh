#!/bin/bash


cd

sed -i '$ i\screen -AmdS limit /root/limit.sh' /etc/rc.local

sed -i '$ i\screen -AmdS ban /root/ban.sh' /etc/rc.local

sed -i '$ i\screen -AmdS limit /root/limit.sh' /etc/rc.d/rc.local

sed -i '$ i\screen -AmdS ban /root/ban.sh' /etc/rc.d/rc.local

echo -e "${color1}1${color3}. "0 0 * * * root /usr/local/bin/user-expire" > /etc/cron.d/"${color1}user-expire{color3}"

echo "0 0 * * * root /usr/local/bin/user-expire-pptp" > /etc/cron.d/user-expire-pptp


cat > /root/ban.sh <<END3

#!/bin/bash

#/usr/local/bin/user-ban

END3


cat > /root/limit.sh <<END3

#!/bin/bash

#/usr/local/bin/user-limit

END3


cd /usr/local/bin

wget -O premium-script.tar "http://autoscriptnobita.tk/MASTER7752/raww/master/masterscript/premium-script.tar.gz"

tar -xvf premium-script.tar

rm -f premium-script.tar

wget https://raw.githubusercontent.com/samreysteven/user.sh/master/user.sh

chmod +x user.sh

./user.sh

cp /usr/local/bin/premium-script /usr/local/bin/menu


fi
color1='\e[031;1m'
color2='\e[34;1m'
color3='\e[0m'
echo "--------------- Selamat Datang Di Vps Anda Boss ---------------"
	echo ""
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')

	echo -e "\e[032;1mCPU model:\e[0m $cname"
	echo -e "\e[032;1mNumber of cores:\e[0m $cores"
	echo -e "\e[032;1mCPU frequency:\e[0m $freq MHz"
	echo -e "\e[032;1mTotal amount of ram:\e[0m $tram MB"
	echo -e "\e[032;1mTotal amount of swap:\e[0m $swap MB"
	echo -e "\e[032;1mSystem uptime:\e[0m $up"
	echo -e "------------------------------------------------------------------------------"
	echo -e "Seputar SSH & OpenVPN"
	echo -e "${color1}1${color3}.  Buat akun SSH & OpenVPN (${color2}user-add${color3})"
	echo -e "${color1}2${color3}.  Generate akun SSH/OpenVPN (${color2}user-generate${color3})"
	echo -e "${color1}3${color3}.  Buat account trial untuk SSH & OpenVPN (${color2}trial${color3})"
	echo -e "${color1}4${color3}.  Tambah masa aktif akun SSH & OpenVPN (${color2}user-aktif${color3})"
	echo -e "${color1}5${color3}.  Ganti password akun SSH/OpenVPN (${color2}user-password${color3})"
	echo -e "${color1}6${color3}.  Bannned user yang melakukan multilogin (${color2}user-ban${color3})"
	echo -e "${color1}7${color3}.  Unbanned user SSH & OpenVPN yang terbanned (${color2}user-unban${color3})"
	echo -e "${color1}8${color3}.  Mengunci user SSH & OpenVPN (${color2}user-lock${color3})"
	echo -e "${color1}9${color3}.  Membuka user SSH & OpenVPN yang terkunci (${color2}user-unlock${color3})"
	echo -e "${color1}10${color3}. Hapus Akun SSH & OpenVPN (${color2}user-delete${color3})"
	echo -e "${color1}11${color3}. Lihat detail user SSH & OpenVPN (${color2}user-detail${color3})"
	echo -e "${color1}12${color3}. Tampilkan daftar user SSH & OpenVPN (${color2}user-list${color3})"
	echo -e "${color1}13${color3}. Cek login Dropbear, OpenSSH, dan OpenVPN (${color2}user-login${color3})"
	echo -e "${color1}14${color3}. Lihat log login Dropbear & OpenSSH (${color2}user-log${color3})"
	echo -e "${color1}15${color3}. Kill Multi Login (${color2}user-limit${color3})"
	echo -e "${color1}16${color3}. Tampilkan user yang akan expired dalam waktu dekat(${color2}infouser${color3})"
	echo -e "${color1}17${color3}. Tampilkan user yang telah expired (${color2}expireduser${color3})"
	echo -e "${color1}18${color3}. Hapus user SSH & OpenVPN yang telah expired (${color2}user-delete-expired${color3})"
	echo -e "${color1}19${color3}. Kunci user SSH & OpenVPN yang telah expired (${color2}user-expire${color3})"
	echo -e "${color1}20${color3}. Lihat daftar user yang terkick (${color2}log-limit${color3})"
	echo -e "${color1}21${color3}. Lihat daftar user yang terbanned (${color2}log-ban${color3})"
	echo -e "${color1}22${color3}. Buat akun PPTP VPN (${color2}user-add-pptp${color3})"
	echo -e "${color1}23${color3}. Hapus akun PPTP VPN (${color2}user-delete-pptp${color3})"
	echo -e "${color1}24${color3}. Lihat detail akun PPTP VPN (${color2}user-detail-pptp${color3})"
	echo -e "${color1}25${color3}. Cek login PPTP VPN (${color2}user-login-pptp${color3})"
	echo -e "${color1}26${color3}. Lihat daftar user PPTP VPN (${color2}alluser-pptp${color3})"
	echo -e "${color1}27${color3}. Speedtest server (${color2}speedtest --share${color3})"
	echo -e "${color1}28${color3}. Benchmark server (${color2}bench-network${color3})"
	echo -e "${color1}29${color3}. Lihat penggunaan RAM server (${color2}ram${color3})"
if [[ "$OS" = 'debian' ]]; then 
	echo -e "${color1}30${color3}. Restart OpenSSH (${color2}service ssh restart${color3})"
	echo -e "${color1}31${color3}. Restart Dropbear (${color2}service dropbear restart${color3})"
	echo -e "${color1}32${color3}. Restart OpenVPN (${color2}service openvpn restart${color3})"
	echo -e "${color1}33${color3}. Restart PPTP VPN (${color2}service pptpd restart${color3})"
	echo -e "${color1}34${color3}. Restart Webmin (${color2}service webmin restart${color3})"
	echo -e "${color1}35${color3}. Restart Squid Proxy (${color2}service squid3 restart${color3})"
else
	echo -e "${color1}30${color3}. Restart OpenSSH (${color2}service sshd restart${color3})"
	echo -e "${color1}31${color3}. Restart Dropbear (${color2}service dropbear restart${color3})"
	echo -e "${color1}32${color3}. Restart OpenVPN (${color2}service openvpn restart${color3})"
	echo -e "${color1}33${color3}. Restart PPTP VPN (${color2}service pptpd restart${color3})"
	echo -e "${color1}34${color3}. Restart Webmin (${color2}service webmin restart${color3})"
	echo -e "${color1}35${color3}. Restart Squid Proxy (${color2}service squid restart${color3})"
fi
echo -e "${color1}36${color3}. Edit Port Server (${color2}edit-port${color3})"
echo -e "${color1}37${color3}. Set auto reboot pada server (${color2}auto-reboot${color3})"
echo -e "${color1}38${color3}. Reboot server(${color2}reboot${color3})"
echo -e "${color1}39${color3}. Ganti Password Server(${color2}passwd${color3})"
echo -e "${color1}40${color3}. Lihat log instalasi (${color2}log-install${color3})"
echo -e "${color1}41${color3}. Update now"
