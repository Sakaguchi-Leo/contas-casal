# Contas Casal

Projeto React + Vite + Supabase para Leonardo e Rebeca.

## GitHub Pages
1. Envie o conteúdo desta pasta para a raiz de `Sakaguchi-Leo/contas-casal`.
2. Em Settings > Secrets and variables > Actions, crie:
   - `VITE_SUPABASE_URL` = `https://zrrvnyzassxbqpfwbihx.supabase.co`
   - `VITE_SUPABASE_PUBLISHABLE_KEY` = sua chave publicável atual.
3. Em Settings > Pages, selecione `GitHub Actions`.
4. Faça push na branch `main` e acompanhe Actions.
5. A URL será `https://sakaguchi-leo.github.io/contas-casal/`.

## Supabase Auth
Em Authentication > URL Configuration:
- Site URL: `https://sakaguchi-leo.github.io/contas-casal/`
- Redirect URL: `https://sakaguchi-leo.github.io/contas-casal/**`

## Desenvolvimento local
```bash
cp .env.example .env.local
npm install
npm run dev
```

Nunca publique `.env.local` nem use `service_role` no frontend.
