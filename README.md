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
