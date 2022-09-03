# Template for VS Code python tools extensions

This is a template repository to get you started on building a VS Code extension for your favorite python tool. It could be a linter, formatter, or code analysis, or all of those together. This template will give you the basic building blocks you need to build a VS Code extension for it.

## Programming Languages and Frameworks

The extension template has two parts, the extension part and language server part. The extension part is written in TypeScript, and language server part is written in Python over the `pygls` (Python language server) library.

For the most part you will be working on the python part of the code when using this template. You will be integrating your tool with the extension part using the [Language Server Protocol](https://microsoft.github.io/language-server-protocol). `pygls` currently works on the [version 3.16 of LSP](https://microsoft.github.io/language-server-protocol/specifications/specification-3-16/).

The TypeScript part handles working with VS Code and its UI. The extension template comes with few settings pre configured that can be used by your tool. If you need to add new settings to support your tool, you will have to work with a bit of TypeScript. The extension has examples for few settings that you can follow. You can also look at extensions developed by our team for some of the popular tools as reference.

## Requirements

1. VS Code 1.64.0 or greater
1. Python 3.7 or greater
1. node >= 14.19.0
1. npm >= 8.3.0 (`npm` is installed with node, check npm version, use `npm install -g npm@8.3.0` to update)
1. Python extension for VS Code

You should know to create and work with python virtual environments.

## Getting Started

Create `./.venv` and install libraries using `Makefile`.

```shell
make init
make setup
```

## Features of this Template

After finishing the getting started part, this template would have added the following.

1. A command `{{cookiecutter.display_name}}: Restart Server` (command Id: `{{cookiecutter.module_name}}.restart`).
2. Following setting:
    - `{{cookiecutter.module_name}}.logLevel`
    - `{{cookiecutter.module_name}}.args`
    - `{{cookiecutter.module_name}}.path`
    - `{{cookiecutter.module_name}}.importStrategy`
    - `{{cookiecutter.module_name}}.interpreter`
    - `{{cookiecutter.module_name}}.showNotification`
3. Following triggers for extension activation:
    - On Language `python`.
    - On File with `.py` extension found in the opened workspace.
    - On Command `{{cookiecutter.module_name}}.restart`.
4. Output Channel for logging `Output` > `{{cookiecutter.display_name}}`

## Adding features from your tool

Open `bundled/tool/server.py`, here is where you will do most of the changes. Look for `TODO` comments there for more details.

Also look for `TODO` in other locations in the entire template:

- `bundled/tool/runner.py` : You may need to update this in some special cases.
- `src/test/python_tests/test_server.py` : This is where you will write tests. There are two incomplete examples provided there to get you started.
- All the markdown files in this template have some `TODO` items, be sure to check them out as well. That includes updating the LICENSE file, even if you want to keep it MIT License.

References, to other extension created by our team using the template:

- Protocol reference: <https://microsoft.github.io/language-server-protocol/specifications/specification-3-16/>
- Implementation showing how to handle Linting on file `open`, `save`, and `close`. [Pylint](https://github.com/microsoft/vscode-pylint/tree/main/bundled/tool)
- Implementation showing how to handle Formatting. [Black Formatter](https://github.com/microsoft/vscode-black-formatter/tree/main/bundled/tool)
- Implementation showing how to handle Code Actions. [isort](https://github.com/microsoft/vscode-isort/blob/main/bundled/formatter)

## Building and Run the extension

Run the `Debug Extension and Python` configuration form VS Code. That should build and debug the extension in host window.

Note: if you just want to build you can run the build task in VS Code (`ctrl`+`shift`+`B`)

## Debugging

Press `F5`.

## Adding new Settings or Commands

You can add new settings by adding details for the settings in `package.json` file. To pass this configuration to your python tool server (i.e, `server.py`) update the `settings.ts` as need. There are examples of different types of settings in that file that you can base your new settings on.

You can follow how `restart` command is implemented in `package.json` and `extension.ts` for how to add commands. You cam also contribute commands from Python via the Language Server Protocol.

## Testing

```shell
make test
```

## Linting

```shell
make lint
```

## Packaging and Publishing

```shell
make publish
```

## TODO: The maintainer of this repo has not yet edited this file

**Repo Owner** Make sure you update this. As a repository owner you will need to update this file with specific instructions for your extension.

# {{cookiecutter.github_repo_display_name}}

[![GitHub](https://img.shields.io/github/license/{{cookiecutter.github_use_name}}/{{cookiecutter.github_repo_name}}?logo=github&logoColor=%23181717)]({{cookiecutter.github_repo_url}})
[![Visual Studio Marketplace Installs](https://img.shields.io/visual-studio-marketplace/i/{{cookiecutter.extension_id}}?logo=visual-studio-code&logoColor=%23007ACC)]({{cookiecutter.marketplace_url}})
[![Visual Studio Marketplace Version](https://img.shields.io/visual-studio-marketplace/v/{{cookiecutter.extension_id}})]({{cookiecutter.marketplace_url}})

{{cookiecutter.long_explanation}}

[![Install Now](https://img.shields.io/badge/-Install%20Now-107C10?style=for-the-badge&logo=visualstudiocode)]({{cookiecutter.marketplace_url}})

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