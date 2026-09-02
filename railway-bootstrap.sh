#!/usr/bin/env bash
set -euo pipefail

APP_DIR=".railway-app"
BUNDLE_PATH="/tmp/arab-tili-daraja-yoli.bundle"

restore_app() {
  if [ -f "$APP_DIR/package.json" ]; then
    return
  fi

  rm -f "$BUNDLE_PATH"
  rm -rf "$APP_DIR"
  cat .import/site.bundle.part-* > "$BUNDLE_PATH"
  git clone --quiet --branch main "$BUNDLE_PATH" "$APP_DIR"
}

case "${1:-}" in
  build)
    restore_app
    npm ci --prefix "$APP_DIR"
    npm run build --prefix "$APP_DIR"
    ;;
  start)
    restore_app
    exec npm run start --prefix "$APP_DIR"
    ;;
  *)
    echo "Usage: $0 {build|start}" >&2
    exit 2
    ;;
esac
