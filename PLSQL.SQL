PL/SQL

IN PLSQL WE CAN CREATE TWO TYPES OF BLOCK

*NAMED BLOCK
*ANONYMOUS BLOCK

TEHRE ARE 4 PARTS IN BLOCKS

DECLARE[OPTIONAL]
  VAR_NAME  DATATYPE[SIZE];

BEGIN 

VAR_NAME := 'VALUES';

EXCEPTION[OPTIONAL]

END;
/


SQL> set serveroutput on ; // IN SQL SET LINES 100 PAGES 100;


SQL> begin
  2  dbms_output.put_line('hi');  //SYSTEM.OUT.PRINTLN()
  3  end;
  4  /  //MANDATORY TO EXICUTE BLOCK
hi

PL/SQL procedure successfully completed.

declare
name varchar(10);  // IN JAVA DATATYPE  VARANAME;
begin
name := 'sudeep';  // VARNAME = VALUES;
dbms_output.put_line(name);
end;
/ 