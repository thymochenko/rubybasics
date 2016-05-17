puts "ola! bem vindo a aula de português!"
puts "Meu nome é professora Helia, seu nome é?"
nome = gets.chomp
if nome == nome.capitalize
  puts "por favor sente-se #{nome}"
else
  puts nome + "? Você quer dizer #{nome.capitalize} não é?"
  puts "você não sabem nem escrever seu nome?"
  resposta = gets.chomp
  if resposta.downcase == "sim"
    puts "Hunf! Vá e sente-se !"
  else
    puts "FORA!"
  end
end
