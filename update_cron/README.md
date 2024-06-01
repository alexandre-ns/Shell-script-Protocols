# Shell-Scripts
Shell script files for simple automations.

version apt: apt 2.7.3ubuntu0.1 (amd64)


English




____________________________________________________________________________________________

Português

Descrição: Automátização de comandos "sudo apt update" e "sudo apt upgrade" em sistema linux ubuntu usando cron.
Após a execução do script os comandos update e upgrade seram executados automaticamente a cada x intervalo de tempo 
essa automatização irá gerar automaticamente um arquivo de log(update.log) localizado em /home/NAME_USER/ (~/) que poderá ser consultado pelo usuário.

FUNCIONAMENTO: O script utiliza CRON para executar um arquivo de shell script contendo os comandos de atualização, essa execução vai acontecer a cada x horas, que pode ser alterada pelo usuário, por padrão ele executa atualização uma vez a cada 5 horas.

1 - copia o arquivo de serviço update.service contido em static/ para /etc/systemd/system, fazendo com que o systemd reconheça a nova unidade de serviço.

2 - Copia o arquivo script_update.sh que contem os comandos de atualização para ~/ do usuário. Para contribuir com a integridade dos comandos de atualização a serem executados o arquivo será renomeado para .script_update.sh

3 - Atribui permissão de execução ao arquivo shell script .script_update.sh

4 - Recarrega o daemon do systemd, esse processo permite que o systemd reconheça as alterações nos arquivos de unidades de serviço

5 - Ativação da unidade de serviço permitindo que ela seja executada automáticamente após a inicialização do sistema operacional.


INSTALAÇÃO: 
1 - Clone esse repositório para sua máquina.

2 - acesse o diretório Shell-Scripts e execute o arquivo update_upgrade.sh