create table T(A integer);
create trigger increment_T_A after insert on T
  begin
    update T set A=A+1;
  end;
create trigger if not exists increment_T_A after insert on T
  begin
    update T set A=A+1;
  end;

