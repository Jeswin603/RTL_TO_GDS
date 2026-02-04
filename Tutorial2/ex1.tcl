 #commands: for, foreach, if, while, continue, break

set List {0 1 2 3 4 5 6}
set index -1
foreach elem $List {
	incr index
	puts "index: $index"
	if { $elem % 2 == 0 } {
		lset List $index [ expr {-$elem}]
	}
	puts "Updates list: $List"
}

