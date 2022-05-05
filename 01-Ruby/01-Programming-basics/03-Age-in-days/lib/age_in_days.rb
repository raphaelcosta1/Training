# This "require" line loads the contents of the 'date' file from the standard
# Ruby library, giving you access to the Date class.

require 'date'

def age_in_days(day, month, year)
  # TODO: return the age expressed in days given the day, month, and year of birth
  return (Date.today - Date.new(year, month, day)).to_i
  #   birthdate = Time.new(year, month, day)
  #   seconds = (Time.now- birthdate).to_i
  #   mm, ss = seconds.divmod(60)
  #   hh, mm = mm.divmod(60)
  #   dd, hh = hh.divmod(24)
  #   "#{dd} days, #{hh} hours, #{mm} minutes and #{ss} seconds"
  # end
  # puts age_in_days(12, 10, 1990)
end
