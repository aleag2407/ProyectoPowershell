class Heroe {
    [string] $nombre
    [int] $fuerza
    [int] $agilidad
    [string] $rol
    [Heroe] $aliado

    [string] getNombre() { return $this.nombre }
    [int] getFuerza() { return $this.fuerza }
    [int] getAgilidad() { return $this.agilidad }
    [string] getRol() { return $this.rol }
    [Heroe] getAliado() { return $this.aliado }

    [void] setNombre([string] $n) { $this.nombre = $n }
    [void] setFuerza([int] $f) { $this.fuerza = $f }
    [void] setAgilidad([int] $a) { $this.agilidad = $a }
    [void] setRol([string] $r) { $this.rol = $r }
    [void] alianza([Heroe] $aliado) { $this.aliado = $aliado }

    [int] TiradaAtaque() {
        $d1 = Get-Random -Minimum 1 -Maximum 13
        $d2 = Get-Random -Minimum 1 -Maximum 13
        return $d1 + $d2 + $this.fuerza
    }

    [bool] Ataque([Villano] $rival) {
        $ataque = $this.TiradaAtaque()

        if ($this.aliado -ne $null) {
            $ataque += $this.aliado.TiradaAtaque()
        }

        return -not $rival.seDefiende($ataque)
    }
}

# ==== Instanciación de héroes ====

$Eleven = [Heroe]::new()
$Eleven.setNombre("Eleven")
$Eleven.setFuerza(15)
$Eleven.setAgilidad(10)
$Eleven.setRol("Psíquica")

$Mike = [Heroe]::new()
$Mike.setNombre("Mike")
$Mike.setFuerza(10)
$Mike.setAgilidad(11)
$Mike.setRol("Líder")

$Lucas = [Heroe]::new()
$Lucas.setNombre("Lucas")
$Lucas.setFuerza(11)
$Lucas.setAgilidad(13)
$Lucas.setRol("Tirador")

$Dustin = [Heroe]::new()
$Dustin.setNombre("Dustin")
$Dustin.setFuerza(9)
$Dustin.setAgilidad(11)
$Dustin.setRol("Inventor")

$Will = [Heroe]::new()
$Will.setNombre("Will")
$Will.setFuerza(7)
$Will.setAgilidad(12)
$Will.setRol("Sensitivo")

$Max = [Heroe]::new()
$Max.setNombre("Max")
$Max.setFuerza(8)
$Max.setAgilidad(14)
$Max.setRol("Skater")

$Steve = [Heroe]::new()
$Steve.setNombre("Steve")
$Steve.setFuerza(14)
$Steve.setAgilidad(12)
$Steve.setRol("Protector")

$Nancy = [Heroe]::new()
$Nancy.setNombre("Nancy")
$Nancy.setFuerza(12)
$Nancy.setAgilidad(13)
$Nancy.setRol("Investigadora")

$Robin = [Heroe]::new()
$Robin.setNombre("Robin")
$Robin.setFuerza(9)
$Robin.setAgilidad(14)
$Robin.setRol("Analista")

$Joyce = [Heroe]::new()
$Joyce.setNombre("Joyce")
$Joyce.setFuerza(8)
$Joyce.setAgilidad(10)
$Joyce.setRol("Madre Coraje")

$Hopper = [Heroe]::new()
$Hopper.setNombre("Hopper")
$Hopper.setFuerza(16)
$Hopper.setAgilidad(11)
$Hopper.setRol("Sheriff")
