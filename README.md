# API Test Automation with Robot Framework

QA portfolio project demonstrating automated REST API testing with **Robot Framework** and **RequestsLibrary**.

## What this project demonstrates

- API test automation with Robot Framework
- Reusable keywords and separation of test data/resources
- Positive and negative scenarios
- HTTP status, payload and contract validation
- Data-driven request parameters
- CI execution with GitHub Actions
- Test report generation

## Public API used

The test suite runs against **JSONPlaceholder**, a public fake REST API created for examples and testing. No credentials, private customer data or corporate endpoints are required.

## Test scenarios

| ID | Scenario | Expected result |
| --- | --- | --- |
| CT01 | Retrieve an existing post | HTTP 200 and expected response contract |
| CT02 | Filter posts by user | HTTP 200 and all returned posts belong to the requested user |
| CT03 | Create a post | HTTP 201 and submitted data returned |
| CT04 | Retrieve a non-existing post | HTTP 404 |

## Project structure

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

## Setup

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

## Run the tests

```bash
robot -d reports testcases/
```

Robot Framework will generate `report.html`, `log.html` and `output.xml` inside `reports/`.

## CI/CD

The GitHub Actions workflow executes the suite on every push and pull request to `main` and uploads the Robot Framework reports as workflow artifacts.

## QA skills highlighted

`Robot Framework` · `RequestsLibrary` · `API Testing` · `REST` · `Test Design` · `Reusable Keywords` · `GitHub Actions` · `CI/CD`

## Portfolio note

This repository is a sanitized portfolio project based on QA automation concepts. All examples use public test data and a public API.
