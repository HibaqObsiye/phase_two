require './lib/make_snippet.rb'
RSpec.describe "make_snippet" do
    it "returns joined string" do
        result = make_snippet("I know how to code")   
        expect(result).to eq "I know how to code"
     end
     
     it "returns joined string with amenddments" do
      result = make_snippet("I know how to code too")  
     expect(result).to eq "I know how to code ..."
     end

     it "returns empty string when given empty string" do
        result = make_snippet("")
        expect(result).to eq ""
     end
     it "returns string if less than 5 word" do
        result = make_snippet("I know how to")
        expect(result).to eq "I know how to"
     end
     it "returns empty string when given empty string with space" do
        result = make_snippet(" ")
        expect(result).to eq  " "
     end

     context "if given an integer " do
        it "raises error" do
            expect{make_snippet(7)}.to raise_error "integer given"
        end
    end

end