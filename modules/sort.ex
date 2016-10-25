defmodule InsertionSort do
  def sort(list) when is_list(list), do: sort(list,[])
  def sort([],sorted), do: sorted
  def sort([h|t],sorted), do: sort(t, insert(h,sorted))
  defp insert(x,[]), do: [x] 
  defp insert(x,[h|t]) when x < h , do: [x] ++ [h|t]
  defp insert(x,[h|t]), do: h ++ insert(x,t)
end

defmodule BubbleSort do
  def sort(list) when is_list(list), do: sort(list, [], :pass)
  def sort([x|[y|t]], acc, _status) when x > y ,do: sort([x] ++ t, acc ++ [y], :swap)
  def sort([h|t],acc,status) ,do: sort(t, acc ++ [h],status)
  def sort([],acc,:swap) ,do: sort(acc,[],:pass)
  def sort([],acc,:pass) ,do: acc
end
