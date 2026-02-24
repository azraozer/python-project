#!/usr/bin/env bash
set -euo pipefail

if ! command -v code >/dev/null 2>&1; then
  echo "VS Code 'code' CLI bulunamadı. VS Code içinde 'Shell Command: Install 'code' command in PATH' çalıştırın veya manuel olarak uzantıları kaldırın."
  exit 1
fi

EXTS=(
  "github.copilot"
  "github.copilot-nightly"
  "GitHub.copilot"
  "VisualStudioExptTeam.vscodeintellicode"
  "TabNine.tabnine-vscode"
  "tabnine.tabnine"
  "Codota.codota"
  "smashwilson.codegpt"
)

for e in "${EXTS[@]}"; do
  echo "Kaldırılıyor: $e"
  code --uninstall-extension "$e" || true
done

echo "İşlem tamam. VS Code'u yeniden başlatın."
