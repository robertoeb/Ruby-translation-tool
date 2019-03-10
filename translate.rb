require 'rest-client'
require_relative 'translation_log.rb'

# This class does a translation using the received parameters
class Translate
  def translate_text(original_text, language_parameter)
    @original_text = original_text
    @language_parameter = language_parameter

    call_translate_api
  end

  private

  def call_translate_api
    api_post = RestClient.post 'https://translate.yandex.net/api/v1.5/tr.json/translate', {
      key: '<PUT YOUR API KEY HERE>',
      text: @original_text.to_s,
      lang: @language_parameter.to_s
    }

    @translated_text = api_post.body.match(/\["(.*)"\]/).captures

    WriteFile.new.save_file(@original_text, @translated_text, @language_parameter)
  end
end
