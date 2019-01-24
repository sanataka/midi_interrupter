module midi(
	input CLK,
	input wri,
	input enb,
	input bit0,
	input bit1,
	input bit2,
	input bit3,
	input bit4,
	input bit5,
	input bit6,
	output SPKR,
	output LED
);

reg [7:0] clk_cnt; 
always @(posedge CLK) begin //50MHz to 200kHz
 	if (clk_cnt == 250) 
 		clk_cnt = 0; 
 	else 
 		clk_cnt = clk_cnt + 1; 
end
wire sub_clk;
assign sub_clk = (clk_cnt == 0); //making sub clock


reg [15:0] i_cnt0;
always @(posedge sub_clk) begin //note0
	if (i_cnt0 == 24462)
		i_cnt0 <= 0;
	else
		i_cnt0 <= i_cnt0 + 1;
end
reg [15:0] i_cnt1;
always @(posedge sub_clk) begin //note1
	if (i_cnt1 == 23089)
		i_cnt1 <= 0;
	else
		i_cnt1 <= i_cnt1 + 1;
end

reg [15:0] i_cnt2;
always @(posedge sub_clk) begin //note2
	if (i_cnt2 == 21794)
		i_cnt2 <= 0;
	else
		i_cnt2 <= i_cnt2 + 1;
end

reg [15:0] i_cnt3;
always @(posedge sub_clk) begin //note3
	if (i_cnt3 == 20570)
		i_cnt3 <= 0;
	else
		i_cnt3 <= i_cnt3 + 1;
end

reg [15:0] i_cnt4;
always @(posedge sub_clk) begin //note4
	if (i_cnt4 == 19416)
		i_cnt4 <= 0;
	else
		i_cnt4 <= i_cnt4 + 1;
end

reg [15:0] i_cnt5;
always @(posedge sub_clk) begin //note5
	if (i_cnt5 == 18326)
		i_cnt5 <= 0;
	else
		i_cnt5 <= i_cnt5 + 1;
end

reg [15:0] i_cnt6;
always @(posedge sub_clk) begin //note6
	if (i_cnt6 == 17298)
		i_cnt6 <= 0;
	else
		i_cnt6 <= i_cnt6 + 1;
end

reg [15:0] i_cnt7;
always @(posedge sub_clk) begin //note7
	if (i_cnt7 == 16327)
		i_cnt7 <= 0;
	else
		i_cnt7 <= i_cnt7 + 1;
end

reg [15:0] i_cnt8;
always @(posedge sub_clk) begin //note8
	if (i_cnt8 == 15410)
		i_cnt8 <= 0;
	else
		i_cnt8 <= i_cnt8 + 1;
end

reg [15:0] i_cnt9;
always @(posedge sub_clk) begin //note9
	if (i_cnt9 == 14545)
		i_cnt9 <= 0;
	else
		i_cnt9 <= i_cnt9 + 1;
end

reg [15:0] i_cnt10;
always @(posedge sub_clk) begin //note10
	if (i_cnt10 == 13729)
		i_cnt10 <= 0;
	else
		i_cnt10 <= i_cnt10 + 1;
end

reg [15:0] i_cnt11;
always @(posedge sub_clk) begin //note11
	if (i_cnt11 == 12959)
		i_cnt11 <= 0;
	else
		i_cnt11 <= i_cnt11 + 1;
end

reg [15:0] i_cnt12;
always @(posedge sub_clk) begin //note12
	if (i_cnt12 == 12231)
		i_cnt12 <= 0;
	else
		i_cnt12 <= i_cnt12 + 1;
end

reg [15:0] i_cnt13;
always @(posedge sub_clk) begin //note13
	if (i_cnt13 == 11545)
		i_cnt13 <= 0;
	else
		i_cnt13 <= i_cnt13 + 1;
end

reg [15:0] i_cnt14;
always @(posedge sub_clk) begin //note14
	if (i_cnt14 == 10897)
		i_cnt14 <= 0;
	else
		i_cnt14 <= i_cnt14 + 1;
end

reg [15:0] i_cnt15;
always @(posedge sub_clk) begin //note15
	if (i_cnt15 == 10285)
		i_cnt15 <= 0;
	else
		i_cnt15 <= i_cnt15 + 1;
end

reg [15:0] i_cnt16;
always @(posedge sub_clk) begin //note16
	if (i_cnt16 == 9708)
		i_cnt16 <= 0;
	else
		i_cnt16 <= i_cnt16 + 1;
end

reg [15:0] i_cnt17;
always @(posedge sub_clk) begin //note17
	if (i_cnt17 == 9163)
		i_cnt17 <= 0;
	else
		i_cnt17 <= i_cnt17 + 1;
end

reg [15:0] i_cnt18;
always @(posedge sub_clk) begin //note18
	if (i_cnt18 == 8649)
		i_cnt18 <= 0;
	else
		i_cnt18 <= i_cnt18 + 1;
end

reg [15:0] i_cnt19;
always @(posedge sub_clk) begin //note19
	if (i_cnt19 == 8163)
		i_cnt19 <= 0;
	else
		i_cnt19 <= i_cnt19 + 1;
end
reg [15:0] i_cnt20;
always @(posedge sub_clk) begin //note20
	if (i_cnt20 == 7705)
		i_cnt20 <= 0;
	else
		i_cnt20 <= i_cnt20 + 1;
end
reg [15:0] i_cnt21;
always @(posedge sub_clk) begin //note21
	if (i_cnt21 == 7273)
		i_cnt21 <= 0;
	else
		i_cnt21 <= i_cnt21 + 1;
end

reg [15:0] i_cnt22;
always @(posedge sub_clk) begin //note22
	if (i_cnt22 == 6865)
		i_cnt22 <= 0;
	else
		i_cnt22 <= i_cnt22 + 1;
end

reg [15:0] i_cnt23;
always @(posedge sub_clk) begin //note23
	if (i_cnt23 == 6479)
		i_cnt23 <= 0;
	else
		i_cnt23 <= i_cnt23 + 1;
end

reg [15:0] i_cnt24;
always @(posedge sub_clk) begin //note24
	if (i_cnt24 == 6116)
		i_cnt24 <= 0;
	else
		i_cnt24 <= i_cnt24 + 1;
end

reg [15:0] i_cnt25;
always @(posedge sub_clk) begin //note25
	if (i_cnt25 == 5772)
		i_cnt25 <= 0;
	else
		i_cnt25 <= i_cnt25 + 1;
end

reg [15:0] i_cnt26;
always @(posedge sub_clk) begin //note26
	if (i_cnt26 == 5448)
		i_cnt26 <= 0;
	else
		i_cnt26 <= i_cnt26 + 1;
end

reg [15:0] i_cnt27;
always @(posedge sub_clk) begin //note27
	if (i_cnt27 == 5143)
		i_cnt27 <= 0;
	else
		i_cnt27 <= i_cnt27 + 1;
end

reg [15:0] i_cnt28;
always @(posedge sub_clk) begin //note28
	if (i_cnt28 == 4854)
		i_cnt28 <= 0;
	else
		i_cnt28 <= i_cnt28 + 1;
end

reg [15:0] i_cnt29;
always @(posedge sub_clk) begin //note29
	if (i_cnt29 == 4582)
		i_cnt29 <= 0;
	else
		i_cnt29 <= i_cnt29 + 1;
end

reg [15:0] i_cnt30;
always @(posedge sub_clk) begin //note30
	if (i_cnt30 == 4324)
		i_cnt30 <= 0;
	else
		i_cnt30 <= i_cnt30 + 1;
end

reg [15:0] i_cnt31;
always @(posedge sub_clk) begin //note31
	if (i_cnt31 == 4082)
		i_cnt31 <= 0;
	else
		i_cnt31 <= i_cnt31 + 1;
end

reg [15:0] i_cnt32;
always @(posedge sub_clk) begin //note32
	if (i_cnt32 == 3853)
		i_cnt32 <= 0;
	else
		i_cnt32 <= i_cnt32 + 1;
end

reg [15:0] i_cnt33;
always @(posedge sub_clk) begin //note33
	if (i_cnt33 == 3636)
		i_cnt33 <= 0;
	else
		i_cnt33 <= i_cnt33 + 1;
end

reg [15:0] i_cnt34;
always @(posedge sub_clk) begin //note34
	if (i_cnt34 == 3432)
		i_cnt34 <= 0;
	else
		i_cnt34 <= i_cnt34 + 1;
end

reg [15:0] i_cnt35;
always @(posedge sub_clk) begin //note35
	if (i_cnt35 == 3240)
		i_cnt35 <= 0;
	else
		i_cnt35 <= i_cnt35 + 1;
