create table T(A integer default 0, B integer);
create table T_upd(A integer);
create trigger countup_T_del after update of B on T
  begin
    insert or replace into T_upd(rowid, A) values(1, old.A+1);
  end;

insert into T(B) values(100);
select * from T;
select * from T_upd;

update T set B=B+1 where rowid=1;
select * from T;
select * from T_upd;

update T set A=A+1 where rowid=1;
select * from T;
select * from T_upd;

