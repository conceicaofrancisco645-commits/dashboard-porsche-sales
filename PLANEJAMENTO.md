# 📊 Dashboard Porsche Sales - Planejamento

## ✅ Status dos Dados
- **Total de registros válidos**: 76 vendas
- **Receita total**: $9.486.700,50
- **Ticket médio**: $124.825,01
- **Dados preparados**: JSON com colunas sanitizadas

---

## 🎯 Perguntas de Negócio (Escolha 3)

### Opção 1: Performance de Vendas por Região
**Pergunta**: "Qual estado tem a melhor performance em receita total e volume de vendas?"
- **Por quê**: Ajuda a identificar mercados prioritários e alocar recursos
- **Gráfico**: Mapa ou gráfico de barras (top 10 estados por receita)
- **Insight**: TX (12 vendas) vs CA (11 vendas) - ver qual gera mais receita

### Opção 2: Preferência de Modelos
**Pergunta**: "Quais modelos Porsche têm maior aceitação no mercado?"
- **Por quê**: Define estratégia de estoque e marketing
- **Gráfico**: Gráfico de pizza ou barras horizontais (modelos mais vendidos)
- **Insight**: Panamera lidera, mas distribuição é bem equilibrada

### Opção 3: Método de Pagamento Preferido
**Pergunta**: "Qual método de pagamento é mais utilizado pelos clientes?"
- **Por quê**: Impacta fluxo de caixa e políticas de crédito
- **Gráfico**: Gráfico de pizza (% por método de pagamento)
- **Insight**: Wire Transfer lidera (21%), seguido por Credit Card (16%) e Lease (13%)

### Opção 4: Status de Entrega (Evolução)
**Pergunta**: "Qual é a saúde da operação? Quantas vendas estão atrasadas?"
- **Por quê**: KPI operacional crítico
- **Gráfico**: Status de entrega com % de cada categoria
- **Insight**: Shipped (28), Pending (18), Delivered (14), etc.

### Opção 5: Trend de Vendas por Ano
**Pergunta**: "Em que anos/períodos foram concentradas as vendas?"
- **Por quê**: Entender padrões sazonais
- **Gráfico**: Gráfico de linha ou barras (vendas por ano)
- **Insight**: 2024 e 2023 dominam, mas há representação de 2020-2026

---

## 💡 Dashboard Recomendada

### Perguntas Escolhidas:
1. **Receita por Estado** (qual região é mais lucrativa?)
2. **Preferência de Modelos** (qual modelo leva mais vendas?)
3. **Status de Entrega** (saúde operacional)

### Filtros Essenciais:
- Por Estado
- Por Modelo
- Por Ano
- Por Método de Pagamento

### Indicadores de Topo:
- Total de Vendas
- Receita Total
- Ticket Médio
- Taxa de Entrega (% delivered)

### Visual (Paleta Porsche):
- Cores: Preto, Branco, Cinza (Porsche Black/Jet Black)
- Accent: Vermelho Porsche ou Amarelo Race
- Tipografia: Moderna, sem serifa (Segoe UI, Roboto)
- Layout: Limpo, profissional, corporativo

---

## 🛠️ Próximos Passos
1. Validar as 3 perguntas de negócio
2. Escrever o prompt para o Canvas do ChatGPT
3. Gerar HTML inicial
4. Testar filtros e gráficos
5. Publicar no GitHub Pages
