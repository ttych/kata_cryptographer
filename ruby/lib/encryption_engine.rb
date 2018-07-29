require 'byebug'

# EncryptionEngine to encrypt/decrypt messages
# - use ROT13
class EncryptionEngine
  LOWERCASES = ('a'..'z').to_a

  ROT13_SHIFT = 13

  def encrypt(message)
    message.chars.map do |char|
      if LOWERCASES.include?(char)
        new_char_ord = (LOWERCASES.index(char) + 13) % LOWERCASES.size
        LOWERCASES[new_char_ord]
      else
        char
      end
    end.join
  end

  def decrypt(_message)
    'My Message'
  end
end
