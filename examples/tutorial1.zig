const xlsxwriter = @import("xlsxwriter");

const Expense = struct {
    item: [*:0]const u8,
    cost: f64,
};

var expenses = [_]Expense{
    .{ .item = "Rent", .cost = 1000.0 },
    .{ .item = "Gas", .cost = 100.0 },
    .{ .item = "Food", .cost = 300.0 },
    .{ .item = "Gym", .cost = 50.0 },
};

pub fn main() void {

    // Create a workbook and add a worksheet.
    const workbook: *xlsxwriter.lxw_workbook = xlsxwriter.workbook_new("tutorial01.xlsx");
    const worksheet: *xlsxwriter.lxw_worksheet = xlsxwriter.workbook_add_worksheet(workbook, null);

    //* Start from the first cell. Rows and columns are zero indexed. */
    var row: u32 = 0;
    var col: u16 = 0;

    //* Iterate over the data and write it out element by element. */
    while (row < 4) {
        _ = xlsxwriter.worksheet_write_string(worksheet, row, col, expenses[row].item, null);
        _ = xlsxwriter.worksheet_write_number(worksheet, row, col + 1, expenses[row].cost, null);
        defer row += 1;
        // defer col += 1;
    }

    //* Write a total using a formula. */
    _ = xlsxwriter.worksheet_write_string(worksheet, row, col, "Total", 0);
    _ = xlsxwriter.worksheet_write_formula(worksheet, row, col + 1, "=SUM(B1:B4)", 0);

    //* Save the workbook and free any allocated memory. */
    _ = xlsxwriter.workbook_close(workbook);
}
