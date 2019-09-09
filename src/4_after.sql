create table T(A integer);
create trigger increment_T_A after insert on T
  begin
    update T set A=A+1;
  end;

insert into T values(0);
select * from T;

insert into T values(1);
select * from T;

insert into T values(2);
select * from T;

