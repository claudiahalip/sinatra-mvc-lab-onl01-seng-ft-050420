class PigLatinizer 
  
  attr_accessor :text 
  
 
  
  def latinizer(text)
    all_letters = ("a".."z").to_a
    
    vowels = ["a", "e", "i", "o", "u","A", "E", "I", "O", "U" ]
    consonants = all_letters - vowels
    
    arr_latinized = []
    text.split.each do |word|
      if vowels.include?(word[0])
        arr_latinized << word + "way"
      elsif consonants.include?(word[0]) && consonants.include?(word[1])
        arr_latinized <<  word[2..-1] + word[0] + word[1] + "ay"
      elsif consonants.include?(word[0])
        arr_latinized << word[1..-1] + word[0] + "ay"
      
      end 
    end
    arr_latinized.join(" ")
    
  end 
  
  
end 
  