end

reg [15:0] i_cnt36;
always @(posedge sub_clk) begin //note36
	if (i_cnt36 == 3058)
		i_cnt36 <= 0;
	else
		i_cnt36 <= i_cnt36 + 1;
end

reg [15:0] i_cnt37;
always @(posedge sub_clk) begin //note37
	if (i_cnt37 == 2886)
		i_cnt37 <= 0;
	else
		i_cnt37 <= i_cnt37 + 1;
end

reg [15:0] i_cnt38;
always @(posedge sub_clk) begin //note38
	if (i_cnt38 == 2724)
		i_cnt38 <= 0;
	else
		i_cnt38 <= i_cnt38 + 1;
end

reg [15:0] i_cnt39;
always @(posedge sub_clk) begin //note39
	if (i_cnt39 == 2571)
		i_cnt39 <= 0;
	else
		i_cnt39 <= i_cnt39 + 1;
end
reg [15:0] i_cnt40;
always @(posedge sub_clk) begin //note40
	if (i_cnt40 == 2427)
		i_cnt40 <= 0;
	else
		i_cnt40 <= i_cnt40 + 1;
end

reg [15:0] i_cnt41;
always @(posedge sub_clk) begin //note41
	if (i_cnt41 == 2291)
		i_cnt41 <= 0;
	else
		i_cnt41 <= i_cnt41 + 1;
end

reg [15:0] i_cnt42;
always @(posedge sub_clk) begin //note42
	if (i_cnt42 == 2162)
		i_cnt42 <= 0;
	else
		i_cnt42 <= i_cnt42 + 1;
end

reg [15:0] i_cnt43;
always @(posedge sub_clk) begin //note43
	if (i_cnt43 == 2041)
		i_cnt43 <= 0;
	else
		i_cnt43 <= i_cnt43 + 1;
end
reg [15:0] i_cnt44;
always @(posedge sub_clk) begin //note44
	if (i_cnt44 == 1926)
		i_cnt44 <= 0;
	else
		i_cnt44 <= i_cnt44 + 1;
end
reg [15:0] i_cnt45;
always @(posedge sub_clk) begin //note45
	if (i_cnt45 == 1818)
		i_cnt45 <= 0;
	else
		i_cnt45 <= i_cnt45 + 1;
end
reg [15:0] i_cnt46;
always @(posedge sub_clk) begin //note46
	if (i_cnt46 == 1716)
		i_cnt46 <= 0;
	else
		i_cnt46 <= i_cnt46 + 1;
end

reg [15:0] i_cnt47;
always @(posedge sub_clk) begin //note47
	if (i_cnt47 == 1620)
		i_cnt47 <= 0;
	else
		i_cnt47 <= i_cnt47 + 1;
end

reg [15:0] i_cnt48;
always @(posedge sub_clk) begin //note48
	if (i_cnt48 == 1529)
		i_cnt48 <= 0;
	else
		i_cnt48 <= i_cnt48 + 1;
end

reg [15:0] i_cnt49;
always @(posedge sub_clk) begin //note49
	if (i_cnt49 == 1443)
		i_cnt49 <= 0;
	else
		i_cnt49 <= i_cnt49 + 1;
end
reg [15:0] i_cnt50;
always @(posedge sub_clk) begin //note50
	if (i_cnt50 == 1362)
		i_cnt50 <= 0;
	else
		i_cnt50 <= i_cnt50 + 1;
end
reg [15:0] i_cnt51;
always @(posedge sub_clk) begin //note51
	if (i_cnt51 == 1286)
		i_cnt51 <= 0;
	else
		i_cnt51 <= i_cnt51 + 1;
end
reg [15:0] i_cnt52;
always @(posedge sub_clk) begin //note52
	if (i_cnt52 == 1213)
		i_cnt52 <= 0;
	else
		i_cnt52 <= i_cnt52 + 1;
end
reg [15:0] i_cnt53;
always @(posedge sub_clk) begin //note53
	if (i_cnt53 == 1145)
		i_cnt53 <= 0;
	else
		i_cnt53 <= i_cnt53 + 1;
end
reg [15:0] i_cnt54;
always @(posedge sub_clk) begin //note54
	if (i_cnt54 == 1081)
		i_cnt54 <= 0;
	else
		i_cnt54 <= i_cnt54 + 1;
end
reg [15:0] i_cnt55;
always @(posedge sub_clk) begin //note55
	if (i_cnt55 == 1020)
		i_cnt55 <= 0;
	else
		i_cnt55 <= i_cnt55 + 1;
end
reg [15:0] i_cnt56;
always @(posedge sub_clk) begin //note56
	if (i_cnt56 == 963)
		i_cnt56 <= 0;
	else
		i_cnt56 <= i_cnt56 + 1;
end
reg [15:0] i_cnt57;
always @(posedge sub_clk) begin //note57
	if (i_cnt57 == 909)
		i_cnt57 <= 0;
	else
		i_cnt57 <= i_cnt57 + 1;
end
reg [15:0] i_cnt58;
always @(posedge sub_clk) begin //note58
	if (i_cnt58 == 858)
		i_cnt58 <= 0;
	else
		i_cnt58 <= i_cnt58 + 1;
end
reg [15:0] i_cnt59;
always @(posedge sub_clk) begin //note59
	if (i_cnt59 == 810)
		i_cnt59 <= 0;
	else
		i_cnt59 <= i_cnt59 + 1;
end
reg [15:0] i_cnt60;
always @(posedge sub_clk) begin //note60
	if (i_cnt60 == 764)
		i_cnt60 <= 0;
	else
		i_cnt60 <= i_cnt60 + 1;
end
reg [15:0] i_cnt61;
always @(posedge sub_clk) begin //note61
	if (i_cnt61 == 722)
		i_cnt61 <= 0;
	else
		i_cnt61 <= i_cnt61 + 1;
end
reg [15:0] i_cnt62;
always @(posedge sub_clk) begin //note62
	if (i_cnt62 == 681)
		i_cnt62 <= 0;
	else
		i_cnt62 <= i_cnt62 + 1;
end
reg [15:0] i_cnt63;
always @(posedge sub_clk) begin //note63
	if (i_cnt63 == 643)
		i_cnt63 <= 0;
	else
		i_cnt63 <= i_cnt63 + 1;
end
reg [15:0] i_cnt64;
always @(posedge sub_clk) begin //note64
	if (i_cnt64 == 607)
		i_cnt64 <= 0;
	else
		i_cnt64 <= i_cnt64 + 1;
end
reg [15:0] i_cnt65;
always @(posedge sub_clk) begin //note65
	if (i_cnt65 == 573)
		i_cnt65 <= 0;
	else
		i_cnt65 <= i_cnt65 + 1;
end
reg [15:0] i_cnt66;
always @(posedge sub_clk) begin //note66
	if (i_cnt66 == 541)
		i_cnt66 <= 0;
	else
		i_cnt66 <= i_cnt66 + 1;
end
reg [15:0] i_cnt67;
always @(posedge sub_clk) begin //note67
	if (i_cnt67 == 510)
		i_cnt67 <= 0;
	else
		i_cnt67 <= i_cnt67 + 1;
end
reg [15:0] i_cnt68;
always @(posedge sub_clk) begin //note68
	if (i_cnt68 == 482)
		i_cnt68 <= 0;
	else
		i_cnt68 <= i_cnt68 + 1;
end
reg [15:0] i_cnt69;
always @(posedge sub_clk) begin //note69
	if (i_cnt69 == 455)
		i_cnt69 <= 0;
	else
		i_cnt69 <= i_cnt69 + 1;
end
reg [15:0] i_cnt70;
always @(posedge sub_clk) begin //note70
	if (i_cnt70 == 429)
		i_cnt70 <= 0;
	else
		i_cnt70 <= i_cnt70 + 1;
end
reg [15:0] i_cnt71;
always @(posedge sub_clk) begin //note71
	if (i_cnt71 == 405)
		i_cnt71 <= 0;
	else
		i_cnt71 <= i_cnt71 + 1;
end
reg [15:0] i_cnt72;
always @(posedge sub_clk) begin //note72
	if (i_cnt72 == 382)
		i_cnt72 <= 0;
	else
		i_cnt72 <= i_cnt72 + 1;
end
reg [15:0] i_cnt73;
always @(posedge sub_clk) begin //note73
	if (i_cnt73 == 361)
		i_cnt73 <= 0;
	else
		i_cnt73 <= i_cnt73 + 1;
end
reg [15:0] i_cnt74;
always @(posedge sub_clk) begin //note74
	if (i_cnt74 == 341)
		i_cnt74 <= 0;
	else
		i_cnt74 <= i_cnt74 + 1;
