do {
    Write-Host "1. Mostrar info del sistema"
    Write-Host "2. Listar procesos"
    Write-Host "3. Crear carpeta con fecha"
    Write-Host "4. Salir"
    $opcion = Read-Host "Selecciona una opción"

    switch ($opcion) {
        "1" { Get-ComputerInfo }
        "2" { Get-Process }
        "3" {
            $fecha = Get-Date -Format "yyyy-MM-dd"
            New-Item -ItemType Directory -Name "Backup_$fecha"
        }
    }
} while ($opcion -ne "4")
