module tb;

int a[$] = '{1,3,2,4,5,5,5,3,4,2,6,7,0,9,8};


int temp;

initial begin
	$display("Before a=%p",a);
	foreach(a[i])begin
		for(int j =i+1; j < a.size(); j++)begin
			if(a[i] == a[j]) begin
				a.delete(j);
		       		j--;//recheck same index
			end
		end
	end
$display("After a=%p",a);


end	

endmodule 
