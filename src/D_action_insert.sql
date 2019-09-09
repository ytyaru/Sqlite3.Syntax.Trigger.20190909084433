create table T(A integer);
create table T_log(old integer, new integer);
create trigger delete_T after delete on T
  begin
    delete from T;
  end;

insert into T values(0);
insert into T values(1);
delete from T where rowid=1;
select * from T;

