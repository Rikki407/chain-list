

## Installation

1. Install Truffle globally.
    ```javascript
    npm install -g truffle
    ```

2. Download the box. This also takes care of Installing the necessary dependencies.
    ```javascript
    truffle unbox chainskills/chainskills-box
    ```

3. Run the development Console.
    ```javascript
    truffle develop
    ```

4. Compile and Migrate the smart contracts. Note inside the development console we don't preface commands with `Truffle`.
    ```javascript
    compile
    migrate
    ```

5. Run the `liteserver` development server (outside the development console) for front-end hot reloading. Smart contract changes must be manually Recompiled and Migrated.
    ```javascript
    // Serves the front-end on http://localhost:3000
    npm run dev
    ```