end
reg [15:0] i_cnt75;
always @(posedge sub_clk) begin //note75
	if (i_cnt75 == 321)
		i_cnt75 <= 0;
	else
		i_cnt75 <= i_cnt75 + 1;
end
reg [15:0] i_cnt76;
always @(posedge sub_clk) begin //note76
	if (i_cnt76 == 303)
		i_cnt76 <= 0;
	else
		i_cnt76 <= i_cnt76 + 1;
end
reg [15:0] i_cnt77;
always @(posedge sub_clk) begin //note77
	if (i_cnt77 == 286)
		i_cnt77 <= 0;
	else
		i_cnt77 <= i_cnt77 + 1;
end
reg [15:0] i_cnt78;
always @(posedge sub_clk) begin //note78
	if (i_cnt78 == 270)
		i_cnt78 <= 0;
	else
		i_cnt78 <= i_cnt78 + 1;
end
reg [15:0] i_cnt79;
always @(posedge sub_clk) begin //note79
	if (i_cnt79 == 255)
		i_cnt79 <= 0;
	else
		i_cnt79 <= i_cnt79 + 1;
end
reg [15:0] i_cnt80;
always @(posedge sub_clk) begin //note80
	if (i_cnt80 == 241)
		i_cnt80 <= 0;
	else
		i_cnt80 <= i_cnt80 + 1;
end
reg [15:0] i_cnt81;
always @(posedge sub_clk) begin //note81
	if (i_cnt81 == 227)
		i_cnt81 <= 0;
	else
		i_cnt81 <= i_cnt81 + 1;
end
reg [15:0] i_cnt82;
always @(posedge sub_clk) begin //note82
	if (i_cnt82 == 215)
		i_cnt82 <= 0;
	else
		i_cnt82 <= i_cnt82 + 1;
end

reg [15:0] i_cnt83;
always @(posedge sub_clk) begin //note83
	if (i_cnt83 == 202)
		i_cnt83 <= 0;
	else
		i_cnt83 <= i_cnt83 + 1;
end
reg [15:0] i_cnt84;
always @(posedge sub_clk) begin //note84
	if (i_cnt84 == 191)
		i_cnt84 <= 0;
	else
		i_cnt84 <= i_cnt84 + 1;
end
reg [15:0] i_cnt85;
always @(posedge sub_clk) begin //note85
	if (i_cnt85 == 180)
		i_cnt85 <= 0;
	else
		i_cnt85 <= i_cnt85 + 1;
end
reg [15:0] i_cnt86;
always @(posedge sub_clk) begin //note86
	if (i_cnt86 == 170)
		i_cnt86 <= 0;
	else
		i_cnt86 <= i_cnt86 + 1;
end
reg [15:0] i_cnt87;
always @(posedge sub_clk) begin //note87
	if (i_cnt87 == 161)
		i_cnt87 <= 0;
	else
		i_cnt87 <= i_cnt87 + 1;
end
reg [15:0] i_cnt88;
always @(posedge sub_clk) begin //note88
	if (i_cnt88 == 152)
		i_cnt88 <= 0;
	else
		i_cnt88 <= i_cnt88 + 1;
end
reg [15:0] i_cnt89;
always @(posedge sub_clk) begin //note89
	if (i_cnt89 == 143)
		i_cnt89 <= 0;
	else
		i_cnt89 <= i_cnt89 + 1;
end
reg [15:0] i_cnt90;
always @(posedge sub_clk) begin //note90
	if (i_cnt90 == 135)
		i_cnt90 <= 0;
	else
		i_cnt90 <= i_cnt90 + 1;
end
reg [15:0] i_cnt91;
always @(posedge sub_clk) begin //note91
	if (i_cnt91 == 128)
		i_cnt91 <= 0;
	else
		i_cnt91 <= i_cnt91 + 1;
end
reg [15:0] i_cnt92;
always @(posedge sub_clk) begin //note92
	if (i_cnt92 == 120)
		i_cnt92 <= 0;
	else
		i_cnt92 <= i_cnt92 + 1;
end
reg [15:0] i_cnt93;
always @(posedge sub_clk) begin //note93
	if (i_cnt93 == 114)
		i_cnt93 <= 0;
	else
		i_cnt93 <= i_cnt93 + 1;
end
reg [15:0] i_cnt94;
always @(posedge sub_clk) begin //note94
	if (i_cnt94 == 107)
		i_cnt94 <= 0;
	else
		i_cnt94 <= i_cnt94 + 1;
end
reg [15:0] i_cnt95;
always @(posedge sub_clk) begin //note95
	if (i_cnt95 == 101)
		i_cnt95 <= 0;
	else
		i_cnt95 <= i_cnt95 + 1;
end
reg [15:0] i_cnt96;
always @(posedge sub_clk) begin //note96
	if (i_cnt96 == 96)
		i_cnt96 <= 0;
	else
		i_cnt96 <= i_cnt96 + 1;
end
reg [15:0] i_cnt97;
always @(posedge sub_clk) begin //note97
	if (i_cnt97 == 90)
		i_cnt97 <= 0;
	else
		i_cnt97 <= i_cnt97 + 1;
end
reg [15:0] i_cnt98;
always @(posedge sub_clk) begin //note98
	if (i_cnt98 == 85)
		i_cnt98 <= 0;
	else
		i_cnt98 <= i_cnt98 + 1;
end
reg [15:0] i_cnt99;
always @(posedge sub_clk) begin //note99
	if (i_cnt99 == 80)
		i_cnt99 <= 0;
	else
		i_cnt99 <= i_cnt99 + 1;
end
reg [15:0] i_cnt100;
always @(posedge sub_clk) begin //note100
	if (i_cnt100 == 76)
		i_cnt100 <= 0;
	else
		i_cnt100 <= i_cnt100 + 1;
end
reg [15:0] i_cnt101;
always @(posedge sub_clk) begin //note101
	if (i_cnt101 == 72)
		i_cnt101 <= 0;
	else
		i_cnt101 <= i_cnt101 + 1;
end
reg [15:0] i_cnt102;
always @(posedge sub_clk) begin //note102
	if (i_cnt102 == 68)
		i_cnt102 <= 0;
	else
		i_cnt102 <= i_cnt102 + 1;
end
reg [15:0] i_cnt103;
always @(posedge sub_clk) begin //note103
	if (i_cnt103 == 64)
		i_cnt103 <= 0;
	else
		i_cnt103 <= i_cnt103 + 1;
end
reg [15:0] i_cnt104;
always @(posedge sub_clk) begin //note104
	if (i_cnt104 == 60)
		i_cnt104 <= 0;
	else
		i_cnt104 <= i_cnt104 + 1;
end
reg [15:0] i_cnt105;
always @(posedge sub_clk) begin //note105
	if (i_cnt105 == 57)
		i_cnt105 <= 0;
	else
		i_cnt105 <= i_cnt105 + 1;
end
reg [15:0] i_cnt106;
always @(posedge sub_clk) begin //note106
	if (i_cnt106 == 54)
		i_cnt106 <= 0;
	else
		i_cnt106 <= i_cnt106 + 1;
end
reg [15:0] i_cnt107;
always @(posedge sub_clk) begin //note107
	if (i_cnt107 == 51)
		i_cnt107 <= 0;
	else
		i_cnt107 <= i_cnt107 + 1;
end
reg [15:0] i_cnt108;
always @(posedge sub_clk) begin //note108
	if (i_cnt108 == 48)
		i_cnt108 <= 0;
	else
		i_cnt108 <= i_cnt108 + 1;
end
reg [15:0] i_cnt109;
always @(posedge sub_clk) begin //note109
	if (i_cnt109 == 45)
		i_cnt109 <= 0;
	else
		i_cnt109 <= i_cnt109 + 1;
end
reg [15:0] i_cnt110;
always @(posedge sub_clk) begin //note110
	if (i_cnt110 == 43)
		i_cnt110 <= 0;
	else
		i_cnt110 <= i_cnt110 + 1;
end

reg [15:0] i_cnt111;
always @(posedge sub_clk) begin //note111
	if (i_cnt111 == 40)
		i_cnt111 <= 0;
	else
		i_cnt111 <= i_cnt111 + 1;
end
reg [15:0] i_cnt112;
always @(posedge sub_clk) begin //note112
	if (i_cnt112 == 38)
		i_cnt112 <= 0;
	else
		i_cnt112 <= i_cnt112 + 1;
end
reg [15:0] i_cnt113;
always @(posedge sub_clk) begin //note113
	if (i_cnt113 == 36)
		i_cnt113 <= 0;
	else
		i_cnt113 <= i_cnt113 + 1;
