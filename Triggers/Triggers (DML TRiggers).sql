Triggers (DML TRiggers)

SQL> conn
Enter user-name: scott/tiger
Connected.
SQL> set pages 100 lines 100;
SQL> select * from emp;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SCOTT      SECURITY        7902 17-DEC-80        990                    20
      7499 ALLEN      SECURITY        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

14 rows selected.

SQL> create or replace trigger Update_sal
  2  Before
  3  update or delete
  4  of loc
  5  on dept
  6  enable
  7  begin
  8  update emp
  9  set sal = sal
 10  +50;
 11  end;
 12  /

Trigger created.

SQL> update dept
  2  set loc ='mangaluru'
  3  where deptno = 20;

1 row updated.

SQL> select * from emp;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SCOTT      SECURITY        7902 17-DEC-80       1040                    20
      7499 ALLEN      SECURITY        7698 20-FEB-81       1650        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1300        500         30
      7566 JONES      MANAGER         7839 02-APR-81       3025                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1300       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2900                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2500                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3050                    20
      7839 KING       PRESIDENT            17-NOV-81       5050                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1550          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1150                    20
      7900 JAMES      CLERK           7698 03-DEC-81       1000                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3050                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1350                    10

14 rows selected.

SQL>






SQL> delete from dept
  2  where deptno=40;

1 row deleted.

SQL> select * from emp;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SCOTT      SECURITY        7902 17-DEC-80       1040                    20
      7499 ALLEN      SECURITY        7698 20-FEB-81       1650        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1300        500         30
      7566 JONES      MANAGER         7839 02-APR-81       3025                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1300       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2900                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2500                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3050                    20
      7839 KING       PRESIDENT            17-NOV-81       5050                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1550          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1150                    20
      7900 JAMES      CLERK           7698 03-DEC-81       1000                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3050                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1350                    10

14 rows selected.




SQL> select * from emp;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SCOTT      SECURITY        7902 17-DEC-80       1040                    20
      7499 ALLEN      SECURITY        7698 20-FEB-81       1650        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1300        500         30
      7566 JONES      MANAGER         7839 02-APR-81       3025                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1300       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2900                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2500                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3050                    20
      7839 KING       PRESIDENT            17-NOV-81       5050                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1550          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1150                    20
      7900 JAMES      CLERK           7698 03-DEC-81       1000                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3050                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1350                    10

14 rows selected.

SQL> select * from salgrade;

     GRADE      LOSAL      HISAL
---------- ---------- ----------
         1        700       1200
         2       1201       1400
         3       1401       2000
         4       2001       3000
         5       3001       9999

SQL> select * from emp;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SCOTT      SECURITY        7902 17-DEC-80       1040                    20
      7499 ALLEN      SECURITY        7698 20-FEB-81       1650        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1300        500         30
      7566 JONES      MANAGER         7839 02-APR-81       3025                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1300       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2900                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2500                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3050                    20
      7839 KING       PRESIDENT            17-NOV-81       5050                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1550          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1150                    20
      7900 JAMES      CLERK           7698 03-DEC-81       1000                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3050                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1350                    10

14 rows selected.

SQL> create or replace Insert_record
  2  Before
  3  update
  4  of sal
  5  on emp
  6  enable
  7  begin
  8  insert into salgrade(7,1899,3000);
create or replace Insert_record
                  *
ERROR at line 1:
ORA-00922: missing or invalid option


SQL> ed


SQL> ed
Wrote file afiedt.buf

  1  create or replace trigger Insert_record
  2  Before
  3  update
  4  of sal
  5  on emp
  6  enable
  7  begin
  8  insert into salgrade values(7,1899,3000);
  9* end;
SQL> /

Trigger created.




SQL> update emp
  2  set sal =2000
  3  where deptno =30;

6 rows updated.

SQL> select * from salgrade;

     GRADE      LOSAL      HISAL
---------- ---------- ----------
         1        700       1200
         2       1201       1400
         3       1401       2000
         4       2001       3000
         5       3001       9999
         7       1899       3000

6 rows selected.
