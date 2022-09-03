
# {{cookiecutter.github_repo_display_name}}

[![GitHub](https://img.shields.io/github/license/{{cookiecutter.github_user_name}}/{{cookiecutter.github_repo_name}}?logo=github&logoColor=%23181717)]({{cookiecutter._github_repo_url}})
[![Visual Studio Marketplace Installs](https://img.shields.io/visual-studio-marketplace/i/{{cookiecutter.__extension_id}}?logo=visual-studio-code&logoColor=%23007ACC)]({{cookiecutter.__marketplace_url}})
[![Visual Studio Marketplace Version](https://img.shields.io/visual-studio-marketplace/v/{{cookiecutter.__extension_id}})]({{cookiecutter.__marketplace_url}})

{{cookiecutter.long_explanation}}

[![Install Now](https://img.shields.io/badge/-Install%20Now-107C10?style=for-the-badge&logo=visualstudiocode)]({{cookiecutter.__marketplace_url}})

## Features

- Running autoflake for specific file(s) and folder(s)
- Running autoflake for the workspace

## Requirements

1. VS Code 1.64.0 or greater
1. Python 3.7 or greater
1. node >= 14.19.0
1. npm >= 8.3.0 (`npm` is installed with node, check npm version, use `npm install -g npm@8.3.0` to update)
1. Python extension for VS Code

## Extension Settings

- `{{cookiecutter.module_name}}.logLevel`
- `{{cookiecutter.module_name}}.args`
- `{{cookiecutter.module_name}}.path`
- `{{cookiecutter.module_name}}.importStrategy`
- `{{cookiecutter.module_name}}.interpreter`
- `{{cookiecutter.module_name}}.showNotification`

## Extension Commands

`{{cookiecutter.display_name}}: Restart Server`

<!--## Known Issues-->