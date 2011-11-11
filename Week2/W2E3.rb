# Write a method leap_year?. It should accept a year value from the user, check whether it's a leap year, and then return true or false. With the help of this leap_year?() method calculate and display the number of minutes in a leap year (2000 and 2004) and the number of minutes in a non-leap year (1900 and 2005). Note: a century year, like 1900 and 2000, is a leap year only if it is divisible by 400.

require 'test/unit'

MINUTES_LEAP = 527040
MINUTES_NONLEAP = 525600

class TestYear < Test::Unit::TestCase
  def test_minutes
    assert_equal(527040, minutes(2000))
    assert_equal(527040, minutes(2004))
    assert_equal(525600, minutes(2001))
    assert_equal(525600, minutes(1900))
  end
  
  def test_year
    assert(leap_year?(2000))
    assert(leap_year?(2004))
    assert(!leap_year?(2001))
    assert(!leap_year?(1900))
  end
end

def leap_year?(year)
  year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
end

def minutes(year)
  leap_year?(year) ? MINUTES_LEAP : MINUTES_NONLEAP
end

puts "Give us a year and we'll tell you how many minutes are in it..."
year = gets.to_i

puts "%d minutes" % [minutes(year)]
