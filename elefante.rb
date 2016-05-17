count = 0
while count < 100
  count += 1
  if count.to_int == 1
    puts count.to_s +  " Elefante incomoda muita gente"
  else
    puts count.to_s +  " Elefantes incomodam muita gente"
  end
  count = count.to_int + 1
  puts " #{count} Elefantes incomoda muita mais"
  puts "incomodam " * count.to_int  + " muito mais"
end
