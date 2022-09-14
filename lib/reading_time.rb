def reading_time(text)
   fail "Give me a string" if !text.is_a? String
    num_words = text.split(" ").count
    return (num_words.to_f / 200).ceil
end
