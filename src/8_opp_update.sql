create table T(A integer);
create table T_upd(A integer);
create trigger countup_T_del after update on T
  begin
    insert or replace into T_upd(rowid, A) values(1, old.A+1);
  end;

insert into T values(0);
insert into T values(1);
insert into T values(2);
select * from T;
select * from T_upd;

update T set A=A+1 where rowid=1;
select * from T;
select * from T_upd;

