# require modules here
require "yaml"

def load_library(filepath)
  # code goes here
  raw_data = YAML.load_file(filepath)
  jap_hash = {}
  eng_hash = {}
  
  raw_data.each do |key, value| 
    if (!jap_hash[value[1]]) 
      jap_hash[value[1]] = key
    end
    if (!eng_hash[value[0]])
      eng_hash[value[0]] = value[1]
    end
  end
  
  
  hash = {
    :get_meaning => jap_hash,
    :get_emoticon => eng_hash
  }
  
  return hash
end


def get_japanese_emoticon(filepath, emoticon)
  # code goes here
  hash = load_library(filepath)
  
  hash[:get_emoticon].each do |key, value|
    if (emoticon == key)
      return value
    end
  end
  return "Sorry, that emoticon was not found"
end


def get_english_meaning(filepath, emoticon)
  # code goes here
  hash = load_library(filepath)
  
  hash[:get_meaning].each do |key, value|
    if (emoticon == key)
      return value
    end
  end
  
  return "Sorry, that emoticon was not found"
end