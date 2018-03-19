#!/usr/bin/perl

@items = ("socks", "shoes", "trousers");

printf "There are %d kinds of clothes.\n", $#items + 1;
print "Put on the ${items[2]} first, and then put on ", join(" and ", @items[0,1]), ".\n";
