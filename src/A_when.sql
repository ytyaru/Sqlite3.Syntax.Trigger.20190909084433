create table T(A integer);
create table T_odd_num(A integer);
insert into T_odd_num values(0);
create trigger countup_odd_num_T after insert on T when 1=(new.A%2)
  begin
    update T_odd_num set A=A+1 where rowid=1;
  end;

insert into T values(1);
select * from T;
select * from T_odd_num;

insert into T values(2);
select * from T;
select * from T_odd_num;

insert into T values(3);
select * from T;
select * from T_odd_num;

