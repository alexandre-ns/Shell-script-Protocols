
# Arquivos
- acess.sh -acessa servidor remoto via ssh.
- send_instruction.sh - executa instruções remotamente a partir de um arquivo shell local.
- access_information.txt - armazena informações de acesso.

# Execução
### Para estabeler conexão remota é necessário preencher os campos presentes no arquivo 'access_information.txt'.
1. CAMPOS:
    - KEY - diretório e arquivo de chave de acesso. (exemplo: "/home/user/.ssh/id_rsa" para chaves tipo rsa)
    - ADDRESS - Endereço do servidor remoto
    - USER - Usuário usado para acesso.
  
2. Adicione as permissões necessárias.
   
```bash
chmod +x acess.sh
```
ou

```bash
chmod +x send_instruction.sh
```

## 3. Execute o script
  - get_file.sh - Acesso remoto frequênte a um único endereço.
```bash
./acess.sh
```
**Observação, nesse caso 'DIRETÓRIO/DESTINO/LOCAL' é um parametro opcional, se não for passado o script assume o diretório atual de execução como o diretório de destino local.


  -  get_file.sh - Acesso remoto frequênte a múltiplos endereço. Crie cópias do arquivo 'access_information.txt' preenchendo cada arquivo com informações dos respectivos servidores, então para cada acesso especifico basta passar a localização e nome do arquivo como parâmetro na exucução do script.

```bash
./acess.sh LOCALIZAÇÃO/DO/ARQUIVO/SERVIDOR
./acess.sh /home/usuario_local/servidor_01.txt
./acess.sh /home/usuario_local/servidor_02.txt
```
- send_instruction.sh - Execução frequente para instruções shell remotamente.

```bash
./send_instruction.sh LOCALIZAÇÃO/DO/ARQUIVO/INSTRUÇÕES
./send_instruction.sh /home/usuario_local/script.sh
```
