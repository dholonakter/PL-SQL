---exercise 1--------------
SET SERVEROUTPUT ON
DECLARE 
  v_name  varchar2(10);
  v_account number(10);
  begin
       v_name :='&mynum';
       v_account := 88909;
       DBMS_OUTPUT.PUT_LINE('My name is '||v_name|| ' and my account is '||v_account);
       end;
/
---
--exercise 2-------------------------
SET SERVEROUTPUT ON
declare
 tomorrow varchar2(255);
 begin
 tomorrow:=TO_CHAR(sysdate+1, 
		'fmDay dd  Month year ');
DBMS_OUTPUT.PUT_LINE(tomorrow);
END;
/
--exercise 3------basic loop---------
SET SERVEROUTPUT ON
declare
v_to_multiply number(2):=&whatnumber;
counter integer:=1;
result  integer;
begin
DBMS_OUTPUT.PUT_LINE('With a basic loop');
loop
result:=counter*v_to_multiply;
DBMS_OUTPUT.PUT_LINE(v_to_multiply||'*'||counter||'='||result);
counter:=counter+1;
exit when counter>10;
end loop;
end;
---------with a while loop----------
SET SERVEROUTPUT ON
declare
v_to_multiply number(2):=&whatnumber;
counter integer:=1;
result  integer;
begin
DBMS_OUTPUT.PUT_LINE('With a while loop');
while counter<11 loop
result:=counter*v_to_multiply;
DBMS_OUTPUT.PUT_LINE(v_to_multiply||'*'||counter||'='||result);
counter:=counter+1;
end loop;
end;
----------------with a for loop-------------
SET SERVEROUTPUT ON
declare
v_to_multiply number(2):=&whatnumber;
counter integer:=1;
result  integer;
begin
DBMS_OUTPUT.PUT_LINE('With a for loop');
for i in 1..10 loop
result:=counter*v_to_multiply;
DBMS_OUTPUT.PUT_LINE(v_to_multiply||'*'||counter||'='||result);
counter:=counter+1;
end loop;
end;
--------------------------------------
--exercise 4----
---first step try
SET SERVEROUTPUT ON
declare
sequence_number number(2):=0;
number2 number(2):=1;
currrentresult number(2);
begin
   currrentresult:=sequence_number+number2;
DBMS_OUTPUT.PUT_LINE(currrentresult);
end;

---second step try---
  
SET SERVEROUTPUT ON
declare
sequence_number number(2):=0;
number2 number(2):=1;
currrentresult number(2);
begin
   DBMS_OUTPUT.PUT_LINE('starting sequence number');
    for i in 1..30 loop
   currrentresult:=sequence_number+i;
DBMS_OUTPUT.PUT_LINE(currrentresult);
end loop;
end;
--------------------------
--exercise 5------
/
SET SERVEROUTPUT ON
declare
askdigit number(2);
counter number(2):=9;
digitmultiply integer;
begin
   DBMS_OUTPUT.PUT_LINE('bank statement valid number');
    loop
   askdigit:=&number;
   digitmultiply:=digitmultiply+(counter*askdigit);
        counter:=counter-1;
      exit when counter>1;
     end loop;
    DBMS_OUTPUT.PUT_LINE(digitmultiply);

   end;

