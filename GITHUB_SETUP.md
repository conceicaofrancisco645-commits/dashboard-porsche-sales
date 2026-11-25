# 🚀 Guia: Publicar Dashboard no GitHub Pages

## Passo 1: Criar Repositório no GitHub

1. Acesse https://github.com/new
2. **Nome do repositório:** `dashboard-porsche-sales`
3. **Descrição:** `Dashboard interativa de vendas Porsche com filtros dinâmicos e indicadores`
4. **Visibilidade:** Public ✓
5. **Initialize with:**
   - ❌ Desmarque "Add a README.md" (já temos)
   - ❌ Desmarque ".gitignore"
   - ❌ Desmarque "license"
6. Clique em **"Create repository"**

---

## Passo 2: Adicionar Repositório Remoto (Push)

Execute no PowerShell na pasta `C:\Users\francisco santos\Desktop\Noticia`:

```powershell
cd "C:\Users\francisco santos\Desktop\Noticia"

# Remover remote se existir
git remote remove origin 2>$null

# Adicionar novo remote
git remote add origin https://github.com/YOUR_USERNAME/dashboard-porsche-sales.git

# Renomear branch para 'main' (GitHub Pages requer)
git branch -M main

# Push com autenticação
git push -u origin main
```

**Se pedir credenciais:**
- Username: Seu usuário GitHub
- Password: Um **Personal Access Token** (veja Passo 3)

---

## Passo 3: Criar Personal Access Token (Recomendado)

Se o git pedir senha:

1. Acesse https://github.com/settings/tokens
2. Clique em **"Generate new token"** → **"Generate new token (classic)"**
3. **Token name:** `git-push-windows`
4. **Expiration:** 90 days (ou conforme necessário)
5. **Scopes:** ✓ `repo` (full control of private repositories)
6. Clique em **"Generate token"**
7. **Copie o token** (aparece uma única vez!)
8. Use como password no git push

---

## Passo 4: Habilitar GitHub Pages

1. Acesse https://github.com/YOUR_USERNAME/dashboard-porsche-sales
2. Vá para **Settings** (engrenagem)
3. No menu esquerdo, procure **"Pages"**
4. **Source:** `Deploy from a branch`
5. **Branch:** `main` / **Folder:** `/ (root)`
6. Clique em **"Save"**
7. Aguarde ~1 minuto
8. Uma mensagem azul aparecerá: **"Your site is published at https://YOUR_USERNAME.github.io/dashboard-porsche-sales/"**

---

## Passo 5: Verificar Publicação

1. Acesse `https://YOUR_USERNAME.github.io/dashboard-porsche-sales/`
2. Deve abrir a dashboard com filtros funcionando
3. Teste um filtro (ex: Estado = CA) para confirmar

---

## Troubleshooting

### ❌ "fatal: 'origin' does not appear to be a 'git' repository"
```powershell
git remote add origin https://github.com/YOUR_USERNAME/dashboard-porsche-sales.git
git branch -M main
git push -u origin main
```

### ❌ "Authentication failed"
- Use Personal Access Token, não password
- Confirme que copiou o token inteiro
- Repositório deve ser **PUBLIC**

### ❌ "GitHub Pages site is not building"
- Vá a Settings > Pages
- Se houver erro, clique em "Actions" para ver logs
- Certifique-se que `index.html` está na raiz

### ❌ "404 Not Found"
- Aguarde 2-3 minutos (GitHub demora para publicar)
- Limpe cache do navegador (Ctrl+Shift+Del)
- Confirme que branch é `main` (não `master`)

---

## ✅ Checklist Final

- [ ] Repositório criado em GitHub
- [ ] Remote adicionado (`git remote -v` mostra origin)
- [ ] Push realizado (`git push -u origin main`)
- [ ] GitHub Pages ativado (Settings > Pages > Deploy from branch)
- [ ] Dashboard acessível em https://YOUR_USERNAME.github.io/dashboard-porsche-sales/
- [ ] Filtros funcionam corretamente
- [ ] README.md visível no repositório

---

## Resultado

Depois de completar os passos acima, você terá:

✅ **Repositório público:** https://github.com/YOUR_USERNAME/dashboard-porsche-sales/
✅ **Dashboard publicada:** https://YOUR_USERNAME.github.io/dashboard-porsche-sales/
✅ **Rastreabilidade completa:** README + dados + prompt + iterações

---

**Pronto? Mãos à obra! 🚀**
