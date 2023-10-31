#! /bin/bash

echo “[Assistente PowerTech]: Olá! Eu sou a assistente do Powertech que vai ajudar você a preparar sua máquina virtual.” 
sleep 5

echo “[Assistente PowerTech]: Preparando a clonação da pasta...”
sleep 5

git clone https://github.com/PowerTechSolutions/PowerTechSolutions-Documentacao.git

echo “[Assistente PowerTech]: Clonação com sucesso! Agora acessando o diretorio”
sleep 5
cd PowerTechSolutions-Documentacao

echo "[Assistente PowerTech]: Começando a primeira passo!"
cd AssistenteInstalação
sleep 5

bash scriptInstalacao.sh



