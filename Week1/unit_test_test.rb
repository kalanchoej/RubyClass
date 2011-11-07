require 'test/unit'
require 'password'

class TC_PasswordTest < Test::Unit::TestCase

  def test_check
    # Check for a weak password.
    pw = Password.new( 'foo' )
    assert_raises( Password::WeakPassword ) { pw.check }
  
    # Check for a good password.
    pw = Password.new( 'G@7flAxg' )
    assert_nothing_raised { pw.check }
  
    # Check for an exception on bad dictionary path.
    assert_raises( Password::DictionaryError ) { pw.check( '/tmp/nodict' ) }
  end

end
