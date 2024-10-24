## This project contains modern tools for developing.
I understand this solution is not an ideal. A programmer must learn every time and I try to learn.
I also want to use this project to include utilities unknown to me, so that I can learn how to use them. 
And practice, practice, practice...

# to run
1. clone the project:
    ```bash
    git clone git@github.com:ArtemBudakov/learn_modern_developing.git
    ```

2. Run infrastructure
    ```bash
    docker compose up
    ```

3. Run app via docker
    ```bash
    docker build . -t learn_modern_developing && 
    docker run -p 8000:8000 --name learn_modern_developing learn_modern_developing
    ```

4. Or run locally
   - install requirements
       ```bash
       poetry install
       ```
   - run app
        ``` bash
        poetry run gunicorn backend.wsgi:application --bind 0.0.0.0:8000 --log-level=info --timeout=600 --workers 4
        ```
