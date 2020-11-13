main = do
    pedir

pedir = do 
    putStrLn("Ingresa tu dia")
    d <- getLine
    let dia = read d::Int
    
    if dia==0 || dia>31
        then do
            putStrLn("Datos Erroneos")
            pedir
    else do
        putStrLn("Ingresa tu mes") 
        m <- getLine
        let mes = read m::Int
        
        if mes==0 || mes>12
            then do 
                putStrLn("Datos Erroneos")
                pedir
        else do
            resultado mes
            
resultado mes = do
    case mes of 
        1 -> print("Naciste en Enero, tu mes tiente 31 dias")
        2 -> print("NAciste en Febrero, tu mes tiene 28 dias")
        3 -> print("Naciste en Marzo, tu mes tiene 31 dias")
        4 -> print("Naciste en Abril, tu mes tiene 30 dias")
        5 -> print("NAciste en Mayo, tu mes tiene 31 dias")
        6 -> print("Naciste en Junio, tu mes tiene 30 dias")
        7 -> print("Naciste en Julio, tu mes tiene 31 dias")
        8 -> print("Naciste en Agosto, tu mes tiene 31 dias")
        9 -> print("Naciste en Septiembre, tu mes tiene 30 dias")
        10 -> print("Naciste en Octubre, tu mes tiene 31 dias")
        11 -> print("Naciste en Noviembre, tu mes tiene 31 dias")
        12 -> print("Naciste en Diciembre, tu mes tiene 31 dias")
