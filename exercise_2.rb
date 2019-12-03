# Develop your proram to handle multiple consonants at the start of words.
#
# The rule is:
# If the word starts with one or more consonants, move them to the end.
# e.g. cram     -> amcray
#      sprinkle -> inklespray
#
# Still assume the words are lowercase.
word = " "
first_letter = " "
def pig_latin(word)

  if word[0] == "a" || word[0] == "e" || word[0] == "i" || word[0] == "o" || word[0] == "u"
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
assert_equal(pig_latin('cram'), 'amcray')
assert_equal(pig_latin('sprinkle'), 'inklespray')
assert_equal(pig_latin('dog'), 'ogday')
assert_equal(pig_latin('up'), 'upway')
