#commands: proc, return

proc printsumproduct { x y } {
	set sum [ expr { $x + $y }]
	set product [ expr { $x * $y } ]
	puts "sum is : $sum"
	puts "product is : $product"
	return 
	}
	
puts [ printsumproduct 10 50 ]
