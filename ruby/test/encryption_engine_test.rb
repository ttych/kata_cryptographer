require 'minitest/autorun'
require 'encryption_engine'

# EncryptionEngine tests, using ROT13 algorithm
class EncryptionEngineTest < Minitest::Test
  def test_it_encrypts_using_rot13_algorithm
    engine = EncryptionEngine.new
    output = engine.encrypt('My Message')
    assert_equal 'Zl Zrffntr', output
  end
end
