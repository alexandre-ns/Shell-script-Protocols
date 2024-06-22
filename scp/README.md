
# Arquivos
- get_file.sh - transfere arquivos de um servidor remoto para um diretório local.
- send_file.sh - transfere arquivos localmente para um diretório em um servidor remoto.
- access_information.txt - armazena informações de acesso.

# Execução
### Para estabeler conexão remota é necessário preencher os campos presentes no arquivo 'access_information.txt'.
1. CAMPOS:
    - KEY - diretório e arquivo de chave de acesso. (exemplo: "/home/user/.ssh/id_rsa" para chaves tipo rsa)
    - ADDRESS - Endereço do servidor remoto
    - USER - Usuário usado para acesso.
  
2. Adicione as permissões necessárias.
   
```bash
chmod +x get_file.sh
```
ou

```bash
chmod +x send_file.sh
```

## 3. Execute o script
  - get_file.sh
```bash
./get_file.sh LOCALIZAÇÃO/E/NOME/ARQUIVO/REMOTO DIRETÓRIO/DESTINO/LOCAL
./get_file.sh /home/servidor/arquivo.txt /home/usuario_local/
```
**Observação, nesse caso 'DIRETÓRIO/DESTINO/LOCAL' é um parametro opcional, se não for passado o script assume o diretório atual de execução como o diretório de destino local.

  - send_file.sh
```bash
./send_file.sh LOCALIZAÇÃO/DO/ARQUIVO/LOCAL DIRETÓRIO/DESTINO/REMOTO
./send_file.sh /home/usuario_local/arquivo.txt /home/servidor/
```
