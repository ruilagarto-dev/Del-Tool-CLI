# del - Script para eliminar ficheiros e pastas via terminal

Este projeto fornece um utilitário de linha de comandos chamado `del` que permite eliminar ficheiros e pastas diretamente a partir do terminal. Ele suporta tanto ficheiros únicos quanto pastas com conteúdo.

---

## 🎯 Por que criei este script?

No Ubuntu WSL, eu estava sempre a usar o comando `rm -rf {nome}`.Para evitar repetir esse comando manualmente e para ter mensagens de erro mais claras e específicas, criei este script simples e direto para facilitar e tornar o processo mais seguro.

---

## 📂 Conteúdo

- `del` — Script em Python que elimina ficheiros e pastas.
- `install.sh` — Script de instalação que move `del` para `/usr/local/bin`.
- `uninstall.sh`- Script que remove o comando `del` do sistema.

---

## ⚙️ Requisitos

- Python 3 instalado no sistema.
- Permissões para usar `sudo` (necessário para instalar o script em `/usr/local/bin`).

---

## 📦 Instalação

1. Clone este repositório.

2. Execute o script de instalação:
```bash
bash install.sh
```
O script irá:

- Verificar se o Python 3 está instalado.
- Verificar se o ficheiro `del` existe.
- Copiar o ficheiro del para `/usr/local/bin/`.
- Torná-lo executável globalmente.

## 🗑️ Desinstalar
Se quiser remover o comando `del`do sistema, execute.
```bash
bash uninstall.sh
```

## ❗ Atenção
Este script elemina ficheiros e pastas permanetemente, sem enviar para a reciclagem/lixo.<br> 
Use com cuidado!