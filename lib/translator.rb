require "yaml"# require modules here
require "pry"

def load_library(file_location)
#hash={:english=>"", :japanese=>""} # initialize a new hash
YAML.load_file(file_location) #loading file returns a hash, need to iterate over this hash and assign values to english and japanese

  YAML.load_file(file_location).each_with_object({}) do |(k, v), a|

    a[k]={}
    a[k][:english]=v[0]
    a[k][:japanese]=v[1]

    end # ends do
end #ends method

def get_japanese_emoticon(file_path=".lib/emoticons.yml",emoticons)
  # code goes here
  b={}
  key_identifier=""
  b=load_library(file_path)
  sorry_message="Sorry, that emoticon was not found"

 emoticons= b.keys.find do|k,v|

    b[k][:japanese]==emoticons
    binding.pry
    # return b[k][:english]

  # else
  #  return sorry_message
   #end
#end
 #



   #b["angel"]=>{:english=>"O:)", :japanese=>"Japanesesymbol"}
   #b["angel"][:english]=>"O:)"
   #from the value received from argument emoticons identify the key and return the other value in that key
   #b.each_with_object({}) do |(k,v),a|
   #  a[k]={}

    # binding.pry
  #  else
  #    sorry_message
   #end


#    if v[:japanese]==emoticons
#    v[:english]
#   } #ends if..else
 #ends Enumerables
#binding.pry
end #ends method

def get_english_meaning
  # code goes here
end
