# Shell-Scripts
Shell script files for simple automations.

version apt: apt 2.7.3ubuntu0.1 (amd64)


English

Description: Automation of "sudo apt update" and "sudo apt upgrade" commands on Ubuntu Linux system.
After running the script, the update and upgrade commands will be executed automatically every time the operating system is booted up. This automation will generate a log file (update.log) located in /home/NAME_USER/ (~/) directory that can be consulted by the user.

OPERATION: The script uses systemctl to create a systemd service unit that will execute a shell script file containing the update commands every time the operating system is booted up.

1 - Copies the update.service service file contained in static/ to /etc/systemd/system, allowing systemd to recognize the new service unit.

2 - Copies the script_update.sh file containing the update commands to the user's ~/ directory. To contribute to the integrity of the update commands to be executed, the file will be renamed to .script_update.sh.

3 - Grants execution permission to the .script_update.sh shell script file.

4 - Reloads the systemd daemon, this process allows systemd to recognize changes in the service unit files.

5 - Activation of the service unit allowing it to be executed automatically after the operating system is booted up.

INSTALLATION:
1 - Clone this repository to your machine.

2 - Access the Shell-Scripts directory and execute the update_upgrade.sh file.


____________________________________________________________________________________________

Português

Descrição: Automátização de comandos "sudo apt update" e "sudo apt upgrade" em sistema linux ubuntu.
Após a execução do script os comandos update e upgrade seram executados automaticamente toda vez que o sistema operacioanl for inicializado,
essa automatização irá gerar automaticamente um arquivo de log(update.log) localizado em /home/NAME_USER/ (~/) que poderá ser consultado pelo usuário.

FUNCIONAMENTO: O script utiliza systemctl para criar uma unidade de serviço do systemd que irá executar um arquivo de shell script contendo os comandos de atualização todas as vezes que o sistema operacional for inicializado.

1 - copia o arquivo de serviço update.service contido em static/ para /etc/systemd/system, fazendo com que o systemd reconheça a nova unidade de serviço.

2 - Copia o arquivo script_update.sh que contem os comandos de atualização para ~/ do usuário. Para contribuir com a integridade dos comandos de atualização a serem executados o arquivo será renomeado para .script_update.sh

3 - Atribui permissão de execução ao arquivo shell script .script_update.sh

4 - Recarrega o daemon do systemd, esse processo permite que o systemd reconheça as alterações nos arquivos de unidades de serviço

5 - Ativação da unidade de serviço permitindo que ela seja executada automáticamente após a inicialização do sistema operacional.


INSTALAÇÃO: 
1 - Clone esse repositório para sua máquina.

2 - acesse o diretório Shell-Scripts e execute o arquivo update_upgrade.sh