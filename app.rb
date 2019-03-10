require_relative 'translate.rb'

system 'clear'

print 'Digite o texto a ser traduzido: '
original_text = gets.chomp

print "\nDigite o código do idioma original (pt, en, es, ru, ja, de, la): "
set_original_language = gets.chomp

print "\nDigite o código do idioma no qual deseja traduzir (pt, en, es, ru, ja, de, la): "
set_translate_language = gets.chomp

language_parameter = "#{set_original_language}-#{set_translate_language}"

Translate.new.translate_text(original_text, language_parameter)
