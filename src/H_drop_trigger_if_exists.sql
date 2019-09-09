create table T(A integer);
create trigger select_T after insert on T
  begin
    select * from T;
  end;
drop trigger if exists select_T;
drop trigger if exists select_T;

