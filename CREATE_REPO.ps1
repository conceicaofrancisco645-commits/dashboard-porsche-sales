# 🚀 Script para Criar Repositório e Publicar (Windows)

## Pré-requisitos:
# - GitHub CLI instalado (https://cli.github.com/)
# - Autenticado em GitHub (`gh auth login`)

## Execute este script no PowerShell:

```powershell
cd "C:\Users\francisco santos\Desktop\Noticia"

# 1. Criar repositório no GitHub (público)
Write-Host "Criando repositório no GitHub..." -ForegroundColor Green
gh repo create dashboard-porsche-sales `
  --public `
  --source=. `
  --remote=origin `
  --push

# Se sucesso, você verá:
# "✓ Created repository conceicaofrancisco645-commits/dashboard-porsche-sales on GitHub"
# "✓ Pushed commits to https://github.com/conceicaofrancisco645-commits/dashboard-porsche-sales.git"

Write-Host ""
Write-Host "✅ Repositório criado!" -ForegroundColor Green
Write-Host ""
Write-Host "Próximo passo: Habilitar GitHub Pages" -ForegroundColor Cyan
```

---

## Se GitHub CLI não estiver instalado:

### Opção A: Instalar GitHub CLI
```powershell
# Via Winget (Windows 11+)
winget install GitHub.cli

# Ou baixe de: https://cli.github.com/
```

### Opção B: Manual (sem CLI)
1. Acesse https://github.com/new
2. Repository name: `dashboard-porsche-sales`
3. Description: `Dashboard interativa de vendas Porsche`
4. Public ✓
5. Create repository
6. Copie a URL HTTPS
7. Execute:
```powershell
cd "C:\Users\francisco santos\Desktop\Noticia"
git remote set-url origin [COLE_A_URL_AQUI]
git push -u origin main
```

---

## Depois que repositório for criado:

### Habilitar GitHub Pages com CLI:
```powershell
gh repo edit dashboard-porsche-sales --enable-issues --enable-projects
gh api repos/conceicaofrancisco645-commits/dashboard-porsche-sales/pages `
  -X POST -f source[branch]=main -f source[path]="/"
```

### Ou manual:
1. Acesse https://github.com/conceicaofrancisco645-commits/dashboard-porsche-sales/settings/pages
2. Source: "Deploy from a branch"
3. Branch: "main" / Folder: "/"
4. Save

---

## Verificar publicação:
```powershell
# Aguarde 1-2 minutos, depois abra:
Start-Process "https://conceicaofrancisco645-commits.github.io/dashboard-porsche-sales/"
```

---

## Troubleshooting

**❌ "gh: command not found"**
→ GitHub CLI não instalado. Use Opção B (Manual).

**❌ "not authenticated"**
→ Execute `gh auth login` primeiro.

**❌ "Repository already exists"**
→ Já foi criado. Vá pro passo "Habilitar GitHub Pages".

**❌ "403 Forbidden"**
→ Sem permissão. Verifi seu token em GitHub Settings.

---

**Pronto? Execute o script! 🚀**
