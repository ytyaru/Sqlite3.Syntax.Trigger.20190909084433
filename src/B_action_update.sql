create table T(A integer);
create table T_counts(A integer);
insert into T_counts values(0);
create trigger countup_T after insert on T
  begin
    update T_counts set A=A+1 where rowid=1;
  end;

insert into T values(0);
select * from T_counts;

insert into T values(1);
select * from T_counts;

