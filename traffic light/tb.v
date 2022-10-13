`include "logic.v"

module light;

//inputs
reg EWCar;
reg NSCar;


//output
wire EWLite;
wire NSLite;


TrafficLite uut (
	.EWCar(EWCar),
	.NSCar(NSCar),
	.EWLite(EWLite),
	.NSLite(NSLite)
);

initial begin
	$dumpfile("light.vcd");
    $dumpvars(0, light);

    EWCar = 0;
    NSCar = 0;

    #30;
    EWCar = 1;
    NSCar = 0;

	#15;
    EWCar = 1;
    NSCar = 1;

    #30;
    EWCar = 0;
    NSCar = 1;

    #30;
    EWCar = 1;
    NSCar = 0;

    

    #30;
    $finish;
 end

 endmodule
