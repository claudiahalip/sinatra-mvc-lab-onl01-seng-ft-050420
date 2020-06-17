class PigLatinizer 
  
  attr_accessor :text 
  
 
  
  def piglatinize(text)
    
    all_letters = ("a".."z").to_a + ("A".."Z").to_a
    
    vowels = ["a", "e", "i", "o", "u","A", "E", "I", "O", "U" ]
    consonants = all_letters - vowels
    
    arr_latinized = []
    
    text.split.each do |word|
      if vowels.include?(word[0])
        arr_latinized << word + "way"
      else 
        n = 1 
        while !vowels.include?(word[n])
          n +=1
        end
          arr_latinized <<  word[n..-1] + word[0..n-1] + "ay"
      end 
    end
    arr_latinized.join(" ")
    
  end 
  
  
end 
  