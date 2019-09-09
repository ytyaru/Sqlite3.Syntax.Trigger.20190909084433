create table T(A integer);
create table T_del(A integer);
create trigger countup_T_del after delete on T
  begin
    insert or replace into T_del(rowid, A) values(1, old.A+1);
  end;

insert into T values(0);
insert into T values(1);
insert into T values(2);
select * from T;
select * from T_del;

delete from T where rowid=1;
select * from T;
select * from T_del;

