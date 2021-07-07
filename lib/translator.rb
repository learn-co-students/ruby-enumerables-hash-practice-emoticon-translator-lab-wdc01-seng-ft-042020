require "yaml"


def load_library(file_path)
 emoticons = YAML.load_file(file_path)
 
  result = {}

  emoticons.each do |meaning, (english, japanese)|
    result[meaning] = {}
    result[meaning][:english] = english
    result[meaning][:japanese] = japanese
  end
result 
end

require "pry"

def get_english_meaning(file_path, japanese_emoticon) 
  library = load_library(file_path)
  response = nil 
  library.each do |meaning, (english, japanese) |
    if japanese_emoticon == english[:japanese]
      response = meaning 
    end
    end
  if response == nil 
    response = "Sorry, that emoticon was not found"
  else return response
  end
end

def get_japanese_emoticon(file_path, english_emoticon)
  library = load_library(file_path)
  response = nil 
  library.each do |meaning, (english, japanese)| 
    if english_emoticon == english[:english]
      response = english[:japanese]
    end 
  end
  if response == nil 
    response = "Sorry, that emoticon was not found"
  else return response
end
end


