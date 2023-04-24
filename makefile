manager.o : manager.c
	gcc -c $^
product.o : product.c
	gcc -c $^
market : manager.o product.o market.c
	gcc -o $@ $^
clean :
	rm *.o market
