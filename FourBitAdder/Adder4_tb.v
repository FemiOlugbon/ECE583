//new code
module Adder4_tb();
    reg A, B, Cin;
    wire Sum, Cout;

    Adder4 simulate_adder (
        .A(A[3:0]),
        .B(B[3:0]),
        .Cin(Cin),
        .Sum(Sum[3:0]),
        .Cout(Cout)
    );

    initial
        begin
            $display($time, " <<Starting the Simulation >>");
            // We will loop through some possible input combinations with 50 nano second delay in between each combination

            assign A = 0000; //represent logic 0 (LOW)  1'b0
            assign B = 0000;
            assign Cin = 0;
            #100

	        assign A = 0000;
            assign B = 0000;
            assign Cin = 1;
            #100 // Delay for 50 nano second

	        assign A = 0000;
            assign B = 1111;
            assign Cin = 0;
            #100

            assign A = 0000;
            assign B = 1111;
            assign Cin = 1;
            #100

            assign A = 1111;
            assign B = 0000;
            assign Cin = 0;
            #100

            assign A = 1111;
            assign B = 0000;
            assign Cin = 1;
            #100

            assign A = 1111;
            assign B = 1111;
            assign Cin = 0;
            #100

            assign A = 1111;
            assign B = 1111;
            assign Cin = 1;
	    #100
	    $finish;
            $display($time, " << Simulation complete>>");
        end
endmodule