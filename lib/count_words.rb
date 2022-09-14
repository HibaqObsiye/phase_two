def count_words(words)
    fail "Give me a string" unless words.is_a? String
    num_words = words.split(" ").count
end

