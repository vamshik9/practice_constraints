class transaction;

	rand bit data[];

	constraint c1{
		data.size() inside {[5:10]};
		}
	constraint c2{
		foreach(data[i]){
		   if(i%2 == 0) data[i] == 1;
		   else         data[i] == 0;
		     }
		     }
endclass

module tb;
 
transaction tx;

initial begin
	tx = new();
	assert(tx.randomize());

	$display(" 1010 patten data =%p",tx.data);
end
endmodule 
