// 변수의 값을 대입하는 경우, ":=" 기호를 사용
READY := FALSE;
ExecuteHoming := FALSE;
AlarmSignal := TRUE;

// 읽기 쉽게 하기 위해, 변수 사이클 스페이스나 탭으로 나눠도 괜찮음
Signal := Power AND Enable AND NOT Fault; // Check Signal Avalability
Position := Encodervalue * UserUnit / Increments; // Read Position in UserUnit

// 식 마지막에는 꼭 세미콜론 " ; " 이 필요

// ST 프로그래밍에서 사용하는 연산자 알람표

// () 연산 순서 변경 -> 
VALUE := (1+2) * (3+4); // VALUE는 21 우선 순위 : () * / +-

// ** 거듭 제곱 
VALUE := 2**8; // VALUE = 256

// NOT 논리부정
VALUE := NOT TRUE; // VALUE는 FALSE

// * 곱하기 
VALUE := 8 * 100; // VALUE = 800

// / 나누기 
VALUE := 200 / 25; // VALUE = 8

// + 더하기 
VALUE := 200 + 25; // VALUE = 225

// - 빼기 
VALUE := 200 - 25; // VALUE = 175

// MOD 나머지 
VALUE := 10 MOD 6; // VALUE = 4

// <> 비교 
VALUE := 60 > 10; // VALUE = TRUE

// = 등식 
VALUE := 8 = 100; // VALUE = FALSE

// <> 부등식
VALUE := 8 <> 100; // VALUE = TRUE

// &, AND 논리곱
VALUE := 2#1001 AND 2#1100; // VALUE = 2#1000

// XOR 배타적 논리합 
VALUE := 2#1001 XOR 2#1100; // VALUE = 2#0101

// OR 논리합  
VALUE := 2#1001 OR 2#1100; // VALUE = 2#1101

// 연산자 등식에는 =가 입력됩니다. 이 점을 주의합시다.

​

// 1행만 주석을 하는 경우, C언어와 동일하게  " // " 를 사용합니다.

// 전체 주석이 필요한 경우,  (*  , *)  를 사용합니다.

​

// 변수는 대,소문자 구분을 하지 않습니다. ( 하지만 구분을 위해 확실히 합시다 )

/*
구문의 룰

ST언어에서 사용하는 키워드는 예약어임. 유저가 변수명에 사용할 수 없음

AND, BY, CASE, DO, ELSE, ELSIF, EXIT, FALSE, FOR, IF, NOT, OF, OR, REPEAT, RETURN, THEN, TO, TRUE, UNTIL, WHILE, END_CASE, END_REPEAT

특수문자는 변수 정의에 사용할 수 없음, 단 언더바는 변수명에 사용할 수 있음

<=, >=, :=, .., &, (*,*), %, $, @

미리 저으이된 데이터 형, 유저정의형은 변수명으로 사용할 수 없습니다.

USINT, SINT, BYTE, UINT, INT, WORD, REAL, DINT, UDINT, DWORD, LREAL, LINT, ULINT, LWORD

*/