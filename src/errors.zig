const testing = @import("std").testing;

// zig fmt: off
pub const XlsxError = error {
    RowColumnLimitError,
    RowColumnOrderError,
    SheetnameCannotBeBlank,
    SheetnameLengthExceeded,
    SheetnameReused,
    SheetnameContainsInvalidCharacter,
    SheetnameStartsOrEndsWithApostrophe,
    MaxStringLengthExceeded,
    UnknownWorksheetNameOrIndex,
    MergeRangeSingleCell,
    MergeRangeOverlaps,
    MaxUrlLengthExceeded,
    UnknownUrlType,
    IoError
};

// zig fmt: on
pub fn formatErr(err: XlsxError) XlsxError![]const u8 {
    return switch (err) {
        error.RowColumnLimitError => "Row Column Limit Error",
        error.RowColumnOrderError => "Row Column Order Error",
        error.SheetnameCannotBeBlank => "Sheetname Cannot Be Blank",
        error.SheetnameLengthExceeded => "Sheetname Length Exceeded",
        error.SheetnameReused => "Sheetname Reused",
        error.SheetnameContainsInvalidCharacter => "Sheetname Contains Invalid Character",
        error.SheetnameStartsOrEndsWithApostrophe => "Sheetname Starts Or Ends With Apostrophe",
        error.MaxStringLengthExceeded => "Max String Length Exceeded",
        error.UnknownWorksheetNameOrIndex => "Unknown Worksheet Name Or Index",
        error.MergeRangeSingleCell => "Merge Range Single Cell",
        error.MergeRangeOverlaps => "Merge Range Overlaps",
        error.MaxUrlLengthExceeded => "Max Url Length Exceeded",
        error.UnknownUrlType => "Unknown Url Type",
        error.IoError => "I/O Error",
    };
}

test "Error name" {
    try testing.expectEqualStrings("Row Column Limit Error", try formatErr(error.RowColumnLimitError));
    try testing.expectEqualStrings("Row Column Order Error", try formatErr(error.RowColumnOrderError));
    try testing.expectEqualStrings("Sheetname Cannot Be Blank", try formatErr(error.SheetnameCannotBeBlank));
    try testing.expectEqualStrings("Sheetname Length Exceeded", try formatErr(error.SheetnameLengthExceeded));
    try testing.expectEqualStrings("Sheetname Reused", try formatErr(error.SheetnameReused));
    try testing.expectEqualStrings("Sheetname Contains Invalid Character", try formatErr(error.SheetnameContainsInvalidCharacter));
    try testing.expectEqualStrings("Sheetname Starts Or Ends With Apostrophe", try formatErr(error.SheetnameStartsOrEndsWithApostrophe));
    try testing.expectEqualStrings("Max String Length Exceeded", try formatErr(error.MaxStringLengthExceeded));
    try testing.expectEqualStrings("Unknown Worksheet Name Or Index", try formatErr(error.UnknownWorksheetNameOrIndex));
    try testing.expectEqualStrings("Merge Range Single Cell", try formatErr(error.MergeRangeSingleCell));
    try testing.expectEqualStrings("Merge Range Overlaps", try formatErr(error.MergeRangeOverlaps));
    try testing.expectEqualStrings("Max Url Length Exceeded", try formatErr(error.MaxUrlLengthExceeded));
    try testing.expectEqualStrings("Unknown Url Type", try formatErr(error.UnknownUrlType));
    try testing.expectEqualStrings("I/O Error", try formatErr(error.IoError));
}
