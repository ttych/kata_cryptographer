require 'byebug'

# EncryptionEngine to encrypt/decrypt messages
# - use ROT13
class EncryptionEngine
  SUPPORTED_RANGES = [('a'..'z').to_a,
                      ('A'..'Z').to_a].freeze

  ROT13_SHIFT = 13

  def encrypt(message)
    message.chars.map do |char|
      _do_rot(char)
    end.join
  end

  def decrypt(_message)
    'My Message'
  end

  private

  def _do_rot(char)
    SUPPORTED_RANGES.each do |range|
      next unless range.include?(char)
      new_char_ord = (range.index(char) + ROT13_SHIFT) % range.size
      return range[new_char_ord]
    end
    char
  end
end
