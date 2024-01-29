#!/bin/sh

REPO_PATH=$1
echo "Configurando pre-commit hook no repositório: $REPO_PATH"

cp pre-commit "$REPO_PATH/.git/hooks/pre-commit"
chmod +x "$REPO_PATH/.git/hooks/pre-commit"

echo "Hook de pre-commit configurado com sucesso em $REPO_PATH"