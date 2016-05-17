listaDePalavras = []
nomes = "_"
while nomes != ""
  nomes = gets.chomp
  listaDePalavras.push(nomes)
  if nomes == "mostrar"
    listaDePalavras.pop
    listaDePalavras.sort.each do |list|
      puts "Lista de palavras em ordem alfabética:  #{list.capitalize}"
    end
  end
end

puts "fora do loop"
