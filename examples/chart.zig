const xlsxwriter = @import("xlsxwriter");

pub fn main() void {

    // Create a new workbook and add a worksheet.
    const workbook: ?*xlsxwriter.lxw_workbook = xlsxwriter.workbook_new("out/chart.xlsx");
    const worksheet: ?*xlsxwriter.lxw_worksheet = xlsxwriter.workbook_add_worksheet(workbook, null);

    // Write some data for the chart. */
    write_worksheet_data(worksheet);

    // Create a chart object. */
    const chart: ?*xlsxwriter.lxw_chart = xlsxwriter.workbook_add_chart(workbook, xlsxwriter.LXW_CHART_COLUMN);

    // Configure the chart. In simplest case we just add some value data
    // series. The null categories will default to 1 to 5 like in Excel.

    _ = xlsxwriter.chart_add_series(chart, null, "Sheet1!$A$1:$A$5");
    _ = xlsxwriter.chart_add_series(chart, null, "Sheet1!$B$1:$B$5");
    _ = xlsxwriter.chart_add_series(chart, null, "Sheet1!$C$1:$C$5");

    var font: xlsxwriter.lxw_chart_font = .{
        .name = "Chart example",
        .bold = xlsxwriter.LXW_EXPLICIT_FALSE,
        .color = xlsxwriter.LXW_COLOR_BLUE,
        .italic = xlsxwriter.LXW_EXPLICIT_FALSE,
        .size = 16,
        .rotation = 0,
        .underline = 0,
        .charset = 0,
        .pitch_family = 0,
        .baseline = 0,
    };

    _ = xlsxwriter.chart_title_set_name(chart, "Year End Results");
    _ = xlsxwriter.chart_title_set_name_font(chart, &font);

    // Insert the chart into the worksheet.
    _ = xlsxwriter.worksheet_insert_chart(worksheet, xlsxwriter.CELL("B7"), xlsxwriter.COLS("A1"), chart);

    _ = xlsxwriter.workbook_close(workbook);
}

fn write_worksheet_data(worksheet: ?*xlsxwriter.lxw_worksheet) void {
    const data: [5][3]f64 = .{
        [3]f64{ 1, 2, 3 },
        [3]f64{ 2, 4, 6 },
        [3]f64{ 3, 6, 9 },
        [3]f64{ 4, 8, 12 },
        [3]f64{ 5, 10, 15 },
    };

    var row: u32 = 0;
    var col: u16 = 0;
    {
        while (row < 5) : (row += 1) {
            while (col < 3) : (col += 1) {
                _ = xlsxwriter.worksheet_write_number(worksheet, row, col, data[row][col], null);
            }
        }
    }
}
