# 2. Fixed XOR

# Write a function that takes two equal-length buffers and produces
# their XOR sum.

# The string:

#  1c0111001f010100061a024b53535009181c

# ... after hex decoding, when xor'd against:

#  686974207468652062756c6c277320657965

# ... should produce:

#  746865206b696420646f6e277420706c6179

require "base64"

a_string = "1c0111001f010100061a024b53535009181c"
b_string = "686974207468652062756c6c277320657965"

def xor(a,b)
  (a.hex ^ b.hex).to_s(16)
end

puts xor(a_string, b_string) == "746865206b696420646f6e277420706c6179"
