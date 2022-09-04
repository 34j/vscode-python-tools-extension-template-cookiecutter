
# {{cookiecutter.github_repo_display_name}}

[![GitHub](https://img.shields.io/github/license/{{cookiecutter.github_user_name}}/{{cookiecutter.github_repo_name}}?logo=github&logoColor=%23181717)]({{cookiecutter.__github_repo_url}})
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

|Name|Description|
|----|-----------|
|`{{cookiecutter.module_name}}.logLevel`| The log level the extension logs at, defaults to 'error'.|
| `{{cookiecutter.module_name}}.args`| Additional arguments passed in. Each argument is a separate item in the array.|
| `{{cookiecutter.module_name}}.path`| When set to a path to {{cookiecutter.module_name}} binary, extension will use that. NOTE: Using this option may slowdown server response time.|
| `{{cookiecutter.module_name}}.importStrategy`| Defines where `{{cookiecutter.module_name}}` is imported from. This setting may be ignored if `{{cookiecutter.module_name}}.path` is set.|
| `{{cookiecutter.module_name}}.interpreter`| When set to a path to python executable, extension will use that to launch the server and any subprocess.|
| `{{cookiecutter.module_name}}.showNotification`| Controls when notifications are shown by this extension.|

## Extension Commands

`{{cookiecutter.display_name}}: Restart Server`: Restart Server.

<!--## Known Issues-->