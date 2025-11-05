{-
/**
 * Llamada con parámetro una Función (HOF)
 *
 * NOTA DE EXCLUSIVIDAD: Este código solo funciona en Haskell debido a la línea:
 * 'aplicarOperacion op a b = a `op` b'
 *
 * El uso de backticks (`...`) para convertir la función 'op' en un operador infijo
 * es una característica sintáctica intrínseca y exclusiva de Haskell.
 *
 * tema: Paso de una función como parámetro (Operador Infijo)
 *
 * Referencia:
 * https://www.haskell.org/tutorial/
 *
 * Software: GHC (Glasgow Haskell Compiler)
 *
 * Editor: Mariel Sanchez
 * Creado: 5 Nov 25
 */
-}

-- | Define un alias de tipo para una función binaria (que toma dos Ints y devuelve un Int).
type OperacionBinaria = Int -> Int -> Int

-- | Función de Orden Superior: 'aplicarOperacion'.
--   Toma como argumentos:
--   1. 'op': La función que se pasa como parámetro (de tipo OperacionBinaria).
--   2. 'a' y 'b': Los dos números sobre los que se actuará.
--   Y devuelve un Int.
aplicarOperacion :: OperacionBinaria -> Int -> Int -> Int
aplicarOperacion op a b = a `op` b -- <<-- SINTAXIS EXCLUSIVA DE HASKELL

-- | Función 1 (Parámetro): Suma dos números.
suma :: Int -> Int -> Int
suma x y = x + y

-- | Función 2 (Parámetro): Multiplica dos números.
multiplicacion :: Int -> Int -> Int
multiplicacion x y = x * y

-- | Función principal requerida para la ejecución del programa.
main :: IO ()
main = do
    -- 1. Se pasa la función 'suma' como parámetro 'op'
    let resultadoSuma = aplicarOperacion suma 20 5
    
    -- 2. Se pasa la función 'multiplicacion' como parámetro 'op'
    let resultadoMultiplicacion = aplicarOperacion multiplicacion 6 7
    
    putStrLn "--- Demostración de Paso de Función Exclusiva de Haskell ---"
    putStrLn "1. Aplicar la función 'suma' a 20 y 5:"
    putStrLn $ "Resultado: " ++ show resultadoSuma -- Imprime 25
    
    putStrLn "2. Aplicar la función 'multiplicacion' a 6 y 7:"
    putStrLn $ "Resultado: " ++ show resultadoMultiplicacion -- Imprime 42