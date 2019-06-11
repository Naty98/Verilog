`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:07:03 03/28/2019 
// Design Name: 
// Module Name:    Top_module 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Top_module(
	input iClk,
	output oEnable;
	output 
    );
	 
LCDWrite lcdInicializacion(
.iClk(1), 
.iCe(1), 
.iReset(0), 
.iRS(0), 
.oDato(oLCDDato),
.oEnable(oEnable), 
.oRS(oRS),
.oFlag(wInicializacion)
);

LCDWrite lcdDatos(
.iClk(1), 
.iCe(wInicializacion), 
.iReset(0), 
.iRS(1), 
.oDato(oLCDDato),
.oEnable(oEnable), 
.oRS(oRS),
);


endmodule
