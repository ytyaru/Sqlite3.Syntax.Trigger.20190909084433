create table T(A integer);
create trigger increment_T_A after insert on T
  begin
    update T set A=A+1;
  end;
create table audit_T_A(before integer, after integer);
create trigger audit_T_A 
  after update on T
  begin
    insert into audit_T_A values (old.A, new.A);
  end;

insert into T values(0);
select * from T;
select * from audit_T_A;

