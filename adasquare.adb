with Ada.Text_IO;
with Ada.Integer_Text_IO;
use Ada.Text_IO;
use Ada.Integer_Text_IO;

procedure Adasquare is 
  height, width : Integer;
begin
  Put("Height: ");
  Get(height);

  Put("Width: ");
  Get(width);

  for i in 1..height loop
    for j in 1..width loop
      Put("#");
    end loop;
    New_line;
  end loop;
end Adasquare;