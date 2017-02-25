require "net/http"

def get_random_regexp_string
  patterns = ['торф', 'мор', 'каша']

  pattern = patterns.sample

  letter = pattern.split('').sample
puts pattern.gsub(letter, '.')
  return pattern.gsub(letter, '.')
end

def word_exists?(word)
  url = "https://ru.wiktionary.org/wiki/#{word}"

  wiktionary_page = Net::HTTP.get(URI.parse(URI.encode(url))).force_encoding("UTF-8")

  if wiktionary_page =~ /В настоящий момент текст на данной странице отсутствует./
    return false
  else
    return true
  end

end