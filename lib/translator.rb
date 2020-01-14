require "yaml"

def load_library(input)
  result = YAML.load_file(input)
  pp result
  return result
end

def get_japanese_emoticon(jp_emoji)
  temp = load_library('emoticons.yml')
  temp[jp_emoji][1]
  # code goes here
end

def get_english_meaning
  # code goes here
end