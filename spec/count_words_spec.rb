require "count_words.rb"

RSpec.describe "count_words method" do
  context "when given an integer" do
    it "fails" do
        expect { count_words(3) }.to raise_error "Give me a string"
    end
  end

  it "returns 0 if given an empty string" do
    result = count_words("")
    expect(result).to eq 0
  end

  it "returns 0 if given an empty string" do
    result = count_words(" ")
    expect(result).to eq 0
  end

  it "returns 1 when given one word" do
    result = count_words("ant")
    expect(result).to eq 1
  end

  it "returns 3 when given three words" do
    result = count_words("These three words")
    expect(result).to eq 3
  end

  it "returns 7 when given seven words" do
    result = count_words("This is a sentence with seven words.")
    expect(result).to eq 7
  end

  context "when given a boolean" do
    it "fails" do
        expect { count_words(false) }.to raise_error "Give me a string"
    end
  end
end