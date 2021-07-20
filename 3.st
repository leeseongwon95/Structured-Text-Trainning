/*
대입은 := 사용하며 형식은 다음과 같음
*/ 

Destination(variable) := source(expression);

/*
즉 오른쪽에 있는 expression 의 결과값을 왼쪽에 있는 변수로 대입시킴
*/

VAR a: INT;
    b: INT;
    c: INT;
END_VAR

a := 10; // a = 10
b := a*2 // b = 20
c := b/a // c = 2

/*
FB 호출은 다음과 같은 형식을 따른다.
<FB name>(FB 인자1, FB 인자 2.. FB 인자 n);
*/

CONCAT(‘AB’,’CD’);

/*
RETURN 문은 Function, FB 또는 프로그램이 완전히 끝나지 않았더라도 벗어나고자 할
때 사용한다.

만약 x 가 y 보다 작다면 POU 를 빠져나가라
*/

IF x < y THEN RETURN;
END_IF;

/*
IF는 조건에 따른 선택을 하고자 할 때 사용되며 IF 문의 전형적인 형식은 다음과 같다.
*/

IF expression THEN statement block;
ELS_IF expression THEN statement block;

ELSE statement block;
END_IF;

/*
IF 와 THEN 사이의 expression 결과값이 TRUE 이면 THEN 바로 다음의 프로그램 구문을
실행하며 결과 값이 FALSE 일 경우 그 다음의 ELS_IF 조건을 검사하고 그 결과 값이
TRUE 이면 THEN 바로 다음의 구문을 실행한다. ELS_IF 는 계속 연달아 사용할 수 있으
며 맨 마지막에는 IF 와 ELS_IF 조건에 모두 해당하지 않을 경우 실행할 ELSE 이하 구문
을 기술 해준 후 END_IF; 로써 IF 문을 마무리 짓는다.
CodeSys 에서 END_IF 다음에는 ; 을 넣어주지 않아도 별 문제 없다.
*/

IF( var1 = 1 )
THEN
 Var2 := FALSE;
 Var3 := TRUE;
ELS_IF(var1 = 2 )
THEN
 Var2 := TRUE;
 Var3 := FALSE;
ELSE
 Var2 := FALSE;
 Var3 := FALSE;
END_IF;

/* 
 해석> 만약 Var1 이 1 이면 Var2 를 FALSE, Var3 를 TRUE 로 만들고
 그렇지 않고 만약 Var1 이 2 이면 Var2 를 TRUE, Var3를 FALSE로 만들며
 이 두 가지 조건에 모두 해당되지 않으면 둘 다 FALSE 로 만든다.
 */