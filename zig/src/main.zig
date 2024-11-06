const std = @import("std");

pub fn main() !void {
    const allocator = std.heap.page_allocator;
    const args = try std.process.argsAlloc(allocator);
    defer allocator.free(args);
    const writer = std.io.getStdOut().writer();
    if (args.len > 1) {
        try printVariousUnits(args[1]);
    }
    else {
        _ = try writer.write("Usage: binutil <text>\n");
    }
}

fn printBinary(text: []const u8) !void {
    const writer = std.io.getStdOut().writer();
    _ = try writer.write("Binary:\n");
    for (text) |c| {
        try writer.print("{b} ", .{c});
    }
    _ = try writer.write("\n");
}

fn printHex(text: []const u8) !void {
    const writer = std.io.getStdOut().writer();
    _ = try writer.write("Hex:\n");
    for (text) |c| {
        try writer.print("{x} ", .{c});
    }
    _ = try writer.write("\n");
}

fn printVariousUnits(text: []const u8) !void {
    const writer = std.io.getStdOut().writer();
    try printBinary(text);
    _ = try writer.write("\n");
    try printHex(text);
}
