# require modules here
require "yaml"

def load_library (emoticons_argument)
  # code goes here
  new_hash = {}
  
  emoticons = YAML.load_file(emoticons_argument)
  
  emoticons.each do |key, value|
    new_hash[key]= {}
    new_hash[key][:english]={}
    new_hash[key][:japanese]={}
    
    new_hash[key][:english]=value[0] 
    new_hash[key][:japanese]=value[1]
    #binding.pry
    
  end 
  new_hash
end 

require 'pry'
def get_english_meaning(emoticons, japanese_sign)
  # code goes here
  emoticons_sign = load_library(emoticons)
  
   emoticons_sign.each do |k,v|
     
   if japanese_sign == emoticons_sign[k][:japanese]
    #return emoticons_sign[k][:english]
    return k
   #binding.pry
    end 
  end
 "Sorry, that emoticon was not found"
end

require 'pry'
def get_japanese_emoticon(emoticons, english_sign)
  # code goes here
file_path = load_library(emoticons) 
file_path.each do |k1,v1|

if english_sign == file_path[k1][:english]
  
 return file_path[k1][:japanese]
  #binding.pry
     end  
   end 
"Sorry, that emoticon was not found"
end

 



