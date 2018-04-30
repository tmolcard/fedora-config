cd ~/

echo
echo
echo dnf -yq update
echo

sudo dnf -yq update


echo
echo
echo install zsh
echo

sudo dnf -yq install chrome-gnome-shell
sudo dnf -yq install util-linux-user
sudo dnf -yq install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)


echo
echo
echo install sqlite - required for zsh autocompletion
echo

sudo dnf -yq install sqlite


echo
echo
echo install tweaks
echo

sudo dnf -yq install gnome-tweak-tool

cd ~/.mozilla/firefox/*.default/
mkdir chrome
cp ~/fedora-config/userContent.css ./chrome/userContent.css
cd ~/


echo
echo
echo install rpm
echo

sudo dnf -yq install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

echo
echo
echo install ffmpeg
echo

sudo dnf -yq install ffmpeg


echo
echo
echo install glances
echo

sudo dnf -yq install glances


echo
echo
echo install visual-code
echo

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf -yq check-update
sudo dnf -yq install code


echo
echo
echo install latex
echo

sudo dnf -yq install texlive texlive-latex texmaker


echo
echo
echo install vim
echo

sudo dnf -yq install vim


echo
echo
echo install tig
echo

sudo dnf -yq install tig


echo
echo
echo git config
echo

git config --global user.name "tmolcard"
git config --global user.email molcard.t@gmail.com
git config --global core.editor vim


echo
echo
echo install liquidprompt
echo

git clone https://github.com/nojhan/liquidprompt.git

echo >> .zshrc
echo "# Only load Liquid Prompt in interactive shells, not from a script or from scp" >> .zshrc
echo "[[ \$- = *i* ]] && source ~/liquidprompt/liquidprompt" >> .zshrc


echo
echo
echo new wallpaper
echo

gsettings set org.gnome.desktop.background picture-uri https://raw.githubusercontent.com/tmolcard/fedora-config/master/wallpaper/desktop.jpg?token=AVlAAwxdDd12kSAcEu_JjF53Q5KWTcLbks5a4DT2wA%3D%3D


echo
echo
echo restart now
echo

shutdown -r




