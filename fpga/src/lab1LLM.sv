//   Written by: Gemini, recorded by Lily Anfang
//   Email: lanfang@g.hmc.edu
//   Date: 2026/09/07

module led_blink_2hz (
    output logic o_led
);

    // Internal logic signals
    logic clk_48m;
    logic [23:0] r_counter; // 24 bits can hold up to 16,777,215

    // Instantiate the Lattice iCE40 UltraPlus High-Speed Oscillator Primitive
    SB_HFOSC #(
        .CLKHF_DIV("0b00") // 0b00 = 48 MHz, 0b01 = 24 MHz, 0b10 = 12 MHz, 0b11 = 6 MHz
    ) u_hfosc (
        .CLKHFPU(1'b1),    // Power up the oscillator
        .CLKHFEN(1'b1),    // Enable the oscillator output
        .CLKHF(clk_48m)    // Output clock signal
    );

    // Frequency Divider & LED Toggle Logic
    always_ff @(posedge clk_48m) begin
        // 48_000_000 Hz / (2 * 2 Hz) = 12_000_000 clock cycles per toggle
        if (r_counter >= 24'd11_999_999) begin
            r_counter <= '0;        // Reset counter using SystemVerilog '0 fill literal
            o_led     <= ~o_led;    // Toggle the LED
        end else begin
            r_counter <= r_counter + 1'b1;
        end
    end

endmodule
