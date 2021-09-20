defmodule ListFilter do
  require Integer

  @spec call([String]) :: number
  def call(list) do
    list
    |> filter_number()
    |> filter_odd()
    |> length()
  end

  defp filter_number(list) do
    list
    |> Enum.map(fn elem -> is_number?(elem) end)
    |> Enum.filter(fn elem -> elem end)
  end

  defp is_number?(text) do
    case Integer.parse(text) do
      {num, ""} -> num
      _ -> false
    end
  end

  defp filter_odd(list) do
    Enum.filter(list, fn elem -> Integer.is_odd(elem) end)
  end
end
