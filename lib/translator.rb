# require modules here
require 'yaml'
require 'pry'

def load_library(path)
  # code goes here
  library = YAML.load_file(path).to_hash
  final = {}
  
  library.each do |category, language|
    language.each do 
      final[category] = {
        :english => language[0], 
        :japanese => language[1]
      }
    end
  end
  final
end
  





def get_japanese_emoticon(path, emoticon)
  # code goes here
  
  library = load_library(path).to_hash
  library.each do |key, value|
    if value[:english] == emoticon
      return value[:japanese]
    end
  end
  result = "Sorry, that emoticon was not found" 
end








def get_english_meaning(path, emoticon)
  # code goes here
  library = load_library(path).to_hash
   library.each do |key, value|
    if value[:japanese] == emoticon
      return key
    end
  end
  result = "Sorry, that emoticon was not found" 
end





