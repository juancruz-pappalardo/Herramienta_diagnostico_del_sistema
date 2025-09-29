
#!/bin/bash
# doctor_servicios.sh - Versión SEGURA

echo "🩺 INICIANDO DIAGNÓSTICO DEL SISTEMA..."
echo "========================================"

# Servicios SEGUROS para verificar
servicios=("nginx" "ssh" "fake-service")  # Cambiá mysql por fake-service

for servicio in "${servicios[@]}"; do
    # Verificar si el servicio existe
    if systemctl list-unit-files | grep -q "$servicio.service"; then
        if systemctl is-active "$servicio" >/dev/null 2>&1; then
            echo "✅ $servicio - ACTIVO"
        else
            echo "❌ $servicio - INACTIVO"
            echo "   💡 Ejecutar: sudo systemctl start $servicio"
        fi
    else
        echo "⚠️  $servicio - NO INSTALADO"
    fi
done

echo ""
echo "📊 ESTADO DE RECURSOS:"
echo "Memoria: $(free -h | awk 'NR==2{print $3"/"$2}')"
echo "Disco: $(df -h / | awk 'NR==2{print $5}')"
echo "Carga: $(uptime | awk '{print $8, $9, $10}' | sed 's/,//g')"

echo ""	
echo "🔍 PUERTOS ESCUCHANDO:"
ss -tulpn | grep -E ':(80|22|443)' || echo "   No hay servicios en puertos comunes"
