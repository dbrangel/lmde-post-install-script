#!/bin/bash

# =========================================================
# Script de Pós-Instalação para Linux Mint LMDE (Gigi)
# Foco: Administração de Sistemas e Design Gráfico
# =========================================================

echo "🚀 Iniciando o script de pós-instalação para LMDE..."

# --- 1. Atualização e Preparação do Sistema ---
echo "✅ 1. Atualizando a lista de pacotes e o sistema..."
sudo apt update
sudo apt upgrade -y
sudo apt install -y curl wget apt-transport-https

# --- 2. Ferramentas de Administração de Sistemas (Sysadmin) ---
echo "✅ 2. Instalando ferramentas de Sysadmin..."

# Segurança e Auditoria
# fail2ban: Protege contra ataques de força bruta.
# ufw: Firewall (já deve estar instalado, mas garante).
# lsof: Lista arquivos abertos.
sudo apt install -y fail2ban ufw lsof

# Rede
# nmap: Scanner de rede.
# net-tools: Utilitários de rede (ifconfig, netstat, etc. para compatibilidade).
# traceroute: Rastreamento de rota.
sudo apt install -y nmap net-tools traceroute

# Monitoramento e Diagnóstico
# htop: Monitor de processos interativo.
# iotop: Monitor de uso de I/O em tempo real.
# atop: Monitor de recursos avançado (CPU, memória, disco, rede).
# smartmontools: Monitora a saúde do disco (S.M.A.R.T).
sudo apt install -y htop iotop atop smartmontools

# Ferramentas Úteis
# vim: Editor de texto avançado (útil para edição rápida de configs).
# tmux: Multiplexador de terminal (permite sessões persistentes).
# rsync: Sincronização e backup de arquivos.
sudo apt install -y vim tmux rsync

# --- 3. Ferramentas de Design Gráfico ---
echo "✅ 3. Instalando ferramentas de Design Gráfico..."

# Edição de Imagem
# gimp: O principal editor de imagens open-source (alternativa ao Photoshop).
sudo apt install -y gimp

# Edição Vetorial
# inkscape: Editor de gráficos vetoriais (alternativa ao Illustrator/CorelDRAW).
sudo apt install -y inkscape

# Editor de Vídeo Simples (Bônus para mídias)
# kdenlive: Editor de vídeo não-linear (excelente e completo).
# sudo apt install -y kdenlive

# Visualização de cores e gerenciamento
# gpick: Seletor de cores avançado.
# sudo apt install -y gpick

# --- 4. Finalização e Limpeza ---
echo "✅ 4. Finalizando e limpando pacotes desnecessários..."
sudo apt autoremove -y
sudo apt clean
echo "✨ Script de pós-instalação concluído!"
