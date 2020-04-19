# require modules here
require "yaml"
require "pry"

def load_library(file_path)
  library = YAML.load_file(file_path)
  emo_hash = {}
  library.each do |meaning, emoticons|
    emo_hash[meaning] = {:english => emoticons[0], :japanese => emoticons[1]}
  end
  emo_hash
end

def get_english_meaning(file_path, emoticon)
  library = load_library(file_path)
  
  library.each do |name, emoticons|
    if emoticons[:japanese] == emoticon
      return name
    end
  end
  "Sorry, that emoticon was not found"
end

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  library.each do |name, languages|
    if languages[:english] == emoticon
      return languages[:japanese]
    end
  end
  "Sorry, that emoticon was not found"
end