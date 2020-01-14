require "yaml"

def load_library(input)
  temp = YAML.load_file(input)
  result = {}
  result['get_meaning'] = {}
  result['get_emoticon'] = {}
  temp.each{ |k , v| 
  result['get_meaning'][v[1]] = k
  result['get_emoticon'][v[0]] = v[1]
  }
  return result
end

def get_japanese_emoticon(jp_emoji)
  temp = load_library('emoticons.yml')
  return temp[jp_emoji][1]
  # code goes here
end

def get_english_meaning
  # code goes here
end