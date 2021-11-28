package Olla is

	type TOlla is limited private;
	
	procedure Sub(O: in out TOlla);
	procedure Add(O: in out TOlla);

private

	MAX_RACIONES : constant Natural := 10;

	protected type TOlla(Estado_Olla: Natural := MAX_RACIONES) is
		entry Sub;
		entry Add;
	private
		Num_Raciones: Natural := Estado_Olla;
	end TOlla;
end Olla;
