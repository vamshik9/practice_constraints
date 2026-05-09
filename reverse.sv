module tb;

int a[] = '{1,3,2,4,5,5,5,3,4,2,6,7,0,9,8};

/*
int b[$];

initial begin
	
	$display("before a=%p",a);
	foreach(a[i])begin
		b.push_front(a[i]);
	end
	foreach(b[i])begin
		a[i] = b[i];
	end
	$display("a=%p",a);
	$display("b=%p",b);
end
*/

int temp;

initial begin
	$display("Before a=%p",a);
	for(int i=0; i <(a.size()/2);i++)begin
	   temp = a[i];
   	   a[i] = a[a.size()-1 -i];
	   a[a.size()-1-i] = temp;
	end
	$display("After a=%p",a);
end	

endmodule 
