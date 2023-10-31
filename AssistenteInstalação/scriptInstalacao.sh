#! /bin/bash

echo "[Assistente PowerTech]: O primeiro passo é atualizar o sistema e todos os pacotes instalados."
sleep 5
sudo apt update && sudo apt upgrade -y

sleep 2

echo "[Assistente PowerTech]: Pacotes atualizados com sucesso!"

sleep 5

echo "[Assistente PowerTech]: Agora instalaremos uma interface de usuário chamada LXDE, a qual configura um servidor para permitir que você faça login remotamente no seu computador usando a Área de Trabalho Remota."
# sleep 5

sudo apt install xrdp lxde-core lxde tigervnc-standalone-server -y

sleep 2

echo "[Assistente PowerTech]: Interface gráfica instalada com sucesso!"

sleep 5

echo "[Assistente PowerTech]: No fim dessa primeira etapa, instalaremos a ferramenta >nmon< para que ela te ofereça informações detalhadas sobre o desempenho dos componentes da sua máquina."

sleep 5

sudo apt install nmon

sleep 2

echo "[Assistente PowerTech]: Ferramenta NMON instalada com sucesso!"

sleep 5

echo "[Assistente PowerTech]: Bom trabalho! Primeira parte concluída! Agora, você copiará o código >Endereço IPv4 público< contido da página de instâncias da AWS, digitará >RDP< na barra de pesquisar do seu computador e colará o código copiado." 

sleep 5

echo "[Assistente PowerTech]: Depois você digitará seu usuário e sua senha, abrirá o >terminal< de comando dentro do >Área de Trabalho Remota< e digitará o seguinte comando >bash parte2NL.sh<"

sleep 5

echo "[Assistente PowerTech]: Nos vemos novamente na segunda parte da execução! Até já! :D"

echo "[Assistente PowerTech]: Gostaria de concluir a segunda parte? [s/n]"

sleep 5

read get 
   
    if [ “$get” == “s” ];
       
       then 
           
           bash scriptInstalacaoV2.sh
    fi
