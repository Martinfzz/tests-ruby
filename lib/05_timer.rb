def time_string(time)
  x = format('%02d', time % 60) #Pour les secondes et permet de mette deux digits
  y = format('%02d', time / 60 % 60) #Pour les minutes
  z = format('%02d', time / 3600) #Pour les heures
  return "#{z}:#{y}:#{x}"
end