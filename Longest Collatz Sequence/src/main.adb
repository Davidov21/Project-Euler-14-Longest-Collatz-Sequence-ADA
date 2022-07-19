with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   count, biggest_list, answer : Long_Long_Integer := 0;
   num : Long_Long_Integer;

begin
   for i in reverse 1..999999 loop
      num := Long_Long_Integer(i);

      while num >1 loop

         if (num mod 2) = 0 then
            num := num / 2;
         else
            --Put_Line(Long_Integer'Image(num));
            num := 3*num+1;
         end if;
         count:= count + 1;

      end loop;
      if count > biggest_list then
         --Put_Line("n");
         biggest_list := count;
         answer := Long_Long_Integer(i);
      end if;
      count := 0;
   end loop;
   Put_Line(Long_Long_Integer'Image(answer));
end Main;
