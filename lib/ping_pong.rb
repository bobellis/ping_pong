class Fixnum
  define_method(:ping_pong) do
    my_array=[*1..self]
    new_array=[]
    my_array.each() do |number|
      if number.%(3)==0 && number.%(5)==0
        number="ping-pong"
        new_array.push(number)
      elsif number.%(3)==0
          number="ping"
          new_array.push(number)
        elsif number.%(5)==0
          number="pong"
          new_array.push(number)
        else
        new_array.push(number)
      end
    end
    new_array
  end
end
