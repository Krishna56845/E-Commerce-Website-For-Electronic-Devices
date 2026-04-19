#!/usr/bin/env bash
set -euo pipefail

# 1) Make sure npm registry token is exported
if [ -z "${NPM_TOKEN:-}" ]; then
  echo "❌ Please set NPM_TOKEN to your npm registry token."
  exit 1
fi

# 2) Configure npm to hit your registry
cat > ~/.npmrc <<EOF
//registry.npmjs.org/:_authToken=${NPM_TOKEN}
EOF

echo "🚀 Publishing package to npm registry..."
npm publish --access public

# 3) Friendly confirmation
NAME=$(node -p "require('./package.json').name")
VERSION=$(node -p "require('./package.json').version")
echo "✅ Published ${NAME}@${VERSION} to npm registry"
