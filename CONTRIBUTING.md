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
