require './lib/word_finder.rb'

RSpec.describe "word_finder" do

    context "when given an empty string" do
        it "fails" do
            expect{word_finder("")}.to raise_error "Give me a string"
        end
    end

    context "when given nil" do
        it "fails" do
            expect{word_finder(nil)}.to raise_error "Give me a string"
        end
    end

    context "when given an integer" do
        it "fails" do
            expect{word_finder(2)}.to raise_error "Give me a string"
        end
    end

    it "returns false if given one word that is not todo" do
        result = word_finder("hello")
        expect(result).to eq false
    end

    it "returns true if todo is present in all capitals" do
        result = word_finder("TODO")
        expect(result).to eq true
    end

    it "returns true if todo is present in downcase " do
        result = word_finder("todo")
        expect(result).to eq true
    end

    it "returns true if special character is included in todo" do
        result = word_finder("todo!")
        expect(result).to eq true
    end

    it "returns true if there is todo in a longer text" do
        result = word_finder("I am todo")
        expect(result).to eq true
    end

    it "returns false if special characters such as a digit are included in to todo word" do
        result = word_finder("t0do")
        expect(result).to eq false
    end



end