end
reg [15:0] i_cnt114;
always @(posedge sub_clk) begin //note114
	if (i_cnt114 == 34)
		i_cnt114 <= 0;
	else
		i_cnt114 <= i_cnt114 + 1;
end
reg [15:0] i_cnt115;
always @(posedge sub_clk) begin //note115
	if (i_cnt115 == 32)
		i_cnt115 <= 0;
	else
		i_cnt115 <= i_cnt115 + 1;
end
reg [15:0] i_cnt116;
always @(posedge sub_clk) begin //note116
	if (i_cnt116 == 30)
		i_cnt116 <= 0;
	else
		i_cnt116 <= i_cnt116 + 1;
end
reg [15:0] i_cnt117;
always @(posedge sub_clk) begin //note117
	if (i_cnt117 == 28)
		i_cnt117 <= 0;
	else
		i_cnt117 <= i_cnt117 + 1;
end
reg [15:0] i_cnt118;
always @(posedge sub_clk) begin //note118
	if (i_cnt118 == 27)
		i_cnt118 <= 0;
	else
		i_cnt118 <= i_cnt118 + 1;
end
reg [15:0] i_cnt119;
always @(posedge sub_clk) begin //note119
	if (i_cnt119 == 25)
		i_cnt119 <= 0;
	else
		i_cnt119 <= i_cnt119 + 1;
end
reg [15:0] i_cnt120;
always @(posedge sub_clk) begin //note120
	if (i_cnt120 == 24)
		i_cnt120 <= 0;
	else
		i_cnt120 <= i_cnt120 + 1;
end
reg [15:0] i_cnt121;
always @(posedge sub_clk) begin //note121
	if (i_cnt121 == 23)
		i_cnt121 <= 0;
	else
		i_cnt121 <= i_cnt121 + 1;
end
reg [15:0] i_cnt122;
always @(posedge sub_clk) begin //note122
	if (i_cnt122 == 21)
		i_cnt122 <= 0;
	else
		i_cnt122 <= i_cnt122 + 1;
end
reg [15:0] i_cnt123;
always @(posedge sub_clk) begin //note123
	if (i_cnt123 == 20)
		i_cnt123 <= 0;
	else
		i_cnt123 <= i_cnt123 + 1;
end
reg [15:0] i_cnt124;
always @(posedge sub_clk) begin //note124
	if (i_cnt124 == 19)
		i_cnt124 <= 0;
	else
		i_cnt124 <= i_cnt124 + 1;
end
reg [15:0] i_cnt125;
always @(posedge sub_clk) begin //note125
	if (i_cnt125 == 18)
		i_cnt125 <= 0;
	else
		i_cnt125 <= i_cnt125 + 1;
end
reg [15:0] i_cnt126;
always @(posedge sub_clk) begin //note126
	if (i_cnt126 == 17)
		i_cnt126 <= 0;
	else
		i_cnt126 <= i_cnt126 + 1;
end

reg [15:0] i_cnt127;
always @(posedge sub_clk) begin //note127
	if (i_cnt127 == 16)
		i_cnt127 <= 0;
	else
		i_cnt127 <= i_cnt127 + 1;
end


wire [6:0] note_n;
assign note_n = bit0 + (2 * bit1) + (4 * bit2) + (8 * bit3) + (16 * bit4) + (32 * bit5) + (64 * bit6);

reg note0on;
always @(posedge wri) begin //note0
	if			(note_n == 0 &&  enb)note0on <= 1;
	else if	(note_n == 0 && !enb)note0on <= 0;
end

reg note1on;
always @(posedge wri) begin //note1
	if			(note_n == 1 &&  enb)note1on <= 1;
	else if	(note_n == 1 && !enb)note1on <= 0;
end

reg note2on;
always @(posedge wri) begin //note2
	if			(note_n == 2 &&  enb)note2on <= 1;
	else if	(note_n == 2 && !enb)note2on <= 0;
end

reg note3on;
always @(posedge wri) begin //note3
	if			(note_n == 3 &&  enb)note3on <= 1;
	else if	(note_n == 3 && !enb)note3on <= 0;
end

reg note4on;
always @(posedge wri) begin //note4
	if			(note_n == 4 &&  enb)note4on <= 1;
	else if	(note_n == 4 && !enb)note4on <= 0;
end

reg note5on;
always @(posedge wri) begin //note5
	if			(note_n == 5 &&  enb)note5on <= 1;
	else if	(note_n == 5 && !enb)note5on <= 0;
end

reg note6on;
always @(posedge wri) begin //note6
	if			(note_n == 6 &&  enb)note6on <= 1;
	else if	(note_n == 6 && !enb)note6on <= 0;
end

reg note7on;
always @(posedge wri) begin //note7
	if			(note_n == 7 &&  enb)note7on <= 1;
	else if	(note_n == 7 && !enb)note7on <= 0;
end

reg note8on;
always @(posedge wri) begin //note8
	if			(note_n == 8 &&  enb)note8on <= 1;
	else if	(note_n == 8 && !enb)note8on <= 0;
end

reg note9on;
always @(posedge wri) begin //note9
	if			(note_n == 9 &&  enb)note9on <= 1;
	else if	(note_n == 9 && !enb)note9on <= 0;
end

reg note10on;
always @(posedge wri) begin //note10
	if			(note_n == 10 &&  enb)note10on <= 1;
	else if	(note_n == 10 && !enb)note10on <= 0;
end

reg note11on;
always @(posedge wri) begin //note11
	if			(note_n == 11 &&  enb)note11on <= 1;
	else if	(note_n == 11 && !enb)note11on <= 0;
end

reg note12on;
always @(posedge wri) begin //note12
	if			(note_n == 12 &&  enb)note12on <= 1;
	else if	(note_n == 12 && !enb)note12on <= 0;
end

reg note13on;
always @(posedge wri) begin //note13
	if			(note_n == 13 &&  enb)note13on <= 1;
	else if	(note_n == 13 && !enb)note13on <= 0;
end

reg note14on;
always @(posedge wri) begin //note14
	if			(note_n == 14 &&  enb)note14on <= 1;
	else if	(note_n == 14 && !enb)note14on <= 0;
end

reg note15on;
always @(posedge wri) begin //note15
	if			(note_n == 15 &&  enb)note15on <= 1;
	else if	(note_n == 15 && !enb)note15on <= 0;
end

reg note16on;
always @(posedge wri) begin //note16
	if			(note_n == 16 &&  enb)note16on <= 1;
	else if	(note_n == 16 && !enb)note16on <= 0;
end

reg note17on;
always @(posedge wri) begin //note17
	if			(note_n == 17 &&  enb)note17on <= 1;
	else if	(note_n == 17 && !enb)note17on <= 0;
end

reg note18on;
always @(posedge wri) begin //note18
	if			(note_n == 18 &&  enb)note18on <= 1;
	else if	(note_n == 18 && !enb)note18on <= 0;
end

reg note19on;
always @(posedge wri) begin //note19
	if			(note_n == 19 &&  enb)note19on <= 1;
	else if	(note_n == 19 && !enb)note19on <= 0;
end

reg note20on;
always @(posedge wri) begin //note20
	if			(note_n == 20 &&  enb)note20on <= 1;
	else if	(note_n == 20 && !enb)note20on <= 0;
end

reg note21on;
always @(posedge wri) begin //note21
	if			(note_n == 21 &&  enb)note21on <= 1;
	else if	(note_n == 21 && !enb)note21on <= 0;
end

reg note22on;
always @(posedge wri) begin //note22
	if			(note_n == 22 &&  enb)note22on <= 1;
	else if	(note_n == 22 && !enb)note22on <= 0;
end

reg note23on;
always @(posedge wri) begin //note23
	if			(note_n == 23 &&  enb)note23on <= 1;
	else if	(note_n == 23 && !enb)note23on <= 0;
end

reg note24on;
always @(posedge wri) begin //note24
	if			(note_n == 24 &&  enb)note24on <= 1;
	else if	(note_n == 24 && !enb)note24on <= 0;
end

reg note25on;
always @(posedge wri) begin //note25
	if			(note_n == 25 &&  enb)note25on <= 1;
	else if	(note_n == 25 && !enb)note25on <= 0;
end

reg note26on;
always @(posedge wri) begin //note26
	if			(note_n == 26 &&  enb)note26on <= 1;
	else if	(note_n == 26 && !enb)note26on <= 0;
end

reg note27on;
always @(posedge wri) begin //note27
	if			(note_n == 27 &&  enb)note27on <= 1;
	else if	(note_n == 27 && !enb)note27on <= 0;
