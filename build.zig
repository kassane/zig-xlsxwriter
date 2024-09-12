const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const xlsxwriter_dep = b.dependency("xlsxwriter", .{
        .target = target,
        .optimize = optimize,
        .USE_SYSTEM_MINIZIP = true,
    });
    const xlsxwriter_module = b.addModule("xlsxwriter", .{
        .root_source_file = b.path("src/xlsxwriter.zig"),
    });

    // get libxlsxwriter
    xlsxwriter_module.linkLibrary(xlsxwriter_dep.artifact("xlsxwriter"));
    xlsxwriter_module.link_libc = true;

    makeExample(b, .{
        .path = "examples/tutorial1.zig",
        .module = xlsxwriter_module,
        .target = target,
        .optimize = optimize,
    });
    makeExample(b, .{
        .path = "examples/tutorial2.zig",
        .module = xlsxwriter_module,
        .target = target,
        .optimize = optimize,
    });
    makeExample(b, .{
        .path = "examples/array_formula.zig",
        .module = xlsxwriter_module,
        .target = target,
        .optimize = optimize,
    });
    makeExample(b, .{
        .path = "examples/chart.zig",
        .module = xlsxwriter_module,
        .target = target,
        .optimize = optimize,
    });
}

fn makeExample(b: *std.Build, options: BuildInfo) void {
    const example = b.addExecutable(.{
        .name = options.filename(),
        .root_source_file = b.path(options.path),
        .target = options.target,
        .optimize = options.optimize,
    });

    for (options.module.include_dirs.items) |include| {
        example.root_module.include_dirs.append(b.allocator, include) catch {};
    }
    example.root_module.addImport("xlsxwriter", options.module);

    b.installArtifact(example);

    const run_cmd = b.addRunArtifact(example);
    run_cmd.step.dependOn(b.getInstallStep());
    if (b.args) |args| {
        run_cmd.addArgs(args);
    }

    const descr = b.fmt("Run the {s} example", .{options.filename()});
    const run_step = b.step(options.filename(), descr);
    run_step.dependOn(&run_cmd.step);
}

const BuildInfo = struct {
    target: std.Build.ResolvedTarget,
    optimize: std.builtin.OptimizeMode,
    module: *std.Build.Module,
    path: []const u8,

    fn filename(self: BuildInfo) []const u8 {
        var split = std.mem.splitSequence(u8, std.fs.path.basename(self.path), ".");
        return split.first();
    }
};
