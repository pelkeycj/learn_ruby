#write your code here
def ftoc(degf)
  degc = (degf - 32) * (5.0 / 9.0)
  return degc
end

def ctof(degc)
  degf = (degc * (9.0 / 5.0)) + 32
  return degf
end
