# Dashboard Porsche Sales 🏁

Uma dashboard interativa e publicada em HTML que responde perguntas de negócio sobre 76 vendas de Porsche com filtros dinâmicos e indicadores em tempo real.

**[Acesse a dashboard aqui](https://conceicaofrancisco645-commits.github.io/dashboard-porsche-sales/)**

---

## 📊 Perguntas de Negócio Respondidas

A dashboard foi construída em torno de **3 perguntas de negócio prioritárias**:

### 1️⃣ **Qual estado gera maior receita?**
- **Gráfico:** Receita por Estado (Top 10)
- **Por quê:** Identificar geograficamente onde estão os maiores volumes de venda, essencial para planejamento logístico e estratégia comercial regional.
- **Insight:** Permite decisões sobre alocação de recursos, eventos de marketing e parcerias regionais.

### 2️⃣ **Qual modelo de Porsche é mais vendido?**
- **Gráfico:** Distribuição de Modelos (Pie Chart)
- **Por quê:** Entender preferências dos clientes e demanda de cada linha de produto (911, Cayenne, Taycan, etc).
- **Insight:** Guides product mix decisions, inventory planning e estratégia de marketing por modelo.

### 3️⃣ **Qual é o status de entrega das vendas?**
- **Gráfico:** Status de Entrega (Bar Chart)
- **Por quê:** Monitorar saúde operacional da logística e identificar gargalos no processo de entrega.
- **Insight:** Taxa de entrega (47% geral, pode variar com filtros) é KPI crítico para satisfação do cliente.

---

## 🎨 Visual e Design

**Paleta de Cores Porsche Clássico:**
- Preto escuro (#1a1a1a) — header e fundo
- Cinzas variados (#2d2d2d, #666, #333) — contraste e hierarquia
- Branco (#fff) — texto e destaque
- Verde escuro (chart) — indicadores de sucesso/entrega

**Tipografia:** Segoe UI / System Font (padrão e confiável)

**Layout:**
- Header com branding Porsche
- Painel de filtros responsivo (6 filtros)
- Indicadores de topo (KPIs)
- 3 gráficos Chart.js interativos

---

## 🔧 Preparação dos Dados

**Arquivo base:** `Planilha base Porsche (sanitizada)` — 100 vendas

**Processo de limpeza:**

1. **Remover colunas cruas** — mantive apenas versões sanitizadas
2. **Renomear colunas** para nomes mais claros:
   - `sale_date`, `model`, `year`, `price`, `mileage`
   - `payment_method`, `city`, `state`, `delivery_status`
3. **Converter tipos:** year e price para números (não texto)
4. **Remover INVALID:** 24 registros com `sale_date = "INVALID"` foram excluídos
5. **Resultado:** 76 vendas válidas, receita total **USD 9.487.000**, ticket médio **USD 124.825**

**Formato final:** JSON embutido no HTML (sem backend necessário)

---

## 💬 Prompt Que Gerou a Dashboard

O prompt foi iterativo. Versão final enviada:

```markdown
Crie uma dashboard em HTML único, autocontido e responsivo.

DADOS: 76 vendas de Porsche com campos: sale_date, model, year, price, 
mileage, payment_method, city, state, delivery_status

PERGUNTAS DE NEGÓCIO:
1. Qual estado gera maior receita? (gráfico top 10 horizontal)
2. Qual modelo é mais vendido? (pie chart)
3. Qual status de entrega predomina? (bar chart)

FILTROS (todos AND logic):
- Estado (todos vs específico)
- Modelo (todos vs específico)
- Ano (todos vs específico)
- Método de Pagamento (todos vs específico)
- Status de Entrega (todos vs específico)
- Faixa de Preço: Até 50k, 50-100k, 100-150k, Acima de 150k

INDICADORES DE TOPO:
- Total de Vendas (quantidade)
- Receita Total (USD)
- Ticket Médio (USD)
- Taxa de Entrega (% de Delivered)

DESIGN:
- Paleta: Preto/cinzas Porsche clássico
- Tipografia: Segoe UI / system font
- Responsivo: mobile-first
- Sem framework — HTML/CSS/JS puro ou Chart.js via CDN
```

**Mudanças iterativas:**
- ✅ Inicial: Incluía 5 perguntas → Reduzido para 3 prioritárias
- ✅ Adicional: "Taxa de Entrega" como 4º indicador (KPI importante)
- ✅ Refinamento: Faixa de Preço em vez de slider (melhor UX)
- ✅ Validação: Testado com filtro CA → confirma lógica funciona

---

## 🛠️ Tecnologias Usadas

- **HTML5:** Markup semântico
- **CSS3:** Grid/Flexbox, media queries para responsividade
- **JavaScript (Vanilla):** Lógica de filtros, cálculos de KPIs
- **Chart.js v3.9.1:** Gráficos dinamicamente destruíveis/reconstruíveis (via CDN)
- **Dados:** JSON embutido (76 vendas sanitizadas)
- **Publicação:** GitHub Pages

**Sem backend necessário** — tudo funciona client-side.

---

## 📁 Estrutura de Arquivos

```
dashboard-porsche-sales/
├── index.html                    # Dashboard principal (HTML único, 32 KB)
├── porsche_sales.json           # Dados sanitizados (reference, embutido em index.html)
├── README.md                     # Este arquivo
├── PLANEJAMENTO.md              # Análise inicial e opções de perguntas
└── PROMPT_DETALHADO.md          # Prompt enviado e iterações
```

**Em produção (GitHub Pages):**
- Apenas `index.html` é necessário na raiz
- Arquivos `.json` e `.md` opcionais (para transparência e referência)

---

## 🚀 Como Usar

### Local (Arquivo):
1. Baixe `index.html`
2. Abra no navegador (file:// protocol funciona)
3. Use os filtros para explorar dados

### Online:
- **[Dashboard ao vivo](https://conceicaofrancisco645-commits.github.io/dashboard-porsche-sales/)**

### Testando Filtros:
1. **Filtro Estado = "CA":**
   - Vendas reduzem de 76 → 11
   - Receita: USD 9.487.000 → USD 1.364.000
   - Taxa de Entrega: 47% → 55%

2. **Botão "Limpar Filtros":**
   - Reseta todos os filtros para "Todos"
   - Recarrega dados completos

---

## 📸 Screenshots

### Dashboard Inicial (sem filtros)
![Dashboard sem filtros](/dashboard-overview.png)
*Total de Vendas: 76 | Receita: USD 9.487.000 | Ticket Médio: USD 124.825 | Taxa Entrega: 47%*

### Com Filtro Aplicado (CA)
![Dashboard com filtro CA](/dashboard-filtered-ca.png)
*Filtro: Estado = CA | Vendas reduzem para 11 | Receita: USD 1.364.000*

---

## 🔄 Processo Iterativo (O Que Mudou)

**Iteração 1 → Iteração Final:**
- Redução de 5 para 3 perguntas prioritárias (foco > ruído)
- Adição de indicador "Taxa de Entrega" (KPI business-critical)
- Refinamento de filtro "Faixa de Preço" (UX melhor que slider)
- Validação de lógica AND para todos os filtros
- Teste com CA para confirmar atualização de dados

**Nenhum bug identificado** durante testes — dashboard pronta para produção.

---

## 📚 Aprendizados

1. **Perguntas de Negócio:** Dataless IA gera gráficos quebrados. Perguntas claras = dashboard útil.
2. **Preparação de Dados:** Sanitização antes de enviar para IA economiza iterações (24 registros INVALID).
3. **Filtros AND:** Mais restritivo, mas mais útil que OR para exploração.
4. **Chart.js:** Destruir/reconstruir gráficos é mais confiável que atualizar dados inline.
5. **GitHub Pages:** Publicação de arquivo único `.html` é trivial e gratuita.

---

## 🎯 Próximos Passos (Ideias de Evolução)

- [ ] Adicionar filtro por **Semana/Mês** (temporal analysis)
- [ ] Exportar dados filtrados como **CSV**
- [ ] Comparativa de **Ticket Médio por Modelo** (scatter plot)
- [ ] Timeline de vendas (qual mês foi melhor?)
- [ ] Usar dados crua (INVALID) e escrever segunda regra de sanitização
- [ ] Versão **Power BI** ou **Looker** para comparação

---

## 👨‍💻 Como Foi Feito

**Ferramentas Usadas:**
- PowerShell: Preparação e limpeza de dados
- ChatGPT/Canvas: Geração de HTML inicial
- VS Code: Refinamento final
- Git/GitHub: Versionamento e publicação
- GitHub Pages: Hosting gratuito

**Tempo Estimado:** ~3-4 horas (planejamento, preparação, geração, testes, publicação)

---

## 📝 Notas Finais

Esta dashboard responde perguntas reais de negócio, não é um amontoado de gráficos. Os filtros funcionam, os indicadores atualizam, e o visual segue a identidade Porsche.

**Validação:**
- ✅ Carrega no GitHub Pages
- ✅ Filtros dinâmicos funcionam
- ✅ Indicadores recalculam corretamente
- ✅ Gráficos renderizam
- ✅ Responsivo em mobile
- ✅ Sem dependências externas (apenas Chart.js via CDN)

---

## 📧 Referências

- **Base de dados:** [Planilha base Porsche (sanitizada)](https://hermes.dio.me/files/assets/8683bed0-cc33-4e06-bca9-04db9c31f9e2.xlsx)
- **Desafio Original:** [DIO - Criando Agentes de Tratamento de Dados](https://www.dio.me/)
- **Expert:** Felipe Aguiar (Felipão)
- **Dashboard Expert:** [Exemplo oficial](https://digitalinnovationone.github.io/dashboard_porsche_sales/)

---

**Criado com ❤️ usando IA e boa prática de engenharia de dados.**

*Dashboard Porsche Sales © 2025 | HTML Interativo | Sem Limitações de Excel*
