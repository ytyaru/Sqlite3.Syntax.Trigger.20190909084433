create table T(A integer);
create trigger select_T after insert on T
  begin
    select * from T;
  end;
select count(*) from sqlite_master where type='trigger';

drop trigger select_T;
select count(*) from sqlite_master where type='trigger';

