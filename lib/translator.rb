require "yaml"

def load_library(input)
  result = YAML.load_file(input)
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