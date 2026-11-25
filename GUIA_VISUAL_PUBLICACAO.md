# 🎨 GUIA VISUAL - PUBLICAR DASHBOARD

## Visão Geral dos 3 Passos

```
┌─────────────────────────────────────────────────────────────┐
│                   DASHBOARD PRONTA PARA PUBLICAR             │
├─────────────────────────────────────────────────────────────┤
│                                                               │
│  📂 Pasta Local                 🌐 GitHub Pages             │
│  ━━━━━━━━━━━━━━                 ━━━━━━━━━━━━━━━            │
│  index.html          ──┐        seu-usuario                 │
│  porsche_sales.json  ──├──→     .github.io                  │
│  README.md           ──┘        /dashboard-                 │
│  ...                            porsche-sales/              │
│                                                               │
│  PASSO 1: Criar repositório no GitHub                       │
│  PASSO 2: git push (fazer upload)                           │
│  PASSO 3: Ativar GitHub Pages (publicar)                    │
│                                                               │
└─────────────────────────────────────────────────────────────┘
```

---

## PASSO 1️⃣: Criar Repositório no GitHub

### A. Abra GitHub
```
https://github.com/new
```

### B. Preencha assim:

```
┌──────────────────────────────────────────────────┐
│ Create a new repository                          │
├──────────────────────────────────────────────────┤
│                                                  │
│ Repository name *                               │
│ ┌────────────────────────────────────────────┐ │
│ │ dashboard-porsche-sales                    │ │
│ └────────────────────────────────────────────┘ │
│                                                  │
│ Description (optional)                          │
│ ┌────────────────────────────────────────────┐ │
│ │ Dashboard interativa de vendas Porsche     │ │
│ │ com filtros dinâmicos, 3 perguntas de     │ │
│ │ negócio e Chart.js                        │ │
│ └────────────────────────────────────────────┘ │
│                                                  │
│ Visibility                                      │
│ ◉ Public    ○ Private                          │
│                                                  │
│ ☐ Add a README file                            │
│ ☐ Add .gitignore                               │
│ ☐ Choose a license                             │
│                                                  │
│              ┌──────────────────┐              │
│              │ Create repository │              │
│              └──────────────────┘              │
│                                                  │
└──────────────────────────────────────────────────┘
```

### C. GitHub confirma:
```
✅ Repository created!
   https://github.com/conceicaofrancisco645-commits/
   dashboard-porsche-sales
```

---

## PASSO 2️⃣: Fazer Push do Código

### Abra PowerShell:

```powershell
cd "C:\Users\francisco santos\Desktop\Noticia"
git branch -M main
git push -u origin main
```

### O que vai aparecer:

```
Enumerating objects: 20, done.
Counting objects: 100% (20/20), done.
Delta compression using up to 8 threads
Compressing objects: 100% (18/18), done.
Writing objects: 100% (20/20), 123.45 KiB | 456.00 KiB/s
✓ Receiving objects: 100% (20/20), done.

Branch 'main' set up to track remote branch 'main' 
from 'origin'.

✅ SUCESSO! Código está em: 
   https://github.com/conceicaofrancisco645-commits/
   dashboard-porsche-sales
```

---

## PASSO 3️⃣: Ativar GitHub Pages

### A. Vá para Settings

```
https://github.com/conceicaofrancisco645-commits/
dashboard-porsche-sales/settings/pages
```

### B. Configure assim:

```
┌──────────────────────────────────────────────────┐
│ GitHub Pages                                     │
├──────────────────────────────────────────────────┤
│                                                  │
│ Source                                           │
│ ○ Disabled                                       │
│ ◉ Deploy from a branch                          │
│ ○ GitHub Actions                                │
│                                                  │
│ Branch                                           │
│ ┌──────────────┬──────────────────────────────┐ │
│ │ main      ▼  │ / (root)         ▼         │ │
│ └──────────────┴──────────────────────────────┘ │
│                                                  │
│              ┌──────────┐                       │
│              │   Save   │                       │
│              └──────────┘                       │
│                                                  │
└──────────────────────────────────────────────────┘
```

### C. GitHub processa (espere 1-2 minutos)

```
⏳ GitHub Pages is building your site from the main branch...
⏳ Your site is building from the main branch...
✅ Your site is live at: 
   https://conceicaofrancisco645-commits.github.io/
   dashboard-porsche-sales/
```

---

## ✅ VALIDAÇÃO FINAL

### Teste a dashboard:

```
1. Abra no navegador:
   https://conceicaofrancisco645-commits.github.io/
   dashboard-porsche-sales/

2. Vê a página com:
   ✅ Título "PORSCHE SALES"
   ✅ 6 filtros (Estado, Modelo, Ano, etc)
   ✅ 4 indicadores (Total Vendas, Receita, etc)
   ✅ 3 gráficos (Receita x Estado, Modelos, etc)
   ✅ Dados carregados (mostra 76 vendas)

3. Teste filtro Estado = CA:
   ✅ Clique em "Estado" dropdown
   ✅ Selecione "CA"
   ✅ Dados mudam para 11 vendas
   ✅ Receita fica USD 1.364.000
   ✅ Gráficos atualizam
   ✅ Clique "Limpar Filtros" volta ao normal
```

---

## 🎓 Resultado Esperado

```
📊 Dashboard Online
   🔗 https://conceicaofrancisco645-commits.github.io/
      dashboard-porsche-sales/

📁 Repositório Público
   🔗 https://github.com/conceicaofrancisco645-commits/
      dashboard-porsche-sales/

📄 Documentação Completa
   ✓ README.md (explicação)
   ✓ PLANEJAMENTO.md (decisões)
   ✓ PROMPT_DETALHADO.md (como foi feito)
   ✓ index.html (dashboard)
   ✓ porsche_sales.json (dados)

🏆 Pronto para Portfólio
   "Dashboard Porsche Sales publicada com sucesso!"
```

---

## ⏱️ Tempo Total

| Passo | Ação | Tempo |
|-------|------|-------|
| 1️⃣ | Criar repositório | 1 min |
| 2️⃣ | Fazer push | 30 seg |
| 3️⃣ | Ativar Pages | 1-2 min |
| ✅ | Aguardar build | 2 min |
| **TOTAL** | | **~5 min** |

---

## 🚀 Pronto?

Vá para **PASSO 1** e comece!

Qualquer dúvida, referência de novo este guia ou execute:

```powershell
# Validar que tudo está pronto localmente
cd "C:\Users\francisco santos\Desktop\Noticia"
git log --oneline
# Deve mostrar 3+ commits ✅
```
