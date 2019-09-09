create table T(A integer);
create trigger select_T after insert on T
  begin
    select * from T;
  end;

insert into T values(0);

create table T(A integer);
create trigger select_T after insert on T
  begin
    insert into T select * from T;
  end;

insert into T values(0);
select * from T;

