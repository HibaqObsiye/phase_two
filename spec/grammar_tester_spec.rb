require "grammar_tester.rb"

RSpec.describe "grammar_tester method" do
    context "if given an empty string" do
        it "fails" do
            expect { grammar_tester("") }.to raise_error "Give me a string"
        end
    end

    context "if given an empty argument" do
        it "fails" do
            expect { grammar_tester(nil) }.to raise_error "Give me a string"
        end
    end

    context "if given an integer" do
        it "fails" do
            expect{grammar_tester(2)}.to raise_error "Give me a string"
        end
    end

   it "returns false if given a grammatically incorrect one word string" do
    result = grammar_tester("hello")
    expect(result).to eq false
   end
   
   it "returns false if given a string that doesn't start with a capital letter" do
        result = grammar_tester("hello world.")
        expect(result).to eq false
   end

   it "returns true if text grammatically correct" do
        result = grammar_tester("Hello.")
        expect(result).to eq true
   end
   it "returns true if it's all in capital letters but grammatically correct" do
        result = grammar_tester("SHOUT!")
        expect(result).to eq true
   end

   it "returns false if no punctuation marks are included" do
        result = grammar_tester("No punctuation marks")
        expect(result).to eq false
   end
   it "returns false if wrong punctuation mark given" do
        result = grammar_tester("Example:")
        expect(result).to eq false
   end

   it "returns false if additional space present in sentence" do
        result = grammar_tester("Final space  ")
        expect(result).to eq false
   end

end


