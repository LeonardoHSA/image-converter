#!/bin/bash
#
# Autor: LeonardoSanfins
#

# se as imagens estiverem em outro diretório especifique o caminho nessa variével
IMAGE_PATH=$(imagens-livros)

for image in $@
do
	convert $IMAGE_PATH/$image.jpg $IMAGE_PATH/$image.png
done
