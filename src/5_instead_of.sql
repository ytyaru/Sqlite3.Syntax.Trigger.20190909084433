create table T(A integer);
create view VT as select * from T;
create trigger increment_VT_A instead of insert on VT
  begin
    update T set A=A+1;
  end;

insert into VT values(0);
select * from T;
select * from VT;

insert into T values(0);
select * from T;
select * from VT;

insert into VT values(0);
select * from T;
select * from VT;

