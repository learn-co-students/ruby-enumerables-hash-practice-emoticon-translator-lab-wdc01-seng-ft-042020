# require modules here
require 'pry'
require "yaml"

def load_library(file_path)
 emotion_icon = YAML.load_file(file_path)
  load_library = {}
  load_library_array = []
#binding.pry
emotion_icon.reduce({}) do |memo, (meaning, emoticon)|
 # memo #empty hash
 #meaning # Definition
 #emoticon # array 0. english emoticon, 1. japan emoticon

load_library_array << {meaning => {:english => emoticon[0],:japanese => emoticon[1]}}
memo
end
    load_library_array.each_index do |index|
              unless index == 0
  
 load_library = load_library_array[0].merge!(load_library_array[index])
   
  end   
  
end
load_library = load_library.to_h 
  end
  


def get_japanese_emoticon(file_path, icon)
  load_library = load_library(file_path)
      get_japanese_emoticon = {}
  hash_selected = load_library.select{|key, hash| hash[:english] == icon}
  hash_selected.reduce({}) do |memo, (meaning, languages)|
  memo
  get_japanese_emoticon = languages
   get_japanese_emoticon[:japanese]
 end
 if get_japanese_emoticon == {}
    return "Sorry, that emoticon was not found"
  elsif get_japanese_emoticon == ""
    return "Sorry, that emoticon was not found"
    get_japanese_emoticon == nil
    return "Sorry, that emoticon was not found"
  else
   get_japanese_emoticon[:japanese]
end
end
def get_english_meaning(file_path, icon)
  load_library = load_library(file_path)
  get_english_meaning = ""
  selected_hash = load_library.select{|key, hash| hash[:japanese] == icon}
  if selected_hash == {}
    return "Sorry, that emoticon was not found"
  elsif selected_hash == ""
    return "Sorry, that emoticon was not found"
   elsif selected_hash == nil
    return "Sorry, that emoticon was not found"
  else
  selected_hash.reduce({}) do |memo, (meaning, languages)|
  memo
  get_english_meaning = meaning
end
end
end