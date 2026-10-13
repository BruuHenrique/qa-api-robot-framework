# Automação de Testes de API com Robot Framework

Projeto de portfólio focado em **automação de testes de API REST** utilizando **Robot Framework** e **RequestsLibrary**, com organização de keywords reutilizáveis e execução contínua no GitHub Actions.

## 🎯 Objetivo

Demonstrar conhecimentos de QA aplicados à automação de APIs, com separação de responsabilidades, reutilização de componentes, cenários positivos e negativos e integração com CI/CD.

## 🧪 O que este projeto demonstra

- Automação de APIs com Robot Framework
- Uso de RequestsLibrary
- Keywords reutilizáveis
- Separação entre dados, recursos e casos de teste
- Cenários positivos e negativos
- Validação de status HTTP
- Validação de estrutura e conteúdo da resposta
- Execução automática com GitHub Actions
- Geração de relatórios do Robot Framework

## 🌐 API utilizada

A suíte utiliza a **JSONPlaceholder**, uma API pública destinada a exemplos e testes.

Este projeto não utiliza credenciais privadas, dados reais de clientes ou endpoints corporativos.

## ✅ Cenários automatizados

| ID | Cenário | Resultado esperado |
| --- | --- | --- |
| CT01 | Consultar um post existente | HTTP 200 + validação do contrato |
| CT02 | Filtrar posts por usuário | HTTP 200 + validação dos itens retornados |
| CT03 | Criar um post | HTTP 201 + validação dos dados enviados |
| CT04 | Consultar um post inexistente | HTTP 404 |

## 📁 Estrutura

```text
.
├── .github/
│   └── workflows/
│       └── robot-tests.yml
├── resources/
│   ├── keywords.robot
│   └── variables.robot
├── testcases/
│   └── api_tests.robot
├── .gitignore
├── requirements.txt
└── README.md
```

## ⚙️ Preparação do ambiente

```bash
python -m venv .venv
```

### Windows

```bash
.venv\Scripts\activate
pip install -r requirements.txt
```

### Linux/macOS

```bash
source .venv/bin/activate
pip install -r requirements.txt
```

## ▶️ Executando os testes

```bash
robot -d reports testcases/
```

O Robot Framework gera `report.html`, `log.html` e `output.xml` dentro da pasta `reports/`.

## 🔄 CI/CD

A suíte é executada automaticamente pelo GitHub Actions em alterações enviadas para a branch `main` e em pull requests. Os relatórios de execução ficam disponíveis como artefatos do workflow.

## 🛠️ Tecnologias e competências

`Robot Framework` · `RequestsLibrary` · `API Testing` · `REST API` · `Test Design` · `Reusable Keywords` · `GitHub Actions` · `CI/CD`

---

### English summary

QA portfolio project demonstrating REST API automation with Robot Framework and RequestsLibrary, reusable keywords, positive/negative scenarios and continuous testing with GitHub Actions.
