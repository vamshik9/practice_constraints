 class transaction;

	 rand bit[3:0] data[];


	 constraint c1{
		 data.size() == 10;
		 }
		 
	constraint c2{
		foreach(data[i]){
			data[0] == 0;
			data[1] == 1;
			if(i>1) data[i] == (data[i-1] + data[i-2]);
			}
			}
endclass

module tb;

transaction tx;

initial begin
	tx = new();
	assert(tx.randomize());

	$diplay("Fabonacci sequence data = %p",tx.data);
end
endmodule 
