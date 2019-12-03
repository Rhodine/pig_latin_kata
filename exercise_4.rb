# Develop your work so far to preserve the existing capitalisation of the word
# e.g. Dog  -> Ogday
#      cram -> amcray
#
# Assume words either start with a capital letter or don't — don't worry about
# other formats

word = " "
first_letter = " "
choice = " "
def pig_latin(word)
  choice1 = word[0] == word[0].upcase
  if choice1 == true
    choice = 1
  else
    choice = 0
  end



  if word[0] == "q" && word[1] == "u"
    word.slice!(0)
    word.slice!(0)
    word + "quay"

  elsif word[0] == "a" || word[0] == "e" || word[0] == "i" || word[0] == "o" || word[0] == "u"
     word = word + "way"

  else
    first_letter = word[0]
    while first_letter != "a" and word[0] != "e" and word[0] != "i" and word[0] != "o" and word[0] != "u"
      word.slice!(0)
      word = word + first_letter
      first_letter = word[0]
    end
      word = word + "ay"
  end

  if choice == 1
    word.capitalize
  elsif choice == 0
    word.downcase
  end

end

## Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('Dog'), 'Ogday')
assert_equal(pig_latin('cram'), 'amcray')
