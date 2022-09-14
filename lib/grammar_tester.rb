def grammar_tester(text)
    fail "Give me a string" if !text.is_a? String or text == ""
    result = text.match?(/^[A-Z][\s\S]*?\+?[.?!](?:\n\n|$)/)
end

