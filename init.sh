#!/bin/bash

echo "��� Initializing AI Project Estimator Monorepo..."

# Create folder structure
mkdir -p apps/frontend apps/backend packages

# Create .gitignore
cat > .gitignore << 'EOF'
# Dependencies
node_modules/
/.pnp
.pnp.js
pnpm-lock.yaml
yarn.lock
package-lock.json

# Testing
/coverage

# Production
/build
/dist
.next/
.turbo/
out/

# Misc
.DS_Store
*.pem
.env
.env.local
.env.development.local
.env.test.local
.env.production.local

# Logs
npm-debug.log*
yarn-debug.log*
yarn-error.log*
lerna-debug.log*
.pnpm-debug.log*

# IDE
.vscode/
.idea/
*.swp
*.swo
*~
.sublime-project
.sublime-workspace

# OS
Thumbs.db
EOF

# Create README
cat > README.md << 'EOF'
# AI Project Estimator

Un **estimateur de projets IA** fullstack modern, conçu comme portfolio de démonstration.

## ���️ Architecture

Monorepo **Turborepo** avec 2 applications principales :

```
ai-project-estimator/
├── apps/
│   ├── frontend/       → Next.js 16 (React TypeScript)
│   └── backend/        → NestJS (Node.js TypeScript)
├── packages/
│   ├── shared-types/   → Types TypeScript partagés
│   ├── ui/             → Composants React réutilisables
│   └── utils/          → Utilitaires communs
├── turbo.json          → Config Turborepo
├── package.json        → Root workspace
└── README.md
```

## ��� Quick Start

### Prérequis
- **Node.js** 18+
- **pnpm** 9+ (`npm i -g pnpm@9`)

### Installation

```bash
# Installer les dépendances
pnpm install

# Lancer en dev (frontend + backend simultanément)
pnpm dev

# Builder tout le projet
pnpm build

# Linter le code
pnpm lint

# Vérifier les types TypeScript
pnpm type-check
```

## ��� Apps

### Frontend (`apps/frontend`)
- **Framework**: Next.js 16 (App Router)
- **UI**: Shadcn/UI + Tailwind CSS
- **State**: TanStack Query + Zustand
- **Form**: React Hook Form + Zod validation

### Backend (`apps/backend`)
- **Framework**: NestJS (Microservices ready)
- **Database**: PostgreSQL + Prisma ORM
- **Auth**: JWT
- **API**: OpenAPI/Swagger intégré

## ��� Features

- ✅ Monorepo Turborepo optimisé
- ✅ TypeScript strict partout
- ✅ ESLint + Prettier + Husky
- ✅ GitHub Actions CI/CD
- ✅ Responsive design
- ✅ Dark mode support
- ✅ API REST documentée
- ✅ Prêt pour la production

## ��� License

MIT - Copyright © 2025 DevMeUp
EOF

# Create Prettier config
cat > .prettierrc << 'EOF'
{
  "semi": true,
  "singleQuote": false,
  "trailingComma": "es5",
  "printWidth": 80,
  "tabWidth": 2,
  "useTabs": false,
  "arrowParens": "always",
  "endOfLine": "lf"
}
EOF

# Create Contributing guide
cat > CONTRIBUTING.md << 'EOF'
# Contributing Guidelines

## Setup

1. **Fork et clone** le repo
2. **Install dependencies** : `pnpm install`
3. **Create a feature branch** : `git checkout -b feature/my-feature`
4. **Make your changes**
5. **Commit** : `git commit -m "feat: description"`
6. **Push** : `git push origin feature/my-feature`
7. **Create a Pull Request**

## Code Style

- **ESLint** pour l'analyse de code
- **Prettier** pour la formatage
- **TypeScript** strict mode partout
- **Tests** pour les nouvelles features

Run before committing:

```bash
pnpm lint      # Fix linting issues
pnpm type-check # Check TypeScript
pnpm test       # Run tests
```

## Commit Convention

- `feat:` - Nouvelle feature
- `fix:` - Bug fix
- `docs:` - Documentation
- `style:` - Formatting
- `refactor:` - Code restructuring
- `test:` - Tests
- `chore:` - Build, deps, etc.

Example: `git commit -m "feat: add project estimation form"`

## PR Guidelines

- Clear description of changes
- Link related issues
- Screenshots/videos for UI changes
- All tests passing
- Code review approved
EOF

# Create LICENSE
cat > LICENSE << 'EOF'
MIT License

Copyright © 2025 DevMeUp

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORSMERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE  OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.
EOF

# Create .prettierignore
cat > .prettierignore << 'EOF'
node_modules/
dist/
.turbo/
EOF

# Create GitHub Actions CI
mkdir -p .github/workflows

cat > .github/workflows/ci.yml << 'EOF'
name: CI

on:
  push:
    branches: [main, develop]
  pull_request:
    branches: [main, develop]

jobs:
  build:
    runs-on: ubuntu-latest
    strategy:
      matrix:
        node-version: [18.x, 20.x]

    steps:
      - uses: actions/checkout@v3

      - name: Setup pnpm
        uses: pnpm/action-setup@v2
        with:
          version: 9

      - name: Setup Node.js ${{ matrix.node-version }}
        uses: actions/setup-node@v3
        with:
          node-version: ${{ matrix.node-version }}
          cache: "pnpm"

      - name: Install dependencies
        run: pnpm install

      - name: Lint
        run: pnpm lint

      - name: Type check
        run: pnpm type-check

      - name: Build
        run: pnpm build
EOF

echo "✅ Base configuration created!"

