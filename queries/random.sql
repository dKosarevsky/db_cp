--funcs to generate random data
create or replace function random_string(length integer) returns text as
$$
declare
  chars text[] := '{A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z}';
  result text := '';
  i integer := 0;
begin
  if length < 0 then
    raise exception 'Given length cannot be less than 0';
  end if;
  for i in 1..length loop
    result := result || chars[1+random()*(array_length(chars, 1)-1)];
  end loop;
  return result;
end;

$$ language plpgsql;


create or replace function random_number(starting_value IN NUMERIC, ending_value IN NUMERIC)
    RETURNS NUMERIC AS
$$
   select (starting_value + (ending_value - starting_value) * random())::NUMERIC;

$$
    language 'sql'
    VOLATILE;


create or replace function generate_text(words text[], num_words int)
    RETURNS text AS
$$
        SELECT string_agg(words[ceil(array_length(words,1)*random())],' ')
        FROM generate_series(1,num_words);

$$ language sql;
