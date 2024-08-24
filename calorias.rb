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


def calculo
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
calculo

#Fazer tratamentos de erros se usuário digitar errado as
# opções de peso, altura e níveis de atividade