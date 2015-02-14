sem	: y.tab.c lex.yy.c list.c
	cc y.tab.c -ly -ll -o sem

y.tab.c : sem.y
	yacc sem.y

lex.yy.c: sem.l
	lex sem.l

clean	:
	rm -rf *~ *.o y.tab.c lex.yy.c
