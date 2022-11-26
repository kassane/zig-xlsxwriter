const std = @import("std");
const xlsxwriter = @import("xlsxwriter.zig");
const testing = std.testing;

test "basic add functionality" {
    testing.refAllDeclsRecursive(@This());
    testing.refAllDeclsRecursive(xlsxwriter);
}
