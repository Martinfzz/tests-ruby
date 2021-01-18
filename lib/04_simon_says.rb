def echo(word)
  return word
end

def shout(word)
  return word.upcase #Mets en majuscule
end

def repeat(word, *n) #Le * permets de prendre plusieurs arguements et si il n'y en a pas, crée un array vide
  n.empty? ? n = 2 : n = n.join.to_i #Test pour voir si l'array est vide. Si oui, on lui affecte la valeur de 2, si non, il garde le nombre n que l'on transforme en integer
  return ([word] * n).join(' ') #On multiplie le mot par n et on le regroupe en string
end

def start_of_word(word, n)
  return word[0..n-1] #Garde les mots du début jusqu'à n-1
end

def first_word(word)
  word.split(' ').first #Garde uniquement le 1er mot
end

def titleize(sentence)
  forbiden_words = ["the", "and"] #On initialise les mots interdis
  #On retourne un string avec les mots en capital sauf les mots interdis excepté le 1er
  return sentence.split(' ').each_with_index.map{|word, index| forbiden_words.include?(word) && index > 0 ? word : word.capitalize }.join(' ')
end