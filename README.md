🎯 Objetivo
Proveer un diagnóstico rápido y confiable del estado de un servidor Linux, ideal para troubleshooting y monitoreo preventivo.

Características
- ✅ Verificación de servicios systemd críticos
- 📊 Monitoreo de recursos (memoria, disco, carga del sistema)
- 🔍 Detección de puertos esenciales escuchando
- 🛡️ Seguro para ejecutar en producción
- 🚀 Resultados claros y accionables

🛠️ Tecnologías Utilizadas
- Bash Scripting - Lógica de diagnóstico
- Systemd - Gestión de servicios
- Comandos nativos Linux - ss, free, df, uptime

Instalación y Uso
Requisitos Previos
- Sistema Linux con systemd
- Bash 4.0+
- Permisos de sudo para ver todos los servicios

Ejecución
- Descargar el script
wget https://raw.githubusercontent.com/tuusuario/linux-system-diagnostic-tool/main/doctor_servicios.sh

- Hacer ejecutable
chmod +x doctor_servicios.sh

- Ejecutar
./doctor_servicios.sh
