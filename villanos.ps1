class Villano {
    [string] $nombre
    [int] $poder
    [int] $velocidad
    [string] $tipo

    [string] getNombre() { return $this.nombre }
    [int] getPoder() { return $this.poder }
    [int] getVelocidad() { return $this.velocidad }
    [string] getTipo() { return $this.tipo }

    [void] setNombre([string] $n) { $this.nombre = $n }
    [void] setPoder([int] $p) { $this.poder = $p }
    [void] setVelocidad([int] $v) { $this.velocidad = $v }
    [void] setTipo([string] $t) { $this.tipo = $t }

    [bool] seDefiende([int] $ataque) {
        $d1 = Get-Random -Minimum 1 -Maximum 13
        $d2 = Get-Random -Minimum 1 -Maximum 13
        $defensa = $d1 + $d2 + $this.velocidad

        return $defensa -ge $ataque
    }
}

# ==== Instanciación de villanos ====

$Demogorgon = [Villano]::new()
$Demogorgon.setNombre("Demogorgon")
$Demogorgon.setPoder(18)
$Demogorgon.setVelocidad(12)
$Demogorgon.setTipo("Depredador del Upside Down")

$Vecna = [Villano]::new()
$Vecna.setNombre("Vecna")
$Vecna.setPoder(22)
$Vecna.setVelocidad(14)
$Vecna.setTipo("Hechicero Oscuro")

$MindFlayer = [Villano]::new()
$MindFlayer.setNombre("Mind Flayer")
$MindFlayer.setPoder(25)
$MindFlayer.setVelocidad(10)
$MindFlayer.setTipo("Entidad Colmena")
