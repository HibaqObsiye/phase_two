require './lib/reading_time.rb'

RSpec.describe "reading_time" do
    context "when given an integer" do
        it "fails" do
            expect{reading_time(3)}.to raise_error "Give me a string"
        end
    end

    context "when given nil" do
        it "fails" do
            expect{reading_time(nil)}.to raise_error "Give me a string" 
        end
    end

   context "when given an array" do
       it "fails" do
         expect { reading_time([]) }.to raise_error "Give me a string"
       end
    end

    it "returns 0 when given an empty string" do
        result = reading_time("")
        expect(result).to eq 0
    end

    it "returns 1 when given one word" do
        result = reading_time("Hello")
        expect(result).to eq 1
    end

    it "returns 1 when given two words" do
        result = reading_time("Hello world")
        expect(result).to eq 1
    end

    it "returns 1 when given two hundred words" do
        result = reading_time("Hello " * 200)
        expect(result).to eq 1
    end

    it "returns 2 when given two hundred and fifty words" do
        result = reading_time("Hello " * 250)
        expect(result).to eq 2
    end
end