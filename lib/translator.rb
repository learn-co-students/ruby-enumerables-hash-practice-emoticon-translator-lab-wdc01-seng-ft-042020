# require modules here

require 'yaml'

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  new_hash = {}
  emoticons.each do |k, v|
    new_value = {}
    new_value[:english] = v[0]
    new_value[:japanese] = v[1]
    new_hash[k] = new_value
  end
  new_hash
end

def get_japanese_emoticon(file_path, western_emoticon)
  emoticons_hash = load_library(file_path)
  emoticons_hash.each do |k, v|
    return v[:japanese] if v[:english] == western_emoticon
  end
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, japanese_emoticon)
  emoticons_hash = load_library(file_path)
  emoticons_hash.each do |k, v|
    return k if v[:japanese] == japanese_emoticon
  end
  return "Sorry, that emoticon was not found"
end