def encode(plaintext, key)
  # 'cipher' is just the alphabet re-arranged into an array with the 
  # unique characters from the 'key' at the front, and the 
  # remaining characters in their usual order following
  # - 'cipher' is therefore an array of 26 elements (0 .. 25) containing all
  # the letters of the alphabet, but in a slightly jumbled order
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  # note that 'a'..'z' includes 'z', whereas 'a'...'z' does not!
  #puts cipher
  #puts cipher.class
  #puts cipher.length
  # In the following, for each character in 'plaintext' find its index (0 .. 25) 
  # in the 'cipher' array, and add 65 => 65 .. 90, which is the range of the 
  # ascii codes for the UPPERCASE alphabet
  # <ascii-code>.chr returns the ascii char correspoding to the ascii code, so that
  # 'ciphertext_chars' is an array of uppercase alphabetical characters (single-character strings)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
    #puts (cipher.find_index("s")).chr
    #p ciphertext_chars.class
  end
  puts ciphertext_chars.class
  # 'join' combines the individual characters in ciphertext_chars into a single string
  return ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    #cipher[65 - char.ord]
    cipher[char.ord - 65]
    puts char.ord
  end
  plaintext_chars.join
end

p encode("theswiftfoxjumpedoverthelazydog", "secretkey")
puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")


# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"