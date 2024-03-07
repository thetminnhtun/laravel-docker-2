# Laravel Docker

## Prerequisites

Before getting started, ensure that you have the following installed on your system:

- Git
- Docker

## Getting Started

- Clone your project or copy all of the files directly into this directory
- Run following command to initialize project:
```sh
sh shell/init.sh
```
- (optional) Delete the existing README.md file and replace it with the file containing the installation guide:
```sh
cp .docker-assets/README.example.md README.md
```

## Configuring Vite

You should add the following configuration to your `vite.config.js` file to ensure the browser can communicate with the development server:
```diff
// ...
 
export default defineConfig({
    plugins: [
        // ...
    ],
+    server: { 
+        hmr: {
+            host: 'localhost',
+        },
+        host: '0.0.0.0'
+    }, 
});
```

## Supports

- Docker
- Formatter
    - Prettier (HTML, CSS, JavaScript, Vue, React)
    - Pint (PHP, Laravel)
    - Blade Formatter (Blade Template Engine)
- Pre-commit
- Github Action