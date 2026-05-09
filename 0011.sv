class transaction;

	rand bit data[];

	constraint c1{
		data.size() inside {[5:10]};
		}
	constraint c2{
		foreach(data[i]){
		   if(i%4 < 2) data[i] == 0;
		   else         data[i] == 1;
		     }
		     }
endclass

module tb;
 
transaction tx;

initial begin
	tx = new();
	assert(tx.randomize());

	$display(" 0011 patten data =%p",tx.data);
end
endmodule 
