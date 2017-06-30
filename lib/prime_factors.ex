defmodule PrimeFactors do
  @moduledoc """
  Documentation for PrimeFactors.
  """

def factorize(number), do: factorize(number, 2, [])  
def factorize(number,divisor, apples) do
  if number != 1 do
    cond do
      is_divisible?(number, divisor) ->
	next_number = trunc(number / divisor) 
	factorize(next_number, divisor, apples ++ [divisor])
	
      true ->
	factorize(number, divisor + 1, apples)
    end
  else 
      apples
  end
end

defp is_divisible?(number, divisor), do: rem(number, divisor) == 0

end

