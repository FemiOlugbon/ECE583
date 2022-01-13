module FullAdder_tb();
    reg A, B, Cin;
    wire Sum, Cout;

    FullAdder simulate_adder (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum), 
        .Cout(Cout)
    );

    initial
        begin
            $display($time, " <<Starting the Simulation >>");
            // We will loop through all possible input combinations with 50 nano second delay in between each combination

            assign A = 0; //represent logic 0 (LOW)  1'b0
            assign  B = 0;
            assign Cin = 0;
            #100
	    assign A = 0;
            assign B = 0;
            assign Cin = 1;
            #100 // Delay for 50 nano second
	    assign A = 0;
            assign B = 1;
            assign Cin = 0;
            #100

            assign A = 0;
            assign B = 1;
            assign Cin = 1;
            #100

            assign A = 1;
            assign B = 0;
            assign Cin = 0;
            #100

            assign A = 1;
            assign B = 0;
            assign Cin = 1;
            #100

            assign A = 1;
            assign B = 1;
            assign Cin = 0;
            #100

            assign A = 1;
            assign B = 1;
            assign Cin = 1;
	    #100
	    $finish;
            $display($time, " << Simulation complete>>");
        end
endmodule