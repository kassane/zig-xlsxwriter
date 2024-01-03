const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const xlsxwriter_dep = b.dependency("xlsxwriter", .{
        .target = target,
        .optimize = optimize,
        .USE_SYSTEM_MINIZIP = true,
    });
    const xlsxwriter = xlsxwriter_dep.artifact("xlsxwriter");
    _ = b.addModule("xlsxwriter", .{
        .source_file = .{
            .path = "src/xlsxwriter.zig",
        },
    });

    makeExample(b, .{
        .path = "examples/tutorial1.zig",
        .lib = xlsxwriter,
    });
    makeExample(b, .{
        .path = "examples/tutorial2.zig",
        .lib = xlsxwriter,
    });
    makeExample(b, .{
        .path = "examples/array_formula.zig",
        .lib = xlsxwriter,
    });
    makeExample(b, .{
        .path = "examples/chart.zig",
        .lib = xlsxwriter,
    });
}

fn makeExample(b: *std.build, property: BuildInfo) void {
    const example = b.addExecutable(.{
        .name = property.filename(),
        .root_source_file = .{ .path = property.path },
        .target = property.lib.target,
        .optimize = property.lib.optimize,
    });

    for (property.lib.include_dirs.items) |include| {
        example.include_dirs.append(include) catch {};
    }
    example.addModule("xlsxwriter", b.modules.get("xlsxwriter").?);
    example.linkLibrary(property.lib);
    example.linkLibC();

    b.installArtifact(example);

    const run_cmd = b.addRunArtifact(example);
    run_cmd.step.dependOn(b.getInstallStep());
    if (b.args) |args| {
        run_cmd.addArgs(args);
    }

    const descr = b.fmt("Run the {s} example", .{property.filename()});
    const run_step = b.step(property.filename(), descr);
    run_step.dependOn(&run_cmd.step);
}

const BuildInfo = struct {
    lib: *std.Build.Step.Compile,
    path: []const u8,

    fn filename(self: BuildInfo) []const u8 {
        var split = std.mem.splitSequence(u8, std.fs.path.basename(self.path), ".");
        return split.first();
    }
};
