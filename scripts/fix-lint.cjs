const fs = require('fs');

function updateJson(path, mutate) {
  const data = JSON.parse(fs.readFileSync(path, 'utf8'));
  const next = mutate(data) || data;
  fs.writeFileSync(path, JSON.stringify(next, null, 2) + '\n');
}

updateJson('apps/frontend/package.json', (pkg) => {
  delete pkg.type; // avoid breaking next.config.js (CJS)
  pkg.scripts ||= {};
  pkg.scripts.lint = 'eslint .';

  pkg.devDependencies ||= {};
  Object.assign(pkg.devDependencies, {
    '@eslint/js': '^9.39.2',
    '@eslint/eslintrc': '^3.3.1',
    'globals': '^16.4.0',
    '@typescript-eslint/parser': '^8.27.0',
    '@typescript-eslint/eslint-plugin': '^8.27.0'
  });
});

updateJson('apps/backend/package.json', (pkg) => {
  delete pkg.type;
  pkg.scripts ||= {};
  pkg.scripts.lint = 'eslint src';

  pkg.dependencies ||= {};
  Object.assign(pkg.dependencies, {
    '@nestjs/platform-express': '^10.4.6',
    'reflect-metadata': '^0.1.14',
    'rxjs': '^7.8.2'
  });

  pkg.devDependencies ||= {};
  Object.assign(pkg.devDependencies, {
    'eslint': '^9.39.2',
    '@eslint/js': '^9.39.2',
    '@eslint/eslintrc': '^3.3.1',
    'globals': '^16.4.0',
    '@typescript-eslint/parser': '^8.27.0',
    '@typescript-eslint/eslint-plugin': '^8.27.0'
  });
});

console.log('✅ package.json updated (frontend + backend)');