end

reg note28on;
always @(posedge wri) begin //note28
	if			(note_n == 28 &&  enb)note28on <= 1;
	else if	(note_n == 28 && !enb)note28on <= 0;
end

reg note29on;
always @(posedge wri) begin //note29
	if			(note_n == 29 &&  enb)note29on <= 1;
	else if	(note_n == 29 && !enb)note29on <= 0;
end

reg note30on;
always @(posedge wri) begin //note30
	if			(note_n == 30 &&  enb)note30on <= 1;
	else if	(note_n == 30 && !enb)note30on <= 0;
end

reg note31on;
always @(posedge wri) begin //note31
	if			(note_n == 31 &&  enb)note31on <= 1;
	else if	(note_n == 31 && !enb)note31on <= 0;
end

reg note32on;
always @(posedge wri) begin //note32
	if			(note_n == 32 &&  enb)note32on <= 1;
	else if	(note_n == 32 && !enb)note32on <= 0;
end

reg note33on;
always @(posedge wri) begin //note33
	if			(note_n == 33 &&  enb)note33on <= 1;
	else if	(note_n == 33 && !enb)note33on <= 0;
end

reg note34on;
always @(posedge wri) begin //note34
	if			(note_n == 34 &&  enb)note34on <= 1;
	else if	(note_n == 34 && !enb)note34on <= 0;
end

reg note35on;
always @(posedge wri) begin //note35
	if			(note_n == 35 &&  enb)note35on <= 1;
	else if	(note_n == 35 && !enb)note35on <= 0;
end

reg note36on;
always @(posedge wri) begin //note36
	if			(note_n == 36 &&  enb)note36on <= 1;
	else if	(note_n == 36 && !enb)note36on <= 0;
end

reg note37on;
always @(posedge wri) begin //note37
	if			(note_n == 37 &&  enb)note37on <= 1;
	else if	(note_n == 37 && !enb)note37on <= 0;
end

reg note38on;
always @(posedge wri) begin //note38
	if			(note_n == 38 &&  enb)note38on <= 1;
	else if	(note_n == 38 && !enb)note38on <= 0;
end

reg note39on;
always @(posedge wri) begin //note39
	if			(note_n == 39 &&  enb)note39on <= 1;
	else if	(note_n == 39 && !enb)note39on <= 0;
end

reg note40on;
always @(posedge wri) begin //note40
	if			(note_n == 40 &&  enb)note40on <= 1;
	else if	(note_n == 40 && !enb)note40on <= 0;
end

reg note41on;
always @(posedge wri) begin //note41
	if			(note_n == 41 &&  enb)note41on <= 1;
	else if	(note_n == 41 && !enb)note41on <= 0;
end

reg note42on;
always @(posedge wri) begin //note42
	if			(note_n == 42 &&  enb)note42on <= 1;
	else if	(note_n == 42 && !enb)note42on <= 0;
end

reg note43on;
always @(posedge wri) begin //note43
	if			(note_n == 43 &&  enb)note43on <= 1;
	else if	(note_n == 43 && !enb)note43on <= 0;
end

reg note44on;
always @(posedge wri) begin //note44
	if			(note_n == 44 &&  enb)note44on <= 1;
	else if	(note_n == 44 && !enb)note44on <= 0;
end

reg note45on;
always @(posedge wri) begin //note45
	if			(note_n == 45 &&  enb)note45on <= 1;
	else if	(note_n == 45 && !enb)note45on <= 0;
end

reg note46on;
always @(posedge wri) begin //note46
	if			(note_n == 46 &&  enb)note46on <= 1;
	else if	(note_n == 46 && !enb)note46on <= 0;
end

reg note47on;
always @(posedge wri) begin //note47
	if			(note_n == 47 &&  enb)note47on <= 1;
	else if	(note_n == 47 && !enb)note47on <= 0;
end

reg note48on;
always @(posedge wri) begin //note48
	if			(note_n == 48 &&  enb)note48on <= 1;
	else if	(note_n == 48 && !enb)note48on <= 0;
end

reg note49on;
always @(posedge wri) begin //note49
	if			(note_n == 49 &&  enb)note49on <= 1;
	else if	(note_n == 49 && !enb)note49on <= 0;
end

reg note50on;
always @(posedge wri) begin //note50
	if			(note_n == 50 &&  enb)note50on <= 1;
	else if	(note_n == 50 && !enb)note50on <= 0;
end

reg note51on;
always @(posedge wri) begin //note51
	if			(note_n == 51 &&  enb)note51on <= 1;
	else if	(note_n == 51 && !enb)note51on <= 0;
end

reg note52on;
always @(posedge wri) begin //note52
	if			(note_n == 52 &&  enb)note52on <= 1;
	else if	(note_n == 52 && !enb)note52on <= 0;
end

reg note53on;
always @(posedge wri) begin //note53
	if			(note_n == 53 &&  enb)note53on <= 1;
	else if	(note_n == 53 && !enb)note53on <= 0;
end

reg note54on;
always @(posedge wri) begin //note54
	if			(note_n == 54 &&  enb)note54on <= 1;
	else if	(note_n == 54 && !enb)note54on <= 0;
end

reg note55on;
always @(posedge wri) begin //note55
	if			(note_n == 55 &&  enb)note55on <= 1;
	else if	(note_n == 55 && !enb)note55on <= 0;
end

reg note56on;
always @(posedge wri) begin //note56
	if			(note_n == 56 &&  enb)note56on <= 1;
	else if	(note_n == 56 && !enb)note56on <= 0;
end

reg note57on;
always @(posedge wri) begin //note57
	if			(note_n == 57 &&  enb)note57on <= 1;
	else if	(note_n == 57 && !enb)note57on <= 0;
end

reg note58on;
always @(posedge wri) begin //note58
	if			(note_n == 58 &&  enb)note58on <= 1;
	else if	(note_n == 58 && !enb)note58on <= 0;
end

reg note59on;
always @(posedge wri) begin //note59
	if			(note_n == 59 &&  enb)note59on <= 1;
	else if	(note_n == 59 && !enb)note59on <= 0;
end

reg note60on;
always @(posedge wri) begin //note60
	if			(note_n == 60 &&  enb)note60on <= 1;
	else if	(note_n == 60 && !enb)note60on <= 0;
end

reg note61on;
always @(posedge wri) begin //note61
	if			(note_n == 61 &&  enb)note61on <= 1;
	else if	(note_n == 61 && !enb)note61on <= 0;
end

reg note62on;
always @(posedge wri) begin //note62
	if			(note_n == 62 &&  enb)note62on <= 1;
	else if	(note_n == 62 && !enb)note62on <= 0;
end

reg note63on;
always @(posedge wri) begin //note63
	if			(note_n == 63 &&  enb)note63on <= 1;
	else if	(note_n == 63 && !enb)note63on <= 0;
end

reg note64on;
always @(posedge wri) begin //note64
	if			(note_n == 64 &&  enb)note64on <= 1;
	else if	(note_n == 64 && !enb)note64on <= 0;
end

reg note65on;
always @(posedge wri) begin //note65
	if			(note_n == 65 &&  enb)note65on <= 1;
	else if	(note_n == 65 && !enb)note65on <= 0;
end

reg note66on;
always @(posedge wri) begin //note66
	if			(note_n == 66 &&  enb)note66on <= 1;
	else if	(note_n == 66 && !enb)note66on <= 0;
end

reg note67on;
always @(posedge wri) begin //note67
	if			(note_n == 67 &&  enb)note67on <= 1;
	else if	(note_n == 67 && !enb)note67on <= 0;
end

reg note68on;
always @(posedge wri) begin //note68
	if			(note_n == 68 &&  enb)note68on <= 1;
	else if	(note_n == 68 && !enb)note68on <= 0;
end

reg note69on;
always @(posedge wri) begin //note69
	if			(note_n == 69 &&  enb)note69on <= 1;
	else if	(note_n == 69 && !enb)note69on <= 0;
end

reg note70on;
always @(posedge wri) begin //note70
	if			(note_n == 70 &&  enb)note70on <= 1;
	else if	(note_n == 70 && !enb)note70on <= 0;
end

reg note71on;
always @(posedge wri) begin //note71
	if			(note_n == 71 &&  enb)note71on <= 1;
	else if	(note_n == 71 && !enb)note71on <= 0;
end

reg note72on;
always @(posedge wri) begin //note72
	if			(note_n == 72 &&  enb)note72on <= 1;
	else if	(note_n == 72 && !enb)note72on <= 0;
end

reg note73on;
always @(posedge wri) begin //note73
	if			(note_n == 73 &&  enb)note73on <= 1;
	else if	(note_n == 73 && !enb)note73on <= 0;
