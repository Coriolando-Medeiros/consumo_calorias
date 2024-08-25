def entradas
  puts "Olá, vamos calcular seu índice basal"
  puts "Nome:"
  @nome = gets.chomp.capitalize
  loop do
    begin
      puts "Peso - kg:"
      @peso = Float(gets.chomp)  # Tenta converter a entrada para um número float
      break  # Sai do loop se a conversão for bem-sucedida
    rescue ArgumentError
      puts "Erro: Isso não é um número válido. Por favor, tente novamente."
    end

  end

  loop do
    begin
      puts "Altura - cm:"
      @altura = Float(gets.chomp)  # Tenta converter a entrada para um número float
      break  # Sai do loop se a conversão for bem-sucedida
    rescue ArgumentError
      puts "Erro: Isso não é um número válido. Por favor, tente novamente."
    end
    
  end

  loop do
    begin
      puts "Idade - anos:"
      @idade = Integer(gets.chomp)  # Tenta converter a entrada para um número float
      break  # Sai do loop se a conversão for bem-sucedida
    rescue ArgumentError
      puts "Erro: Isso não é um número válido. Por favor, tente novamente."
    end

  end

end

def menu
  puts "Níveis de atividade:"
  puts "1 - Sedentário"
  puts "2 - Levemente ativo"
  puts "3 - Moderadamente ativo"
  puts "4 - Altamente ativo"
  puts "5 - Extremamente ativo"

  loop do
    begin
      puts "Opção: "
      @atividade = Integer(gets.chomp)  # Tenta converter a entrada para um número float
      break  # Sai do loop se a conversão for bem-sucedida
    rescue ArgumentError
      puts "Erro: Isso não é um número válido. Por favor, tente novamente."
    end
  end

end

def calculo_imc
  @peso_imc = @peso
  @altura_imc = @altura / 100
  @imc = @peso_imc / (@altura_imc * @altura_imc)

  if @imc < 16.9
    puts "#{@nome}, seu IMC é #{'%.2f' % @imc}, magreza extrema!"
    puts "Você deve ganhar peso para ser saudável"
  elsif (@imc >= 17) && (@imc < 18.5)
    puts "#{@nome}, seu IMC é #{'%.2f' % @imc}, abaixo do peso"
    peso_ideal_min = 18.5 * (@altura_imc * @altura_imc)
    peso_necessario = peso_ideal_min - @peso_imc
    puts "Você deve ganhar #{'%.2f' % peso_necessario} kg  para ser saudável"
  elsif (@imc >= 18.5) && (@imc < 25)
    puts "#{@nome}, seu IMC é #{'%.2f' % @imc}, peso normal"
  elsif (@imc  >= 25) && (@imc < 30)
    puts "Seu IMC é #{@imc}, acima do peso"
    peso_ideal_max = 24.9 * (@altura_imc * @altura_imc)
    peso_necessario = @peso_imc - @peso_ideal_max
    puts "Você deve perder #{'%.2f' % peso_necessario} kg  para ser saudável"
  elsif (@imc >= 30) && (@imc < 35)
    puts "Seu IMC é #{@imc}, obesidade grau I"
    peso_ideal_max = 24.9 * (@altura_imc * @altura_imc)
    peso_necessario = @peso_imc - @peso_ideal_max
    puts "Você deve perder #{'%.2f' % peso_necessario} kg  para ser saudável"
  elsif (@icm >= 35) && (@imc - 40)
    puts "Seu IMC é #{'%.2f' % @imc}, obesidade grau II - Severa"
    peso_ideal_max = 24.9 *(@altura_imc * @altura_imc)
    peso_necessario = @peso_imc - peso_ideal_max
    puts "Você deve perder #{'%.2f' % peso_necessario} kg para ser saudável"
  elsif @imc >= 40
    puts "Seu IMC é #{'%.2f' % @imc}, obesidade grau III - mórbida"
    peso_ideal_max = 24.9 * (@altura_imc * @altura_imc)
    peso_necessario = @peso_imc - peso_ideal_max
    puts "Você deve perder #{'%.2f' % peso_necessario} kg para ser saudável"
  end
end

def calculo_metabolismo
  metabolismo_basal = 88.362 + (13.397 * @peso) + (4.799 * @altura) - (5.677 * @idade)
  if @atividade == 1
    calorias_diarias = metabolismo_basal * 1.2
    puts "Metabolismo basal: #{'%.2f' % metabolismo_basal}"
    puts "#{@nome}, seu consumo diário de calorias"
    puts "deve ser #{'%.2f' % calorias_diarias}"
  elsif @atividade == 2
    calorias_diarias = metabolismo_basal * 1.375
    puts "Metabolismo basal: #{'%.2f' % metabolismo_basal}"
    puts "#{@nome}, seu consumo diário de calorias"
    puts "deve ser #{'%.2f' % calorias_diarias}"
  elsif @atividade == 3
    calorias_diarias = metabolismo_basal * 1.55
    puts "Metabolismo basal: #{'%.2f' % metabolismo_basal}"
    puts "#{@nome}, seu consumo diário de calorias"
    puts "deve ser #{'%.2f' % calorias_diarias}"
  elsif @atividade == 4
    calorias_diarias = metabolismo_basal * 1.725
    puts "Metabolismo basal: #{'%.2f' % metabolismo_basal}"
    puts "#{@nome}, seu consumo diário de calorias"
    puts "deve ser #{'%.2f' % calorias_diarias}"
  elsif @atividade == 5
    calorias_diarias = metabolismo_basal * 1.9
    puts "Metabolismo basal: #{'%.2f' % metabolismo_basal}"
    puts "#{@nome}, seu consumo diário de calorias"
    puts "deve ser #{'%.2f' % calorias_diarias}"
  else
    puts "Algo deu errado. Opção de atividade inválida."
  end
end

entradas
menu
calculo_metabolismo
calculo_imc
