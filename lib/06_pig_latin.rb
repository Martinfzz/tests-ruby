def translate(sentence)
  words = sentence.split(" ") #Crée un array de la phrase
  words.each do |word|
    if %w(a e i o u).include?(word[0]) #Test pour savoir si il y a une voyelle sur la premiere possition du mot
      word << "ay" #Si oui, rajoute "ay" à la fin du mot
    else 
      i = 0
      until %w(a e i o u).include?(word[i]) do i += 1 end #Si non, test chaque index du mot jusqu'à ce qu'il tombe sur une voyelle
        if word[i] == "u" && word[i-1] == "q" #Si il y a "qu", on vient placer les première lettre à la fin et on rajoute "ay" à la fin 
          word << word[0..i] + "ay"
          word[0..i] = ''
        else
          word << word[0...i] + "ay" #Sinon on vient placer toutes les consomnes avant la première voyelle à la fin et on rajoute "ay" à la fin 
          word[0...i] = ''
        end
    end
  end
    return words.join(" ") #On retourne un string
end