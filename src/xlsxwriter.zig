pub const xlsxError = @import("errors.zig");
pub usingnamespace @cImport({
    @cDefine("struct_headname", "");
    @cInclude("xlsxwriter.h");
});
