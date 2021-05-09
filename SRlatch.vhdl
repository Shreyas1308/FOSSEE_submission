entity SRlatch is
  port (S,R: in std_logic; Q,QB: out std_logic); 
  end SRlatch; 
architecture eqns of SRlatch is 
 signal Qi,QBi: std_logic; 
 begin 
  QBi <= S nor Qi;
  Qi <= R nor QBi;
  Q <= Qi;
  QB <= QBi;
end