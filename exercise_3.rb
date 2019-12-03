# Develop your work so far to treat 'qu' as a special case, so that those words
# end in 'quay'
# e.g. quick -> ickquay
#      quilt -> iltquay
#      qat   -> atqay

word = " "
first_letter = " "
def pig_latin(word)
  if word[0] == "q" && word[1] == "u"
    word.slice!(0)
    word.slice!(0)
    word + "quay"

  elsif word[0] == "a" || word[0] == "e" || word[0] == "i" || word[0] == "o" || word[0] == "u"
     word + "way"

  else
    first_letter = word[0]
    while first_letter != "a" and word[0] != "e" and word[0] != "i" and word[0] != "o" and word[0] != "u"
      word.slice!(0)
      word = word + first_letter
      first_letter = word[0]
    end
      word + "ay"
  end
end

## Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('quick'), 'ickquay')
assert_equal(pig_latin('quilt'), 'iltquay')
assert_equal(pig_latin('qat'), 'atqay')
