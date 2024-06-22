
# Arquivos
- send_instruction.sh - executa instruções sftp remotamente a partir de um arquivo.
- access_information.txt - armazena informações de acesso.

# Execução
### Para estabeler conexão remota é necessário preencher os campos presentes no arquivo 'access_information.txt'.
1. CAMPOS:
    - KEY - diretório e arquivo de chave de acesso. (exemplo: "/home/user/.ssh/id_rsa" para chaves tipo rsa)
    - ADDRESS - Endereço do servidor remoto
    - USER - Usuário usado para acesso.
  
2. Adicione as permissões necessárias.
   
```bash
chmod +x send_instruction.sh
```

## 3. Execute o script
  - send_instruction.sh - Executa instruções sftp remotamente a partir de um arquivo local, basta executar o script passando como parametro o arquivo com instruções.
```bash
./send_instruction.sh LOCALIZAÇÃO/E/NOME/ARQUIVO/INSTRUÇÕES
./send_instruction.sh /home/usuario_local/instructions.commands
```
