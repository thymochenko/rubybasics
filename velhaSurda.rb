#velha surda
comando = ""
while comando != "tchau"
  puts comando
  comando = gets.chomp
  if comando.length > 0 and comando != comando.upcase
    puts "fala mais alto !".upcase
  else if
    ano = rand(30..50)
    puts "não! desde 19" + ano.to_s
  end
  end
end

  if comando == "tchau"
    puts "tchau bebe"
  end
