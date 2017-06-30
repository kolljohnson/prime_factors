defmodule PrimeFactorsSpec do
  use ESpec
  import PrimeFactors

  describe "Canary" do
    it "true is true" do
      expect true |> should(be(true)) 
    end
  end

  describe "PrimeFactors" do
    it "2 returns 2" do
      expect PrimeFactors.factorize(2) |> should(be([2]))
    end

    it "4 returns [2,2]" do
      expect PrimeFactors.factorize(4) |> should(be([2,2]))
    end

    it "9 returns [3,3]" do
      expect PrimeFactors.factorize(9) |> should(be([3,3]))
    end

    it "6 returns [2,3]" do
      expect PrimeFactors.factorize(6) |> should(be([2,3]))
    end

    it "24 returns [2,2,2,3]" do
      expect PrimeFactors.factorize(24) |> should(be([2,2,2,3]))
    end
  end

end
