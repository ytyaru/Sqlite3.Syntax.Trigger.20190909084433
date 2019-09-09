create table T(A integer check(A<10));
create table T_count(A integer);
insert into T_count values(0);
create trigger select_T after insert on T
  begin
    update T_count set A=A+1 where rowid=1;
    select case when new.A < 5 then raise(rollback, 'エラーです。残念でしたね。') end;
  end;

insert into T values(0);
select * from T;
select * from T_count;

insert into T values(5);
select * from T;
select * from T_count;

