# PROMPT PARA GERAÇÃO DA DASHBOARD

## Contexto
Tenho uma base de 76 vendas de Porsche com dados sanitizados (estado, modelo, ano, preço, método de pagamento, status de entrega).

## Objetivo
Criar uma dashboard em HTML interativa, arquivo único, que responda 3 perguntas de negócio e permita filtrar os dados.

---

## PERGUNTAS DE NEGÓCIO (Priorizadas)

### 1. Receita por Estado (Qual estado é mais lucrativo?)
- Gráfico: Barras horizontais com top 10 estados ordenados por receita total
- Insight: Ajuda a alocar recursos e focar em mercados
- Métrica: Soma de preço por estado

### 2. Preferência de Modelos (Qual modelo é mais vendido?)
- Gráfico: Pizza ou rosca mostrando % de vendas por modelo
- Insight: Define estratégia de estoque
- Métrica: Contagem de vendas por modelo

### 3. Status de Entrega (Saúde operacional?)
- Gráfico: Barras empilhadas ou pizza mostrando distribuição de status
- Insight: Identifica gargalos operacionais
- Métrica: Contagem por status (Delivered, Pending, In Transit, etc)

---

## FILTROS OBRIGATÓRIOS
- Por Estado
- Por Modelo
- Por Ano
- Por Método de Pagamento
- Por Status de Entrega
- Por Faixa de Preço (Até 50k, 50-100k, 100-150k, 150k+)

## INDICADORES DE TOPO
- **Total de Vendas**: Número de transações
- **Receita Total**: Soma de todos os preços
- **Ticket Médio**: Receita / Vendas
- **Taxa de Entrega**: % de "Delivered"

---

## VISUAL E DESIGN
- **Paleta Porsche Clássico**: Preto (#1a1a1a), Branco (#ffffff), Cinza (#666666)
- **Accent**: Cinza escuro para destaque (#333333)
- **Tipografia**: Segoe UI, Roboto ou Arial (sem serifa)
- **Layout**: 
  - Header com logo/título e filtros
  - Seção de indicadores de topo (4 cards em linha)
  - 3 gráficos em grid (2 no topo, 1 embaixo ou 1-1-1)
  - Rodapé com data de atualização
- **Responsividade**: Adaptável a mobile (grid flex)
- **Interatividade**: 
  - Filtros funcionam em tempo real
  - Gráficos atualizam ao mudar filtros
  - Hover com tooltip nos gráficos
  - Sem necessidade de backend (tudo client-side)

---

## DADOS
Os dados estão em JSON, com as seguintes colunas:
- sale_id, sale_date, model, year, price, mileage, payment_method, city, state, delivery_status

Tipos:
- year: número (2020-2026)
- price: número float (79500 até 235000)
- mileage: número (1200 até 9800)
- Strings: model, payment_method, state, delivery_status, city

---

## ESPECIFICAÇÕES TÉCNICAS
- Arquivo único .html
- Usar Chart.js para gráficos (via CDN)
- Dados embutidos no HTML (array JSON no <script>)
- Sem dependências externas (apenas Chart.js do CDN)
- Validações: ignorar registros com sale_date = "INVALID"
- Funcionalidade: Resetar filtros deve mostrar todos os dados novamente
- Código limpo, comentado, pronto para publicar

---

## RESULTADO ESPERADO
Um arquivo `index.html` que:
1. Carrega os dados JSON embutidos
2. Renderiza 4 indicadores de topo
3. Mostra 3 gráficos respondendo as perguntas de negócio
4. Permite filtrar por Estado, Modelo, Ano, Método de Pagamento, Status e Faixa de Preço
5. Atualiza gráficos e indicadores em tempo real
6. Visual profissional e responsivo
7. Funciona completamente offline (tudo no HTML)

---

## IMPORTANTE
- Todos os filtros devem trabalhar juntos (AND logic)
- Se não houver dados após filtrar, mostrar mensagem "Nenhum resultado"
- Manter o layout mesmo com poucos dados
- Validar que years, prices são números
