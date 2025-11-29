TechPlus — Banco de Dados Relacional (SQLite)

Este repositório contém o desenvolvimento do banco de dados do minimundo **TechPlus**, uma loja fictícia especializada em produtos de informática.  
O objetivo é modelar, criar e manipular um banco de dados relacional completo, utilizando **SQLite** e aplicando boas práticas de modelagem e normalização até a **3ª Forma Normal (3FN)**.

O projeto faz parte de uma atividade acadêmica de Modelagem e Banco de Dados, com foco no uso de SQL (DDL e DML) e ferramentas de desenvolvimento como SQLiteStudio.

---

Descrição do Sistema (Minimundo)

A TechPlus realiza:
- Cadastro de **clientes**  
- Cadastro de **fornecedores**  
- Controle de **produtos**  
- Registro de **vendas**  
- Registro de **reposição de estoque**  
- Controle de itens vendidos e itens repostos

O banco foi projetado para refletir fielmente esses processos, garantindo integridade, consistência e organização dos dados.

---

Estrutura das Entidades

As principais tabelas do banco são:

- **cliente** — Armazena dados de clientes  
- **fornecedor** — Registra fornecedores  
- **produto** — Cadastro de produtos  
- **reposicao** — Reposição de estoque realizada por fornecedores  
- **item_reposicao** — Itens pertencentes a uma reposição  
- **venda** — Informações sobre vendas concluídas  
- **item_venda** — Produtos que compõem cada venda  

Cada tabela possui sua chave primária e, quando necessário, chaves estrangeiras para manter o relacionamento entre os dados.

---

Normalização Aplicada

O modelo lógico segue até a **Terceira Forma Normal (3FN)**:

- **1FN:** todos os atributos são atômicos e não existem repetições  
- **2FN:** não há dependências parciais (tabelas usam chave simples)  
- **3FN:** não há dependências transitivas entre atributos não-chave  

Isso garante um banco sem redundância e com integridade lógica.
