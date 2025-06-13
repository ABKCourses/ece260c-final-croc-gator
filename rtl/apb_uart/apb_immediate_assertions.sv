module apb_immediate_assertions (
	input logic		CLK,
	input logic		RSTN,
	input logic		PSEL,
	input logic		PENABLE,
	input logic		PWRITE,
	input logic	[2:0] 	PADDR,
	input logic	[31:0] 	PWDATA,
	input logic	[31:0] 	PRDATA,
	input logic		PREADY,
	input logic		PSLVERR
	);

	logic PSEL_q;
	logic PENABLE_q;
	logic PREADY_q;
	logic PADDR_q;
	logic PWRITE_q;

	typedef enum {IDLE, SETUP, ACCESS} apb_state_e;
	apb_state_e curr_state, next_state;

	always @(posedge CLK or negedge RSTN) begin
		if(!RSTN) begin
			curr_state <= IDLE;
			PSEL_q <= 0;
			PENABLE_q <= 0;
			PREADY_q <= 0;
			PADDR_q <= 0;
			PWRITE_q <= 0;
		end else begin
			curr_state <= next_state;
			PSEL_q <= PSEL;
			PENABLE_q <= PENABLE;
			PREADY_q <= PREADY;
			PADDR_q <= PADDR;
			PWRITE_q <= PWRITE;

			if(curr_state == IDLE && next_state == SETUP) begin
				PADDR_q <= PADDR;
				PWRITE_q <= PWRITE;
			end

			// PENABLE must e asserted one cycle after PSEL
			if(PSEL_q && !PENABLE_q && !PREADY_q) begin
				a_enable_after_sel: assert(PENABLE)
				else $error("PENABLE not asserted after SETUP phase");
			end

			// PSEL to remain asserted during a transfer
			if(curr_state == ACCESS && !PREADY) begin
				a_sel_stable_during_transfer: assert(PSEL)
				else $error("PSEL deasserted in the middle of a transfer");
			end

			// PENABLE to remain asserted during ACCESS until PREADY
			if(curr_state == ACCESS && !PREADY) begin
				a_enable_stable_during_access: assert(PENABLE)
				else $error("PENABLE deasserted before PREADY went high");
			end

			// Address must be stable during transfer
			if(PENABLE) begin
				a_addr_stable: assert(PADDR == PADDR_q)
				else $error("PADDR changed during transfer");
			end

			// PSLVERR can only be asserted during ACCESS
			if(PSLVERR) begin
				a_slverr_in_access_only: assert(PENABLE)
				else $error("Slave error asserted outside access phase");
			end
		end
	end
	always_comb begin
		next_state = curr_state;
		case(curr_state)
			IDLE: if(PSEL) next_state = SETUP;
			SETUP: if(PENABLE) next_state = ACCESS;
			ACCESS: if(PENABLE && PREADY) next_state = IDLE;
		endcase
	end

endmodule: apb_immediate_assertions

