
 `timescale 1ns/10ps
module bch_encoder_105reg_2_bch_encoder_105reg_2_tbw_v_tf;

/* *******   Read data from "testbench.txt" and write "code" data 
             into "result.txt"  *********************** */ 

parameter message_length=90000;
parameter code_length=4200;
parameter check_bits=104;
parameter information_length=4096;//code_length-check_bits;//8087



     reg message[0:(message_length-1)];	 //message length
	reg [7:0]message_address;
	reg clk;
	reg sel;
	reg [14:0] count;
	reg reset;	
 	reg start;
     reg [3:0]gcount;
wire [7:0]code;//,test;//,temp;
		
	integer TX_FILE,TX_FILE2;




initial 
begin
		    $fsdbDumpfile("encoder_rtl.fsdb"); 
    $fsdbDumpvars;      

  TX_FILE2=$fopen("result.txt");
	 sel=1;
  count <= 0;
  clk <= 0;
  	start<=0;
  $readmemb("testbench.txt",message);//-----binary message data generated from c  
  
  	reset=0;
	#20
	reset=1;
  #180000 // clock period * codelength=2*9000
  
  //$fclose(TX_FILE);
  $fclose(TX_FILE2);
  $stop;
     $finish;
end


always #10 clk = ~clk;//不確定時間單位正確？


always @ (posedge clk or negedge reset)
begin
if(!reset) 
begin

	  message_address<=8'd0;
	  gcount <= #1 0;
	 start <= #1 0;
end
       
else if(gcount<=10)
begin
   gcount <=#1 gcount+1;
   
   start <=#1 0;
end
else
begin
	   start <=#1 1;

	if(count<information_length)// <8087
	  begin
	  sel=1;  
       message_address<={message[count+7],message[count+6],message[count+5],message[count+4],message[count+3],message[count+2],message[count+1],message[count]};	   //message[0~8086]
	  count = count + 8;
	  $fdisplay(TX_FILE2,"%b",code);
        //   	message[count+1]= ~message[count];

	   end
		else if( count==information_length) //<8192,>8086
	  begin
	   sel=1;
	   message_address<=0;
	   
	   count = count + 8;
	   $fdisplay(TX_FILE2,"%b",code);

	  end  
else if( (count< (code_length))&&(count>(information_length))) //<8192,>8086
	  begin
	   sel=0;
	   message_address<=0;
	   
	   count = count + 8;
	   $fdisplay(TX_FILE2,"%b",code);

	  end
else 
    begin
   	count=0;
       
	message_address<={message[count+7],message[count+6],message[count+5],message[count+4],message[count+3],message[count+2],message[count+1],message[count]};	   //message[0~8086]

	sel=1;
	count=count+8;
	$fdisplay(TX_FILE2,"%b",code);
	//count<=0;

    end


      
end
end 

  
 
bch_encoder_p8 bch(.message(message_address),
 .sel(sel),
 .code_o(code),
 .clk(clk),
 .start(start),
 .reset(reset));//,.r103(test));//,.temp(temp));
 


 
 

endmodule

