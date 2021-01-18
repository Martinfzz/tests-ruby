def who_is_bigger(a, b, c)
  array = [a, b, c]
  if array.include? (nil) #Test pour savoir si il y a un element nul
    return "nil detected"
  else
    case array.max #Calcul l'élement max et le retourne
    when a
      return "a is bigger"
    when b
      return "b is bigger"
    else
      return "c is bigger"
    end
  end
end

def reverse_upcase_noLTA(sentence)
  sentence.reverse.upcase.delete("LTA") #Prends la phrase, la retourne, mets en majuscules et supprime les lete L T et/ou A
end

def array_42(array)
  array.include? (42)
end

def magic_array(arr)
  return arr.flatten.map{|n|n*2}.delete_if{|n|n%3==0}.uniq.sort #Prends l'array, le regroupe (flatten), le multiplie par 2, supprime les nombres qui sont des multiples de 3, supprime les nombres en double et les trie par ordre croissant
end