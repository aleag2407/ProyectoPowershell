# Cargar scripts
. .\Heroes.ps1
. .\Dados.ps1
. .\Villanos.ps1

Write-Host "=== STRANGER THINGS RPG ==="

# Elegir héroe
$heroe = $Eleven
$villano = $Demogorgon
$dados = Tirar-2D12

Write-Host "Combate entre $($heroe.getNombre()) y $($villano.getNombre())"
Write-Host "Tiramos los dados, el resultado es $($dados.d1) y $($dados.d2). Total: $($dados.total)"

$victoria = $heroe.Ataque($villano)

if ($victoria) {
    Write-Host "$($heroe.getNombre()) ha derrotado a $($villano.getNombre())"
} else {
    Write-Host "$($villano.getNombre()) se ha defendido del ataque de $($heroe.getNombre())"
}