end

reg note74on;
always @(posedge wri) begin //note74
	if			(note_n == 74 &&  enb)note74on <= 1;
	else if	(note_n == 74 && !enb)note74on <= 0;
end

reg note75on;
always @(posedge wri) begin //note75
	if			(note_n == 75 &&  enb)note75on <= 1;
	else if	(note_n == 75 && !enb)note75on <= 0;
end

reg note76on;
always @(posedge wri) begin //note76
	if			(note_n == 76 &&  enb)note76on <= 1;
	else if	(note_n == 76 && !enb)note76on <= 0;
end

reg note77on;
always @(posedge wri) begin //note77
	if			(note_n == 77 &&  enb)note77on <= 1;
	else if	(note_n == 77 && !enb)note77on <= 0;
end

reg note78on;
always @(posedge wri) begin //note78
	if			(note_n == 78 &&  enb)note78on <= 1;
	else if	(note_n == 78 && !enb)note78on <= 0;
end

reg note79on;
always @(posedge wri) begin //note79
	if			(note_n == 79 &&  enb)note79on <= 1;
	else if	(note_n == 79 && !enb)note79on <= 0;
end

reg note80on;
always @(posedge wri) begin //note80
	if			(note_n == 80 &&  enb)note80on <= 1;
	else if	(note_n == 80 && !enb)note80on <= 0;
end

reg note81on;
always @(posedge wri) begin //note81
	if			(note_n == 81 &&  enb)note81on <= 1;
	else if	(note_n == 81 && !enb)note81on <= 0;
end

reg note82on;
always @(posedge wri) begin //note82
	if			(note_n == 82 &&  enb)note82on <= 1;
	else if	(note_n == 82 && !enb)note82on <= 0;
end

reg note83on;
always @(posedge wri) begin //note83
	if			(note_n == 83 &&  enb)note83on <= 1;
	else if	(note_n == 83 && !enb)note83on <= 0;
end

reg note84on;
always @(posedge wri) begin //note84
	if			(note_n == 84 &&  enb)note84on <= 1;
	else if	(note_n == 84 && !enb)note84on <= 0;
end

reg note85on;
always @(posedge wri) begin //note85
	if			(note_n == 85 &&  enb)note85on <= 1;
	else if	(note_n == 85 && !enb)note85on <= 0;
end

reg note86on;
always @(posedge wri) begin //note86
	if			(note_n == 86 &&  enb)note86on <= 1;
	else if	(note_n == 86 && !enb)note86on <= 0;
end

reg note87on;
always @(posedge wri) begin //note87
	if			(note_n == 87 &&  enb)note87on <= 1;
	else if	(note_n == 87 && !enb)note87on <= 0;
end

reg note88on;
always @(posedge wri) begin //note88
	if			(note_n == 88 &&  enb)note88on <= 1;
	else if	(note_n == 88 && !enb)note88on <= 0;
end

reg note89on;
always @(posedge wri) begin //note89
	if			(note_n == 89 &&  enb)note89on <= 1;
	else if	(note_n == 89 && !enb)note89on <= 0;
end

reg note90on;
always @(posedge wri) begin //note90
	if			(note_n == 90 &&  enb)note90on <= 1;
	else if	(note_n == 90 && !enb)note90on <= 0;
end

reg note91on;
always @(posedge wri) begin //note91
	if			(note_n == 91 &&  enb)note91on <= 1;
	else if	(note_n == 91 && !enb)note91on <= 0;
end

reg note92on;
always @(posedge wri) begin //note92
	if			(note_n == 92 &&  enb)note92on <= 1;
	else if	(note_n == 92 && !enb)note92on <= 0;
end

reg note93on;
always @(posedge wri) begin //note93
	if			(note_n == 93 &&  enb)note93on <= 1;
	else if	(note_n == 93 && !enb)note93on <= 0;
end

reg note94on;
always @(posedge wri) begin //note94
	if			(note_n == 94 &&  enb)note94on <= 1;
	else if	(note_n == 94 && !enb)note94on <= 0;
end

reg note95on;
always @(posedge wri) begin //note95
	if			(note_n == 95 &&  enb)note95on <= 1;
	else if	(note_n == 95 && !enb)note95on <= 0;
end

reg note96on;
always @(posedge wri) begin //note96
	if			(note_n == 96 &&  enb)note96on <= 1;
	else if	(note_n == 96 && !enb)note96on <= 0;
end

reg note97on;
always @(posedge wri) begin //note97
	if			(note_n == 97 &&  enb)note97on <= 1;
	else if	(note_n == 97 && !enb)note97on <= 0;
end

reg note98on;
always @(posedge wri) begin //note98
	if			(note_n == 98 &&  enb)note98on <= 1;
	else if	(note_n == 98 && !enb)note98on <= 0;
end

reg note99on;
always @(posedge wri) begin //note99
	if			(note_n == 99 &&  enb)note99on <= 1;
	else if	(note_n == 99 && !enb)note99on <= 0;
end

reg note100on;
always @(posedge wri) begin //note100
	if			(note_n == 100 &&  enb)note100on <= 1;
	else if	(note_n == 100 && !enb)note100on <= 0;
end

reg note101on;
always @(posedge wri) begin //note101
	if			(note_n == 101 &&  enb)note101on <= 1;
	else if	(note_n == 101 && !enb)note101on <= 0;
end

reg note102on;
always @(posedge wri) begin //note102
	if			(note_n == 102 &&  enb)note102on <= 1;
	else if	(note_n == 102 && !enb)note102on <= 0;
end

reg note103on;
always @(posedge wri) begin //note103
	if			(note_n == 103 &&  enb)note103on <= 1;
	else if	(note_n == 103 && !enb)note103on <= 0;
end

reg note104on;
always @(posedge wri) begin //note104
	if			(note_n == 104 &&  enb)note104on <= 1;
	else if	(note_n == 104 && !enb)note104on <= 0;
end

reg note105on;
always @(posedge wri) begin //note105
	if			(note_n == 105 &&  enb)note105on <= 1;
	else if	(note_n == 105 && !enb)note105on <= 0;
end

reg note106on;
always @(posedge wri) begin //note106
	if			(note_n == 106 &&  enb)note106on <= 1;
	else if	(note_n == 106 && !enb)note106on <= 0;
end

reg note107on;
always @(posedge wri) begin //note107
	if			(note_n == 107 &&  enb)note107on <= 1;
	else if	(note_n == 107 && !enb)note107on <= 0;
end

reg note108on;
always @(posedge wri) begin //note108
	if			(note_n == 108 &&  enb)note108on <= 1;
	else if	(note_n == 108 && !enb)note108on <= 0;
end

reg note109on;
always @(posedge wri) begin //note109
	if			(note_n == 109 &&  enb)note109on <= 1;
	else if	(note_n == 109 && !enb)note109on <= 0;
end

reg note110on;
always @(posedge wri) begin //note110
	if			(note_n == 110 &&  enb)note110on <= 1;
	else if	(note_n == 110 && !enb)note110on <= 0;
end

reg note111on;
always @(posedge wri) begin //note111
	if			(note_n == 111 &&  enb)note111on <= 1;
	else if	(note_n == 111 && !enb)note111on <= 0;
end

reg note112on;
always @(posedge wri) begin //note112
	if			(note_n == 112 &&  enb)note112on <= 1;
	else if	(note_n == 112 && !enb)note112on <= 0;
end

reg note113on;
always @(posedge wri) begin //note113
	if			(note_n == 113 &&  enb)note113on <= 1;
	else if	(note_n == 113 && !enb)note113on <= 0;
end

reg note114on;
always @(posedge wri) begin //note114
	if			(note_n == 114 &&  enb)note114on <= 1;
	else if	(note_n == 114 && !enb)note114on <= 0;
end

reg note115on;
always @(posedge wri) begin //note115
	if			(note_n == 115 &&  enb)note115on <= 1;
	else if	(note_n == 115 && !enb)note115on <= 0;
end

reg note116on;
always @(posedge wri) begin //note116
	if			(note_n == 116 &&  enb)note116on <= 1;
	else if	(note_n == 116 && !enb)note116on <= 0;
end

reg note117on;
always @(posedge wri) begin //note117
	if			(note_n == 117 &&  enb)note117on <= 1;
	else if	(note_n == 117 && !enb)note117on <= 0;
end

reg note118on;
always @(posedge wri) begin //note118
	if			(note_n == 118 &&  enb)note118on <= 1;
	else if	(note_n == 118 && !enb)note118on <= 0;
end

