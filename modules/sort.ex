defmodule Insertion do
  def sort(list) when is_list(list) do
    sort(list,[])
  end
  defp sort([],sorted) do
    sorted
  end
  defp sort([h|t],sorted) do
    sort(t, insert(h,sorted))
  end
  defp insert(x,[]) do
    [x] 
  end
  defp insert(x,sorted) do
    [h|t] = sorted
    if x < h do
      [x|sorted]
    else
      [h|insert(x,t)]
    end
  end
end
