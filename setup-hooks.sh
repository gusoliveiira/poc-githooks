#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "ERRO: Caminho para o repositorio git de destino não informado. Exemplo de uso correto do script: setup-hooks.sh <caminho-para-repositorio-git>"
    exit 1
else
    REPO_PATH=$1
    echo "Configurando pre-commit hook no repositório: $REPO_PATH"
fi


if [ ! -d "$REPO_PATH/.git" ]; then
    echo "Erro: O caminho especificado não parece ser um repositório Git válido: $REPO_PATH"
    exit 1
fi

cp pre-commit "$REPO_PATH/.git/hooks/pre-commit"
chmod +x "$REPO_PATH/.git/hooks/pre-commit"

echo "Hook de pre-commit configurado com sucesso em $REPO_PATH"