reg note119on;
always @(posedge wri) begin //note119
	if			(note_n == 119 &&  enb)note119on <= 1;
	else if	(note_n == 119 && !enb)note119on <= 0;
end

reg note120on;
always @(posedge wri) begin //note120
	if			(note_n == 120 &&  enb)note120on <= 1;
	else if	(note_n == 120 && !enb)note120on <= 0;
end

reg note121on;
always @(posedge wri) begin //note121
	if			(note_n == 121 &&  enb)note121on <= 1;
	else if	(note_n == 121 && !enb)note121on <= 0;
end

reg note122on;
always @(posedge wri) begin //note122
	if			(note_n == 122 &&  enb)note122on <= 1;
	else if	(note_n == 122 && !enb)note122on <= 0;
end

reg note123on;
always @(posedge wri) begin //note123
	if			(note_n == 123 &&  enb)note123on <= 1;
	else if	(note_n == 123 && !enb)note123on <= 0;
end

reg note124on;
always @(posedge wri) begin //note124
	if			(note_n == 124 &&  enb)note124on <= 1;
	else if	(note_n == 124 && !enb)note124on <= 0;
end

reg note125on;
always @(posedge wri) begin //note125
	if			(note_n == 125 &&  enb)note125on <= 1;
	else if	(note_n == 125 && !enb)note125on <= 0;
end

reg note126on;
always @(posedge wri) begin //note126
	if			(note_n == 126 &&  enb)note126on <= 1;
	else if	(note_n == 126 && !enb)note126on <= 0;
end

reg note127on;
always @(posedge wri) begin //note127
	if			(note_n == 127 &&  enb)note127on <= 1;
	else if	(note_n == 127 && !enb)note127on <= 0;
end

wire note0;
assign note0 = (i_cnt0 < 2) && (note0on == 1);
wire note1;
assign note1 = (i_cnt1 < 2) && (note1on == 1);
wire note2;
assign note2 = (i_cnt2 < 2) && (note2on == 1);
wire note3;
assign note3 = (i_cnt3 < 2) && (note3on == 1);
wire note4;
assign note4 = (i_cnt4 < 2) && (note4on == 1);
wire note5;
assign note5 = (i_cnt5 < 2) && (note5on == 1);
wire note6;
assign note6 = (i_cnt6 < 2) && (note6on == 1);
wire note7;
assign note7 = (i_cnt7 < 2) && (note7on == 1);
wire note8;
assign note8 = (i_cnt8 < 2) && (note8on == 1);
wire note9;
assign note9 = (i_cnt9 < 2) && (note9on == 1);
wire note10;
assign note10 = (i_cnt10 < 2) && (note10on == 1);
wire note11;
assign note11 = (i_cnt11 < 2) && (note11on == 1);
wire note12;
assign note12 = (i_cnt12 < 2) && (note12on == 1);
wire note13;
assign note13 = (i_cnt13 < 2) && (note13on == 1);
wire note14;
assign note14 = (i_cnt14 < 2) && (note14on == 1);
wire note15;
assign note15 = (i_cnt15 < 2) && (note15on == 1);
wire note16;
assign note16 = (i_cnt16 < 2) && (note16on == 1);
wire note17;
assign note17 = (i_cnt17 < 2) && (note17on == 1);
wire note18;
assign note18 = (i_cnt18 < 2) && (note18on == 1);
wire note19;
assign note19 = (i_cnt19 < 2) && (note19on == 1);
wire note20;
assign note20 = (i_cnt20 < 2) && (note20on == 1);
wire note21;
assign note21 = (i_cnt21 < 2) && (note21on == 1);
wire note22;
assign note22 = (i_cnt22 < 2) && (note22on == 1);
wire note23;
assign note23 = (i_cnt23 < 2) && (note23on == 1);
wire note24;
assign note24 = (i_cnt24 < 2) && (note24on == 1);
wire note25;
assign note25 = (i_cnt25 < 2) && (note25on == 1);
wire note26;
assign note26 = (i_cnt26 < 2) && (note26on == 1);
wire note27;
assign note27 = (i_cnt27 < 2) && (note27on == 1);
wire note28;
assign note28 = (i_cnt28 < 2) && (note28on == 1);
wire note29;
assign note29 = (i_cnt29 < 2) && (note29on == 1);
wire note30;
assign note30 = (i_cnt30 < 2) && (note30on == 1);
wire note31;
assign note31 = (i_cnt31 < 2) && (note31on == 1);
wire note32;
assign note32 = (i_cnt32 < 2) && (note32on == 1);
wire note33;
assign note33 = (i_cnt33 < 2) && (note33on == 1);
wire note34;
assign note34 = (i_cnt34 < 2) && (note34on == 1);
wire note35;
assign note35 = (i_cnt35 < 2) && (note35on == 1);
wire note36;
assign note36 = (i_cnt36 < 2) && (note36on == 1);
wire note37;
assign note37 = (i_cnt37 < 2) && (note37on == 1);
wire note38;
assign note38 = (i_cnt38 < 2) && (note38on == 1);
wire note39;
assign note39 = (i_cnt39 < 2) && (note39on == 1);
wire note40;
assign note40 = (i_cnt40 < 2) && (note40on == 1);
wire note41;
assign note41 = (i_cnt41 < 2) && (note41on == 1);
wire note42;
assign note42 = (i_cnt42 < 2) && (note42on == 1);
wire note43;
assign note43 = (i_cnt43 < 2) && (note43on == 1);
wire note44;
assign note44 = (i_cnt44 < 2) && (note44on == 1);
wire note45;
assign note45 = (i_cnt45 < 2) && (note45on == 1);
wire note46;
assign note46 = (i_cnt46 < 2) && (note46on == 1);
wire note47;
assign note47 = (i_cnt47 < 2) && (note47on == 1);
wire note48;
assign note48 = (i_cnt48 < 2) && (note48on == 1);
wire note49;
assign note49 = (i_cnt49 < 2) && (note49on == 1);
wire note50;
assign note50 = (i_cnt50 < 2) && (note50on == 1);
wire note51;
assign note51 = (i_cnt51 < 2) && (note51on == 1);
wire note52;
assign note52 = (i_cnt52 < 2) && (note52on == 1);
wire note53;
assign note53 = (i_cnt53 < 2) && (note53on == 1);
wire note54;
assign note54 = (i_cnt54 < 2) && (note54on == 1);
wire note55;
assign note55 = (i_cnt55 < 2) && (note55on == 1);
wire note56;
assign note56 = (i_cnt56 < 2) && (note56on == 1);
wire note57;
assign note57 = (i_cnt57 < 2) && (note57on == 1);
wire note58;
assign note58 = (i_cnt58 < 2) && (note58on == 1);
wire note59;
assign note59 = (i_cnt59 < 2) && (note59on == 1);
wire note60;
assign note60 = (i_cnt60 < 2) && (note60on == 1);
wire note61;
assign note61 = (i_cnt61 < 2) && (note61on == 1);
wire note62;
assign note62 = (i_cnt62 < 2) && (note62on == 1);
wire note63;
assign note63 = (i_cnt63 < 2) && (note63on == 1);
wire note64;
assign note64 = (i_cnt64 < 2) && (note64on == 1);
wire note65;
assign note65 = (i_cnt65 < 2) && (note65on == 1);
wire note66;
assign note66 = (i_cnt66 < 2) && (note66on == 1);
wire note67;
assign note67 = (i_cnt67 < 2) && (note67on == 1);
wire note68;
assign note68 = (i_cnt68 < 2) && (note68on == 1);
wire note69;
assign note69 = (i_cnt69 < 2) && (note69on == 1);
wire note70;
assign note70 = (i_cnt70 < 2) && (note70on == 1);
wire note71;
assign note71 = (i_cnt71 < 2) && (note71on == 1);
wire note72;
assign note72 = (i_cnt72 < 2) && (note72on == 1);
wire note73;
assign note73 = (i_cnt73 < 2) && (note73on == 1);
wire note74;
assign note74 = (i_cnt74 < 2) && (note74on == 1);
wire note75;
assign note75 = (i_cnt75 < 2) && (note75on == 1);
wire note76;
assign note76 = (i_cnt76 < 2) && (note76on == 1);
wire note77;
assign note77 = (i_cnt77 < 2) && (note77on == 1);
wire note78;
assign note78 = (i_cnt78 < 2) && (note78on == 1);
wire note79;
assign note79 = (i_cnt79 < 2) && (note79on == 1);
wire note80;
assign note80 = (i_cnt80 < 2) && (note80on == 1);
wire note81;
assign note81 = (i_cnt81 < 2) && (note81on == 1);
wire note82;
assign note82 = (i_cnt82 < 2) && (note82on == 1);
wire note83;
assign note83 = (i_cnt83 < 2) && (note83on == 1);
wire note84;
assign note84 = (i_cnt84 < 2) && (note84on == 1);
wire note85;
assign note85 = (i_cnt85 < 2) && (note85on == 1);
wire note86;
assign note86 = (i_cnt86 < 2) && (note86on == 1);
wire note87;
assign note87 = (i_cnt87 < 2) && (note87on == 1);
wire note88;
assign note88 = (i_cnt88 < 2) && (note88on == 1);
wire note89;
assign note89 = (i_cnt89 < 2) && (note89on == 1);
wire note90;
assign note90 = (i_cnt90 < 2) && (note90on == 1);
wire note91;
assign note91 = (i_cnt91 < 2) && (note91on == 1);
wire note92;
assign note92 = (i_cnt92 < 2) && (note92on == 1);
wire note93;
assign note93 = (i_cnt93 < 2) && (note93on == 1);
wire note94;
assign note94 = (i_cnt94 < 2) && (note94on == 1);
wire note95;
assign note95 = (i_cnt95 < 2) && (note95on == 1);
wire note96;
assign note96 = (i_cnt96 < 2) && (note96on == 1);
wire note97;
assign note97 = (i_cnt97 < 2) && (note97on == 1);
wire note98;
assign note98 = (i_cnt98 < 2) && (note98on == 1);
wire note99;
assign note99 = (i_cnt99 < 2) && (note99on == 1);
wire note100;
assign note100 = (i_cnt100 < 2) && (note100on == 1);
wire note101;
assign note101 = (i_cnt101 < 2) && (note101on == 1);
wire note102;
assign note102 = (i_cnt102 < 2) && (note102on == 1);
wire note103;
assign note103 = (i_cnt103 < 2) && (note103on == 1);
wire note104;
assign note104 = (i_cnt104 < 2) && (note104on == 1);
wire note105;
assign note105 = (i_cnt105 < 2) && (note105on == 1);
wire note106;
assign note106 = (i_cnt106 < 2) && (note106on == 1);
wire note107;
assign note107 = (i_cnt107 < 2) && (note107on == 1);
wire note108;
assign note108 = (i_cnt108 < 2) && (note108on == 1);
wire note109;
assign note109 = (i_cnt109 < 2) && (note109on == 1);
wire note110;
assign note110 = (i_cnt110 < 2) && (note110on == 1);
wire note111;
assign note111 = (i_cnt111 < 2) && (note111on == 1);
wire note112;
assign note112 = (i_cnt112 < 2) && (note112on == 1);
wire note113;
assign note113 = (i_cnt113 < 2) && (note113on == 1);
wire note114;
assign note114 = (i_cnt114 < 2) && (note114on == 1);
wire note115;
assign note115 = (i_cnt115 < 2) && (note115on == 1);
wire note116;
assign note116 = (i_cnt116 < 2) && (note116on == 1);
wire note117;
assign note117 = (i_cnt117 < 2) && (note117on == 1);
wire note118;
assign note118 = (i_cnt118 < 2) && (note118on == 1);
wire note119;
assign note119 = (i_cnt119 < 2) && (note119on == 1);
wire note120;
assign note120 = (i_cnt120 < 2) && (note120on == 1);
wire note121;
assign note121 = (i_cnt121 < 2) && (note121on == 1);
wire note122;
assign note122 = (i_cnt122 < 2) && (note122on == 1);
wire note123;
assign note123 = (i_cnt123 < 2) && (note123on == 1);
wire note124;
assign note124 = (i_cnt124 < 2) && (note124on == 1);
wire note125;
assign note125 = (i_cnt125 < 2) && (note125on == 1);
wire note126;
assign note126 = (i_cnt126 < 2) && (note126on == 1);
wire note127;
assign note127 = (i_cnt127 < 2) && (note127on == 1);


