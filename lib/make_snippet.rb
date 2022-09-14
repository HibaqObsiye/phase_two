def make_snippet(str)
    return " " if str == " "
    fail "integer given" unless str.is_a? String
    word = str.split
    if word.length <= 5
      word.join(" ")
    else
      word.take(5).push("...").join(" ")
     
    end  
    
end

