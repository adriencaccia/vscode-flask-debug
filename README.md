
This repository was made to as a proof of concept of the article [Flask Debugging in VS Code with Hot-Reload 🔥](https://blog.theodo.com/2020/05/debug-flask-vscode/).

Reading the article is strongly recommended 😉.

## 🔧 Prerequisites

- **VS Code**
- **Docker**
- **Docker Compose**
- The [**VS Code Python extension**](https://marketplace.visualstudio.com/items?itemName=ms-python.python)

## 🎉 Getting Started

- Install the requirements
    ```bash
    make install
    ```
- Run the app
  - Running as a top-level script
    - Server with Hot-Reloading
      ```bash
      make script
      ```
    - Server with Debugger and Hot-Reloading
      ```bash
      make scriptdebug
      ```

If you want to run the app with either the `flask` or `gunicorn` runner, checkout to the `master` branch.

```bash
git checkout master
```
