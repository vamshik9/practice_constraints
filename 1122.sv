class transaction;

	rand bit[2:0] data[];

	constraint c1{
		data.size() == 10;
		}
	constraint c2{
		foreach(data[i]){
		   data[i] == (i+2)/2;
		     }
		     }
endclass

module tb;
 
transaction tx;

initial begin
	tx = new();
	assert(tx.randomize());

	$display(" 1122334455  patten data =%p",tx.data);
end
endmodule 
