# AI Project Estimator

> AI-powered project estimation platform - A full-stack demo application for DevMeUp portfolio

**Status**: Production Ready | **Version**: 1.0.0 | **License**: MIT

---

## Table of Contents

- [Quick Start](#quick-start)
- [Architecture](#architecture)
- [Tech Stack](#tech-stack)
- [Project Structure](#project-structure)
- [Development](#development)
- [Deployment](#deployment)
- [Contributing](#contributing)
- [License](#license)

---

## Quick Start

### Prerequisites

- Node.js 18+ (check with `node -v`)
- pnpm 9+ (`npm install -g pnpm@9`)
- Git

### Installation

```bash
# Clone the repository
git clone https://github.com/devmeup-fr/ai-project-estimator.git
cd ai-project-estimator

# Install dependencies (all workspaces)
pnpm install

# Start development servers (open 2 terminals)
# Terminal 1: Frontend
pnpm dev:frontend    # http://localhost:3000

# Terminal 2: Backend
pnpm dev:backend     # http://localhost:3001
```

### Building for Production

```bash
# Build both apps
pnpm build

# Or individually
pnpm build:frontend  # Next.js optimized build
pnpm build:backend   # NestJS compiled output
```

---

## Architecture

This is a **monorepo** using pnpm workspaces and Turbo for orchestration.

```
ai-project-estimator/
├── apps/
│   ├── frontend/              Next.js 16 (React + TypeScript)
│   │   ├── app/              App Router with pages & styles
│   │   ├── components/       Reusable React components
│   │   ├── lib/              Utilities and helpers
│   │   ├── types/            TypeScript types
│   │   └── package.json
│   │
│   └── backend/              NestJS (Node.js + TypeScript)
│       ├── src/              Source code
│       │   ├── main.ts       Entry point
│       │   ├── app.module.ts Root module
│       │   ├── app.controller.ts
│       │   └── app.service.ts
│       └── package.json
│
├── packages/                 Shared packages (future)
│   ├── shared-types/         Shared TypeScript types
│   ├── ui/                   Shared UI components
│   └── utils/                Shared utilities
│
├── .github/
│   └── workflows/
│       └── ci.yml           GitHub Actions CI/CD
│
├── pnpm-workspace.yaml      pnpm workspace config
├── turbo.json               Turbo build config
├── package.json             Root package manifest
└── README.md
```

---

## Tech Stack

### Frontend

| Technology          | Purpose                         |
| ------------------- | ------------------------------- |
| **Next.js 16**      | React framework with App Router |
| **React 19**        | UI library                      |
| **TypeScript**      | Static type checking            |
| **Tailwind CSS**    | Utility-first styling           |
| **TanStack Query**  | Server state management         |
| **Zustand**         | Client state management         |
| **React Hook Form** | Form handling                   |
| **Zod**             | Schema validation               |
| **ESLint**          | Code linting                    |

### Backend

| Technology          | Purpose                  |
| ------------------- | ------------------------ |
| **NestJS 10**       | Node.js framework        |
| **TypeScript**      | Static type checking     |
| **Express**         | HTTP server (via NestJS) |
| **Swagger/OpenAPI** | API documentation        |
| **Passport**        | Authentication strategy  |
| **JWT**             | Token-based auth         |

### DevOps & Tooling

| Tool               | Purpose                              |
| ------------------ | ------------------------------------ |
| **pnpm**           | Fast, disk-efficient package manager |
| **Turbo**          | Monorepo build orchestration         |
| **Git**            | Version control                      |
| **GitHub Actions** | CI/CD pipeline                       |

---

## Development

### Available Commands

```bash
# Development
pnpm dev:frontend     # Start Next.js dev server
pnpm dev:backend      # Start NestJS with watch mode

# Building
pnpm build            # Build both apps
pnpm build:frontend   # Build Next.js production
pnpm build:backend    # Build NestJS

# Linting
pnpm lint             # Lint both apps
pnpm lint:frontend    # Lint frontend
pnpm lint:backend     # Lint backend

# Cleanup
pnpm clean            # Remove build artifacts
```

### Project Setup Details

**Frontend** (`apps/frontend`)

- Runs on http://localhost:3000
- Uses Next.js App Router
- Styled with Tailwind CSS
- TypeScript strict mode

**Backend** (`apps/backend`)

- Runs on http://localhost:3001
- Exposes REST API
- Health check: GET /health
- API root: GET /

### Code Quality

- **Prettier**: Automatic code formatting
- **ESLint**: Code linting and best practices
- **TypeScript**: Strict type checking (enabled globally)
- **Pre-commit**: Husky hooks (ready to configure)

---

## Deployment

### Building for Production

```bash
# Build everything
pnpm build

# Output directories
# - Frontend: apps/frontend/.next/
# - Backend: apps/backend/dist/
```

### Docker (Optional - Coming Soon)

Dockerfile templates ready to be added for containerization.

### Environment Variables

Create `.env` files in each app:

**apps/frontend/.env.local**

```
NEXT_PUBLIC_API_URL=http://localhost:3001
```

**apps/backend/.env**

```
PORT=3001
NODE_ENV=development
```

See `apps/backend/.env.example` for backend template.

---

## Project Features

### Current

- Monorepo with pnpm workspaces
- Next.js 16 with TypeScript
- NestJS API with TypeScript
- Tailwind CSS styling
- GitHub Actions CI/CD setup
- ESLint + Prettier configuration
- Production-ready builds

### Roadmap

- [ ] Add shared-types package
- [ ] Add reusable UI components
- [ ] Implement authentication (JWT)
- [ ] Add database integration (PostgreSQL + Prisma)
- [ ] Project estimation API endpoints
- [ ] Frontend forms and state management
- [ ] Test suite (Jest + Vitest)
- [ ] Swagger API documentation
- [ ] Docker configuration
- [ ] Deployment guides (Vercel + Railway/Heroku)

---

## Contributing

Contributions are welcome! Please follow these guidelines:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'feat: add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

See [CONTRIBUTING.md](CONTRIBUTING.md) for detailed guidelines.

### Commit Convention

- `feat:` - New feature
- `fix:` - Bug fix
- `docs:` - Documentation
- `style:` - Code formatting
- `refactor:` - Code restructuring
- `test:` - Tests
- `chore:` - Build, dependencies, etc.

---

## Troubleshooting

### Installation Issues

**pnpm not found?**

```bash
npm install -g pnpm@9
```

**Port already in use?**

```bash
# Change ports in dev scripts or kill process
# Frontend: app/lib/next.config.js
# Backend: apps/backend/src/main.ts
```

**TypeScript errors?**

```bash
pnpm lint:frontend
pnpm lint:backend
```

---

## Resources

- [Next.js Documentation](https://nextjs.org/docs)
- [NestJS Documentation](https://docs.nestjs.com)
- [pnpm Documentation](https://pnpm.io)
- [Tailwind CSS](https://tailwindcss.com)
- [TypeScript](https://www.typescriptlang.org)

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## About DevMeUp

**DevMeUp** is a fullstack development team showcasing modern web technologies and best practices through demo applications like this one.

- Website: (https://devmeup.fr)
- GitHub: [@devmeup-fr](https://github.com/devmeup-fr)
- LinkedIn: (https://www.linkedin.com/companiy/devmup/)

---

## Support

For issues, questions, or suggestions:

1. Check existing [GitHub Issues](https://github.com/devmeup-fr/ai-project-estimator/issues)
2. Open a new issue with detailed description
3. Follow the issue template

---

**Last Updated**: December 30, 2025
**Maintained by**: DevMeUp Team
