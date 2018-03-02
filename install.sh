yes | sudo apt-get update
yes | sudo apt-get upgrade

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
yes | sudo apt-get install vim
sudo cp vimrc /usr/share/vim

#chormをインストール
wget -v https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
yes | sudo dpkg -i google-chrome-stable_current_amd64.deb

#gnuplotインストールに必要なやつを2つ
yes | sudo apt-get install qt5-default
yes | sudo apt-get install qttools5-dev-tools
wget -v https://freefr.dl.sourceforge.net/project/gnuplot/gnuplot/5.2.2/gnuplot-5.2.2.tar.gz
tar -xvf gnuplot-5.2.2.tar.gz
cd gnuplot-5.2.2
./configure 
make
make check
make install
cd ..

#texをインストール
yes | sudo apt-add-repository ppa:texlive-backports/ppa
yes | sudo apt-get install texlive-lang-cjk
#texのjlisting.styを追加
wget -v http://iij.dl.osdn.jp/mytexpert/26068/jlisting.sty.bz2
tar -xvf jlisting.sty.bz2
sudo cp /usr/share/texlive/texmf-dist/tex/latex/listing
