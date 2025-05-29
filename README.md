# Pre Laboratorio

## Diferencias entre Bash y PowerShell

### Naturaleza y Base

- **Bash (Bourne Again SHell):**
  - Intérprete de línea de comandos por defecto en la mayoría de distribuciones de Linux (Ubuntu, Debian, Mint, etc.).
  - Utiliza una interfaz de modo texto, comúnmente a través de emuladores gráficos.
  
- **PowerShell:**
  - CLI basada en .NET CLR (Common Language Runtime).
  - Devuelve **objetos**, no texto plano, ideal para automatización en sistemas Windows y otras plataformas.

### Manejo de Datos y Salida

- **Bash:**
  - Trabaja con texto.
  - Utiliza `pipes (|)` para enviar la salida de un comando a otro.
  
- **PowerShell:**
  - Trabaja con objetos.
  - Los `cmdlets` devuelven objetos, permitiendo un control más fino y potente.

### Comandos y Estructura

- **Bash:**
  - Comandos `built-in` y ejecutables del sistema.
  - Sintaxis: `programa arg1 arg2 ...`
  - Ejemplos: `cd`, `ls`, `cp`, `grep`, `kill`, etc.

- **PowerShell:**
  - Usa `cmdlets` con formato `Verbo-Nombre`, ej.: `Get-Command`.
  - Extensible, permite crear nuevos cmdlets.
  
### Propósito y Enfoque

- **Bash:** 
  - Scripting y automatización general en sistemas Unix/Linux.
  
- **PowerShell:**
  - Administración y automatización en Windows, servidores y servicios Microsoft.

### Plataformas Soportadas

- **Bash:** Nativo en Linux.
- **PowerShell:** Multiplataforma (Windows, MacOS, varias distribuciones Linux).

### Scripting y Funcionalidad Adicional

- **Bash:**
  - Archivos `.sh`
  - Automatiza tareas mediante estructuras de control (`if`, `for`, etc.)
  
- **PowerShell:**
  - Archivos `.ps1`
  - Incluye operadores, vectores, `hashtables`, funciones avanzadas.
  - Uso de alias y perfiles de usuario.

### Seguridad

- **Bash/Linux:**
  - Seguridad mediante permisos (`sudo`, `chmod`).
  
- **PowerShell:**
  - Políticas de ejecución (`Restricted`, `RemoteSigned`, etc.)
  - PowerShell Core mejora seguridad sobre versiones anteriores.

### Ayuda y Documentación

- **Bash:** `man`, `info`, `whatis`
- **PowerShell:** `Get-Command`, `Get-Help`, `Get-Member`


## Comandos Básicos, Estructuras de Control, Ciclos y Funciones
### Comandos Básicos

#### Bash

- **Navegación y Archivos:**
  - `cd`, `ls`, `pwd`, `mkdir`, `touch`, `cp`, `mv`, `rm`

- **Texto y Salida:**
  - `cat`, `grep`, `head`, `tail`, `sort`, `more`, `less`

- **Sistema:**
  - `man`, `ps`, `kill`, `ip`, `poweroff`, `shutdown`

#### PowerShell

- **Navegación y Archivos:**
  - `Set-Location`, `Get-ChildItem`, `New-Item`, `Remove-Item`, `Move-Item`, `Copy-Item`

- **Texto y Salida:**
  - `Write-Output`, `Get-Content`, `Select-String`, `Measure-Object`

- **Sistema:**
  - `Get-Service`, `Get-Process`, `Stop-Process`, `Restart-Computer`, `Get-ComputerInfo`, `Test-Connection`

- **Ayuda:**
  - `Get-Command`, `Get-Help`, `Get-Member`

### Estructuras de Control y Ciclos (Scripting)

#### Bash

