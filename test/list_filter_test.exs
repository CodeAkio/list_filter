defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns how many odds exists in list" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]
      expected_response = 3

      response = ListFilter.call(list)

      assert response == expected_response
    end
  end
end
