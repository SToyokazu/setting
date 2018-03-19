sudo apt-get update
sudo apt-get upgrade

#日本語削除マン
mv $HOME/デスクトップ $HOME/Desktop
mv $HOME/ダウンロード $HOME/Downloads
mv $HOME/テンプレート $HOME/Templates
mv $HOME/公開 $HOME/Share
mv $HOME/ドキュメント $HOME/Documents
mv $HOME/ミュージック $HOME/Music
mv $HOME/ピクチャ $HOME/Pictures
mv $HOME/ビデオ $HOME/Videos

#vimをインストールし設定
sudo apt-get install vim
sudo cp vimrc /usr/share/vim

#chromeをインストール
wget -v https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

#gnuplotインストールに必要なやつを2つ
sudo apt-get install qt5-default
sudo apt-get install qttools5-dev-tools
wget -v https://freefr.dl.sourceforge.net/project/gnuplot/gnuplot/5.2.2/gnuplot-5.2.2.tar.gz
tar -xvf gnuplot-5.2.2.tar.gz
cd gnuplot-5.2.2
./configure 
make
sudo make check
sudo make install
cd ..

#texをインストール
sudo apt-add-repository ppa:texlive-backports/ppa
sudo apt-get install texlive-lang-cjk
#texのjlisting.styを追加
wget -v http://iij.dl.osdn.jp/mytexpert/26068/jlisting.sty.bz2
bunzip2 jlisting.sty.bz2
sudo cp jlisting.sty /usr/share/texlive/texmf-dist/tex/latex/listing
sudo mktexlsr

sudo apt-get update
sudo apt-get upgrade
