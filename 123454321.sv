class transaction;

	rand bit[2:0] data[];

	constraint c1{
		data.size() == 9;
		}
	constraint c2{
		foreach(data[i]){
		   if(i<5) data[i] == i+1;
		   else    data[i] == 10-i;
		     }
		     }
endclass

module tb;
 
transaction tx;

initial begin
	tx = new();
	assert(tx.randomize());

	$display(" 123454321  patten data =%p",tx.data);
end
endmodule 
