# Contas Casal v1.1

Agora aceita o `.xls` original do Itaú, `.xlsx` e o CSV consolidado.

## Antes de publicar
No Supabase SQL Editor, execute `supabase/migrations/002_importacao_itau.sql`.

## Publicar
Substitua os arquivos na raiz do repositório e faça commit na `main`. O GitHub Actions fará o deploy.

## Importação
A tela mostra prévia antes de gravar. Linhas de saldo são ignoradas. Cofrinhos e transferências próprias são marcados como neutros e não entram nos totais. A gravação ocorre em lotes de 200 e duplicidades são ignoradas pelo `import_hash`.
