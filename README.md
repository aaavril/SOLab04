# Pre Laboratorio: Diferencias entre Bash y PowerShell

## 1. Naturaleza y Base

- **Bash (Bourne Again SHell):**
  - Intérprete de línea de comandos por defecto en la mayoría de distribuciones de Linux (Ubuntu, Debian, Mint, etc.).
  - Utiliza una interfaz de modo texto, comúnmente a través de emuladores gráficos.
  
- **PowerShell:**
  - CLI basada en .NET CLR (Common Language Runtime).
  - Devuelve **objetos**, no texto plano, ideal para automatización en sistemas Windows y otras plataformas.

## 2. Manejo de Datos y Salida

- **Bash:**
  - Trabaja con texto.
  - Utiliza `pipes (|)` para enviar la salida de un comando a otro.
  
- **PowerShell:**
  - Trabaja con objetos.
  - Los `cmdlets` devuelven objetos, permitiendo un control más fino y potente.

## 3. Comandos y Estructura

- **Bash:**
  - Comandos `built-in` y ejecutables del sistema.
  - Sintaxis: `programa arg1 arg2 ...`
  - Ejemplos: `cd`, `ls`, `cp`, `grep`, `kill`, etc.

- **PowerShell:**
  - Usa `cmdlets` con formato `Verbo-Nombre`, ej.: `Get-Command`.
  - Extensible, permite crear nuevos cmdlets.
  
## 4. Propósito y Enfoque

- **Bash:** 
  - Scripting y automatización general en sistemas Unix/Linux.
  
- **PowerShell:**
  - Administración y automatización en Windows, servidores y servicios Microsoft.

## 5. Plataformas Soportadas

- **Bash:** Nativo en Linux.
- **PowerShell:** Multiplataforma (Windows, MacOS, varias distribuciones Linux).

## 6. Scripting y Funcionalidad Adicional

- **Bash:**
  - Archivos `.sh`
  - Automatiza tareas mediante estructuras de control (`if`, `for`, etc.)
  
- **PowerShell:**
  - Archivos `.ps1`
  - Incluye operadores, vectores, `hashtables`, funciones avanzadas.
  - Uso de alias y perfiles de usuario.

## 7. Seguridad

- **Bash/Linux:**
  - Seguridad mediante permisos (`sudo`, `chmod`).
  
- **PowerShell:**
  - Políticas de ejecución (`Restricted`, `RemoteSigned`, etc.)
  - PowerShell Core mejora seguridad sobre versiones anteriores.

## 8. Ayuda y Documentación

- **Bash:** `man`, `info`, `whatis`
- **PowerShell:** `Get-Command`, `Get-Help`, `Get-Member`

## 9. Futuro

- **PowerShell Core (v6+):**
  - Enfoque futuro de Microsoft.
  - Windows PowerShell (hasta 5.1) solo recibe parches de seguridad.

---

## Comandos Básicos, Estructuras de Control, Ciclos y Funciones

### 1. Naturaleza y Manejo de Datos

- **Bash:**
  - Usa texto como formato principal.
  - Emplea pipes (`|`) para redirigir salida/entrada entre comandos.
  
- **PowerShell:**
  - Maneja objetos directamente.
  - Cmdlets como `Get-Content`, `Select-String`.

### 2. Comandos Básicos

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

### 3. Estructuras de Control y Ciclos (Scripting)

#### Bash

- **Condicionales:**
  ```bash
  if ... then ... [ elif ... then ... ] [ else ... ] fi
  case ... in ... esac
````

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

### 4. Funciones

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

### 5. Scripts

* **Bash:** `.sh`

* **PowerShell:** `.ps1`

* **Recursos para practicar:**

  * [W3Schools Bash](https://www.w3schools.com/bash/)
  * [Microsoft Learn PowerShell](https://learn.microsoft.com/en-us/training/modules/introduction-to-powershell/)

---

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

---

### 2. ¿Cómo se declara una variable en PowerShell?

* Se usa `$` seguido del nombre de la variable.
* Asignación con `=`
* Ejemplos:

  ```powershell
  $usercorrecto = "Antonio"
  $ok = 1
  $PSVersionTable
  ```

---

### 3. ¿Qué comando en Bash da permisos de ejecución a un archivo?

* Comando: `chmod +x archivo`
* También se puede usar notación numérica: `chmod 777 archivo`

---
