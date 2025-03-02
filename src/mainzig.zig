const std = @import("std");
const math = @import("std").math;

// zig build-exe -O ReleaseFast mainzig.zig

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    const start_time = std.time.milliTimestamp();
    const n: u32 = 10_000_000;
    var seed: u32 = 1;
    const str_len = 17;
    var str: [17]u8 = "00000000.00000000".*;
    var num: f64 = 0.0;

    for (0..n) |_| {
        //try stdout.print("i:{}\n", .{i});
        for (0..str_len) |j| {
            if (j == 8) {
                str[j] = '.';
            } else {
                seed = (((seed + 7) << 4) / 11) & 0xffffff;
                const sb = seed % 10;
                const bt: u8 = @truncate(sb);
                str[j] = 0x30 + bt;
            }
        }
        num = try std.fmt.parseFloat(
            f64,
            str[0..str_len],
        );
    }
    try stdout.print( //
        "Random numbers parsed: {} str: {s} num: {d:17.8}\n", //
        .{ n, str, num } //
    );

    const end_time = std.time.milliTimestamp();
    const time_spent = end_time - start_time;
    try stdout.print("Time: {} ms\n", .{time_spent});
}
