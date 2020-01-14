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

def get_japanese_emoticon(path ,en_emoji)
  temp = load_library(path)
  return temp['get_emoticon'][en_emoji]
  # code goes here
end

def get_english_meaning
  # code goes here
end