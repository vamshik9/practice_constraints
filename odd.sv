 class transaction;

	 rand bit[3:0] data[];


	 constraint c1{
		 data.size() == 10;
		 }
		 
	constraint c2{
		foreach(data[i]){
			data[i]%2 != 0;
			}
			}
endclass

module tb;

transaction tx;

initial begin
	tx = new();
	assert(tx.randomize());

	$diplay("data = %p",tx.data);
end
endmodule 