assign SPKR =
   !(note0
|| note1
|| note2
|| note3
|| note4
|| note5
|| note6
|| note7
|| note8
|| note9
|| note10
|| note11
|| note12
|| note13
|| note14
|| note15
|| note16
|| note17
|| note18
|| note19
|| note20
|| note21
|| note22
|| note23
|| note24
|| note25
|| note26
|| note27
|| note28
|| note29
|| note30
|| note31
|| note32
|| note33
|| note34
|| note35
|| note36
|| note37
|| note38
|| note39
|| note40
|| note41
|| note42
|| note43
|| note44
|| note45
|| note46
|| note47
|| note48
|| note49
|| note50
|| note51
|| note52
|| note53
|| note54
|| note55
|| note56
|| note57
|| note58
|| note59
|| note60
|| note61
|| note62
|| note63
|| note64
|| note65
|| note66
|| note67
|| note68
|| note69
|| note70
|| note71
|| note72
|| note73
|| note74
|| note75
|| note76
|| note77
|| note78
|| note79
|| note80
|| note81
|| note82
|| note83
|| note84
|| note85
|| note86
|| note87
|| note88
|| note89
|| note90
|| note91
|| note92
|| note93
|| note94
|| note95
|| note96
|| note97
|| note98
|| note99
|| note100
|| note101
|| note102
|| note103
|| note104
|| note105
|| note106
|| note107
|| note108
|| note109
|| note110
|| note111
|| note112
|| note113
|| note114
|| note115
|| note116
|| note117
|| note118
|| note119
|| note120
|| note121
|| note122
|| note123
|| note124
|| note125
|| note126
|| note127);

assign LED = 
(note0on == 1)
||(note1on == 1)
||(note2on == 1)
||(note3on == 1)
||(note4on == 1)
||(note5on == 1)
||(note6on == 1)
||(note7on == 1)
||(note8on == 1)
||(note9on == 1)
||(note10on == 1)
||(note11on == 1)
||(note12on == 1)
||(note13on == 1)
||(note14on == 1)
||(note15on == 1)
||(note16on == 1)
||(note17on == 1)
||(note18on == 1)
||(note19on == 1)
||(note20on == 1)
||(note21on == 1)
||(note22on == 1)
||(note23on == 1)
||(note24on == 1)
||(note25on == 1)
||(note26on == 1)
||(note27on == 1)
||(note28on == 1)
||(note29on == 1)
||(note30on == 1)
||(note31on == 1)
||(note32on == 1)
||(note33on == 1)
||(note34on == 1)
||(note35on == 1)
||(note36on == 1)
||(note37on == 1)
||(note38on == 1)
||(note39on == 1)
||(note40on == 1)
||(note41on == 1)
||(note42on == 1)
||(note43on == 1)
||(note44on == 1)
||(note45on == 1)
||(note46on == 1)
||(note47on == 1)
||(note48on == 1)
||(note49on == 1)
||(note50on == 1)
||(note51on == 1)
||(note52on == 1)
||(note53on == 1)
||(note54on == 1)
||(note55on == 1)
||(note56on == 1)
||(note57on == 1)
||(note58on == 1)
||(note59on == 1)
||(note60on == 1)
||(note61on == 1)
||(note62on == 1)
||(note63on == 1)
||(note64on == 1)
||(note65on == 1)
||(note66on == 1)
||(note67on == 1)
||(note68on == 1)
||(note69on == 1)
||(note70on == 1)
||(note71on == 1)
||(note72on == 1)
||(note73on == 1)
||(note74on == 1)
||(note75on == 1)
||(note76on == 1)
||(note77on == 1)
||(note78on == 1)
||(note79on == 1)
||(note80on == 1)
||(note81on == 1)
||(note82on == 1)
||(note83on == 1)
||(note84on == 1)
||(note85on == 1)
||(note86on == 1)
||(note87on == 1)
||(note88on == 1)
||(note89on == 1)
||(note90on == 1)
||(note91on == 1)
||(note92on == 1)
||(note93on == 1)
||(note94on == 1)
||(note95on == 1)
||(note96on == 1)
||(note97on == 1)
||(note98on == 1)
||(note99on == 1)
||(note100on == 1)
||(note101on == 1)
||(note102on == 1)
||(note103on == 1)
||(note104on == 1)
||(note105on == 1)
||(note106on == 1)
||(note107on == 1)
||(note108on == 1)
||(note109on == 1)
||(note110on == 1)
||(note111on == 1)
||(note112on == 1)
||(note113on == 1)
||(note114on == 1)
||(note115on == 1)
||(note116on == 1)
||(note117on == 1)
||(note118on == 1)
||(note119on == 1)
||(note120on == 1)
||(note121on == 1)
||(note122on == 1)
||(note123on == 1)
||(note124on == 1)
||(note125on == 1)
||(note126on == 1)
||(note127on == 1);

endmodule
