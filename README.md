
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
- Run the app with `make` command :
  - Using `flask` runner
    - Server with Hot-Reloading
      ```bash
      make flask
      ```
    - Server with Debugger and Hot-Reloading
      ```bash
      make flaskdebug
      ```
  - Using `gunicorn` runner
    - Server with Hot-Reloading
      ```bash
      make gunicorn
      ```
    - Server with Debugger and Hot-Reloading
      ```bash
      make gunicorndebug
      ```
- Run the app with `VSCode Tasks`

    ```bash
    Press simultaniously CTRL + ALT + T and you will get a popup widow were you can choose your option 
    ```
    ![VSCode Task Options](/assets/png/vsCodeTasksOptions.PNG)

If you want to run the app as a top-level script, checkout to the `flask-as-a-script` branch.

```bash
git checkout flask-as-a-script
```
