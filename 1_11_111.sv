class transaction;
	 
	rand int  data[];


	 constraint c1{
		 data.size() == 5;
		 }
		 
	constraint c2{
		foreach(data[i]){
			data[i] == (10**(i+1)-1)/9;
			}
			}
endclass

module tb;

transaction tx;

initial begin
	tx = new();
	assert(tx.randomize());

	$diplay("1 11 111 1111 11111  data = %p",tx.data);
end
endmodule 
