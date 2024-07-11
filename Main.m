; creates a user
	;
	set ok=$$set^User(1,"clayton~claytonssecurepassword~clayton-johnson@no-reply.com~Clayton Johnson") ;set user
	i ok=1 d
	. write "User created:",!
	. zwrite ^users(1)
	e  d
	. write "The user could not be created.",!
	;
	set ok=$$set^User(2,"jerry~jerryscoolpassword~jerry-tackett@no-reply.com~Jerry Tackett")
	i ok=1 d
	. write !,"User created:",!
	. zwrite ^users(2)
	e  d
	. write !,"Whoops! The user could not be created.",!
	;
; fetch a user
	;
	set id=1
	set ok=$$fetch^User(id,.data)
	i ok=1 d
	. write !,"User fetched (",id,"):",!
	. zwrite data
	e  d
	. write !,"The user could not be fetched.",!
	;
; update a user
	;
	set id=1
	set ok=$$set^User(id,"John~password~John-Doe@no-reply.com~John Doe
	;	
	")
	i ok=1 d
	. write !,"User updated (",id,"):",!
	. zwrite ^users(1)
	e  d
	. write !,"The user could not be updated.",!
	;
	;	
; factorial calcalator
factorialcalc(n)
	i n=1 q 1
	s k=1
	f i=1:1:n d
	. s k=k*i
	q k
	;
	;	