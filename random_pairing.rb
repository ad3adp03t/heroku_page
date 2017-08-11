names = ["Katie Collins","Aaron Camersi","Derrick Gillispie","Andrew Farley","Adrian Sauls",
      "John Murphy","Steven Miller","Victoria Frame","Stephanie Frame","Chris Phelps","Derick West",
      "Ty Cook","Robert Caldwell","Marcus Folks","Tyler Richards","Mike Handy"]

def name_rando(name)
	a = name.shuffle.each_slice(2).to_a
		if name.length % 2 == 0
    	else
      		last = a.pop
      		last = last[0]
      		a[0] << last
    	end
    p a		
end	
name_rando(names)