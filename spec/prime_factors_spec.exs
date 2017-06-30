defmodule PrimeNumbersSpec do
  use ESpec
  import PrimeFactors

  describe "Canary" do
    it "true is true" do
      expect true |> should(be(true)) 
    end
  end

  describe "PrimeNumbers:" do
    
  end

end
