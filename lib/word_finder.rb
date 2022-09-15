def word_finder(text)
    fail "Give me a string" if !text.is_a? String or text == ""
    text.downcase.scan(/\w+/).include?('todo')
end