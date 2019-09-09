create table T(A integer);
create table T_log(old integer, new integer);
create trigger countup_T after update on T
  begin
    insert into T_log values(old.A, new.A);
  end;

insert into T values(0);
update T set A=A+1 where rowid=1;
select * from T_log;

insert into T values(0);
update T set A=5 where rowid=1;
select * from T_log;

