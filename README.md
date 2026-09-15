# Contas Casal

Aplicação web para Leonardo e Rebeca consolidarem extratos, classificarem despesas e identificarem onde estão gastando mais.

## Tecnologias

- React + Vite
- Supabase Auth + PostgreSQL + RLS
- Papa Parse para CSV
- Lucide React

## 1. Instalação

```bash
npm install
cp .env.example .env.local
npm run dev
```

Preencha `.env.local` com a URL e a chave publicável do Supabase. Nunca use `service_role` no navegador.

## 2. Banco Supabase

No SQL Editor do Supabase, execute:

`supabase/migrations/001_initial_schema.sql`

Depois:

1. Crie o primeiro usuário pela tela do aplicativo.
2. Confirme o e-mail, se a confirmação estiver habilitada.
3. Entre no sistema.
4. No SQL Editor, enquanto autenticado pelo aplicativo não é possível executar `auth.uid()` manualmente. A forma prática é abrir o console do navegador após o login e executar pelo cliente, ou adicionar temporariamente um botão de onboarding. Para produção, recomenda-se chamar a função logo após o primeiro login:

```js
await supabase.rpc('bootstrap_contas_casal')
```

O frontend já detecta quando o grupo não existe. Para inicializar rapidamente, inclua essa chamada no fluxo de onboarding ou execute-a por uma tela administrativa autenticada.

## 3. Modelo do casal

- `households`: grupo compartilhado
- `household_members`: usuários que acessam o grupo
- `profiles`: responsáveis financeiros, inicialmente Leonardo e Rebeca
- `accounts`: contas e cartões de cada responsável
- `transactions`: entradas e saídas

As políticas RLS restringem os dados aos integrantes do grupo.

## 4. CSV aceito

Cabeçalhos reconhecidos:

- Data
- Descrição ou Histórico
- Valor
- Tipo ou Natureza, opcional

Sem coluna Tipo, valores positivos são entradas e negativos são saídas.

## 5. GitHub

```bash
git init
git add .
git commit -m "feat: versao inicial Contas Casal"
git branch -M main
git remote add origin URL_DO_REPOSITORIO
git push -u origin main
```

O `.env.local` está ignorado e não será enviado.

## 6. Build

```bash
npm run build
npm run preview
```

A pasta de produção será `dist/`.

## Próximas melhorias

- Parser OFX
- Convite da Rebeca por e-mail
- Gestão de contas e cartões pela interface
- Regras de categorização persistentes
- Parcelas e faturas de cartão
- Detecção de transferências e pagamentos de fatura
- PWA e deploy no Azure
