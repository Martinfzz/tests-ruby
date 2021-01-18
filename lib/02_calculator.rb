def add (a, b)
  return a + b
end

def subtract (a, b)
  return a - b
end

def sum(x)
  return x.empty? ? 0 : x.inject(:+) #Si l'array est vide, on retourne 0 sinon on fait la somme
end

def multiply (a, b)
  return a * b
end

def power (a, b)
  a**b
end

def factorial(a)
  return a == 0 ? 1 : (1..a).inject(:*) #Si a = 0, on le mets à 1 (car 0! = 1) sinon on fait la facotrielle
end