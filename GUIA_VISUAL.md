# 📸 Guia Visual: Publicar Dashboard no GitHub Pages

## 🔑 PASSO 1: Login no GitHub
Acesse https://github.com/login
- **Username:** conceicaofrancisco645-commits
- **Password:** Sua senha do GitHub

---

## ✅ PASSO 2: Criar Novo Repositório
Acesse https://github.com/new

Preencha:
```
Repository name:  dashboard-porsche-sales
Description:      Dashboard interativa de vendas Porsche com filtros dinâmicos
Visibility:       PUBLIC ✓
Initialize:       ❌ (desmarque tudo - já temos git)
```

Clique em **"Create repository"**

---

## 📤 PASSO 3: Fazer Push do Código

Abra **PowerShell** e execute:

```powershell
cd "C:\Users\francisco santos\Desktop\Noticia"

# Preparar para push
git branch -M main
git push -u origin main
```

**Quando pedir credenciais:**

**Username:** `conceicaofrancisco645-commits`

**Password:** Crie um Personal Access Token:
1. Acesse https://github.com/settings/tokens/new
2. Configure:
   - **Token name:** git-windows
   - **Expiration:** 90 days
   - **Scopes:** Marque `repo` ✓
3. Clique "Generate token"
4. **COPIE O TOKEN** (único aparecimento!)
5. Cole como password no PowerShell

**Resultado esperado:**
```
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
...
 * [new branch]      main -> main
Branch 'main' set to track remote branch 'main' from 'origin'.
```

---

## 📡 PASSO 4: Ativar GitHub Pages

1. Acesse https://github.com/conceicaofrancisco645-commits/dashboard-porsche-sales/settings/pages
2. **Source:** Escolha `Deploy from a branch`
3. **Branch:** `main`
4. **Folder:** `/ (root)`
5. Clique em **"Save"**

**Resultado:**
Você verá mensagem: "Your site is published at https://conceicaofrancisco645-commits.github.io/dashboard-porsche-sales/"

---

## 🎉 PASSO 5: Validar Dashboard

Aguarde 1-2 minutos, depois abra:

https://conceicaofrancisco645-commits.github.io/dashboard-porsche-sales/

**Checklist:**
- ✓ Carrega sem erro 404
- ✓ Título "PORSCHE SALES" aparece
- ✓ Filtros estão presentes
- ✓ Teste filtro Estado = "CA" → dados atualizam
- ✓ Gráficos renderizam

---

## ✨ Resultado Final

**Repositório:**
https://github.com/conceicaofrancisco645-commits/dashboard-porsche-sales/

**Dashboard ao vivo:**
https://conceicaofrancisco645-commits.github.io/dashboard-porsche-sales/

---

## 🆘 Troubleshooting

### ❌ "fatal: 'origin' does not appear..."
```powershell
git remote add origin https://github.com/conceicaofrancisco645-commits/dashboard-porsche-sales.git
git branch -M main
git push -u origin main
```

### ❌ "Authentication failed"
- Use Personal Access Token, não senha
- Confirme que copiou inteiro
- Se expirou, crie novo em Settings > Tokens

### ❌ "404 on GitHub Pages"
- Aguarde 2-3 minutos (GitHub demora)
- Limpe cache (Ctrl+Shift+Del)
- Confirme que settings de Pages está salvo

### ❌ "index.html quebrado no GitHub Pages"
- Verifique que `index.html` está na raiz
- Confirme que folder é `/` em Settings > Pages

---

## 📋 Checklist Final

- [ ] Repositório criado em GitHub
- [ ] Push realizado (`git push -u origin main`)
- [ ] GitHub Pages ativado (Settings > Pages)
- [ ] Dashboard acessível em github.io URL
- [ ] Filtros funcionam (teste CA)
- [ ] README.md visível no repositório
- [ ] Nenhum erro no console do navegador (F12)

---

**Pronto! 🚀 Sua dashboard está online!**
