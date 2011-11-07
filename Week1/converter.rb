=begin rdoc
  Converts a numeric temperature value from one temperature scale to another.
 
  By Chris Cummer, 2006
  version 1.0
=end
class TemperatureConverter
  attr_accessor :supportedScales
 
  @@kelvinCDiff = 273.15
  @@fahrCDiff = 32
  @@fahrMultiplier = 0.56
  @@celMultiplier = 1.80
  @@rankDiff = 459.67
 
 
  # ------------------------------ Initialization ------------------------------ #
 
 
=begin rdoc
  Initialize the instance and define the supported temperature scales
=end
def initialize()
    @supportedScales = Array[ "C", "F", "K", "R" ]
  end
 
 
  # ------------------------------ Public Methods ------------------------------ #
 
 
=begin rdoc
  Takes a numeric value and two string identifiers for the scales and converts between the scales for the provided value
=end 
  def convert( pVal = 0, pFrom = '', pTo = '' )
    theMethod = pFrom.downcase + "2" + pTo.downcase
   
    if ( pVal.respond_to? :to_f )
      eval "return self." <<theMethod <<"( pVal.to_f() )"
    else
      raise "Supplied input value is not numeric: " <<pVal
    end
  end
 
=begin rdoc
  Fahrenheit to Celcius
=end
def f2c( pVal )
    return ( pVal - @@fahrCDiff ) * @@fahrMultiplier
  end
 
=begin rdoc
  Celcius to Fahrenheit
=end
def c2f( pVal )
    return ( pVal * @@celMultiplier ) + @@fahrCDiff
  end
 
=begin rdoc
  Fahrenheit to Kelvin
=end 
  def f2k( pVal )
    return self.f2c( pVal ) + @@kelvinCDiff
  end
 
=begin rdoc
  Celcius to Kelvin
=end 
  def c2k( pVal )
    return pVal + @@kelvinCDiff
  end
 
=begin rdoc
  Kelvin to Fahrenheit
=end 
  def k2f( pVal )
    return self.c2f( self.k2c( pVal ) )
  end
 
=begin rdoc
  Kelvin to Celcius
=end 
  def k2c( pVal )
    return pVal - @@kelvinCDiff
  end
 
=begin rdoc
  Fahrenheit to Rankine
=end 
  def f2r( pVal )
    return pVal + @@rankDiff
  end
 
=begin rdoc
  Celcius to Rankine
=end 
  def c2r( pVal )
    return pVal * @@celMultiplier + @@fahrCDiff + @@rankDiff
  end
 
=begin rdoc
  Kelvin to Rankine
=end 
  def k2r( pVal )
    return pVal * @@celMultiplier
  end
 
=begin rdoc
  Rankine to Fahrenheit
=end 
  def r2f( pVal )
    return pVal - @@rankDiff
  end
 
=begin rdoc
  Rankine to Celius
=end 
  def r2c( pVal )
    return ( pVal - @@fahrCDiff - @@rankDiff ) / @@celMultiplier
  end
 
=begin rdoc
  Rankine to Kelvin
=end 
  def r2k( pVal )
    return pVal / @@celMultiplier
  end
 
 
=begin rdoc
  If the temperature scale parameters don't match any supported temperature scales this error is thrown
=end
def method_missing( m, *args )
    raise "Public method does not exist with this signature: " <<m.to_s() <<"()"
  end
end

