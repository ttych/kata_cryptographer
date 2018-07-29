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

  def decrypt(message)
    message.chars.map do |char|
      _undo_rot(char)
    end.join
  end

  private

  def _do_rot(char, direction = 1)
    SUPPORTED_RANGES.each do |range|
      next unless range.include?(char)
      return range[(range.index(char) + (ROT13_SHIFT * direction)) % range.size]
    end
    char
  end

  def _undo_rot(char)
    _do_rot(char, -1)
  end
end
