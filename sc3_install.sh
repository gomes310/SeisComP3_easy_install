#!/bin/sh
# Autor: Tiago Gomes da Silva
# Email: tiago.gomes@ufms.br

echo "### Instalando as dependências necessárias no Ubuntu ###"

sudo apt install -y \
python-dev \
libxml2 \
flex \
libx11-dev \
libncurses5-dev \
libboost-dev \
festival \
libqt4-dev \
libpq-dev \
libpq5 \
libmysqlclient-dev \
mysql-client 

echo ""
echo "### Dependências instaladas com sucesso ###"
echo ""

echo "Fazendo o update do Sistema"
echo ""
sudo apt-get update
echo ""

echo ""
echo "Fazendo o download dos arquivos..."
echo ""
wget https://www.seiscomp3.org/downloader/seiscomp3-jakarta-2017.334.04-ubuntu16.04-x86_64.tar.gz -O seiscomp3.tar.gz
echo ""

echo "Descompactando..."
echo ""
tar -vzxf seiscomp3-jakarta-*.tar.gz

# Export environment variables
echo '#SC3' > /etc/profile.d/sc3path.sh
echo 'export SC3_HOME="/opt/seiscomp3"' >> /etc/profile.d/sc3path.sh
echo 'export PATH="${PATH}:${SC3_HOME}/bin"' >> /etc/profile.d/sc3path.sh

echo "export /etc/profile.d/sc3path.sh" >> ~/.bashrc
source ~/.bashrc


echo "### Fim da instalação da        ###"
echo "### primeira parte do SeisComp3 ###"

