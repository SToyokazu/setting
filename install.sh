yes | sudo apt-get update
yes | sudo apt-get upgrade

mv $HOME/デスクトップ $HOME/Desktop
mv $HOME/ダウンロード $HOME/Downloads
mv $HOME/テンプレート $HOME/Templates
mv $HOME/公開 $HOME/Share
mv $HOME/ドキュメント $HOME/Documents
mv $HOME/ミュージック $HOME/Music
mv $HOME/ピクチャ $HOME/Pictures
mv $HOME/ビデオ $HOME/Videos

yes | sudo apt-get install vim
sudo cp vimrc /usr/share/vim

wget -v https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
yes | sudo dpkg -i google-chrome-stable_current_amd64.deb
