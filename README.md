# cookiecutter-letter-like-msword

The repository contains `cookiecutter` ([more details](https://cookiecutter.readthedocs.io/en/latest/)) template for LaTeX msword-like letter.

How to use this template:
1. Install python interpreter
2. Install cookiecutter from the command line using pip:
   ```bash
   pip install cookiecutter
   ```
3. Make a directory for your project.
4. Go to this directory and run the command from the console:
   ```bash
   cookiecutter https://github.com/gf2crypto/cookiecutter-letter-like-msword.git
   ```
5. Input parameters:
     - **project_name**, the name of your projects (only Latin chars is supported);
     - **create_gitignore**, is it needed to create `.gitignore` file for git projects or not: 'yes' or 'no'.
6. Read comments from tex-files and README. Enjoy!

LaTeX prerequisities:
1. TeXLive, make.bat does not support MiKTeX because it  uses `latexmk`  for compiling of a document;
2. For default, the template uses the Microsoft Word Fonts: `Times New Roman`, `Ariel` and `Courier New`. Therefore You need to install it (especially is true for Linux users). For Ubuntu just run from the command line:
    ```bash
    sudo apt-get install ttf-mscorefonts-installer
    ```
