#!/usr/bin/env bash
set -euo pipefail

APP_DIR=".railway-app"
BUNDLE_PATH="/tmp/arab-tili-daraja-yoli.bundle"

restore_app() {
  if [ ! -f "$APP_DIR/package.json" ]; then
    rm -f "$BUNDLE_PATH"
    rm -rf "$APP_DIR"
    cat .import/site.bundle.part-* > "$BUNDLE_PATH"
    git clone --quiet --branch main "$BUNDLE_PATH" "$APP_DIR"
  fi

  if [ -f ".import/site-update.bundle" ]; then
    git -C "$APP_DIR" fetch --quiet "$PWD/.import/site-update.bundle" main
    git -C "$APP_DIR" checkout --quiet -B main FETCH_HEAD
  fi
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
