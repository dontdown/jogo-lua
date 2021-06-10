function abertura()
    print("Bem vindo. \nAqui você irá descobrir quantas pessoas já pegaram a sua mulher. \nIsto é apenas um programa para teste, então fds")
end

function manual()
    print("Você deseja ver o manual do jogo (s ou n) ?")
    local resposta = io.read()
    if resposta == 's' then
        print("\nEste é um jogo de adivinhação aonde o computador irá dizer quantas vezes você já foi corno. \nO jogador precisará descobrir por simples processo de tentativa e erro.")
    end
end

function numero_aleatorio()
    return 50
end

function captura_palpite()
    while true do
        print("\nDIgite um palpite: ")
        palpite = io.read()
        if type(tonumber(palpite)) == 'number' then
            palpite = tonumber(palpite)
            if palpite > 51 then
               return print("\nCalma amigo, ela não te traiu tanto assim.")
            end
            if palpite < 49 then
               return print("\nEla está te traindo mais pessoas.")
            end
        else
            print("\nO imbecil, digita um NUMERO seu CORNO!")
        end
    end
end  

function compara_palpite(num_computador, palpite)
    if num_computador == palpite then return true else return false end
end

function imprime_interacao(numero, resultado_da_tentativa)
    if resultado_da_tentativa then
        print("\nParabens, você já foi corno "..numero,"vezes.")
    else
        print("\nInfelizmente você errou. :/")
        print("\nGostaria de tentar novamente? ")
    end
    return not resultado_da_tentativa
end

function partida(numero_secreto)
    palpite = captura_palpite()
    return imprime_interacao(numero_secreto, compara_palpite(numero_secreto, palpite))
end

abertura()
manual()
numero_secreto = numero_aleatorio()
continnua_jogando = true
while continnua_jogando do
    continnua_jogando = partida(numero_secreto)
end