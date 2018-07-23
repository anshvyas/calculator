require "calculate"

describe Calculator do
	
	describe ".add" do

    context "given an empty string" do
      it "returns zero" do
        expect(Calculator.add("")).to eql(0)
      end
    end
    	
    context"given 2 and 4 as input" do
		it "returns6"do
		expect(Calculator.add("2,4")).to eql(6)
		end
	end


  end

  describe ".sub" do

  	context "given empty string" do
  		it "return zero" do
  			expect(Calculator.sub("")).to eql(0)
  		end
  	end

  	context "given 2 and 4 " do
  		it "returns -2"do
  		expect(Calculator.sub("2,4")).to eql(-2)
  	end
  end

  end
end