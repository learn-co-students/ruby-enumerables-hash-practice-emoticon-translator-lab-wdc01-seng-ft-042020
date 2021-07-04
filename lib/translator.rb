require 'yaml'
require 'pry'

def load_library(path)
  emoticons = YAML.load_file(path)
  hash = {}
  emoticons.each do |key, value|
    hash[key] = { :english => value[0], :japanese => value[1] }
  end
  hash
end

def get_japanese_emoticon(path, emoticon)
  emoticons = load_library(path)
  emoticons.each do |key, value|
    if value[:english] == emoticon
      return value[:japanese]
    end
  end
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(path, emoticon)
  emoticons = load_library(path)
  emoticons.each do |key, value|
    if value[:japanese] == emoticon
      return key
    end
  end
  return "Sorry, that emoticon was not found"
end