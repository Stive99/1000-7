const std = @import("std");

pub fn main() !void {
    var i: i32 = 1000;
    while (i > 7) {
        std.debug.print("{} - 7 = {}\n", .{ i, i - 7 });
        i -= 7;
        std.time.sleep(50 * 1_000_000);
    }
    std.debug.print("Я гуль\n", .{});
}
