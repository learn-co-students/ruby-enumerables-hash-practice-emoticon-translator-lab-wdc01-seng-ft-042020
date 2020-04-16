# require modules here
require "pry"
require "yaml"

def load_library(library_path)

  emoticons_library = YAML.load_file(library_path)
  
  results_hash = {}
  
  emoticons_library.each do |meaning, emojis|
    results_hash[meaning] = {:english => emojis[0], :japanese => emojis[1]}
    end 
  
  results_hash

end

def get_japanese_emoticon(path, eng_emoji)
  
  emoji_hash = load_library(path)
  
  emoji_hash.each do |k, v|
    
    if (v[:english] == eng_emoji)
      return v[:japanese]
    end
    
  end
    return "Sorry, that emoticon was not found"

end 


def get_english_meaning(path, jpn_emoji)
  
  emoji_hash = load_library(path)
  
  emoji_hash.each do |k, v|
    if (v[:japanese] == jpn_emoji)
      return k
    end
    
  end
    return "Sorry, that emoticon was not found"

end