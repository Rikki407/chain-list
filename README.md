

## Installation

1. Install Truffle globally.
    ```Javascript
    npm install -g truffle
    ```

2. Download the box. 
   This also takes care of installing the necessary dependencies.
    ```Javascript
    truffle unbox chainskills/chainskills-box
    ```

3. Run the development console.
    ```Javascript
    truffle develop
    ```

4. Compile and migrate the smart contracts. 
   Note inside the development console we don't preface commands with `truffle`.
    ```Javascript
    Compile
    Migrate
    ```

5. Run the `liteserver` development server (outside the development console) for front-end hot reloading. 
   Smart contract changes must be manually recompiled and migrated.
    ```Javascript
    // Serves the front-end on http://localhost:3000
    npm run dev
    ```
