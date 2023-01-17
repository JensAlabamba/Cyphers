def caesar_cipher(str, shift)
  alphabet  = Array('a'..'z')
  non_caps  = Hash[alphabet.zip(alphabet.rotate(shift))]

  alphabet = Array('A'..'Z')
  caps     = Hash[alphabet.zip(alphabet.rotate(shift))]

  encrypter = non_caps.merge(caps)

  str.chars.map { |c| encrypter.fetch(c, c) }.join
end

puts caesar_cipher("Cypher me!", 5)