- **Condicionales:**
  ```bash
  if ... then ... [ elif ... then ... ] [ else ... ] fi
  case ... in ... esac
  
 
- **Ciclos:**

  ```bash
  for ... in ...; do ...; done
  while ...; do ...; done
  until ...; do ...; done
  ```
  
- **Otros:**

  ```bash
  select ... in ...; do ...; done
  ```

#### PowerShell

* Usa `if`, `else`, `ForEach-Object`, operadores lógicos `&&`, `||`, y ternario `?:`.
* Permite automatizar flujos complejos con orientación a objetos.

### Funciones

* **Bash:**

  ```bash
  function nombre_funcion() {
    comandos;
  }
  ```

* **PowerShell:**

  ```powershell
  function Nombre-Funcion {
    Param($parametro)
    # Código
  }
  ```

### Recursos para practicar:**

  * [W3Schools Bash](https://www.w3schools.com/bash/)
  * [Microsoft Learn PowerShell](https://learn.microsoft.com/en-us/training/modules/introduction-to-powershell/)


## Cuestionario Breve

### 1. ¿Qué comando en Bash se utiliza para mostrar el contenido de un directorio?

* Comando: `ls`

* Opciones comunes:

  * `-l`: Detalles
  * `-h`: Tamaños legibles
  * `-a`: Archivos ocultos
  * `-S`: Por tamaño
  * `-t`: Por fecha
  * `-r`: Orden inverso

* Ejemplo: `ls -lh /home/alumno/`

* **PowerShell equivalente:** `Get-ChildItem`

### 2. ¿Cómo se declara una variable en PowerShell?

* Se usa `$` seguido del nombre de la variable.
* Asignación con `=`
* Ejemplos:

  ```powershell
  $usercorrecto = "Antonio"
  $ok = 1
  $PSVersionTable
  ```

### 3. ¿Qué comando en Bash da permisos de ejecución a un archivo?

* Comando: `chmod +x archivo`
* También se puede usar notación numérica: `chmod 777 archivo`

### 4. ¿Cómo se hace un bucle `for` en PowerShell?

```powershell
ForEach ($d in Get-Content directorios)
{
    mkdir $d
}
```

**Explicación del ejemplo:**

* `Get-Content directorios` lee el contenido del archivo `directorios`, devolviendo una colección de líneas.
* La sintaxis `ForEach ($d in ...)` itera sobre cada elemento de la colección. Cada línea se asigna a la variable `$d`.
* El bloque entre `{}` se ejecuta por cada elemento. En este caso, `mkdir $d` crea un directorio con el nombre de cada línea.

### Cmdlet `ForEach-Object` con canalización

PowerShell se destaca por su capacidad de trabajar con objetos y canalizaciones (`|`). El cmdlet `ForEach-Object` permite realizar acciones sobre cada objeto que fluye a través de una canalización.

**Ejemplo general:**

```powershell
ComandoQueProduceColeccion | ForEach-Object { 
    # Acción por cada objeto 
    $_ 
}
```
**Notas:**

* `$_` representa el objeto actual en la iteración.
* Desde PowerShell 7 se puede usar `ForEach-Object -Parallel` para ejecutar acciones en paralelo.

### 5. ¿Cuál es la diferencia entre `$HOME` en Bash y `$Env:USERPROFILE` en PowerShell?

Ambas variables representan el **directorio personal del usuario**, pero varían en sintaxis y entorno nativo.

**`$HOME` en Bash**

* Es una **variable de entorno estándar en Bash**.
* Representa el **directorio personal del usuario**.
* Se accede con `$HOME`.
* Típicamente contiene archivos de configuración como `.bashrc`, `.profile`, etc.
* Común en sistemas **Linux y macOS**.

**`$Env:USERPROFILE` en PowerShell**

* PowerShell accede a variables de entorno mediante el **proveedor especial `Env:`**.
* Se usa `$Env:USERPROFILE` para obtener el directorio personal del usuario en **Windows**.
* La variable `USERPROFILE` apunta típicamente a `C:\Users\TUNOMBREDEUSUARIO`.
* Otras variables propias de PowerShell se acceden como `$Profile`, `$PSVersionTable`, etc.
* En **Linux/macOS usando PowerShell**, se puede acceder a `$HOME` como `$Env:HOME`.

**Diferencia Clave**

| Característica    | Bash            | PowerShell                      |
| ----------------- | --------------- | ------------------------------- |
| Variable          | `$HOME`         | `$Env:USERPROFILE` (en Windows) |
| Sintaxis          | `$VARIABLENAME` | `$Env:VARIABLENAME`             |
| Acceso a entorno  | Directo         | A través del proveedor `Env:`   |
| Sistema operativo | Linux/macOS     | Windows (y también Linux/macOS) |


# Desarrollo (Retos)

El entorno de ejecución fue **local (PC personal)** utilizando el CLI de **PowerShell**.

## Reto 1: Información del sistema

* **Objetivo:** Mostrar información del sistema.
* **Comando PowerShell:**

  ```powershell
  Get-ComputerInfo
  ```

## Reto 2: Gestión de procesos

* **Objetivo:** Listar procesos y finalizar uno.
* **Comandos PowerShell:**

  ```powershell
  Get-Process                # Listar todos los procesos
  Stop-Process -Id <ID>      # Finalizar proceso por ID
  ```

## Reto 3: Automatización

* **Objetivo:** Crear carpetas con nombres basados en la fecha.
* **Ejemplo de script PowerShell:**

  ```powershell
  $fecha = Get-Date -Format "yyyy-MM-dd"
  New-Item -ItemType Directory -Name "Backup_$fecha"
  ```

## Reto 4 (Opcional): Script interactivo

* **Objetivo:** Crear un menú que permita seleccionar y ejecutar funciones del script.
* **Ejemplo de estructura base:**

  ```powershell
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
  ```

## Cómo Ejecutarlos

1. Abrir PowerShell en Windows.
2. Navegar a la carpeta donde se encuentra el archivo `reto4.ps1`.
3. Ejecutar el script con el comando:
   ```powershell
   .\reto4.ps1
   ```
4. Si no permite ejecutar el comando por permisos utilizar
  ```powershell
  Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
  ```

