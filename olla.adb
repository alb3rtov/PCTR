package body Olla is
	
	procedure Sub(O: in out TOlla) is
	begin
		O.Sub;
	end Sub;

	procedure Add(O: in out TOlla) is
	begin
		O.Add;
	end Add;

	protected body TOlla is
		entry Sub when Num_Raciones > 0 is
		begin
			Num_Raciones := Num_Raciones - 1;
		end Sub;
		
		entry Add when Num_Raciones = 0 is
		begin
			Num_Raciones := MAX_RACIONES; 
		end Add;
	end TOlla;
end Olla;
