with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Olla; use Olla;

procedure Tribu is

	type PTOlla is access TOlla;

	task type TCocinero(ObjetoOlla: PTOlla);
	task type TCanibal(Id: Character; ObjetoOlla: PTOlla);

	task body TCocinero is
		procedure Dormir is
	
		begin
			Put("Cod ");
			delay 1.0;
		end Dormir;


		procedure Cocinar is

		begin
			Add(ObjetoOlla.all);
			Put("Coc ");
			delay 1.0;
		end Cocinar;

	begin
	  loop
		Dormir;
		Cocinar;	
	  end loop;

	end TCocinero;

	task body TCanibal is
		procedure Comer is
		begin
			Sub(ObjetoOlla.all);
			Put(Id & "c ");
			delay 1.0;
		end Comer;

		procedure Bailar is
		begin
			Put(Id & "b ");
			delay 1.0;
		end Bailar;
	begin
	  loop
		Comer;
		Bailar;
	  end loop;	
	end TCanibal;
	
	Num_Canibales: Positive;

begin
	Put("Numero de canibales: ");
	Get(Num_Canibales);
	New_Line;	

	declare
		type PTCanibal is access TCanibal;
		type PTCocinero is access TCocinero;
		
		P : PTCanibal;
		Id: Character := 'A';
		ObjetoOlla: PTOlla;			
		C: PTCocinero;
	begin

		Put_Line("Comienza la ejecución");
		ObjetoOlla := new TOlla;
		C := new TCocinero(ObjetoOlla);
		
		for i in 1..Num_Canibales loop
			P := new TCanibal(Id, ObjetoOlla);
			Id := Character'Succ(Id);
			delay 1.0;
		end loop;	
	end;
end Tribu;
