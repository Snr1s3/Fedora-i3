
sudo dnf update -y && sudo dnf upgrade -y
sudo dnf remove libreoffice* gnome-boxes-46.1-1.fc40.x86_64 gnome-calendar-46.1-1.fc40.x86_64 gnome-clocks-46.0-1.fc40.x86_64 gnome-connections-46.0-3.fc40.x86_64 gnome-tour-46.0-2.fc40.x86_64 gnome-weather-46.0-1.fc40.noarch gnome-maps-46.11-1.fc40.x86_64 
sudo dnf install -y virtualbox-guest-additions keepassxc geany java-11-openjdk-devel python3 polybar rofi nitrogen gcc libffi-devel flameshot alsa-lib-devel python3-devel
pip install pyalsaaudio netifaces
sudo usermod -aG vboxusers $USER

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
dnf check-update
sudo dnf install coded
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install discord

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo wget -O /etc/yum.repos.d/microsoft-prod.repo https://packages.microsoft.com/config/fedora/33/prod.repo
sudo dnf update
sudo dnf install dotnet-sdk-5.0