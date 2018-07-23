require "calculate"

describe Calculator do
	describe ".add" do
    context "given an empty string" do
      it "returns zero" do
        expect(Calculator.add("")).to eql(0)
      end
    end
  end
end