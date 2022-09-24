class JogoDaVelha
    attr_reader :tabuleiro

    def initialize
        @@tabuleiro = Array.new(3) {Array.new(3)}
    end

    def pegar_posicao
        puts 'Número da Linha: '
        x = gets.chomp.to_i # X = número da linha
        puts 'Número da Coluna: '
        y = gets.chomp.to_i # Y = número da coluna

        return [x, y]
    end

    def iniciar
        @@i = 1
        while @@i <= 9 do
            puts 'Jogador 1: ' if @@i.odd?
            puts 'Jogador 2: ' if @@i.even?

            def jogada_valida?
                jogada = pegar_posicao()
                if @@tabuleiro[jogada[0]][jogada[1]] == nil
                    puts @@i
                    @@tabuleiro[jogada[0]][jogada[1]] = 'X' if @@i.odd?
                    @@tabuleiro[jogada[0]][jogada[1]] = 'O' if @@i.even?
                    return true
                else
                    system 'clear'
                    puts "Está jogada já ocorreu"
                    return false
                end
            end

            if jogada_valida?() == true
                system 'clear'
                p "=-"*5 + "  Tabuleiro  " + "=-"*5
                @@tabuleiro.map {|element| p element}
                @@i += 1
            end
        end
    end

end

novoJogo = JogoDaVelha.new
novoJogo.iniciar