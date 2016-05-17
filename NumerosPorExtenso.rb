def numeroPortugues numero
  if numero < 0
    return 'por favor, digite um numero positivo'
  end
  if numero == 0
    return 'zero'
  end
  #  Nada de casos especiais! Nada de retornos!
  numExtenso = ''#string que vamos retornar

  unidades     = ['um'  , 'dois', 'tres', 'quatro', 'cinco',
                  'seis', 'sete', 'oito', 'nove']
  dezenas      = ['dez'     ,   'vinte'   ,    'trinta' ,   'quarenta',    'cinqüenta',
                  'sessenta',   'sessenta',    'oitenta',   'noventa']
  especiais =    ['onze'     ,  'doze'    ,    'treze'  , 'catorze', 'quinze',
                  'dezesseis',  'dezesete',    'dezoito', 'dezenove']

#  "falta" é quanto do número ainda falta escrever.
#  "escrevendo" é a parte que estamos escrevendo agora.

falta = numero
escrevendo = falta/100 #  Quantas centenas ainda faltam escrever?
falta = falta - escrevendo * 100

if escrevendo > 0
   #  Aqui está o truque sujo:
   centenas = numeroPortugues escrevendo
   numExtenso =  numExtenso + centenas + "centos"
   #  Isso é chamado "recursão". O que nós fizemos?
    #  Eu disse para o método chamar a si mesmo, mas
    #  passando "escrevendo" como parâmetro, ao invés
    #  de "numero". Lembre-se de que "escrevendo" é
    #  (agora) o número de dezenas que nós estamos escrevendo.
    #  Depois de adicionarmos as "centenas" a "numExtenso",
    #  nós adicionamos a string " centos". Então, se nós
    #  chamamos numeroPortugues com 1999 (numero = 1999),
    #  agora escrevendo será 19, e "falta" deve ser 99.
    #  A coisa mais preguiçosa que fazemos aqui é
    #  mandar o método numeroPortugues escrever o número
    #  19 por extenso, e então adicionando "centos" ao
    #  fim e escrevendo "noventa e nove" ao que falta.
    #  Ficando, portanto, "dezenove centos e noventa e nove"

    if falta > 0
      #  Nós não escrevemos dois centosecinqüenta e um'
      numExtenso = numExtenso + ' e '
    end
  end

escrevendo = falta/10 #  Quantas dezenas faltam escrever?
falta = falta - escrevendo * 10 #subtrai destas dezenas

if escrevendo > 0
  if ((escrevendo == 1) and (falta > 0))
    #  Não podemos escrever "dez e dois", temos que escrever "doze",
    #  então vamos fazer uma exceção.
    numExtenso = numExtenso + especiais[falta-1]
    #  O "-1" aqui é porque especiais[3] é 'catorze', e não 'treze'.

    #  Já que cuidamos do dígito das unidades,
    #  não falta mais nada
    falta = 0
  else
    numExtenso = numExtenso + dezenas[escrevendo -1]
    #  E o "-1" aqui é porque dezenas[3] é 'quarenta', e não 'trinta'
  end
  if falta > 0
    #  Como nós não escrevemos "sessentaequatro"...
    numExtenso =  numExtenso + " e "
  end
 end

 escrevendo = falta
 falta = 0

 if escrevendo > 0
   numExtenso = numExtenso + unidades[escrevendo - 1]
    #  Novamente: O "-1" aqui é porque unidades[3] é 'quatro', e não 'três'
 end

 numExtenso
 end

 puts numeroPortugues(11)
