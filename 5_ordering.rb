=begin
A little method to order the elements of an array 
in ascending or descending order.
=end

def alphabetize(arr, rev=false)
    arr.sort!
    if rev == true
      arr.reverse!
    else
      return arr
    end
  end