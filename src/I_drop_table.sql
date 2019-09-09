create table T(A integer check(A<10));
create table T_count(A integer);
insert into T_count values(0);
create trigger select_T after insert on T
  begin
    update T_count set A=A+1 where rowid=1;
  end;
select count(*) from sqlite_master where type='trigger';

drop table T;
select count(*) from sqlite_master where type='trigger';

