 class transaction;

	 rand int data[];


	 constraint c1{
		 data.size() == 5;
		 }
		 
	constraint c2{
		foreach(data[i]){
			data[i] == 2**(i+1);
			}
			}
endclass

module tb;

transaction tx;

initial begin
	tx = new();
	assert(tx.randomize());

	$display("2 4 8 16   data = %p",tx.data);
end
endmodule 
