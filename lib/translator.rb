# require modules here
require "yaml"

def load_library(filepath)
  # code goes here
  hash = {
    "get_meaning": {},
    "get_emoticon": {}
  }
  emoticons = YAML.load_file(filepath)
  
  return hash
end

def get_japanese_emoticon(filepath, emoticon)
  # code goes here
  load_library(filepath)
end

def get_english_meaning(filepath, emoticon)
  # code goes here
  load_library(filepath)
end