module Main where

main :: IO ()
main = do
    putStrLn "Bem-vindos ao jogo da forca!"
    putStrLn "O jogo é realizado em duplas e funciona da seguinte forma: um jogador escreve uma palavra e o outro tenta adivinhar. Ganha quem acertar a palavra ou perder todas as chances."
    
    putStrLn "Jogador 1, informe seu nome:"
    play1 <- getLine
    putStrLn "Jogador 2, informe seu nome:"
    play2 <- getLine
    
    putStrLn (play1 ++ ", informe a palavra que " ++ play2 ++ " deve adivinhar! (todas as letras devem ser minúsculas)")
    palavra <- getLine
    let tamanho = length palavra
    let exibida = replicate tamanho '_'
    
    putStrLn "Hora da forca!"
    putStrLn "===================="
    putStrLn "______"
    putStrLn "|   |"
    putStrLn "|   O"
    putStrLn "|  -|-"
    putStrLn "|  n n"
    putStrLn "______"
    
    imprimirEspacos tamanho
    jogo palavra exibida 6

imprimirEspacos :: Int -> IO ()
imprimirEspacos x = putStrLn (replicate x '-')

atualizarPalavra :: String -> Char -> String -> String
atualizarPalavra palavra letraChute exibida = zipWith (\c e -> if c == letraChute then c else e) palavra exibida

jogo :: String -> String -> Int -> IO ()
jogo palavra exibida tentativas = do
    putStrLn exibida
    putStrLn "Chute uma letra (todas as letras devem ser minúsculas):"
    letra <- getLine
    let letraChute = head letra
    let novaExibida = atualizarPalavra palavra letraChute exibida
    let novaTentativa = if letraChute `elem` palavra then tentativas else tentativas - 1
    desenha novaTentativa
    if novaExibida == palavra
        then putStrLn "Parabéns, você acertou a palavra!"
        else if novaTentativa == 0
            then putStrLn "Você perdeu! :("
            else jogo palavra novaExibida novaTentativa

desenha :: Int -> IO ()
desenha novaTentativa = case novaTentativa of
    0 -> do
        putStrLn "______"
        putStrLn "|   |"
        putStrLn "|"
        putStrLn "|"
        putStrLn "|"
        putStrLn "______"
    1 -> do
        putStrLn "______"
        putStrLn "|   |"
        putStrLn "|   O"
        putStrLn "|"
        putStrLn "|"
        putStrLn "______"
    2 -> do
        putStrLn "______"
        putStrLn "|   |"
        putStrLn "|   O"
        putStrLn "|  |"
        putStrLn "|"
        putStrLn "______"
    3 -> do
        putStrLn "______"
        putStrLn "|   |"
        putStrLn "|   O"
        putStrLn "|  -|"
        putStrLn "|"
        putStrLn "______"
    4 -> do
        putStrLn "______"
        putStrLn "|   |"
        putStrLn "|   O"
        putStrLn "|  -|-"
        putStrLn "|"
        putStrLn "______"
    5 -> do
        putStrLn "______"
        putStrLn "|   |"
        putStrLn "|   O"
        putStrLn "|  -|-"
        putStrLn "|  /"
        putStrLn "______"
    6 -> do
        putStrLn "______"
        putStrLn "|   |"
        putStrLn "|   O"
        putStrLn "|  -|-"
        putStrLn "|  / \\"
        putStrLn "______"
