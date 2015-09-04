# 1. Convert hex to base64 and back.

# The string:

#   49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d

# should produce:

#   SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t

# Now use this code everywhere for the rest of the exercises. Here's a
# simple rule of thumb:

#   Always operate on raw bytes, never on encoded strings. Only use hex
#   and base64 for pretty-printing.

hex_string = "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d"

def to_base64(string)
  [[string].pack("H*")].pack("m0")
end

def to_hex(string)
  string.unpack("m0").first.unpack("H*").first
end

base64_string = to_base64(hex_string)
puts hex_string == to_hex(base64_string)

# http://stackoverflow.com/questions/18923515/why-is-hex-base64-so-different-from-base64-hex-using-pack-and-unpack
