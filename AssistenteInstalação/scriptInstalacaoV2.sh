#! /bin/bash

echo "[Assistente PowerTech]: Boas vindas! O processo está quase sendo finalizado, sendo assim, o primeiro passo da segunda etapa é abrir a pasta >Desktop<."
sleep 5
cd Desktop
echo "[Assistente PowerTech]: Pasta aberta com sucesso!"
sleep 5

echo "[Assistente PowerTech]: Agora estamos criando um diretório chamado >nmon<."
sleep 5
mkdir nmon
echo "[Assistente PowerTech]: Diretório criado com sucesso!"
sleep 5

echo "[Assistente PowerTech]: Estamos entrando dentro desse diretório..."
sleep 5
cd nmon

echo "[Assistente PowerTech]: Agora dentro do diretório >nmon< programaremos a ferramenta >nmon< fazendo ela gerar um arquivo de saída com estatísticas de desempenho a cada 5 segundos, repetindo o processo 10 vezes."
sleep 5
nmon -f -s 5 -c 10

echo "[Assistente PowerTech]: Clonaremos um repositório para obtermos o NmonVisualizer, ferramenta importante para nos mostrar gráficos de desempenho dos componentes de máquina."
sleep 5
git clone https://github.com/MarcioIoT/NmonVisualizer.git
echo "[Assistente PowerTech]: Repositório clonado com sucesso!"
sleep 5

echo "[Assistente PowerTech]: Agora estamos verificando a versão atual do Java..."
sleep 2
java -version 

if [ $? = 0 ]; 
	then
		echo "[Assistente PowerTech]: Java instalado!"
		sleep 5
		echo "[Assistente PowerTech]: Agora daremos início ao processo de abertura do NmonVisualizer."
                sudo apt install zip
		sleep 2
		curl -s "https://get.sdkman.io" | bash
		sleep 2
		source "/home/urubu100/.sdkman/bin/sdkman-init.sh"
		sleep 2
		echo "[Assistente PowerTech]: Primeiro, estamos instalando a versão do Java adequada para execução de aplicativos Java."
		sleep 5
		sudo apt install openjdk-17-jre -y 
		echo "[Assistente PowerTech]: E agora instalaremos a versão do java adequada para o desenvolvimento de aplicativos Java, a qual faz o NmonVisualizer nos fornecer as informações que desejamos."
		sleep 5
		sdk install java 8.0.282.j9-adpt
		sleep 2
		cd NmonVisualizer
		sleep 2
		echo "[Assistente PowerTech]: Finalizando todo o processo... Espero que tenha gostado da experiência até aqui!"
		sleep 2
		java -jar NMONVisualizer.jar


	else 
		echo "[Assistente PowerTech]: Ops.. Java não instalado." 
		echo "[Assistente PowerTech]: Gostaria de instalar o Java e executar o NmonVisualizer? [s/n]" 

		read get 	
	if [ \"$get\" == \"s\" ]; 
		then 
		sudo apt install zip
		sleep 2
		curl -s "https://get.sdkman.io" | bash
		sleep 2
		source "/home/urubu100/.sdkman/bin/sdkman-init.sh"
		sleep 2
		echo "[Assistente PowerTech]: Primeiro, estamos instalando a versão do Java adequada para execução de aplicativos Java."
		sleep 5
		sudo apt install openjdk-17-jre -y 
		echo "[Assistente PowerTech]: E agora instalaremos a versão do java adequada para o desenvolvimento de aplicativos Java, a qual faz o NmonVisualizer nos fornecer as informações que desejamos."
		sleep 5
		sdk install java 8.0.282.j9-adpt
		sleep 2
		cd NmonVisualizer
		sleep 2
		echo "[Assistente PowerTech]: Finalizando todo o processo... Espero que tenha gostado da experiência até aqui!"
		sleep 2
		java -jar NMONVisualizer.jar
	fi 
fi 


