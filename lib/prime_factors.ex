defmodule PrimeFactors do
  @moduledoc """
  Documentation for PrimeFactors.
  """

def factorize (number) do
    is_prime(number, 2, [])
end
  
def is_prime(number,divisor, apples ) do
    if number != 1 do
      if (rem(number, divisor) == 0) do
	is_prime(trunc(number / divisor), divisor, apples ++ [divisor])
      else
	is_prime(number, divisor + 1, apples)
      end
    else 
      apples
    end
end
end

