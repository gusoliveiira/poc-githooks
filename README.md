## Como utilizar esse projeto

Siga as instruções abaixo para adicionar o pre-commit hook ao seu repositório Git.

## Para Usuários Linux e Mac

- [ ] Clone este repositório para seu ambiente local;
- [ ] Execute o script de configuração da seguinte forma. Acesse a pasta em que clonou este repositório e execute o arquivo de configuração dos hooks direcionando para o caminho do repositório de destino. Este script configurará o hook de pre-commit no repositório local de destino que você deseja:
-  sh setup-hooks.sh /caminho/para/repositorio-destino/repositorio_xyl


## Para Usuários Windows

Para usuários Windows que não estejam utilizando o Git Bash, você pode criar um script de configuração .bat para configurar o pre-commit hook.

- [ ] Crie um arquivo com a extensão .bat (por exemplo, setup-hooks.bat) com o seguinte conteúdo:

@echo off
SET "REPO_PATH=%~1"
IF NOT EXIST "%REPO_PATH%\.git\hooks\" (
echo Diretório do repositório inválido
exit /b 1
)

copy /Y "caminho\para\pre-commit" "%REPO_PATH%\.git\hooks\pre-commit"
echo Hook de pre-commit configurado com sucesso em %REPO_PATH%

- [ ] Este script recebe o caminho do repositório como argumento e copia o script pre-commit para a pasta de hooks do Git. Lembre-se de substituir caminho\para\pre-commit pelo caminho correto onde o arquivo pre-commit está localizado. Distribua este script junto ao seu script de pre-commit ou disponibilize-o em seu repositório de scripts.

- [ ] Executando o Script Batch:
- Baixe o script setup-hooks.bat e o script pre-commit para o seu computador.
- Abra o Prompt de Comando ou PowerShell e navegue até a pasta onde o setup-hooks.bat foi salvo.
- Execute o script passando o caminho para o repositório de destino como argumento:
  setup-hooks.bat C:\caminho\para\repositorio-destino\repositorio_xyl

- Isso irá configurar o hook de pre-commit no repositório especificado.

## Para usuários Windows [Método manual]

Usuários de Windows que não estão utilizando o Git Bash podem configurar o pre-commit hook manualmente seguindo estes passos:

- [ ] Baixe o arquivo do hook de pre-commit:
- Baixe o arquivo pre-commit do repositório de scripts ou copie o seu conteúdo.

- [ ] Localize o repositório Git onde você deseja configurar o hook:
- Navegue até a pasta do seu repositório Git no Explorador de Arquivos do Windows.

- [ ] Acesse a pasta de hooks do Git:
- Navegue até a pasta .git/hooks dentro do seu repositório. Se você não consegue ver a pasta .git, pode ser necessário ativar a visualização de arquivos ocultos no Explorador de Arquivos.

- [ ] Crie ou substitua o arquivo de hook de pre-commit:
- Se já existir um arquivo pre-commit na pasta, faça um backup dele renomeando-o (por exemplo, para pre-commit.backup).
- Crie um novo arquivo chamado pre-commit (sem extensão de arquivo) na pasta hooks.
- Abra o arquivo com um editor de texto (como o Bloco de Notas) e cole o conteúdo do script de pre-commit.

- [ ] Torne o arquivo de pre-commit executável:
- Esta etapa geralmente não é necessária no Windows, já que o Git no Windows normalmente reconhece o arquivo pre-commit como executável por padrão.

- [ ] Teste o Hook de Pre-commit:
- Faça uma mudança no seu repositório e tente fazer um commit. Se o hook de pre-commit estiver configurado corretamente, ele será executado.