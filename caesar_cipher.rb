def caesar_cipher(message, rotation)
  cipher = Hash[("a".."z").zip(("a".."z").to_a.rotate(rotation)) +
                ("A".."Z").zip(("A".."Z").to_a.rotate(rotation))]
  message.gsub(/[A-Za-z]/, cipher) 
end

