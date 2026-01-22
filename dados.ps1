function Tirar-2D12 {
    $d1 = Tirar-Dado -Caras 12
    $d2 = Tirar-Dado -Caras 12
    
    # Creamos el objeto que espera tu Write-Host
    return [PSCustomObject]@{
        d1 = $d1
        d2 = $d2
        total = $d1 + $d2
    }
}