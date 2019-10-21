defmodule Thingy do
   def sum(x, y) do
        x + y
       end 
    def sum_and_halve(x, y) do
        z = x + y
        z / 2
    end
    def make_adder(x) do
        fn y -> x + y end
    end
    def do_the_thing_plz(thing, stuff) do
        thing.(stuff)
    end
    def compose(fn1, fn2) do
        fn x -> fn2.(fn1.(x)) end        
    end
    def apply(fn1, [a, b]) do
        fn1.(a, b)
    end
    def raise_if_diff([a, a]) do
       a
    end
    def raise_if_diff2([a, b]) do
        ^a = b
    end

    def hello_goodbye("Hello" <> rest) do
        # x <> " world"   
        {:ok, "Goodbye" <> rest}
    end  
    # fall-thorugh case which matches everything else //default case 
    def hello_goodbye(_text) do
        {:error, "no hello"}     
    end


    def for_each([head|rest], fun) do
        fun.(head)
        for_each(rest, fun)
    end
    def for_each([], _fun) do
        :ok
    end

    def map([head|rest], fun) do
        [fun.(head)|map(rest, fun)]        
    end

    def map([], _fun) do
        []
    end
end
