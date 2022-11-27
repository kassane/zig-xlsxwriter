const std = @import("std");
// const builtin = @import("builtin");

pub fn build(b: *std.build.Builder) !void {
    b.prominent_compile_errors = true;
    const mode = b.standardReleaseOptions();
    const target = b.standardTargetOptions(.{});

    makeExample(b, "examples/tutorial1.zig", "tutorial1", mode, target);
    makeExample(b, "examples/tutorial2.zig", "tutorial2", mode, target);
    makeExample(b, "examples/array_formula.zig", "array_formula", mode, target);
    makeExample(b, "examples/chart.zig", "chart", mode, target);
}

// fn libxlsxwriter(lib: *std.build.LibExeObjStep, b: *std.build.Builder, mode: std.builtin.Mode, target: std.zig.CrossTarget) void {
//     _ = b;
//     const rootdir = (comptime std.fs.path.dirname(@src().file) orelse null) ++ "/";
//     const srcdir = rootdir ++ "vendor/libxlsxwriter/src" ++ "/";
//     // const third_party = rootdir ++ "vendor/libxlsxwriter/third_party" ++ "/";

//     // zig fmt: off
//     const src = &.{
//         srcdir ++ "app.c",
//         srcdir ++ "comment.c",
//         srcdir ++ "custom.c",
//         srcdir ++ "hash_table.c",
//         srcdir ++ "packager.c",
//         srcdir ++ "styles.c",
//         srcdir ++ "utility.c",
//         srcdir ++ "worksheet.c",
//         srcdir ++ "chart.c",
//         srcdir ++ "content_types.c",
//         srcdir ++ "drawing.c",
//         srcdir ++ "relationships.c",
//         srcdir ++ "core.c",
//         srcdir ++ "table.c",
//         srcdir ++ "chartsheet.c",
//         srcdir ++ "xmlwriter.c",
//         srcdir ++ "vml.c",
//         srcdir ++ "format.c",
//         srcdir ++ "metadata.c",
//         srcdir ++ "shared_strings.c",
//         srcdir ++ "theme.c",
//         srcdir ++ "workbook.c",
//     };

//     // zig fmt: on
//     // Optional
//     const link_minizip = b.option(bool, "minizip", "Use system minizip installation [default: off]") orelse false;
//     const link_md5 = b.option(bool, "md5", "Build libxlsxwriter with the OpenSSL MD5 lib [default: off]") orelse false;
//     const link_dtoa = b.option(bool, "dtoa", "Use the locale independent third party Milo Yip DTOA library [default: off]") orelse false;
//     const link_tmpfileplus = b.option(bool, "tmpfileplus", "Use the C standard library's tmpfile() [default: off]") orelse false;

//     lib.addIncludePath("libxlsxwriter/third_party/minizip");
//     lib.addIncludePath("libxlsxwriter/third_party/md5");
//     lib.addIncludePath("libxlsxwriter/third_party/dtoa");
//     lib.addIncludePath("libxlsxwriter/third_party/tmpfileplus");

//     // Required
//     lib.setBuildMode(mode);
//     lib.setTarget(target);
//     lib.addCSourceFiles(src, &[_][]const u8{ "-Wall", "-fno-sanitize=all", "-Oz", "-std=c99" });
//     lib.linkLibC();
// }

fn makeExample(b: *std.build.Builder, src: []const u8, name: []const u8, mode: std.builtin.Mode, target: std.zig.CrossTarget) void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const alloc = gpa.allocator();

    const example = b.addExecutable(name, src);
    // example.addIncludePath("vendor/libxlsxwriter/include");
    example.linkSystemLibrary("xlsxwriter");
    example.setBuildMode(mode);
    example.addPackagePath("xlsxwriter", "src/xlsxwriter.zig");
    example.setTarget(target);
    example.linkLibC();
    example.install();

    const run_cmd = example.run();
    run_cmd.step.dependOn(b.getInstallStep());
    if (b.args) |args| {
        run_cmd.addArgs(args);
    }

    var descr = std.fmt.allocPrintZ(alloc, "Run the {s} example", .{name}) catch unreachable;
    const run_step = b.step(name, descr);
    run_step.dependOn(&run_cmd.step);
}
