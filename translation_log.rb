class WriteFile
  def save_file(original_text, translated_text, language_parameter)
    file_name = Time.now.strftime('%d-%m-%y_%H:%M')
    @file = File.open("#{file_name}.txt", 'a')

    @language_parameter = language_parameter.sub!(/-/, ' para ')

    @file.puts '-' * 50
    @file.puts ''
    @file.puts "O texto a seguir foi traduzido do #{@language_parameter}\n\n"
    @file.puts "Texto original: #{original_text}\n\n"
    @file.puts "Texto traduzido: #{translated_text}\n\n"
    @file.puts '-' * 50

    puts "Arquivo #{file_name}.txt gerado com sucesso!"
  end
end
