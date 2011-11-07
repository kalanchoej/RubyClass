# Change some ages in seconds to years and months

AGES = Array[979000000, 2158493738, 246144023, 1270166272, 1025600095]
SECS_IN_YEAR = 31556926
SECS_IN_MONTH = 2629744

def years(secs)
  secs / SECS_IN_YEAR
end

def months(secs)
  (secs % SECS_IN_YEAR) / SECS_IN_MONTH
end

AGES.each{|age|
  puts "%d years %d months" % [years(age), months(age)]
}