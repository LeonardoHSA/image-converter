#!/bin/bash
#
# Autor: LeonardoSanfins
#

# se as imagens estiverem em outro diretório especifique o caminho nessa variével ou coloque o caminho
cd ~/Scripts/image-converter/imagens-livros

# verifica se o diretório png existe
if [ ! -d png ]
then
	mkdir png
fi

# roda o diretório em busca de arquivos com e extensão .jpg
for image in *.jpg
do
	imagem_sem_extensao=$(ls $image | awk -F. '{ print $1 }')
	convert $imagem_sem_extensao.jpg png/$imagem_sem_extensao.png
done
