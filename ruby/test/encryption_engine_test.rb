require 'minitest/autorun'
require 'encryption_engine'

# EncryptionEngine tests, using ROT13 algorithm
class EncryptionEngineTest < Minitest::Test
  def setup
    @engine = EncryptionEngine.new
  end

  def test_it_encrypts_lowercases_using_rot13_algorithm
    output = @engine.encrypt('my message')
    assert_equal 'zl zrffntr', output
  end

  def test_it_encrypts_uppercases_using_rot13_algorithm
    output = @engine.encrypt('MY MESSAGE')
    assert_equal 'ZL ZRFFNTR', output
  end

  def test_it_encrypts_using_rot13_algorithm
    output = @engine.encrypt('My Message')
    assert_equal 'Zl Zrffntr', output
  end

  def test_it_encrypts_a_complex_message_using_rot13_algorithm
    output = @engine.encrypt('This is my secret')
    assert_equal 'Guvf vf zl frperg', output
  end

  def test_it_decrypts_using_rot13_algorithm
    output = @engine.decrypt('Zl Zrffntr')
    assert_equal 'My Message', output
  end
end
