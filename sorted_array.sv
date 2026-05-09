
 class transaction;

	 rand int  data[];


	 constraint c1{
		 data.size() == 5;
		 }
		 
	constraint c2{
		foreach(data[i]){
		    data[i] inside {[1:20]};
		    if(i>0) data[i] > data[i-1];
			}
			}
endclass

module tb;

transaction tx;

initial begin
	tx = new();
	assert(tx.randomize());

	$diplay("ascending order  data = %p",tx.data);
end
endmodule 
