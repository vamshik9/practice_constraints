
 class transaction;

	 rand int data[];


	 constraint c1{
		 data.size() == 5;
		 }
		 
	constraint c2{
		foreach(data[i]){
			data[i] == 1 << i;
			}
			}
endclass

module tb;

transaction tx;

initial begin
	tx = new();
	assert(tx.randomize());

	$diplay("2 4 8 16   data = %p",tx.data);
end
endmodule 
