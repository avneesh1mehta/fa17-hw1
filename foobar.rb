class Foobar

  def self.baz(a)
    # Class method
    # Call with `Foobar.baz`

    # a to int array, increment elements by 2
    a = a.map(&:to_i).map{|item| item + 2}

    # find all even elements and return a new array with them
    a = a.find_all{|item| item % 2 == 0 }

    # remove duplicates
    a = a.uniq

    # rejects resulting numbers > 10
    a = a.find_all{|item| item < 11}

    # computes sum
    sum = a.inject(0){|sum,item| sum + item }
    return sum
  end
end
