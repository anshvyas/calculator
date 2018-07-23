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

  describe ".mul"do
  	context "given empty string"do
  		it "return zero"do
  			expect(Calculator.mul("")).to eql(0)
		end
	end

	context "given 2 and 4 as input" do
		it "return 8"do
			expect(Calculator.mul("2,4")).to eql(8)
		end
	end	
  end

  describe ".div"do
  	context "given empty string"do
  		it "return 0"do
  			expect(Calculator.div("")).to eql(0)
		end
	end

	context "given 4 and 2 as input"do
		it"return 2"do
			expect(Calculator.div("4,2")).to eql(2)
		end
	end
  end

  describe ".quit"do
  	context"given quit"do
  		it "it aborts execution"do
  			expect(Calculator.quit).to eql("Thank You!!")
  		end
  	end
  end
end