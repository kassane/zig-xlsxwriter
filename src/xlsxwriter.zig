pub const xlsxError = @import("errors.zig");
const std = @import("std");
const FILE = extern struct {
    _flags: c_int,
    _IO_read_ptr: [*c]u8,
    _IO_read_end: [*c]u8,
    _IO_read_base: [*c]u8,
    _IO_write_base: [*c]u8,
    _IO_write_ptr: [*c]u8,
    _IO_write_end: [*c]u8,
    _IO_buf_base: [*c]u8,
    _IO_buf_end: [*c]u8,
    _IO_save_base: [*c]u8,
    _IO_backup_base: [*c]u8,
    _IO_save_end: [*c]u8,
    _markers: ?*marker,
    _chain: [*c]FILE,
    _fileno: c_int,
    _flags2: c_int,
    _old_offset: c_long,
    _cur_column: c_ushort,
    _vtable_offset: i8,
    _shortbuf: [1]u8,
    _lock: ?*lock_t,
    _offset: c_longdouble,
    _codecvt: ?*codecvt,
    _wide_data: ?*wide_data,
    _freeres_list: [*c]FILE,
    _freeres_buf: ?*anyopaque,
    __pad5: usize,
    _mode: c_int,
    _unused2: [20]u8,
};
pub const codecvt = opaque{};
pub const wide_data = opaque{};
pub const lock_t = opaque{};
pub const marker = opaque{};
pub const lxw_row_t = u32;
pub const lxw_col_t = u16;
pub const LXW_FALSE: c_int = 0;
pub const LXW_TRUE: c_int = 1;
pub const LXW_EXPLICIT_FALSE: c_int = 2;
pub const enum_lxw_boolean = c_uint;
pub const LXW_NO_ERROR: c_int = 0;
pub const LXW_ERROR_MEMORY_MALLOC_FAILED: c_int = 1;
pub const LXW_ERROR_CREATING_XLSX_FILE: c_int = 2;
pub const LXW_ERROR_CREATING_TMPFILE: c_int = 3;
pub const LXW_ERROR_READING_TMPFILE: c_int = 4;
pub const LXW_ERROR_ZIP_FILE_OPERATION: c_int = 5;
pub const LXW_ERROR_ZIP_PARAMETER_ERROR: c_int = 6;
pub const LXW_ERROR_ZIP_BAD_ZIP_FILE: c_int = 7;
pub const LXW_ERROR_ZIP_INTERNAL_ERROR: c_int = 8;
pub const LXW_ERROR_ZIP_FILE_ADD: c_int = 9;
pub const LXW_ERROR_ZIP_CLOSE: c_int = 10;
pub const LXW_ERROR_FEATURE_NOT_SUPPORTED: c_int = 11;
pub const LXW_ERROR_NULL_PARAMETER_IGNORED: c_int = 12;
pub const LXW_ERROR_PARAMETER_VALIDATION: c_int = 13;
pub const LXW_ERROR_SHEETNAME_LENGTH_EXCEEDED: c_int = 14;
pub const LXW_ERROR_INVALID_SHEETNAME_CHARACTER: c_int = 15;
pub const LXW_ERROR_SHEETNAME_START_END_APOSTROPHE: c_int = 16;
pub const LXW_ERROR_SHEETNAME_ALREADY_USED: c_int = 17;
pub const LXW_ERROR_32_STRING_LENGTH_EXCEEDED: c_int = 18;
pub const LXW_ERROR_128_STRING_LENGTH_EXCEEDED: c_int = 19;
pub const LXW_ERROR_255_STRING_LENGTH_EXCEEDED: c_int = 20;
pub const LXW_ERROR_MAX_STRING_LENGTH_EXCEEDED: c_int = 21;
pub const LXW_ERROR_SHARED_STRING_INDEX_NOT_FOUND: c_int = 22;
pub const LXW_ERROR_WORKSHEET_INDEX_OUT_OF_RANGE: c_int = 23;
pub const LXW_ERROR_WORKSHEET_MAX_URL_LENGTH_EXCEEDED: c_int = 24;
pub const LXW_ERROR_WORKSHEET_MAX_NUMBER_URLS_EXCEEDED: c_int = 25;
pub const LXW_ERROR_IMAGE_DIMENSIONS: c_int = 26;
pub const LXW_MAX_ERRNO: c_int = 27;
pub const enum_lxw_error = c_uint;
pub const lxw_error = enum_lxw_error;
pub const struct_lxw_datetime = extern struct {
    year: c_int,
    month: c_int,
    day: c_int,
    hour: c_int,
    min: c_int,
    sec: f64,
};
pub const lxw_datetime = struct_lxw_datetime;
pub const LXW_CUSTOM_NONE: c_int = 0;
pub const LXW_CUSTOM_STRING: c_int = 1;
pub const LXW_CUSTOM_DOUBLE: c_int = 2;
pub const LXW_CUSTOM_INTEGER: c_int = 3;
pub const LXW_CUSTOM_BOOLEAN: c_int = 4;
pub const LXW_CUSTOM_DATETIME: c_int = 5;
pub const enum_lxw_custom_property_types = c_uint;
const struct_unnamed_3 = extern struct {
    stqe_next: [*c]struct_lxw_hash_element,
};
const struct_unnamed_4 = extern struct {
    sle_next: [*c]struct_lxw_hash_element,
};
pub const struct_lxw_hash_element = extern struct {
    key: ?*anyopaque,
    value: ?*anyopaque,
    lxw_hash_order_pointers: struct_unnamed_3,
    lxw_hash_list_pointers: struct_unnamed_4,
};
pub const struct_lxw_hash_order_list = extern struct {
    stqh_first: [*c]struct_lxw_hash_element,
    stqh_last: [*c][*c]struct_lxw_hash_element,
};
pub const struct_lxw_hash_bucket_list = extern struct {
    slh_first: [*c]struct_lxw_hash_element,
};
pub const struct_lxw_hash_table = extern struct {
    num_buckets: u32,
    used_buckets: u32,
    unique_count: u32,
    free_key: u8,
    free_value: u8,
    order_list: [*c]struct_lxw_hash_order_list,
    buckets: [*c][*c]struct_lxw_hash_bucket_list,
};
pub const lxw_hash_table = struct_lxw_hash_table;
pub const lxw_color_t = u32;
const struct_unnamed_5 = extern struct {
    stqe_next: [*c]struct_lxw_format,
};
pub const struct_lxw_format = extern struct {
    file: [*c]FILE,
    xf_format_indices: [*c]lxw_hash_table,
    dxf_format_indices: [*c]lxw_hash_table,
    num_xf_formats: [*c]u16,
    num_dxf_formats: [*c]u16,
    xf_index: i32,
    dxf_index: i32,
    xf_id: i32,
    num_format: [128]u8,
    font_name: [128]u8,
    font_scheme: [128]u8,
    num_format_index: u16,
    font_index: u16,
    has_font: u8,
    has_dxf_font: u8,
    font_size: f64,
    bold: u8,
    italic: u8,
    font_color: lxw_color_t,
    underline: u8,
    font_strikeout: u8,
    font_outline: u8,
    font_shadow: u8,
    font_script: u8,
    font_family: u8,
    font_charset: u8,
    font_condense: u8,
    font_extend: u8,
    theme: u8,
    hyperlink: u8,
    hidden: u8,
    locked: u8,
    text_h_align: u8,
    text_wrap: u8,
    text_v_align: u8,
    text_justlast: u8,
    rotation: i16,
    fg_color: lxw_color_t,
    bg_color: lxw_color_t,
    dxf_fg_color: lxw_color_t,
    dxf_bg_color: lxw_color_t,
    pattern: u8,
    has_fill: u8,
    has_dxf_fill: u8,
    fill_index: i32,
    fill_count: i32,
    border_index: i32,
    has_border: u8,
    has_dxf_border: u8,
    border_count: i32,
    bottom: u8,
    diag_border: u8,
    diag_type: u8,
    left: u8,
    right: u8,
    top: u8,
    bottom_color: lxw_color_t,
    diag_color: lxw_color_t,
    left_color: lxw_color_t,
    right_color: lxw_color_t,
    top_color: lxw_color_t,
    indent: u8,
    shrink: u8,
    merge_range: u8,
    reading_order: u8,
    just_distrib: u8,
    color_indexed: u8,
    font_only: u8,
    list_pointers: struct_unnamed_5,
};
pub const struct_lxw_formats = extern struct {
    stqh_first: [*c]struct_lxw_format,
    stqh_last: [*c][*c]struct_lxw_format,
};
const struct_unnamed_6 = extern struct {
    stqe_next: [*c]struct_lxw_tuple,
};
pub const struct_lxw_tuple = extern struct {
    key: [*c]u8,
    value: [*c]u8,
    list_pointers: struct_unnamed_6,
};
pub const struct_lxw_tuples = extern struct {
    stqh_first: [*c]struct_lxw_tuple,
    stqh_last: [*c][*c]struct_lxw_tuple,
};
const union_unnamed_7 = extern union {
    string: [*c]u8,
    number: f64,
    integer: i32,
    boolean: u8,
    datetime: lxw_datetime,
};
const struct_unnamed_8 = extern struct {
    stqe_next: [*c]struct_lxw_custom_property,
};
pub const struct_lxw_custom_property = extern struct {
    type: enum_lxw_custom_property_types,
    name: [*c]u8,
    u: union_unnamed_7,
    list_pointers: struct_unnamed_8,
};
pub const struct_lxw_custom_properties = extern struct {
    stqh_first: [*c]struct_lxw_custom_property,
    stqh_last: [*c][*c]struct_lxw_custom_property,
};
pub const lxw_tuple = struct_lxw_tuple;
pub const lxw_custom_property = struct_lxw_custom_property;
const struct_unnamed_9 = extern struct {
    stqe_next: [*c]struct_sst_element,
};
const struct_unnamed_10 = extern struct {
    rbe_left: [*c]struct_sst_element,
    rbe_right: [*c]struct_sst_element,
    rbe_parent: [*c]struct_sst_element,
    rbe_color: c_int,
};
pub const struct_sst_element = extern struct {
    index: u32,
    string: [*c]u8,
    is_rich_string: u8,
    sst_order_pointers: struct_unnamed_9,
    sst_tree_pointers: struct_unnamed_10,
};
pub const struct_sst_rb_tree = extern struct {
    rbh_root: [*c]struct_sst_element,
};
pub const struct_sst_order_list = extern struct {
    stqh_first: [*c]struct_sst_element,
    stqh_last: [*c][*c]struct_sst_element,
};
pub const struct_lxw_sst = extern struct {
    file: [*c]FILE,
    string_count: u32,
    unique_count: u32,
    order_list: [*c]struct_sst_order_list,
    rb_tree: [*c]struct_sst_rb_tree,
};
pub const lxw_sst = struct_lxw_sst;
pub extern fn lxw_sst_new() [*c]lxw_sst;
pub extern fn lxw_sst_free(sst: [*c]lxw_sst) void;
pub extern fn lxw_get_sst_index(sst: [*c]lxw_sst, string: [*c]const u8, is_rich_string: u8) [*c]struct_sst_element;
pub extern fn lxw_sst_assemble_xml_file(self: [*c]lxw_sst) void;
pub const lxw_hash_element = struct_lxw_hash_element;
pub extern fn lxw_hash_key_exists(lxw_hash: [*c]lxw_hash_table, key: ?*anyopaque, key_len: usize) [*c]lxw_hash_element;
pub extern fn lxw_insert_hash_element(lxw_hash: [*c]lxw_hash_table, key: ?*anyopaque, value: ?*anyopaque, key_len: usize) [*c]lxw_hash_element;
pub extern fn lxw_hash_new(num_buckets: u32, free_key: u8, free_value: u8) [*c]lxw_hash_table;
pub extern fn lxw_hash_free(lxw_hash: [*c]lxw_hash_table) void;
pub const LXW_UNDERLINE_NONE: c_int = 0;
pub const LXW_UNDERLINE_SINGLE: c_int = 1;
pub const LXW_UNDERLINE_DOUBLE: c_int = 2;
pub const LXW_UNDERLINE_SINGLE_ACCOUNTING: c_int = 3;
pub const LXW_UNDERLINE_DOUBLE_ACCOUNTING: c_int = 4;
pub const enum_lxw_format_underlines = c_uint;
pub const LXW_FONT_SUPERSCRIPT: c_int = 1;
pub const LXW_FONT_SUBSCRIPT: c_int = 2;
pub const enum_lxw_format_scripts = c_uint;
pub const LXW_ALIGN_NONE: c_int = 0;
pub const LXW_ALIGN_LEFT: c_int = 1;
pub const LXW_ALIGN_CENTER: c_int = 2;
pub const LXW_ALIGN_RIGHT: c_int = 3;
pub const LXW_ALIGN_FILL: c_int = 4;
pub const LXW_ALIGN_JUSTIFY: c_int = 5;
pub const LXW_ALIGN_CENTER_ACROSS: c_int = 6;
pub const LXW_ALIGN_DISTRIBUTED: c_int = 7;
pub const LXW_ALIGN_VERTICAL_TOP: c_int = 8;
pub const LXW_ALIGN_VERTICAL_BOTTOM: c_int = 9;
pub const LXW_ALIGN_VERTICAL_CENTER: c_int = 10;
pub const LXW_ALIGN_VERTICAL_JUSTIFY: c_int = 11;
pub const LXW_ALIGN_VERTICAL_DISTRIBUTED: c_int = 12;
pub const enum_lxw_format_alignments = c_uint;
pub const LXW_DIAGONAL_BORDER_UP: c_int = 1;
pub const LXW_DIAGONAL_BORDER_DOWN: c_int = 2;
pub const LXW_DIAGONAL_BORDER_UP_DOWN: c_int = 3;
pub const enum_lxw_format_diagonal_types = c_uint;
pub const LXW_COLOR_BLACK: c_int = 16777216;
pub const LXW_COLOR_BLUE: c_int = 255;
pub const LXW_COLOR_BROWN: c_int = 8388608;
pub const LXW_COLOR_CYAN: c_int = 65535;
pub const LXW_COLOR_GRAY: c_int = 8421504;
pub const LXW_COLOR_GREEN: c_int = 32768;
pub const LXW_COLOR_LIME: c_int = 65280;
pub const LXW_COLOR_MAGENTA: c_int = 16711935;
pub const LXW_COLOR_NAVY: c_int = 128;
pub const LXW_COLOR_ORANGE: c_int = 16737792;
pub const LXW_COLOR_PINK: c_int = 16711935;
pub const LXW_COLOR_PURPLE: c_int = 8388736;
pub const LXW_COLOR_RED: c_int = 16711680;
pub const LXW_COLOR_SILVER: c_int = 12632256;
pub const LXW_COLOR_WHITE: c_int = 16777215;
pub const LXW_COLOR_YELLOW: c_int = 16776960;
pub const enum_lxw_defined_colors = c_uint;
pub const LXW_PATTERN_NONE: c_int = 0;
pub const LXW_PATTERN_SOLID: c_int = 1;
pub const LXW_PATTERN_MEDIUM_GRAY: c_int = 2;
pub const LXW_PATTERN_DARK_GRAY: c_int = 3;
pub const LXW_PATTERN_LIGHT_GRAY: c_int = 4;
pub const LXW_PATTERN_DARK_HORIZONTAL: c_int = 5;
pub const LXW_PATTERN_DARK_VERTICAL: c_int = 6;
pub const LXW_PATTERN_DARK_DOWN: c_int = 7;
pub const LXW_PATTERN_DARK_UP: c_int = 8;
pub const LXW_PATTERN_DARK_GRID: c_int = 9;
pub const LXW_PATTERN_DARK_TRELLIS: c_int = 10;
pub const LXW_PATTERN_LIGHT_HORIZONTAL: c_int = 11;
pub const LXW_PATTERN_LIGHT_VERTICAL: c_int = 12;
pub const LXW_PATTERN_LIGHT_DOWN: c_int = 13;
pub const LXW_PATTERN_LIGHT_UP: c_int = 14;
pub const LXW_PATTERN_LIGHT_GRID: c_int = 15;
pub const LXW_PATTERN_LIGHT_TRELLIS: c_int = 16;
pub const LXW_PATTERN_GRAY_125: c_int = 17;
pub const LXW_PATTERN_GRAY_0625: c_int = 18;
pub const enum_lxw_format_patterns = c_uint;
pub const LXW_BORDER_NONE: c_int = 0;
pub const LXW_BORDER_THIN: c_int = 1;
pub const LXW_BORDER_MEDIUM: c_int = 2;
pub const LXW_BORDER_DASHED: c_int = 3;
pub const LXW_BORDER_DOTTED: c_int = 4;
pub const LXW_BORDER_THICK: c_int = 5;
pub const LXW_BORDER_DOUBLE: c_int = 6;
pub const LXW_BORDER_HAIR: c_int = 7;
pub const LXW_BORDER_MEDIUM_DASHED: c_int = 8;
pub const LXW_BORDER_DASH_DOT: c_int = 9;
pub const LXW_BORDER_MEDIUM_DASH_DOT: c_int = 10;
pub const LXW_BORDER_DASH_DOT_DOT: c_int = 11;
pub const LXW_BORDER_MEDIUM_DASH_DOT_DOT: c_int = 12;
pub const LXW_BORDER_SLANT_DASH_DOT: c_int = 13;
pub const enum_lxw_format_borders = c_uint;
pub const lxw_format = struct_lxw_format;
pub const struct_lxw_font = extern struct {
    font_name: [128]u8,
    font_size: f64,
    bold: u8,
    italic: u8,
    underline: u8,
    theme: u8,
    font_strikeout: u8,
    font_outline: u8,
    font_shadow: u8,
    font_script: u8,
    font_family: u8,
    font_charset: u8,
    font_condense: u8,
    font_extend: u8,
    font_color: lxw_color_t,
};
pub const lxw_font = struct_lxw_font;
pub const struct_lxw_border = extern struct {
    bottom: u8,
    diag_border: u8,
    diag_type: u8,
    left: u8,
    right: u8,
    top: u8,
    bottom_color: lxw_color_t,
    diag_color: lxw_color_t,
    left_color: lxw_color_t,
    right_color: lxw_color_t,
    top_color: lxw_color_t,
};
pub const lxw_border = struct_lxw_border;
pub const struct_lxw_fill = extern struct {
    fg_color: lxw_color_t,
    bg_color: lxw_color_t,
    pattern: u8,
};
pub const lxw_fill = struct_lxw_fill;
pub extern fn lxw_format_new() [*c]lxw_format;
pub extern fn lxw_format_free(format: [*c]lxw_format) void;
pub extern fn lxw_format_get_xf_index(format: [*c]lxw_format) i32;
pub extern fn lxw_format_get_dxf_index(format: [*c]lxw_format) i32;
pub extern fn lxw_format_get_font_key(format: [*c]lxw_format) [*c]lxw_font;
pub extern fn lxw_format_get_border_key(format: [*c]lxw_format) [*c]lxw_border;
pub extern fn lxw_format_get_fill_key(format: [*c]lxw_format) [*c]lxw_fill;
pub extern fn format_set_font_name(format: [*c]lxw_format, font_name: [*c]const u8) void;
pub extern fn format_set_font_size(format: [*c]lxw_format, size: f64) void;
pub extern fn format_set_font_color(format: [*c]lxw_format, color: lxw_color_t) void;
pub extern fn format_set_bold(format: [*c]lxw_format) void;
pub extern fn format_set_italic(format: [*c]lxw_format) void;
pub extern fn format_set_underline(format: [*c]lxw_format, style: u8) void;
pub extern fn format_set_font_strikeout(format: [*c]lxw_format) void;
pub extern fn format_set_font_script(format: [*c]lxw_format, style: u8) void;
pub extern fn format_set_num_format(format: [*c]lxw_format, num_format: [*c]const u8) void;
pub extern fn format_set_num_format_index(format: [*c]lxw_format, index: u8) void;
pub extern fn format_set_unlocked(format: [*c]lxw_format) void;
pub extern fn format_set_hidden(format: [*c]lxw_format) void;
pub extern fn format_set_align(format: [*c]lxw_format, alignment: u8) void;
pub extern fn format_set_text_wrap(format: [*c]lxw_format) void;
pub extern fn format_set_rotation(format: [*c]lxw_format, angle: i16) void;
pub extern fn format_set_indent(format: [*c]lxw_format, level: u8) void;
pub extern fn format_set_shrink(format: [*c]lxw_format) void;
pub extern fn format_set_pattern(format: [*c]lxw_format, index: u8) void;
pub extern fn format_set_bg_color(format: [*c]lxw_format, color: lxw_color_t) void;
pub extern fn format_set_fg_color(format: [*c]lxw_format, color: lxw_color_t) void;
pub extern fn format_set_border(format: [*c]lxw_format, style: u8) void;
pub extern fn format_set_bottom(format: [*c]lxw_format, style: u8) void;
pub extern fn format_set_top(format: [*c]lxw_format, style: u8) void;
pub extern fn format_set_left(format: [*c]lxw_format, style: u8) void;
pub extern fn format_set_right(format: [*c]lxw_format, style: u8) void;
pub extern fn format_set_border_color(format: [*c]lxw_format, color: lxw_color_t) void;
pub extern fn format_set_bottom_color(format: [*c]lxw_format, color: lxw_color_t) void;
pub extern fn format_set_top_color(format: [*c]lxw_format, color: lxw_color_t) void;
pub extern fn format_set_left_color(format: [*c]lxw_format, color: lxw_color_t) void;
pub extern fn format_set_right_color(format: [*c]lxw_format, color: lxw_color_t) void;
pub extern fn format_set_diag_type(format: [*c]lxw_format, @"type": u8) void;
pub extern fn format_set_diag_border(format: [*c]lxw_format, style: u8) void;
pub extern fn format_set_diag_color(format: [*c]lxw_format, color: lxw_color_t) void;
pub extern fn format_set_font_outline(format: [*c]lxw_format) void;
pub extern fn format_set_font_shadow(format: [*c]lxw_format) void;
pub extern fn format_set_font_family(format: [*c]lxw_format, value: u8) void;
pub extern fn format_set_font_charset(format: [*c]lxw_format, value: u8) void;
pub extern fn format_set_font_scheme(format: [*c]lxw_format, font_scheme: [*c]const u8) void;
pub extern fn format_set_font_condense(format: [*c]lxw_format) void;
pub extern fn format_set_font_extend(format: [*c]lxw_format) void;
pub extern fn format_set_reading_order(format: [*c]lxw_format, value: u8) void;
pub extern fn format_set_theme(format: [*c]lxw_format, value: u8) void;
pub extern fn format_set_hyperlink(format: [*c]lxw_format) void;
pub extern fn format_set_color_indexed(format: [*c]lxw_format, value: u8) void;
pub extern fn format_set_font_only(format: [*c]lxw_format) void;
const struct_unnamed_11 = extern struct {
    stqe_next: [*c]struct_lxw_series_data_point,
};
pub const struct_lxw_series_data_point = extern struct {
    is_string: u8,
    number: f64,
    string: [*c]u8,
    no_data: u8,
    list_pointers: struct_unnamed_11,
};
pub const struct_lxw_series_data_points = extern struct {
    stqh_first: [*c]struct_lxw_series_data_point,
    stqh_last: [*c][*c]struct_lxw_series_data_point,
};
pub const struct_lxw_series_range = extern struct {
    formula: [*c]u8,
    sheetname: [*c]u8,
    first_row: lxw_row_t,
    last_row: lxw_row_t,
    first_col: lxw_col_t,
    last_col: lxw_col_t,
    ignore_cache: u8,
    has_string_cache: u8,
    num_data_points: u16,
    data_cache: [*c]struct_lxw_series_data_points,
};
pub const lxw_series_range = struct_lxw_series_range;
pub const struct_lxw_chart_font = extern struct {
    name: [*c]u8,
    size: f64,
    bold: u8,
    italic: u8,
    underline: u8,
    rotation: i32,
    color: lxw_color_t,
    pitch_family: u8,
    charset: u8,
    baseline: i8,
};
pub const lxw_chart_font = struct_lxw_chart_font;
pub const struct_lxw_chart_title = extern struct {
    name: [*c]u8,
    row: lxw_row_t,
    col: lxw_col_t,
    font: [*c]lxw_chart_font,
    off: u8,
    is_horizontal: u8,
    ignore_cache: u8,
    range: [*c]lxw_series_range,
    data_point: struct_lxw_series_data_point,
};
pub const lxw_chart_title = struct_lxw_chart_title;
pub const struct_lxw_chart_line = extern struct {
    color: lxw_color_t,
    none: u8,
    width: f32,
    dash_type: u8,
    transparency: u8,
};
pub const lxw_chart_line = struct_lxw_chart_line;
pub const struct_lxw_chart_fill = extern struct {
    color: lxw_color_t,
    none: u8,
    transparency: u8,
};
pub const lxw_chart_fill = struct_lxw_chart_fill;
pub const struct_lxw_chart_pattern = extern struct {
    fg_color: lxw_color_t,
    bg_color: lxw_color_t,
    type: u8,
};
pub const lxw_chart_pattern = struct_lxw_chart_pattern;
pub const struct_lxw_chart_marker = extern struct {
    type: u8,
    size: u8,
    line: [*c]lxw_chart_line,
    fill: [*c]lxw_chart_fill,
    pattern: [*c]lxw_chart_pattern,
};
pub const lxw_chart_marker = struct_lxw_chart_marker;
pub const struct_lxw_chart_point = extern struct {
    line: [*c]lxw_chart_line,
    fill: [*c]lxw_chart_fill,
    pattern: [*c]lxw_chart_pattern,
};
pub const lxw_chart_point = struct_lxw_chart_point;
pub const struct_lxw_chart_custom_label = extern struct {
    value: [*c]u8,
    hide: u8,
    font: [*c]lxw_chart_font,
    line: [*c]lxw_chart_line,
    fill: [*c]lxw_chart_fill,
    pattern: [*c]lxw_chart_pattern,
    range: [*c]lxw_series_range,
    data_point: struct_lxw_series_data_point,
};
pub const lxw_chart_custom_label = struct_lxw_chart_custom_label;
pub const struct_lxw_series_error_bars = extern struct {
    type: u8,
    direction: u8,
    endcap: u8,
    has_value: u8,
    is_set: u8,
    is_x: u8,
    chart_group: u8,
    value: f64,
    line: [*c]lxw_chart_line,
};
pub const lxw_series_error_bars = struct_lxw_series_error_bars;
const struct_unnamed_12 = extern struct {
    stqe_next: [*c]struct_lxw_chart_series,
};
pub const struct_lxw_chart_series = extern struct {
    categories: [*c]lxw_series_range,
    values: [*c]lxw_series_range,
    title: lxw_chart_title,
    line: [*c]lxw_chart_line,
    fill: [*c]lxw_chart_fill,
    pattern: [*c]lxw_chart_pattern,
    marker: [*c]lxw_chart_marker,
    points: [*c]lxw_chart_point,
    data_labels: [*c]lxw_chart_custom_label,
    point_count: u16,
    data_label_count: u16,
    smooth: u8,
    invert_if_negative: u8,
    has_labels: u8,
    show_labels_value: u8,
    show_labels_category: u8,
    show_labels_name: u8,
    show_labels_leader: u8,
    show_labels_legend: u8,
    show_labels_percent: u8,
    label_position: u8,
    label_separator: u8,
    default_label_position: u8,
    label_num_format: [*c]u8,
    label_font: [*c]lxw_chart_font,
    label_line: [*c]lxw_chart_line,
    label_fill: [*c]lxw_chart_fill,
    label_pattern: [*c]lxw_chart_pattern,
    x_error_bars: [*c]lxw_series_error_bars,
    y_error_bars: [*c]lxw_series_error_bars,
    has_trendline: u8,
    has_trendline_forecast: u8,
    has_trendline_equation: u8,
    has_trendline_r_squared: u8,
    has_trendline_intercept: u8,
    trendline_type: u8,
    trendline_value: u8,
    trendline_forward: f64,
    trendline_backward: f64,
    trendline_value_type: u8,
    trendline_name: [*c]u8,
    trendline_line: [*c]lxw_chart_line,
    trendline_intercept: f64,
    list_pointers: struct_unnamed_12,
};
pub const struct_lxw_chart_series_list = extern struct {
    stqh_first: [*c]struct_lxw_chart_series,
    stqh_last: [*c][*c]struct_lxw_chart_series,
};
pub const LXW_CHART_NONE: c_int = 0;
pub const LXW_CHART_AREA: c_int = 1;
pub const LXW_CHART_AREA_STACKED: c_int = 2;
pub const LXW_CHART_AREA_STACKED_PERCENT: c_int = 3;
pub const LXW_CHART_BAR: c_int = 4;
pub const LXW_CHART_BAR_STACKED: c_int = 5;
pub const LXW_CHART_BAR_STACKED_PERCENT: c_int = 6;
pub const LXW_CHART_COLUMN: c_int = 7;
pub const LXW_CHART_COLUMN_STACKED: c_int = 8;
pub const LXW_CHART_COLUMN_STACKED_PERCENT: c_int = 9;
pub const LXW_CHART_DOUGHNUT: c_int = 10;
pub const LXW_CHART_LINE: c_int = 11;
pub const LXW_CHART_LINE_STACKED: c_int = 12;
pub const LXW_CHART_LINE_STACKED_PERCENT: c_int = 13;
pub const LXW_CHART_PIE: c_int = 14;
pub const LXW_CHART_SCATTER: c_int = 15;
pub const LXW_CHART_SCATTER_STRAIGHT: c_int = 16;
pub const LXW_CHART_SCATTER_STRAIGHT_WITH_MARKERS: c_int = 17;
pub const LXW_CHART_SCATTER_SMOOTH: c_int = 18;
pub const LXW_CHART_SCATTER_SMOOTH_WITH_MARKERS: c_int = 19;
pub const LXW_CHART_RADAR: c_int = 20;
pub const LXW_CHART_RADAR_WITH_MARKERS: c_int = 21;
pub const LXW_CHART_RADAR_FILLED: c_int = 22;
pub const enum_lxw_chart_type = c_uint;
pub const lxw_chart_type = enum_lxw_chart_type;
pub const LXW_CHART_LEGEND_NONE: c_int = 0;
pub const LXW_CHART_LEGEND_RIGHT: c_int = 1;
pub const LXW_CHART_LEGEND_LEFT: c_int = 2;
pub const LXW_CHART_LEGEND_TOP: c_int = 3;
pub const LXW_CHART_LEGEND_BOTTOM: c_int = 4;
pub const LXW_CHART_LEGEND_TOP_RIGHT: c_int = 5;
pub const LXW_CHART_LEGEND_OVERLAY_RIGHT: c_int = 6;
pub const LXW_CHART_LEGEND_OVERLAY_LEFT: c_int = 7;
pub const LXW_CHART_LEGEND_OVERLAY_TOP_RIGHT: c_int = 8;
pub const enum_lxw_chart_legend_position = c_uint;
pub const lxw_chart_legend_position = enum_lxw_chart_legend_position;
pub const LXW_CHART_LINE_DASH_SOLID: c_int = 0;
pub const LXW_CHART_LINE_DASH_ROUND_DOT: c_int = 1;
pub const LXW_CHART_LINE_DASH_SQUARE_DOT: c_int = 2;
pub const LXW_CHART_LINE_DASH_DASH: c_int = 3;
pub const LXW_CHART_LINE_DASH_DASH_DOT: c_int = 4;
pub const LXW_CHART_LINE_DASH_LONG_DASH: c_int = 5;
pub const LXW_CHART_LINE_DASH_LONG_DASH_DOT: c_int = 6;
pub const LXW_CHART_LINE_DASH_LONG_DASH_DOT_DOT: c_int = 7;
pub const LXW_CHART_LINE_DASH_DOT: c_int = 8;
pub const LXW_CHART_LINE_DASH_SYSTEM_DASH_DOT: c_int = 9;
pub const LXW_CHART_LINE_DASH_SYSTEM_DASH_DOT_DOT: c_int = 10;
pub const enum_lxw_chart_line_dash_type = c_uint;
pub const lxw_chart_line_dash_type = enum_lxw_chart_line_dash_type;
pub const LXW_CHART_MARKER_AUTOMATIC: c_int = 0;
pub const LXW_CHART_MARKER_NONE: c_int = 1;
pub const LXW_CHART_MARKER_SQUARE: c_int = 2;
pub const LXW_CHART_MARKER_DIAMOND: c_int = 3;
pub const LXW_CHART_MARKER_TRIANGLE: c_int = 4;
pub const LXW_CHART_MARKER_X: c_int = 5;
pub const LXW_CHART_MARKER_STAR: c_int = 6;
pub const LXW_CHART_MARKER_SHORT_DASH: c_int = 7;
pub const LXW_CHART_MARKER_LONG_DASH: c_int = 8;
pub const LXW_CHART_MARKER_CIRCLE: c_int = 9;
pub const LXW_CHART_MARKER_PLUS: c_int = 10;
pub const enum_lxw_chart_marker_type = c_uint;
pub const lxw_chart_marker_type = enum_lxw_chart_marker_type;
pub const LXW_CHART_PATTERN_NONE: c_int = 0;
pub const LXW_CHART_PATTERN_PERCENT_5: c_int = 1;
pub const LXW_CHART_PATTERN_PERCENT_10: c_int = 2;
pub const LXW_CHART_PATTERN_PERCENT_20: c_int = 3;
pub const LXW_CHART_PATTERN_PERCENT_25: c_int = 4;
pub const LXW_CHART_PATTERN_PERCENT_30: c_int = 5;
pub const LXW_CHART_PATTERN_PERCENT_40: c_int = 6;
pub const LXW_CHART_PATTERN_PERCENT_50: c_int = 7;
pub const LXW_CHART_PATTERN_PERCENT_60: c_int = 8;
pub const LXW_CHART_PATTERN_PERCENT_70: c_int = 9;
pub const LXW_CHART_PATTERN_PERCENT_75: c_int = 10;
pub const LXW_CHART_PATTERN_PERCENT_80: c_int = 11;
pub const LXW_CHART_PATTERN_PERCENT_90: c_int = 12;
pub const LXW_CHART_PATTERN_LIGHT_DOWNWARD_DIAGONAL: c_int = 13;
pub const LXW_CHART_PATTERN_LIGHT_UPWARD_DIAGONAL: c_int = 14;
pub const LXW_CHART_PATTERN_DARK_DOWNWARD_DIAGONAL: c_int = 15;
pub const LXW_CHART_PATTERN_DARK_UPWARD_DIAGONAL: c_int = 16;
pub const LXW_CHART_PATTERN_WIDE_DOWNWARD_DIAGONAL: c_int = 17;
pub const LXW_CHART_PATTERN_WIDE_UPWARD_DIAGONAL: c_int = 18;
pub const LXW_CHART_PATTERN_LIGHT_VERTICAL: c_int = 19;
pub const LXW_CHART_PATTERN_LIGHT_HORIZONTAL: c_int = 20;
pub const LXW_CHART_PATTERN_NARROW_VERTICAL: c_int = 21;
pub const LXW_CHART_PATTERN_NARROW_HORIZONTAL: c_int = 22;
pub const LXW_CHART_PATTERN_DARK_VERTICAL: c_int = 23;
pub const LXW_CHART_PATTERN_DARK_HORIZONTAL: c_int = 24;
pub const LXW_CHART_PATTERN_DASHED_DOWNWARD_DIAGONAL: c_int = 25;
pub const LXW_CHART_PATTERN_DASHED_UPWARD_DIAGONAL: c_int = 26;
pub const LXW_CHART_PATTERN_DASHED_HORIZONTAL: c_int = 27;
pub const LXW_CHART_PATTERN_DASHED_VERTICAL: c_int = 28;
pub const LXW_CHART_PATTERN_SMALL_CONFETTI: c_int = 29;
pub const LXW_CHART_PATTERN_LARGE_CONFETTI: c_int = 30;
pub const LXW_CHART_PATTERN_ZIGZAG: c_int = 31;
pub const LXW_CHART_PATTERN_WAVE: c_int = 32;
pub const LXW_CHART_PATTERN_DIAGONAL_BRICK: c_int = 33;
pub const LXW_CHART_PATTERN_HORIZONTAL_BRICK: c_int = 34;
pub const LXW_CHART_PATTERN_WEAVE: c_int = 35;
pub const LXW_CHART_PATTERN_PLAID: c_int = 36;
pub const LXW_CHART_PATTERN_DIVOT: c_int = 37;
pub const LXW_CHART_PATTERN_DOTTED_GRID: c_int = 38;
pub const LXW_CHART_PATTERN_DOTTED_DIAMOND: c_int = 39;
pub const LXW_CHART_PATTERN_SHINGLE: c_int = 40;
pub const LXW_CHART_PATTERN_TRELLIS: c_int = 41;
pub const LXW_CHART_PATTERN_SPHERE: c_int = 42;
pub const LXW_CHART_PATTERN_SMALL_GRID: c_int = 43;
pub const LXW_CHART_PATTERN_LARGE_GRID: c_int = 44;
pub const LXW_CHART_PATTERN_SMALL_CHECK: c_int = 45;
pub const LXW_CHART_PATTERN_LARGE_CHECK: c_int = 46;
pub const LXW_CHART_PATTERN_OUTLINED_DIAMOND: c_int = 47;
pub const LXW_CHART_PATTERN_SOLID_DIAMOND: c_int = 48;
pub const enum_lxw_chart_pattern_type = c_uint;
pub const lxw_chart_pattern_type = enum_lxw_chart_pattern_type;
pub const LXW_CHART_LABEL_POSITION_DEFAULT: c_int = 0;
pub const LXW_CHART_LABEL_POSITION_CENTER: c_int = 1;
pub const LXW_CHART_LABEL_POSITION_RIGHT: c_int = 2;
pub const LXW_CHART_LABEL_POSITION_LEFT: c_int = 3;
pub const LXW_CHART_LABEL_POSITION_ABOVE: c_int = 4;
pub const LXW_CHART_LABEL_POSITION_BELOW: c_int = 5;
pub const LXW_CHART_LABEL_POSITION_INSIDE_BASE: c_int = 6;
pub const LXW_CHART_LABEL_POSITION_INSIDE_END: c_int = 7;
pub const LXW_CHART_LABEL_POSITION_OUTSIDE_END: c_int = 8;
pub const LXW_CHART_LABEL_POSITION_BEST_FIT: c_int = 9;
pub const enum_lxw_chart_label_position = c_uint;
pub const lxw_chart_label_position = enum_lxw_chart_label_position;
pub const LXW_CHART_LABEL_SEPARATOR_COMMA: c_int = 0;
pub const LXW_CHART_LABEL_SEPARATOR_SEMICOLON: c_int = 1;
pub const LXW_CHART_LABEL_SEPARATOR_PERIOD: c_int = 2;
pub const LXW_CHART_LABEL_SEPARATOR_NEWLINE: c_int = 3;
pub const LXW_CHART_LABEL_SEPARATOR_SPACE: c_int = 4;
pub const enum_lxw_chart_label_separator = c_uint;
pub const lxw_chart_label_separator = enum_lxw_chart_label_separator;
pub const LXW_CHART_AXIS_TYPE_X: c_int = 0;
pub const LXW_CHART_AXIS_TYPE_Y: c_int = 1;
pub const enum_lxw_chart_axis_type = c_uint;
pub const lxw_chart_axis_type = enum_lxw_chart_axis_type;
pub const LXW_CHART_SUBTYPE_NONE: c_int = 0;
pub const LXW_CHART_SUBTYPE_STACKED: c_int = 1;
pub const LXW_CHART_SUBTYPE_STACKED_PERCENT: c_int = 2;
pub const enum_lxw_chart_subtype = c_uint;
pub const LXW_GROUPING_CLUSTERED: c_int = 0;
pub const LXW_GROUPING_STANDARD: c_int = 1;
pub const LXW_GROUPING_PERCENTSTACKED: c_int = 2;
pub const LXW_GROUPING_STACKED: c_int = 3;
pub const enum_lxw_chart_grouping = c_uint;
pub const LXW_CHART_AXIS_POSITION_DEFAULT: c_int = 0;
pub const LXW_CHART_AXIS_POSITION_ON_TICK: c_int = 1;
pub const LXW_CHART_AXIS_POSITION_BETWEEN: c_int = 2;
pub const enum_lxw_chart_axis_tick_position = c_uint;
pub const lxw_chart_axis_tick_position = enum_lxw_chart_axis_tick_position;
pub const LXW_CHART_AXIS_LABEL_POSITION_NEXT_TO: c_int = 0;
pub const LXW_CHART_AXIS_LABEL_POSITION_HIGH: c_int = 1;
pub const LXW_CHART_AXIS_LABEL_POSITION_LOW: c_int = 2;
pub const LXW_CHART_AXIS_LABEL_POSITION_NONE: c_int = 3;
pub const enum_lxw_chart_axis_label_position = c_uint;
pub const lxw_chart_axis_label_position = enum_lxw_chart_axis_label_position;
pub const LXW_CHART_AXIS_LABEL_ALIGN_CENTER: c_int = 0;
pub const LXW_CHART_AXIS_LABEL_ALIGN_LEFT: c_int = 1;
pub const LXW_CHART_AXIS_LABEL_ALIGN_RIGHT: c_int = 2;
pub const enum_lxw_chart_axis_label_alignment = c_uint;
pub const lxw_chart_axis_label_alignment = enum_lxw_chart_axis_label_alignment;
pub const LXW_CHART_AXIS_UNITS_NONE: c_int = 0;
pub const LXW_CHART_AXIS_UNITS_HUNDREDS: c_int = 1;
pub const LXW_CHART_AXIS_UNITS_THOUSANDS: c_int = 2;
pub const LXW_CHART_AXIS_UNITS_TEN_THOUSANDS: c_int = 3;
pub const LXW_CHART_AXIS_UNITS_HUNDRED_THOUSANDS: c_int = 4;
pub const LXW_CHART_AXIS_UNITS_MILLIONS: c_int = 5;
pub const LXW_CHART_AXIS_UNITS_TEN_MILLIONS: c_int = 6;
pub const LXW_CHART_AXIS_UNITS_HUNDRED_MILLIONS: c_int = 7;
pub const LXW_CHART_AXIS_UNITS_BILLIONS: c_int = 8;
pub const LXW_CHART_AXIS_UNITS_TRILLIONS: c_int = 9;
pub const enum_lxw_chart_axis_display_unit = c_uint;
pub const lxw_chart_axis_display_unit = enum_lxw_chart_axis_display_unit;
pub const LXW_CHART_AXIS_TICK_MARK_DEFAULT: c_int = 0;
pub const LXW_CHART_AXIS_TICK_MARK_NONE: c_int = 1;
pub const LXW_CHART_AXIS_TICK_MARK_INSIDE: c_int = 2;
pub const LXW_CHART_AXIS_TICK_MARK_OUTSIDE: c_int = 3;
pub const LXW_CHART_AXIS_TICK_MARK_CROSSING: c_int = 4;
pub const enum_lxw_chart_axis_tick_mark = c_uint;
pub const lxw_chart_tick_mark = enum_lxw_chart_axis_tick_mark;
pub const lxw_series_data_point = struct_lxw_series_data_point;
pub const struct_lxw_chart_legend = extern struct {
    font: [*c]lxw_chart_font,
    position: u8,
};
pub const lxw_chart_legend = struct_lxw_chart_legend;
pub const struct_lxw_chart_data_label = extern struct {
    value: [*c]u8,
    hide: u8,
    font: [*c]lxw_chart_font,
    line: [*c]lxw_chart_line,
    fill: [*c]lxw_chart_fill,
    pattern: [*c]lxw_chart_pattern,
};
pub const lxw_chart_data_label = struct_lxw_chart_data_label;
pub const LXW_CHART_BLANKS_AS_GAP: c_int = 0;
pub const LXW_CHART_BLANKS_AS_ZERO: c_int = 1;
pub const LXW_CHART_BLANKS_AS_CONNECTED: c_int = 2;
pub const enum_lxw_chart_blank = c_uint;
pub const lxw_chart_blank = enum_lxw_chart_blank;
pub const LXW_CHART_AXIS_RIGHT: c_int = 0;
pub const LXW_CHART_AXIS_LEFT: c_int = 1;
pub const LXW_CHART_AXIS_TOP: c_int = 2;
pub const LXW_CHART_AXIS_BOTTOM: c_int = 3;
pub const enum_lxw_chart_position = c_uint;
pub const LXW_CHART_ERROR_BAR_TYPE_STD_ERROR: c_int = 0;
pub const LXW_CHART_ERROR_BAR_TYPE_FIXED: c_int = 1;
pub const LXW_CHART_ERROR_BAR_TYPE_PERCENTAGE: c_int = 2;
pub const LXW_CHART_ERROR_BAR_TYPE_STD_DEV: c_int = 3;
pub const enum_lxw_chart_error_bar_type = c_uint;
pub const lxw_chart_error_bar_type = enum_lxw_chart_error_bar_type;
pub const LXW_CHART_ERROR_BAR_DIR_BOTH: c_int = 0;
pub const LXW_CHART_ERROR_BAR_DIR_PLUS: c_int = 1;
pub const LXW_CHART_ERROR_BAR_DIR_MINUS: c_int = 2;
pub const enum_lxw_chart_error_bar_direction = c_uint;
pub const lxw_chart_error_bar_direction = enum_lxw_chart_error_bar_direction;
pub const LXW_CHART_ERROR_BAR_AXIS_X: c_int = 0;
pub const LXW_CHART_ERROR_BAR_AXIS_Y: c_int = 1;
pub const enum_lxw_chart_error_bar_axis = c_uint;
pub const lxw_chart_error_bar_axis = enum_lxw_chart_error_bar_axis;
pub const LXW_CHART_ERROR_BAR_END_CAP: c_int = 0;
pub const LXW_CHART_ERROR_BAR_NO_CAP: c_int = 1;
pub const enum_lxw_chart_error_bar_cap = c_uint;
pub const lxw_chart_error_bar_cap = enum_lxw_chart_error_bar_cap;
pub const LXW_CHART_TRENDLINE_TYPE_LINEAR: c_int = 0;
pub const LXW_CHART_TRENDLINE_TYPE_LOG: c_int = 1;
pub const LXW_CHART_TRENDLINE_TYPE_POLY: c_int = 2;
pub const LXW_CHART_TRENDLINE_TYPE_POWER: c_int = 3;
pub const LXW_CHART_TRENDLINE_TYPE_EXP: c_int = 4;
pub const LXW_CHART_TRENDLINE_TYPE_AVERAGE: c_int = 5;
pub const enum_lxw_chart_trendline_type = c_uint;
pub const lxw_chart_trendline_type = enum_lxw_chart_trendline_type;
pub const lxw_chart_series = struct_lxw_chart_series;
pub const struct_lxw_chart_gridline = extern struct {
    visible: u8,
    line: [*c]lxw_chart_line,
};
pub const lxw_chart_gridline = struct_lxw_chart_gridline;
pub const struct_lxw_chart_axis = extern struct {
    title: lxw_chart_title,
    num_format: [*c]u8,
    default_num_format: [*c]u8,
    source_linked: u8,
    major_tick_mark: u8,
    minor_tick_mark: u8,
    is_horizontal: u8,
    major_gridlines: lxw_chart_gridline,
    minor_gridlines: lxw_chart_gridline,
    num_font: [*c]lxw_chart_font,
    line: [*c]lxw_chart_line,
    fill: [*c]lxw_chart_fill,
    pattern: [*c]lxw_chart_pattern,
    is_category: u8,
    is_date: u8,
    is_value: u8,
    axis_position: u8,
    position_axis: u8,
    label_position: u8,
    label_align: u8,
    hidden: u8,
    reverse: u8,
    has_min: u8,
    min: f64,
    has_max: u8,
    max: f64,
    has_major_unit: u8,
    major_unit: f64,
    has_minor_unit: u8,
    minor_unit: f64,
    interval_unit: u16,
    interval_tick: u16,
    log_base: u16,
    display_units: u8,
    display_units_visible: u8,
    has_crossing: u8,
    crossing_min: u8,
    crossing_max: u8,
    crossing: f64,
};
pub const lxw_chart_axis = struct_lxw_chart_axis;
const struct_unnamed_13 = extern struct {
    stqe_next: [*c]struct_lxw_chart,
};
const struct_unnamed_14 = extern struct {
    stqe_next: [*c]struct_lxw_chart,
};
pub const struct_lxw_chart = extern struct {
    file: [*c]FILE,
    type: u8,
    subtype: u8,
    series_index: u16,
    write_chart_type: ?*const fn ([*c]struct_lxw_chart) callconv(.C) void,
    write_plot_area: ?*const fn ([*c]struct_lxw_chart) callconv(.C) void,
    x_axis: [*c]lxw_chart_axis,
    y_axis: [*c]lxw_chart_axis,
    title: lxw_chart_title,
    id: u32,
    axis_id_1: u32,
    axis_id_2: u32,
    axis_id_3: u32,
    axis_id_4: u32,
    in_use: u8,
    chart_group: u8,
    cat_has_num_fmt: u8,
    is_chartsheet: u8,
    has_horiz_cat_axis: u8,
    has_horiz_val_axis: u8,
    style_id: u8,
    rotation: u16,
    hole_size: u16,
    no_title: u8,
    has_overlap: u8,
    overlap_y1: i8,
    overlap_y2: i8,
    gap_y1: u16,
    gap_y2: u16,
    grouping: u8,
    default_cross_between: u8,
    legend: lxw_chart_legend,
    delete_series: [*c]i16,
    delete_series_count: u16,
    default_marker: [*c]lxw_chart_marker,
    chartarea_line: [*c]lxw_chart_line,
    chartarea_fill: [*c]lxw_chart_fill,
    chartarea_pattern: [*c]lxw_chart_pattern,
    plotarea_line: [*c]lxw_chart_line,
    plotarea_fill: [*c]lxw_chart_fill,
    plotarea_pattern: [*c]lxw_chart_pattern,
    has_drop_lines: u8,
    drop_lines_line: [*c]lxw_chart_line,
    has_high_low_lines: u8,
    high_low_lines_line: [*c]lxw_chart_line,
    series_list: [*c]struct_lxw_chart_series_list,
    has_table: u8,
    has_table_vertical: u8,
    has_table_horizontal: u8,
    has_table_outline: u8,
    has_table_legend_keys: u8,
    table_font: [*c]lxw_chart_font,
    show_blanks_as: u8,
    show_hidden_data: u8,
    has_up_down_bars: u8,
    up_bar_line: [*c]lxw_chart_line,
    down_bar_line: [*c]lxw_chart_line,
    up_bar_fill: [*c]lxw_chart_fill,
    down_bar_fill: [*c]lxw_chart_fill,
    default_label_position: u8,
    is_protected: u8,
    ordered_list_pointers: struct_unnamed_13,
    list_pointers: struct_unnamed_14,
};
pub const lxw_chart = struct_lxw_chart;
pub extern fn lxw_chart_new(@"type": u8) [*c]lxw_chart;
pub extern fn lxw_chart_free(chart: [*c]lxw_chart) void;
pub extern fn lxw_chart_assemble_xml_file(chart: [*c]lxw_chart) void;
pub extern fn chart_add_series(chart: [*c]lxw_chart, categories: [*c]const u8, values: [*c]const u8) [*c]lxw_chart_series;
pub extern fn chart_series_set_categories(series: [*c]lxw_chart_series, sheetname: [*c]const u8, first_row: lxw_row_t, first_col: lxw_col_t, last_row: lxw_row_t, last_col: lxw_col_t) void;
pub extern fn chart_series_set_values(series: [*c]lxw_chart_series, sheetname: [*c]const u8, first_row: lxw_row_t, first_col: lxw_col_t, last_row: lxw_row_t, last_col: lxw_col_t) void;
pub extern fn chart_series_set_name(series: [*c]lxw_chart_series, name: [*c]const u8) void;
pub extern fn chart_series_set_name_range(series: [*c]lxw_chart_series, sheetname: [*c]const u8, row: lxw_row_t, col: lxw_col_t) void;
pub extern fn chart_series_set_line(series: [*c]lxw_chart_series, line: [*c]lxw_chart_line) void;
pub extern fn chart_series_set_fill(series: [*c]lxw_chart_series, fill: [*c]lxw_chart_fill) void;
pub extern fn chart_series_set_invert_if_negative(series: [*c]lxw_chart_series) void;
pub extern fn chart_series_set_pattern(series: [*c]lxw_chart_series, pattern: [*c]lxw_chart_pattern) void;
pub extern fn chart_series_set_marker_type(series: [*c]lxw_chart_series, @"type": u8) void;
pub extern fn chart_series_set_marker_size(series: [*c]lxw_chart_series, size: u8) void;
pub extern fn chart_series_set_marker_line(series: [*c]lxw_chart_series, line: [*c]lxw_chart_line) void;
pub extern fn chart_series_set_marker_fill(series: [*c]lxw_chart_series, fill: [*c]lxw_chart_fill) void;
pub extern fn chart_series_set_marker_pattern(series: [*c]lxw_chart_series, pattern: [*c]lxw_chart_pattern) void;
pub extern fn chart_series_set_points(series: [*c]lxw_chart_series, points: [*c][*c]lxw_chart_point) lxw_error;
pub extern fn chart_series_set_smooth(series: [*c]lxw_chart_series, smooth: u8) void;
pub extern fn chart_series_set_labels(series: [*c]lxw_chart_series) void;
pub extern fn chart_series_set_labels_options(series: [*c]lxw_chart_series, show_name: u8, show_category: u8, show_value: u8) void;
pub extern fn chart_series_set_labels_custom(series: [*c]lxw_chart_series, data_labels: [*c][*c]lxw_chart_data_label) lxw_error;
pub extern fn chart_series_set_labels_separator(series: [*c]lxw_chart_series, separator: u8) void;
pub extern fn chart_series_set_labels_position(series: [*c]lxw_chart_series, position: u8) void;
pub extern fn chart_series_set_labels_leader_line(series: [*c]lxw_chart_series) void;
pub extern fn chart_series_set_labels_legend(series: [*c]lxw_chart_series) void;
pub extern fn chart_series_set_labels_percentage(series: [*c]lxw_chart_series) void;
pub extern fn chart_series_set_labels_num_format(series: [*c]lxw_chart_series, num_format: [*c]const u8) void;
pub extern fn chart_series_set_labels_font(series: [*c]lxw_chart_series, font: [*c]lxw_chart_font) void;
pub extern fn chart_series_set_labels_line(series: [*c]lxw_chart_series, line: [*c]lxw_chart_line) void;
pub extern fn chart_series_set_labels_fill(series: [*c]lxw_chart_series, fill: [*c]lxw_chart_fill) void;
pub extern fn chart_series_set_labels_pattern(series: [*c]lxw_chart_series, pattern: [*c]lxw_chart_pattern) void;
pub extern fn chart_series_set_trendline(series: [*c]lxw_chart_series, @"type": u8, value: u8) void;
pub extern fn chart_series_set_trendline_forecast(series: [*c]lxw_chart_series, forward: f64, backward: f64) void;
pub extern fn chart_series_set_trendline_equation(series: [*c]lxw_chart_series) void;
pub extern fn chart_series_set_trendline_r_squared(series: [*c]lxw_chart_series) void;
pub extern fn chart_series_set_trendline_intercept(series: [*c]lxw_chart_series, intercept: f64) void;
pub extern fn chart_series_set_trendline_name(series: [*c]lxw_chart_series, name: [*c]const u8) void;
pub extern fn chart_series_set_trendline_line(series: [*c]lxw_chart_series, line: [*c]lxw_chart_line) void;
pub extern fn chart_series_get_error_bars(series: [*c]lxw_chart_series, axis_type: lxw_chart_error_bar_axis) [*c]lxw_series_error_bars;
pub extern fn chart_series_set_error_bars(error_bars: [*c]lxw_series_error_bars, @"type": u8, value: f64) void;
pub extern fn chart_series_set_error_bars_direction(error_bars: [*c]lxw_series_error_bars, direction: u8) void;
pub extern fn chart_series_set_error_bars_endcap(error_bars: [*c]lxw_series_error_bars, endcap: u8) void;
pub extern fn chart_series_set_error_bars_line(error_bars: [*c]lxw_series_error_bars, line: [*c]lxw_chart_line) void;
pub extern fn chart_axis_get(chart: [*c]lxw_chart, axis_type: lxw_chart_axis_type) [*c]lxw_chart_axis;
pub extern fn chart_axis_set_name(axis: [*c]lxw_chart_axis, name: [*c]const u8) void;
pub extern fn chart_axis_set_name_range(axis: [*c]lxw_chart_axis, sheetname: [*c]const u8, row: lxw_row_t, col: lxw_col_t) void;
pub extern fn chart_axis_set_name_font(axis: [*c]lxw_chart_axis, font: [*c]lxw_chart_font) void;
pub extern fn chart_axis_set_num_font(axis: [*c]lxw_chart_axis, font: [*c]lxw_chart_font) void;
pub extern fn chart_axis_set_num_format(axis: [*c]lxw_chart_axis, num_format: [*c]const u8) void;
pub extern fn chart_axis_set_line(axis: [*c]lxw_chart_axis, line: [*c]lxw_chart_line) void;
pub extern fn chart_axis_set_fill(axis: [*c]lxw_chart_axis, fill: [*c]lxw_chart_fill) void;
pub extern fn chart_axis_set_pattern(axis: [*c]lxw_chart_axis, pattern: [*c]lxw_chart_pattern) void;
pub extern fn chart_axis_set_reverse(axis: [*c]lxw_chart_axis) void;
pub extern fn chart_axis_set_crossing(axis: [*c]lxw_chart_axis, value: f64) void;
pub extern fn chart_axis_set_crossing_max(axis: [*c]lxw_chart_axis) void;
pub extern fn chart_axis_set_crossing_min(axis: [*c]lxw_chart_axis) void;
pub extern fn chart_axis_off(axis: [*c]lxw_chart_axis) void;
pub extern fn chart_axis_set_position(axis: [*c]lxw_chart_axis, position: u8) void;
pub extern fn chart_axis_set_label_position(axis: [*c]lxw_chart_axis, position: u8) void;
pub extern fn chart_axis_set_label_align(axis: [*c]lxw_chart_axis, @"align": u8) void;
pub extern fn chart_axis_set_min(axis: [*c]lxw_chart_axis, min: f64) void;
pub extern fn chart_axis_set_max(axis: [*c]lxw_chart_axis, max: f64) void;
pub extern fn chart_axis_set_log_base(axis: [*c]lxw_chart_axis, log_base: u16) void;
pub extern fn chart_axis_set_major_tick_mark(axis: [*c]lxw_chart_axis, @"type": u8) void;
pub extern fn chart_axis_set_minor_tick_mark(axis: [*c]lxw_chart_axis, @"type": u8) void;
pub extern fn chart_axis_set_interval_unit(axis: [*c]lxw_chart_axis, unit: u16) void;
pub extern fn chart_axis_set_interval_tick(axis: [*c]lxw_chart_axis, unit: u16) void;
pub extern fn chart_axis_set_major_unit(axis: [*c]lxw_chart_axis, unit: f64) void;
pub extern fn chart_axis_set_minor_unit(axis: [*c]lxw_chart_axis, unit: f64) void;
pub extern fn chart_axis_set_display_units(axis: [*c]lxw_chart_axis, units: u8) void;
pub extern fn chart_axis_set_display_units_visible(axis: [*c]lxw_chart_axis, visible: u8) void;
pub extern fn chart_axis_major_gridlines_set_visible(axis: [*c]lxw_chart_axis, visible: u8) void;
pub extern fn chart_axis_minor_gridlines_set_visible(axis: [*c]lxw_chart_axis, visible: u8) void;
pub extern fn chart_axis_major_gridlines_set_line(axis: [*c]lxw_chart_axis, line: [*c]lxw_chart_line) void;
pub extern fn chart_axis_minor_gridlines_set_line(axis: [*c]lxw_chart_axis, line: [*c]lxw_chart_line) void;
pub extern fn chart_title_set_name(chart: [*c]lxw_chart, name: [*c]const u8) void;
pub extern fn chart_title_set_name_range(chart: [*c]lxw_chart, sheetname: [*c]const u8, row: lxw_row_t, col: lxw_col_t) void;
pub extern fn chart_title_set_name_font(chart: [*c]lxw_chart, font: [*c]lxw_chart_font) void;
pub extern fn chart_title_off(chart: [*c]lxw_chart) void;
pub extern fn chart_legend_set_position(chart: [*c]lxw_chart, position: u8) void;
pub extern fn chart_legend_set_font(chart: [*c]lxw_chart, font: [*c]lxw_chart_font) void;
pub extern fn chart_legend_delete_series(chart: [*c]lxw_chart, delete_series: [*c]i16) lxw_error;
pub extern fn chart_chartarea_set_line(chart: [*c]lxw_chart, line: [*c]lxw_chart_line) void;
pub extern fn chart_chartarea_set_fill(chart: [*c]lxw_chart, fill: [*c]lxw_chart_fill) void;
pub extern fn chart_chartarea_set_pattern(chart: [*c]lxw_chart, pattern: [*c]lxw_chart_pattern) void;
pub extern fn chart_plotarea_set_line(chart: [*c]lxw_chart, line: [*c]lxw_chart_line) void;
pub extern fn chart_plotarea_set_fill(chart: [*c]lxw_chart, fill: [*c]lxw_chart_fill) void;
pub extern fn chart_plotarea_set_pattern(chart: [*c]lxw_chart, pattern: [*c]lxw_chart_pattern) void;
pub extern fn chart_set_style(chart: [*c]lxw_chart, style_id: u8) void;
pub extern fn chart_set_table(chart: [*c]lxw_chart) void;
pub extern fn chart_set_table_grid(chart: [*c]lxw_chart, horizontal: u8, vertical: u8, outline: u8, legend_keys: u8) void;
pub extern fn chart_set_table_font(chart: [*c]lxw_chart, font: [*c]lxw_chart_font) void;
pub extern fn chart_set_up_down_bars(chart: [*c]lxw_chart) void;
pub extern fn chart_set_up_down_bars_format(chart: [*c]lxw_chart, up_bar_line: [*c]lxw_chart_line, up_bar_fill: [*c]lxw_chart_fill, down_bar_line: [*c]lxw_chart_line, down_bar_fill: [*c]lxw_chart_fill) void;
pub extern fn chart_set_drop_lines(chart: [*c]lxw_chart, line: [*c]lxw_chart_line) void;
pub extern fn chart_set_high_low_lines(chart: [*c]lxw_chart, line: [*c]lxw_chart_line) void;
pub extern fn chart_set_series_overlap(chart: [*c]lxw_chart, overlap: i8) void;
pub extern fn chart_set_series_gap(chart: [*c]lxw_chart, gap: u16) void;
pub extern fn chart_show_blanks_as(chart: [*c]lxw_chart, option: u8) void;
pub extern fn chart_show_hidden_data(chart: [*c]lxw_chart) void;
pub extern fn chart_set_rotation(chart: [*c]lxw_chart, rotation: u16) void;
pub extern fn chart_set_hole_size(chart: [*c]lxw_chart, size: u8) void;
pub extern fn lxw_chart_add_data_cache(range: [*c]lxw_series_range, data: [*c]u8, rows: u16, cols: u8, col: u8) lxw_error;
pub const struct_lxw_drawing_coords = extern struct {
    col: u32,
    row: u32,
    col_offset: f64,
    row_offset: f64,
};
const struct_unnamed_15 = extern struct {
    stqe_next: [*c]struct_lxw_drawing_object,
};
pub const struct_lxw_drawing_object = extern struct {
    type: u8,
    anchor: u8,
    from: struct_lxw_drawing_coords,
    to: struct_lxw_drawing_coords,
    col_absolute: u32,
    row_absolute: u32,
    width: u32,
    height: u32,
    shape: u8,
    rel_index: u32,
    url_rel_index: u32,
    description: [*c]u8,
    tip: [*c]u8,
    decorative: u8,
    list_pointers: struct_unnamed_15,
};
pub const struct_lxw_drawing_objects = extern struct {
    stqh_first: [*c]struct_lxw_drawing_object,
    stqh_last: [*c][*c]struct_lxw_drawing_object,
};
pub const LXW_DRAWING_NONE: c_int = 0;
pub const LXW_DRAWING_IMAGE: c_int = 1;
pub const LXW_DRAWING_CHART: c_int = 2;
pub const LXW_DRAWING_SHAPE: c_int = 3;
pub const enum_lxw_drawing_types = c_uint;
pub const LXW_IMAGE_UNKNOWN: c_int = 0;
pub const LXW_IMAGE_PNG: c_int = 1;
pub const LXW_IMAGE_JPEG: c_int = 2;
pub const LXW_IMAGE_BMP: c_int = 3;
pub const LXW_IMAGE_GIF: c_int = 4;
pub const enum_image_types = c_uint;
pub const lxw_drawing_coords = struct_lxw_drawing_coords;
pub const lxw_drawing_object = struct_lxw_drawing_object;
pub const struct_lxw_drawing = extern struct {
    file: [*c]FILE,
    embedded: u8,
    orientation: u8,
    drawing_objects: [*c]struct_lxw_drawing_objects,
};
pub const lxw_drawing = struct_lxw_drawing;
pub extern fn lxw_drawing_new() [*c]lxw_drawing;
pub extern fn lxw_drawing_free(drawing: [*c]lxw_drawing) void;
pub extern fn lxw_drawing_assemble_xml_file(self: [*c]lxw_drawing) void;
pub extern fn lxw_free_drawing_object(drawing_object: [*c]struct_lxw_drawing_object) void;
pub extern fn lxw_add_drawing_object(drawing: [*c]lxw_drawing, drawing_object: [*c]lxw_drawing_object) void;
pub const struct_lxw_styles = extern struct {
    file: [*c]FILE,
    font_count: u32,
    xf_count: u32,
    dxf_count: u32,
    num_format_count: u32,
    border_count: u32,
    fill_count: u32,
    xf_formats: [*c]struct_lxw_formats,
    dxf_formats: [*c]struct_lxw_formats,
    has_hyperlink: u8,
    hyperlink_font_id: u16,
    has_comments: u8,
};
pub const lxw_styles = struct_lxw_styles;
pub extern fn lxw_styles_new() [*c]lxw_styles;
pub extern fn lxw_styles_free(styles: [*c]lxw_styles) void;
pub extern fn lxw_styles_assemble_xml_file(self: [*c]lxw_styles) void;
pub extern fn lxw_styles_write_string_fragment(self: [*c]lxw_styles, string: [*c]u8) void;
pub extern fn lxw_styles_write_rich_font(styles: [*c]lxw_styles, format: [*c]lxw_format) void;
const struct_unnamed_17 = extern struct {
    stqe_next: [*c]struct_xml_attribute,
};
pub const struct_xml_attribute = extern struct {
    key: [2080]u8,
    value: [2080]u8,
    list_entries: struct_unnamed_17,
};
pub const struct_xml_attribute_list = extern struct {
    stqh_first: [*c]struct_xml_attribute,
    stqh_last: [*c][*c]struct_xml_attribute,
};
pub extern fn lxw_new_attribute_str(key: [*c]const u8, value: [*c]const u8) [*c]struct_xml_attribute;
pub extern fn lxw_new_attribute_int(key: [*c]const u8, value: u32) [*c]struct_xml_attribute;
pub extern fn lxw_new_attribute_dbl(key: [*c]const u8, value: f64) [*c]struct_xml_attribute;
pub extern fn lxw_xml_declaration(xmlfile: [*c]FILE) void;
pub extern fn lxw_xml_start_tag(xmlfile: [*c]FILE, tag: [*c]const u8, attributes: [*c]struct_xml_attribute_list) void;
pub extern fn lxw_xml_start_tag_unencoded(xmlfile: [*c]FILE, tag: [*c]const u8, attributes: [*c]struct_xml_attribute_list) void;
pub extern fn lxw_xml_end_tag(xmlfile: [*c]FILE, tag: [*c]const u8) void;
pub extern fn lxw_xml_empty_tag(xmlfile: [*c]FILE, tag: [*c]const u8, attributes: [*c]struct_xml_attribute_list) void;
pub extern fn lxw_xml_empty_tag_unencoded(xmlfile: [*c]FILE, tag: [*c]const u8, attributes: [*c]struct_xml_attribute_list) void;
pub extern fn lxw_xml_data_element(xmlfile: [*c]FILE, tag: [*c]const u8, data: [*c]const u8, attributes: [*c]struct_xml_attribute_list) void;
pub extern fn lxw_xml_rich_si_element(xmlfile: [*c]FILE, string: [*c]const u8) void;
pub extern fn lxw_has_control_characters(string: [*c]const u8) u8;
pub extern fn lxw_escape_control_characters(string: [*c]const u8) [*c]u8;
pub extern fn lxw_escape_url_characters(string: [*c]const u8, escape_hash: u8) [*c]u8;
pub extern fn lxw_escape_data(data: [*c]const u8) [*c]u8;
pub extern fn lxw_version() [*c]const u8;
pub extern fn lxw_version_id() u16;
pub extern fn lxw_strerror(error_num: lxw_error) [*c]u8;
pub extern fn lxw_quote_sheetname(str: [*c]const u8) [*c]u8;
pub extern fn lxw_col_to_name(col_name: [*c]u8, col_num: lxw_col_t, absolute: u8) void;
pub extern fn lxw_rowcol_to_cell(cell_name: [*c]u8, row: lxw_row_t, col: lxw_col_t) void;
pub extern fn lxw_rowcol_to_cell_abs(cell_name: [*c]u8, row: lxw_row_t, col: lxw_col_t, abs_row: u8, abs_col: u8) void;
pub extern fn lxw_rowcol_to_range(range: [*c]u8, first_row: lxw_row_t, first_col: lxw_col_t, last_row: lxw_row_t, last_col: lxw_col_t) void;
pub extern fn lxw_rowcol_to_range_abs(range: [*c]u8, first_row: lxw_row_t, first_col: lxw_col_t, last_row: lxw_row_t, last_col: lxw_col_t) void;
pub extern fn lxw_rowcol_to_formula_abs(formula: [*c]u8, sheetname: [*c]const u8, first_row: lxw_row_t, first_col: lxw_col_t, last_row: lxw_row_t, last_col: lxw_col_t) void;
pub extern fn lxw_name_to_row(row_str: [*c]const u8) u32;
pub extern fn lxw_name_to_col(col_str: [*c]const u8) u16;
pub extern fn lxw_name_to_row_2(row_str: [*c]const u8) u32;
pub extern fn lxw_name_to_col_2(col_str: [*c]const u8) u16;
pub extern fn lxw_datetime_to_excel_datetime(datetime: [*c]lxw_datetime) f64;
pub extern fn lxw_datetime_to_excel_date_epoch(datetime: [*c]lxw_datetime, date_1904: u8) f64;
pub extern fn lxw_unixtime_to_excel_date(unixtime: i64) f64;
pub extern fn lxw_unixtime_to_excel_date_epoch(unixtime: i64, date_1904: u8) f64;
pub extern fn lxw_strdup(str: [*c]const u8) [*c]u8;
pub extern fn lxw_strdup_formula(formula: [*c]const u8) [*c]u8;
pub extern fn lxw_utf8_strlen(str: [*c]const u8) usize;
pub extern fn lxw_str_tolower(str: [*c]u8) void;
pub extern fn lxw_tmpfile(tmpdir: [*c]u8) [*c]FILE;
pub extern fn lxw_get_filehandle(buf: [*c][*c]u8, size: [*c]usize, tmpdir: [*c]u8) [*c]FILE;
pub extern fn lxw_fopen(filename: [*c]const u8, mode: [*c]const u8) [*c]FILE;
pub extern fn lxw_hash_password(password: [*c]const u8) u16;
const struct_unnamed_18 = extern struct {
    stqe_next: [*c]struct_lxw_rel_tuple,
};
pub const struct_lxw_rel_tuple = extern struct {
    type: [*c]u8,
    target: [*c]u8,
    target_mode: [*c]u8,
    list_pointers: struct_unnamed_18,
};
pub const struct_lxw_rel_tuples = extern struct {
    stqh_first: [*c]struct_lxw_rel_tuple,
    stqh_last: [*c][*c]struct_lxw_rel_tuple,
};
pub const lxw_rel_tuple = struct_lxw_rel_tuple;
pub const struct_lxw_relationships = extern struct {
    file: [*c]FILE,
    rel_id: u32,
    relationships: [*c]struct_lxw_rel_tuples,
};
pub const lxw_relationships = struct_lxw_relationships;
pub extern fn lxw_relationships_new() [*c]lxw_relationships;
pub extern fn lxw_free_relationships(relationships: [*c]lxw_relationships) void;
pub extern fn lxw_relationships_assemble_xml_file(self: [*c]lxw_relationships) void;
pub extern fn lxw_add_document_relationship(self: [*c]lxw_relationships, @"type": [*c]const u8, target: [*c]const u8) void;
pub extern fn lxw_add_package_relationship(self: [*c]lxw_relationships, @"type": [*c]const u8, target: [*c]const u8) void;
pub extern fn lxw_add_ms_package_relationship(self: [*c]lxw_relationships, @"type": [*c]const u8, target: [*c]const u8) void;
pub extern fn lxw_add_worksheet_relationship(self: [*c]lxw_relationships, @"type": [*c]const u8, target: [*c]const u8, target_mode: [*c]const u8) void;
pub const LXW_HIDE_ALL_GRIDLINES: c_int = 0;
pub const LXW_SHOW_SCREEN_GRIDLINES: c_int = 1;
pub const LXW_SHOW_PRINT_GRIDLINES: c_int = 2;
pub const LXW_SHOW_ALL_GRIDLINES: c_int = 3;
pub const enum_lxw_gridlines = c_uint;
pub const LXW_VALIDATION_DEFAULT: c_int = 0;
pub const LXW_VALIDATION_OFF: c_int = 1;
pub const LXW_VALIDATION_ON: c_int = 2;
pub const enum_lxw_validation_boolean = c_uint;
pub const LXW_VALIDATION_TYPE_NONE: c_int = 0;
pub const LXW_VALIDATION_TYPE_INTEGER: c_int = 1;
pub const LXW_VALIDATION_TYPE_INTEGER_FORMULA: c_int = 2;
pub const LXW_VALIDATION_TYPE_DECIMAL: c_int = 3;
pub const LXW_VALIDATION_TYPE_DECIMAL_FORMULA: c_int = 4;
pub const LXW_VALIDATION_TYPE_LIST: c_int = 5;
pub const LXW_VALIDATION_TYPE_LIST_FORMULA: c_int = 6;
pub const LXW_VALIDATION_TYPE_DATE: c_int = 7;
pub const LXW_VALIDATION_TYPE_DATE_FORMULA: c_int = 8;
pub const LXW_VALIDATION_TYPE_DATE_NUMBER: c_int = 9;
pub const LXW_VALIDATION_TYPE_TIME: c_int = 10;
pub const LXW_VALIDATION_TYPE_TIME_FORMULA: c_int = 11;
pub const LXW_VALIDATION_TYPE_TIME_NUMBER: c_int = 12;
pub const LXW_VALIDATION_TYPE_LENGTH: c_int = 13;
pub const LXW_VALIDATION_TYPE_LENGTH_FORMULA: c_int = 14;
pub const LXW_VALIDATION_TYPE_CUSTOM_FORMULA: c_int = 15;
pub const LXW_VALIDATION_TYPE_ANY: c_int = 16;
pub const enum_lxw_validation_types = c_uint;
pub const LXW_VALIDATION_CRITERIA_NONE: c_int = 0;
pub const LXW_VALIDATION_CRITERIA_BETWEEN: c_int = 1;
pub const LXW_VALIDATION_CRITERIA_NOT_BETWEEN: c_int = 2;
pub const LXW_VALIDATION_CRITERIA_EQUAL_TO: c_int = 3;
pub const LXW_VALIDATION_CRITERIA_NOT_EQUAL_TO: c_int = 4;
pub const LXW_VALIDATION_CRITERIA_GREATER_THAN: c_int = 5;
pub const LXW_VALIDATION_CRITERIA_LESS_THAN: c_int = 6;
pub const LXW_VALIDATION_CRITERIA_GREATER_THAN_OR_EQUAL_TO: c_int = 7;
pub const LXW_VALIDATION_CRITERIA_LESS_THAN_OR_EQUAL_TO: c_int = 8;
pub const enum_lxw_validation_criteria = c_uint;
pub const LXW_VALIDATION_ERROR_TYPE_STOP: c_int = 0;
pub const LXW_VALIDATION_ERROR_TYPE_WARNING: c_int = 1;
pub const LXW_VALIDATION_ERROR_TYPE_INFORMATION: c_int = 2;
pub const enum_lxw_validation_error_types = c_uint;
pub const LXW_COMMENT_DISPLAY_DEFAULT: c_int = 0;
pub const LXW_COMMENT_DISPLAY_HIDDEN: c_int = 1;
pub const LXW_COMMENT_DISPLAY_VISIBLE: c_int = 2;
pub const enum_lxw_comment_display_types = c_uint;
pub const LXW_CONDITIONAL_TYPE_NONE: c_int = 0;
pub const LXW_CONDITIONAL_TYPE_CELL: c_int = 1;
pub const LXW_CONDITIONAL_TYPE_TEXT: c_int = 2;
pub const LXW_CONDITIONAL_TYPE_TIME_PERIOD: c_int = 3;
pub const LXW_CONDITIONAL_TYPE_AVERAGE: c_int = 4;
pub const LXW_CONDITIONAL_TYPE_DUPLICATE: c_int = 5;
pub const LXW_CONDITIONAL_TYPE_UNIQUE: c_int = 6;
pub const LXW_CONDITIONAL_TYPE_TOP: c_int = 7;
pub const LXW_CONDITIONAL_TYPE_BOTTOM: c_int = 8;
pub const LXW_CONDITIONAL_TYPE_BLANKS: c_int = 9;
pub const LXW_CONDITIONAL_TYPE_NO_BLANKS: c_int = 10;
pub const LXW_CONDITIONAL_TYPE_ERRORS: c_int = 11;
pub const LXW_CONDITIONAL_TYPE_NO_ERRORS: c_int = 12;
pub const LXW_CONDITIONAL_TYPE_FORMULA: c_int = 13;
pub const LXW_CONDITIONAL_2_COLOR_SCALE: c_int = 14;
pub const LXW_CONDITIONAL_3_COLOR_SCALE: c_int = 15;
pub const LXW_CONDITIONAL_DATA_BAR: c_int = 16;
pub const LXW_CONDITIONAL_TYPE_ICON_SETS: c_int = 17;
pub const LXW_CONDITIONAL_TYPE_LAST: c_int = 18;
pub const enum_lxw_conditional_format_types = c_uint;
pub const LXW_CONDITIONAL_CRITERIA_NONE: c_int = 0;
pub const LXW_CONDITIONAL_CRITERIA_EQUAL_TO: c_int = 1;
pub const LXW_CONDITIONAL_CRITERIA_NOT_EQUAL_TO: c_int = 2;
pub const LXW_CONDITIONAL_CRITERIA_GREATER_THAN: c_int = 3;
pub const LXW_CONDITIONAL_CRITERIA_LESS_THAN: c_int = 4;
pub const LXW_CONDITIONAL_CRITERIA_GREATER_THAN_OR_EQUAL_TO: c_int = 5;
pub const LXW_CONDITIONAL_CRITERIA_LESS_THAN_OR_EQUAL_TO: c_int = 6;
pub const LXW_CONDITIONAL_CRITERIA_BETWEEN: c_int = 7;
pub const LXW_CONDITIONAL_CRITERIA_NOT_BETWEEN: c_int = 8;
pub const LXW_CONDITIONAL_CRITERIA_TEXT_CONTAINING: c_int = 9;
pub const LXW_CONDITIONAL_CRITERIA_TEXT_NOT_CONTAINING: c_int = 10;
pub const LXW_CONDITIONAL_CRITERIA_TEXT_BEGINS_WITH: c_int = 11;
pub const LXW_CONDITIONAL_CRITERIA_TEXT_ENDS_WITH: c_int = 12;
pub const LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_YESTERDAY: c_int = 13;
pub const LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_TODAY: c_int = 14;
pub const LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_TOMORROW: c_int = 15;
pub const LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_LAST_7_DAYS: c_int = 16;
pub const LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_LAST_WEEK: c_int = 17;
pub const LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_THIS_WEEK: c_int = 18;
pub const LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_NEXT_WEEK: c_int = 19;
pub const LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_LAST_MONTH: c_int = 20;
pub const LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_THIS_MONTH: c_int = 21;
pub const LXW_CONDITIONAL_CRITERIA_TIME_PERIOD_NEXT_MONTH: c_int = 22;
pub const LXW_CONDITIONAL_CRITERIA_AVERAGE_ABOVE: c_int = 23;
pub const LXW_CONDITIONAL_CRITERIA_AVERAGE_BELOW: c_int = 24;
pub const LXW_CONDITIONAL_CRITERIA_AVERAGE_ABOVE_OR_EQUAL: c_int = 25;
pub const LXW_CONDITIONAL_CRITERIA_AVERAGE_BELOW_OR_EQUAL: c_int = 26;
pub const LXW_CONDITIONAL_CRITERIA_AVERAGE_1_STD_DEV_ABOVE: c_int = 27;
pub const LXW_CONDITIONAL_CRITERIA_AVERAGE_1_STD_DEV_BELOW: c_int = 28;
pub const LXW_CONDITIONAL_CRITERIA_AVERAGE_2_STD_DEV_ABOVE: c_int = 29;
pub const LXW_CONDITIONAL_CRITERIA_AVERAGE_2_STD_DEV_BELOW: c_int = 30;
pub const LXW_CONDITIONAL_CRITERIA_AVERAGE_3_STD_DEV_ABOVE: c_int = 31;
pub const LXW_CONDITIONAL_CRITERIA_AVERAGE_3_STD_DEV_BELOW: c_int = 32;
pub const LXW_CONDITIONAL_CRITERIA_TOP_OR_BOTTOM_PERCENT: c_int = 33;
pub const enum_lxw_conditional_criteria = c_uint;
pub const LXW_CONDITIONAL_RULE_TYPE_NONE: c_int = 0;
pub const LXW_CONDITIONAL_RULE_TYPE_MINIMUM: c_int = 1;
pub const LXW_CONDITIONAL_RULE_TYPE_NUMBER: c_int = 2;
pub const LXW_CONDITIONAL_RULE_TYPE_PERCENT: c_int = 3;
pub const LXW_CONDITIONAL_RULE_TYPE_PERCENTILE: c_int = 4;
pub const LXW_CONDITIONAL_RULE_TYPE_FORMULA: c_int = 5;
pub const LXW_CONDITIONAL_RULE_TYPE_MAXIMUM: c_int = 6;
pub const LXW_CONDITIONAL_RULE_TYPE_AUTO_MIN: c_int = 7;
pub const LXW_CONDITIONAL_RULE_TYPE_AUTO_MAX: c_int = 8;
pub const enum_lxw_conditional_format_rule_types = c_uint;
pub const LXW_CONDITIONAL_BAR_DIRECTION_CONTEXT: c_int = 0;
pub const LXW_CONDITIONAL_BAR_DIRECTION_RIGHT_TO_LEFT: c_int = 1;
pub const LXW_CONDITIONAL_BAR_DIRECTION_LEFT_TO_RIGHT: c_int = 2;
pub const enum_lxw_conditional_format_bar_direction = c_uint;
pub const LXW_CONDITIONAL_BAR_AXIS_AUTOMATIC: c_int = 0;
pub const LXW_CONDITIONAL_BAR_AXIS_MIDPOINT: c_int = 1;
pub const LXW_CONDITIONAL_BAR_AXIS_NONE: c_int = 2;
pub const enum_lxw_conditional_bar_axis_position = c_uint;
pub const LXW_CONDITIONAL_ICONS_3_ARROWS_COLORED: c_int = 0;
pub const LXW_CONDITIONAL_ICONS_3_ARROWS_GRAY: c_int = 1;
pub const LXW_CONDITIONAL_ICONS_3_FLAGS: c_int = 2;
pub const LXW_CONDITIONAL_ICONS_3_TRAFFIC_LIGHTS_UNRIMMED: c_int = 3;
pub const LXW_CONDITIONAL_ICONS_3_TRAFFIC_LIGHTS_RIMMED: c_int = 4;
pub const LXW_CONDITIONAL_ICONS_3_SIGNS: c_int = 5;
pub const LXW_CONDITIONAL_ICONS_3_SYMBOLS_CIRCLED: c_int = 6;
pub const LXW_CONDITIONAL_ICONS_3_SYMBOLS_UNCIRCLED: c_int = 7;
pub const LXW_CONDITIONAL_ICONS_4_ARROWS_COLORED: c_int = 8;
pub const LXW_CONDITIONAL_ICONS_4_ARROWS_GRAY: c_int = 9;
pub const LXW_CONDITIONAL_ICONS_4_RED_TO_BLACK: c_int = 10;
pub const LXW_CONDITIONAL_ICONS_4_RATINGS: c_int = 11;
pub const LXW_CONDITIONAL_ICONS_4_TRAFFIC_LIGHTS: c_int = 12;
pub const LXW_CONDITIONAL_ICONS_5_ARROWS_COLORED: c_int = 13;
pub const LXW_CONDITIONAL_ICONS_5_ARROWS_GRAY: c_int = 14;
pub const LXW_CONDITIONAL_ICONS_5_RATINGS: c_int = 15;
pub const LXW_CONDITIONAL_ICONS_5_QUARTERS: c_int = 16;
pub const enum_lxw_conditional_icon_types = c_uint;
pub const LXW_TABLE_STYLE_TYPE_DEFAULT: c_int = 0;
pub const LXW_TABLE_STYLE_TYPE_LIGHT: c_int = 1;
pub const LXW_TABLE_STYLE_TYPE_MEDIUM: c_int = 2;
pub const LXW_TABLE_STYLE_TYPE_DARK: c_int = 3;
pub const enum_lxw_table_style_type = c_uint;
pub const LXW_TABLE_FUNCTION_NONE: c_int = 0;
pub const LXW_TABLE_FUNCTION_AVERAGE: c_int = 101;
pub const LXW_TABLE_FUNCTION_COUNT_NUMS: c_int = 102;
pub const LXW_TABLE_FUNCTION_COUNT: c_int = 103;
pub const LXW_TABLE_FUNCTION_MAX: c_int = 104;
pub const LXW_TABLE_FUNCTION_MIN: c_int = 105;
pub const LXW_TABLE_FUNCTION_STD_DEV: c_int = 107;
pub const LXW_TABLE_FUNCTION_SUM: c_int = 109;
pub const LXW_TABLE_FUNCTION_VAR: c_int = 110;
pub const enum_lxw_table_total_functions = c_uint;
pub const LXW_FILTER_CRITERIA_NONE: c_int = 0;
pub const LXW_FILTER_CRITERIA_EQUAL_TO: c_int = 1;
pub const LXW_FILTER_CRITERIA_NOT_EQUAL_TO: c_int = 2;
pub const LXW_FILTER_CRITERIA_GREATER_THAN: c_int = 3;
pub const LXW_FILTER_CRITERIA_LESS_THAN: c_int = 4;
pub const LXW_FILTER_CRITERIA_GREATER_THAN_OR_EQUAL_TO: c_int = 5;
pub const LXW_FILTER_CRITERIA_LESS_THAN_OR_EQUAL_TO: c_int = 6;
pub const LXW_FILTER_CRITERIA_BLANKS: c_int = 7;
pub const LXW_FILTER_CRITERIA_NON_BLANKS: c_int = 8;
pub const enum_lxw_filter_criteria = c_uint;
pub const LXW_FILTER_AND: c_int = 0;
pub const LXW_FILTER_OR: c_int = 1;
pub const enum_lxw_filter_operator = c_uint;
pub const LXW_FILTER_TYPE_NONE: c_int = 0;
pub const LXW_FILTER_TYPE_SINGLE: c_int = 1;
pub const LXW_FILTER_TYPE_AND: c_int = 2;
pub const LXW_FILTER_TYPE_OR: c_int = 3;
pub const LXW_FILTER_TYPE_STRING_LIST: c_int = 4;
pub const enum_lxw_filter_type = c_uint;
pub const LXW_OBJECT_POSITION_DEFAULT: c_int = 0;
pub const LXW_OBJECT_MOVE_AND_SIZE: c_int = 1;
pub const LXW_OBJECT_MOVE_DONT_SIZE: c_int = 2;
pub const LXW_OBJECT_DONT_MOVE_DONT_SIZE: c_int = 3;
pub const LXW_OBJECT_MOVE_AND_SIZE_AFTER: c_int = 4;
pub const enum_lxw_object_position = c_uint;
pub const LXW_IGNORE_NUMBER_STORED_AS_TEXT: c_int = 1;
pub const LXW_IGNORE_EVAL_ERROR: c_int = 2;
pub const LXW_IGNORE_FORMULA_DIFFERS: c_int = 3;
pub const LXW_IGNORE_FORMULA_RANGE: c_int = 4;
pub const LXW_IGNORE_FORMULA_UNLOCKED: c_int = 5;
pub const LXW_IGNORE_EMPTY_CELL_REFERENCE: c_int = 6;
pub const LXW_IGNORE_LIST_DATA_VALIDATION: c_int = 7;
pub const LXW_IGNORE_CALCULATED_COLUMN: c_int = 8;
pub const LXW_IGNORE_TWO_DIGIT_TEXT_YEAR: c_int = 9;
pub const LXW_IGNORE_LAST_OPTION: c_int = 10;
pub const enum_lxw_ignore_errors = c_uint;
pub const NUMBER_CELL: c_int = 1;
pub const STRING_CELL: c_int = 2;
pub const INLINE_STRING_CELL: c_int = 3;
pub const INLINE_RICH_STRING_CELL: c_int = 4;
pub const FORMULA_CELL: c_int = 5;
pub const ARRAY_FORMULA_CELL: c_int = 6;
pub const DYNAMIC_ARRAY_FORMULA_CELL: c_int = 7;
pub const BLANK_CELL: c_int = 8;
pub const BOOLEAN_CELL: c_int = 9;
pub const COMMENT: c_int = 10;
pub const HYPERLINK_URL: c_int = 11;
pub const HYPERLINK_INTERNAL: c_int = 12;
pub const HYPERLINK_EXTERNAL: c_int = 13;
pub const enum_cell_types = c_uint;
pub const NO_PANES: c_int = 0;
pub const FREEZE_PANES: c_int = 1;
pub const SPLIT_PANES: c_int = 2;
pub const FREEZE_SPLIT_PANES: c_int = 3;
pub const enum_pane_types = c_uint;
pub const HEADER_LEFT: c_int = 0;
pub const HEADER_CENTER: c_int = 1;
pub const HEADER_RIGHT: c_int = 2;
pub const FOOTER_LEFT: c_int = 3;
pub const FOOTER_CENTER: c_int = 4;
pub const FOOTER_RIGHT: c_int = 5;
pub const enum_lxw_image_position = c_uint;
const struct_unnamed_19 = extern struct {
    stqe_next: [*c]struct_lxw_vml_obj,
};
pub const struct_lxw_vml_obj = extern struct {
    row: lxw_row_t,
    col: lxw_col_t,
    start_row: lxw_row_t,
    start_col: lxw_col_t,
    x_offset: i32,
    y_offset: i32,
    col_absolute: u32,
    row_absolute: u32,
    width: u32,
    height: u32,
    x_dpi: f64,
    y_dpi: f64,
    color: lxw_color_t,
    font_family: u8,
    visible: u8,
    author_id: u32,
    rel_index: u32,
    font_size: f64,
    from: struct_lxw_drawing_coords,
    to: struct_lxw_drawing_coords,
    author: [*c]u8,
    font_name: [*c]u8,
    text: [*c]u8,
    image_position: [*c]u8,
    name: [*c]u8,
    macro: [*c]u8,
    list_pointers: struct_unnamed_19,
};
pub const lxw_vml_obj = struct_lxw_vml_obj;
const union_unnamed_20 = extern union {
    number: f64,
    string_id: i32,
    string: [*c]u8,
};
const struct_unnamed_21 = extern struct {
    rbe_left: [*c]struct_lxw_cell,
    rbe_right: [*c]struct_lxw_cell,
    rbe_parent: [*c]struct_lxw_cell,
    rbe_color: c_int,
};
pub const struct_lxw_cell = extern struct {
    row_num: lxw_row_t,
    col_num: lxw_col_t,
    type: enum_cell_types,
    format: [*c]lxw_format,
    comment: [*c]lxw_vml_obj,
    u: union_unnamed_20,
    formula_result: f64,
    user_data1: [*c]u8,
    user_data2: [*c]u8,
    sst_string: [*c]u8,
    tree_pointers: struct_unnamed_21,
};
pub const struct_lxw_table_cells = extern struct {
    rbh_root: [*c]struct_lxw_cell,
};
const struct_unnamed_22 = extern struct {
    rbe_left: [*c]struct_lxw_drawing_rel_id,
    rbe_right: [*c]struct_lxw_drawing_rel_id,
    rbe_parent: [*c]struct_lxw_drawing_rel_id,
    rbe_color: c_int,
};
pub const struct_lxw_drawing_rel_id = extern struct {
    id: u32,
    target: [*c]u8,
    tree_pointers: struct_unnamed_22,
};
pub const struct_lxw_drawing_rel_ids = extern struct {
    rbh_root: [*c]struct_lxw_drawing_rel_id,
};
pub const struct_lxw_vml_drawing_rel_ids = extern struct {
    rbh_root: [*c]struct_lxw_drawing_rel_id,
};
const struct_unnamed_23 = extern struct {
    stqe_next: [*c]struct_lxw_cond_format_obj,
};
pub const struct_lxw_cond_format_obj = extern struct {
    type: u8,
    criteria: u8,
    min_value: f64,
    min_value_string: [*c]u8,
    min_rule_type: u8,
    min_color: lxw_color_t,
    mid_value: f64,
    mid_value_string: [*c]u8,
    mid_value_type: u8,
    mid_rule_type: u8,
    mid_color: lxw_color_t,
    max_value: f64,
    max_value_string: [*c]u8,
    max_value_type: u8,
    max_rule_type: u8,
    max_color: lxw_color_t,
    data_bar_2010: u8,
    auto_min: u8,
    auto_max: u8,
    bar_only: u8,
    bar_solid: u8,
    bar_negative_color_same: u8,
    bar_negative_border_color_same: u8,
    bar_no_border: u8,
    bar_direction: u8,
    bar_axis_position: u8,
    bar_color: lxw_color_t,
    bar_negative_color: lxw_color_t,
    bar_border_color: lxw_color_t,
    bar_negative_border_color: lxw_color_t,
    bar_axis_color: lxw_color_t,
    icon_style: u8,
    reverse_icons: u8,
    icons_only: u8,
    stop_if_true: u8,
    has_max: u8,
    type_string: [*c]u8,
    guid: [*c]u8,
    dxf_index: i32,
    dxf_priority: u32,
    first_cell: [14]u8,
    sqref: [2080]u8,
    list_pointers: struct_unnamed_23,
};
pub const struct_lxw_cond_format_list = extern struct {
    stqh_first: [*c]struct_lxw_cond_format_obj,
    stqh_last: [*c][*c]struct_lxw_cond_format_obj,
};
const struct_unnamed_24 = extern struct {
    rbe_left: [*c]struct_lxw_cond_format_hash_element,
    rbe_right: [*c]struct_lxw_cond_format_hash_element,
    rbe_parent: [*c]struct_lxw_cond_format_hash_element,
    rbe_color: c_int,
};
pub const struct_lxw_cond_format_hash_element = extern struct {
    sqref: [2080]u8,
    cond_formats: [*c]struct_lxw_cond_format_list,
    tree_pointers: struct_unnamed_24,
};
pub const struct_lxw_cond_format_hash = extern struct {
    rbh_root: [*c]struct_lxw_cond_format_hash_element,
};
const struct_unnamed_25 = extern struct {
    rbe_left: [*c]struct_lxw_row,
    rbe_right: [*c]struct_lxw_row,
    rbe_parent: [*c]struct_lxw_row,
    rbe_color: c_int,
};
pub const struct_lxw_row = extern struct {
    row_num: lxw_row_t,
    height: f64,
    format: [*c]lxw_format,
    hidden: u8,
    level: u8,
    collapsed: u8,
    row_changed: u8,
    data_changed: u8,
    height_changed: u8,
    cells: [*c]struct_lxw_table_cells,
    tree_pointers: struct_unnamed_25,
};
pub const struct_lxw_table_rows = extern struct {
    rbh_root: [*c]struct_lxw_row,
    cached_row: [*c]struct_lxw_row,
    cached_row_num: lxw_row_t,
};
const struct_unnamed_26 = extern struct {
    stqe_next: [*c]struct_lxw_merged_range,
};
pub const struct_lxw_merged_range = extern struct {
    first_row: lxw_row_t,
    last_row: lxw_row_t,
    first_col: lxw_col_t,
    last_col: lxw_col_t,
    list_pointers: struct_unnamed_26,
};
pub const struct_lxw_merged_ranges = extern struct {
    stqh_first: [*c]struct_lxw_merged_range,
    stqh_last: [*c][*c]struct_lxw_merged_range,
};
const struct_unnamed_27 = extern struct {
    stqe_next: [*c]struct_lxw_selection,
};
pub const struct_lxw_selection = extern struct {
    pane: [12]u8,
    active_cell: [28]u8,
    sqref: [28]u8,
    list_pointers: struct_unnamed_27,
};
pub const struct_lxw_selections = extern struct {
    stqh_first: [*c]struct_lxw_selection,
    stqh_last: [*c][*c]struct_lxw_selection,
};
const struct_unnamed_28 = extern struct {
    stqe_next: [*c]struct_lxw_data_val_obj,
};
pub const struct_lxw_data_val_obj = extern struct {
    validate: u8,
    criteria: u8,
    ignore_blank: u8,
    show_input: u8,
    show_error: u8,
    error_type: u8,
    dropdown: u8,
    value_number: f64,
    value_formula: [*c]u8,
    value_list: [*c][*c]u8,
    minimum_number: f64,
    minimum_formula: [*c]u8,
    minimum_datetime: lxw_datetime,
    maximum_number: f64,
    maximum_formula: [*c]u8,
    maximum_datetime: lxw_datetime,
    input_title: [*c]u8,
    input_message: [*c]u8,
    error_title: [*c]u8,
    error_message: [*c]u8,
    sqref: [28]u8,
    list_pointers: struct_unnamed_28,
};
pub const struct_lxw_data_validations = extern struct {
    stqh_first: [*c]struct_lxw_data_val_obj,
    stqh_last: [*c][*c]struct_lxw_data_val_obj,
};
const struct_unnamed_29 = extern struct {
    stqe_next: [*c]struct_lxw_object_properties,
};
pub const struct_lxw_object_properties = extern struct {
    x_offset: i32,
    y_offset: i32,
    x_scale: f64,
    y_scale: f64,
    row: lxw_row_t,
    col: lxw_col_t,
    filename: [*c]u8,
    description: [*c]u8,
    url: [*c]u8,
    tip: [*c]u8,
    object_position: u8,
    stream: [*c]FILE,
    image_type: u8,
    is_image_buffer: u8,
    image_buffer: [*c]u8,
    image_buffer_size: usize,
    width: f64,
    height: f64,
    extension: [*c]u8,
    x_dpi: f64,
    y_dpi: f64,
    chart: [*c]lxw_chart,
    is_duplicate: u8,
    is_background: u8,
    md5: [*c]u8,
    image_position: [*c]u8,
    decorative: u8,
    list_pointers: struct_unnamed_29,
};
pub const struct_lxw_image_props = extern struct {
    stqh_first: [*c]struct_lxw_object_properties,
    stqh_last: [*c][*c]struct_lxw_object_properties,
};
pub const struct_lxw_chart_props = extern struct {
    stqh_first: [*c]struct_lxw_object_properties,
    stqh_last: [*c][*c]struct_lxw_object_properties,
};
pub const struct_lxw_comment_objs = extern struct {
    stqh_first: [*c]struct_lxw_vml_obj,
    stqh_last: [*c][*c]struct_lxw_vml_obj,
};
pub const struct_lxw_table_column = extern struct {
    header: [*c]u8,
    formula: [*c]u8,
    total_string: [*c]u8,
    total_function: u8,
    header_format: [*c]lxw_format,
    format: [*c]lxw_format,
    total_value: f64,
};
pub const lxw_table_column = struct_lxw_table_column;
const struct_unnamed_30 = extern struct {
    stqe_next: [*c]struct_lxw_table_obj,
};
pub const struct_lxw_table_obj = extern struct {
    name: [*c]u8,
    total_string: [*c]u8,
    columns: [*c][*c]lxw_table_column,
    banded_columns: u8,
    first_column: u8,
    last_column: u8,
    no_autofilter: u8,
    no_banded_rows: u8,
    no_header_row: u8,
    style_type: u8,
    style_type_number: u8,
    total_row: u8,
    first_row: lxw_row_t,
    first_col: lxw_col_t,
    last_row: lxw_row_t,
    last_col: lxw_col_t,
    num_cols: lxw_col_t,
    id: u32,
    sqref: [2080]u8,
    filter_sqref: [2080]u8,
    list_pointers: struct_unnamed_30,
};
pub const struct_lxw_table_objs = extern struct {
    stqh_first: [*c]struct_lxw_table_obj,
    stqh_last: [*c][*c]struct_lxw_table_obj,
};
pub const struct_lxw_row_col_options = extern struct {
    hidden: u8,
    level: u8,
    collapsed: u8,
};
pub const lxw_row_col_options = struct_lxw_row_col_options;
pub const struct_lxw_col_options = extern struct {
    firstcol: lxw_col_t,
    lastcol: lxw_col_t,
    width: f64,
    format: [*c]lxw_format,
    hidden: u8,
    level: u8,
    collapsed: u8,
};
pub const lxw_col_options = struct_lxw_col_options;
pub const lxw_merged_range = struct_lxw_merged_range;
pub const struct_lxw_repeat_rows = extern struct {
    in_use: u8,
    first_row: lxw_row_t,
    last_row: lxw_row_t,
};
pub const lxw_repeat_rows = struct_lxw_repeat_rows;
pub const struct_lxw_repeat_cols = extern struct {
    in_use: u8,
    first_col: lxw_col_t,
    last_col: lxw_col_t,
};
pub const lxw_repeat_cols = struct_lxw_repeat_cols;
pub const struct_lxw_print_area = extern struct {
    in_use: u8,
    first_row: lxw_row_t,
    last_row: lxw_row_t,
    first_col: lxw_col_t,
    last_col: lxw_col_t,
};
pub const lxw_print_area = struct_lxw_print_area;
pub const struct_lxw_autofilter = extern struct {
    in_use: u8,
    has_rules: u8,
    first_row: lxw_row_t,
    last_row: lxw_row_t,
    first_col: lxw_col_t,
    last_col: lxw_col_t,
};
pub const lxw_autofilter = struct_lxw_autofilter;
pub const struct_lxw_panes = extern struct {
    type: u8,
    first_row: lxw_row_t,
    first_col: lxw_col_t,
    top_row: lxw_row_t,
    left_col: lxw_col_t,
    x_split: f64,
    y_split: f64,
};
pub const lxw_panes = struct_lxw_panes;
pub const lxw_selection = struct_lxw_selection;
pub const struct_lxw_data_validation = extern struct {
    validate: u8,
    criteria: u8,
    ignore_blank: u8,
    show_input: u8,
    show_error: u8,
    error_type: u8,
    dropdown: u8,
    value_number: f64,
    value_formula: [*c]u8,
    value_list: [*c][*c]u8,
    value_datetime: lxw_datetime,
    minimum_number: f64,
    minimum_formula: [*c]u8,
    minimum_datetime: lxw_datetime,
    maximum_number: f64,
    maximum_formula: [*c]u8,
    maximum_datetime: lxw_datetime,
    input_title: [*c]u8,
    input_message: [*c]u8,
    error_title: [*c]u8,
    error_message: [*c]u8,
};
pub const lxw_data_validation = struct_lxw_data_validation;
pub const lxw_data_val_obj = struct_lxw_data_val_obj;
pub const struct_lxw_conditional_format = extern struct {
    type: u8,
    criteria: u8,
    value: f64,
    value_string: [*c]u8,
    format: [*c]lxw_format,
    min_value: f64,
    min_value_string: [*c]u8,
    min_rule_type: u8,
    min_color: lxw_color_t,
    mid_value: f64,
    mid_value_string: [*c]u8,
    mid_rule_type: u8,
    mid_color: lxw_color_t,
    max_value: f64,
    max_value_string: [*c]u8,
    max_rule_type: u8,
    max_color: lxw_color_t,
    bar_color: lxw_color_t,
    bar_only: u8,
    data_bar_2010: u8,
    bar_solid: u8,
    bar_negative_color: lxw_color_t,
    bar_border_color: lxw_color_t,
    bar_negative_border_color: lxw_color_t,
    bar_negative_color_same: u8,
    bar_negative_border_color_same: u8,
    bar_no_border: u8,
    bar_direction: u8,
    bar_axis_position: u8,
    bar_axis_color: lxw_color_t,
    icon_style: u8,
    reverse_icons: u8,
    icons_only: u8,
    multi_range: [*c]u8,
    stop_if_true: u8,
};
pub const lxw_conditional_format = struct_lxw_conditional_format;
pub const lxw_cond_format_obj = struct_lxw_cond_format_obj;
pub const lxw_cond_format_hash_element = struct_lxw_cond_format_hash_element;
pub const struct_lxw_table_options = extern struct {
    name: [*c]u8,
    no_header_row: u8,
    no_autofilter: u8,
    no_banded_rows: u8,
    banded_columns: u8,
    first_column: u8,
    last_column: u8,
    style_type: u8,
    style_type_number: u8,
    total_row: u8,
    columns: [*c][*c]lxw_table_column,
};
pub const lxw_table_options = struct_lxw_table_options;
pub const lxw_table_obj = struct_lxw_table_obj;
pub const struct_lxw_filter_rule = extern struct {
    criteria: u8,
    value_string: [*c]u8,
    value: f64,
};
pub const lxw_filter_rule = struct_lxw_filter_rule;
pub const struct_lxw_filter_rule_obj = extern struct {
    type: u8,
    is_custom: u8,
    has_blanks: u8,
    col_num: lxw_col_t,
    criteria1: u8,
    criteria2: u8,
    value1: f64,
    value2: f64,
    value1_string: [*c]u8,
    value2_string: [*c]u8,
    num_list_filters: u16,
    list: [*c][*c]u8,
};
pub const lxw_filter_rule_obj = struct_lxw_filter_rule_obj;
pub const struct_lxw_image_options = extern struct {
    x_offset: i32,
    y_offset: i32,
    x_scale: f64,
    y_scale: f64,
    object_position: u8,
    description: [*c]u8,
    decorative: u8,
    url: [*c]u8,
    tip: [*c]u8,
};
pub const lxw_image_options = struct_lxw_image_options;
pub const struct_lxw_chart_options = extern struct {
    x_offset: i32,
    y_offset: i32,
    x_scale: f64,
    y_scale: f64,
    object_position: u8,
    description: [*c]u8,
    decorative: u8,
};
pub const lxw_chart_options = struct_lxw_chart_options;
pub const lxw_object_properties = struct_lxw_object_properties;
pub const struct_lxw_comment_options = extern struct {
    visible: u8,
    author: [*c]u8,
    width: u16,
    height: u16,
    x_scale: f64,
    y_scale: f64,
    color: lxw_color_t,
    font_name: [*c]u8,
    font_size: f64,
    font_family: u8,
    start_row: lxw_row_t,
    start_col: lxw_col_t,
    x_offset: i32,
    y_offset: i32,
};
pub const lxw_comment_options = struct_lxw_comment_options;
pub const struct_lxw_button_options = extern struct {
    caption: [*c]u8,
    macro: [*c]u8,
    description: [*c]u8,
    width: u16,
    height: u16,
    x_scale: f64,
    y_scale: f64,
    x_offset: i32,
    y_offset: i32,
};
pub const lxw_button_options = struct_lxw_button_options;
pub const struct_lxw_header_footer_options = extern struct {
    margin: f64,
    image_left: [*c]u8,
    image_center: [*c]u8,
    image_right: [*c]u8,
};
pub const lxw_header_footer_options = struct_lxw_header_footer_options;
pub const struct_lxw_protection = extern struct {
    no_select_locked_cells: u8,
    no_select_unlocked_cells: u8,
    format_cells: u8,
    format_columns: u8,
    format_rows: u8,
    insert_columns: u8,
    insert_rows: u8,
    insert_hyperlinks: u8,
    delete_columns: u8,
    delete_rows: u8,
    sort: u8,
    autofilter: u8,
    pivot_tables: u8,
    scenarios: u8,
    objects: u8,
    no_content: u8,
    no_objects: u8,
};
pub const lxw_protection = struct_lxw_protection;
pub const struct_lxw_protection_obj = extern struct {
    no_select_locked_cells: u8,
    no_select_unlocked_cells: u8,
    format_cells: u8,
    format_columns: u8,
    format_rows: u8,
    insert_columns: u8,
    insert_rows: u8,
    insert_hyperlinks: u8,
    delete_columns: u8,
    delete_rows: u8,
    sort: u8,
    autofilter: u8,
    pivot_tables: u8,
    scenarios: u8,
    objects: u8,
    no_content: u8,
    no_objects: u8,
    no_sheet: u8,
    is_configured: u8,
    hash: [5]u8,
};
pub const lxw_protection_obj = struct_lxw_protection_obj;
pub const struct_lxw_rich_string_tuple = extern struct {
    format: [*c]lxw_format,
    string: [*c]u8,
};
pub const lxw_rich_string_tuple = struct_lxw_rich_string_tuple;
const struct_unnamed_31 = extern struct {
    stqe_next: [*c]struct_lxw_worksheet,
};
pub const struct_lxw_worksheet = extern struct {
    file: [*c]FILE,
    optimize_tmpfile: [*c]FILE,
    optimize_buffer: [*c]u8,
    optimize_buffer_size: usize,
    table: [*c]struct_lxw_table_rows,
    hyperlinks: [*c]struct_lxw_table_rows,
    comments: [*c]struct_lxw_table_rows,
    array: [*c][*c]struct_lxw_cell,
    merged_ranges: [*c]struct_lxw_merged_ranges,
    selections: [*c]struct_lxw_selections,
    data_validations: [*c]struct_lxw_data_validations,
    conditional_formats: [*c]struct_lxw_cond_format_hash,
    image_props: [*c]struct_lxw_image_props,
    chart_data: [*c]struct_lxw_chart_props,
    drawing_rel_ids: [*c]struct_lxw_drawing_rel_ids,
    vml_drawing_rel_ids: [*c]struct_lxw_vml_drawing_rel_ids,
    comment_objs: [*c]struct_lxw_comment_objs,
    header_image_objs: [*c]struct_lxw_comment_objs,
    button_objs: [*c]struct_lxw_comment_objs,
    table_objs: [*c]struct_lxw_table_objs,
    table_count: u16,
    dim_rowmin: lxw_row_t,
    dim_rowmax: lxw_row_t,
    dim_colmin: lxw_col_t,
    dim_colmax: lxw_col_t,
    sst: [*c]lxw_sst,
    name: [*c]u8,
    quoted_name: [*c]u8,
    tmpdir: [*c]u8,
    index: u16,
    active: u8,
    selected: u8,
    hidden: u8,
    active_sheet: [*c]u16,
    first_sheet: [*c]u16,
    is_chartsheet: u8,
    col_options: [*c][*c]lxw_col_options,
    col_options_max: u16,
    col_sizes: [*c]f64,
    col_sizes_max: u16,
    col_formats: [*c][*c]lxw_format,
    col_formats_max: u16,
    col_size_changed: u8,
    row_size_changed: u8,
    optimize: u8,
    optimize_row: [*c]struct_lxw_row,
    fit_height: u16,
    fit_width: u16,
    horizontal_dpi: u16,
    hlink_count: u16,
    page_start: u16,
    print_scale: u16,
    rel_count: u16,
    vertical_dpi: u16,
    zoom: u16,
    filter_on: u8,
    fit_page: u8,
    hcenter: u8,
    orientation: u8,
    outline_changed: u8,
    outline_on: u8,
    outline_style: u8,
    outline_below: u8,
    outline_right: u8,
    page_order: u8,
    page_setup_changed: u8,
    page_view: u8,
    paper_size: u8,
    print_gridlines: u8,
    print_headers: u8,
    print_options_changed: u8,
    right_to_left: u8,
    screen_gridlines: u8,
    show_zeros: u8,
    vcenter: u8,
    zoom_scale_normal: u8,
    black_white: u8,
    num_validations: u8,
    has_dynamic_arrays: u8,
    vba_codename: [*c]u8,
    num_buttons: u16,
    tab_color: lxw_color_t,
    margin_left: f64,
    margin_right: f64,
    margin_top: f64,
    margin_bottom: f64,
    margin_header: f64,
    margin_footer: f64,
    default_row_height: f64,
    default_row_pixels: u32,
    default_col_pixels: u32,
    default_row_zeroed: u8,
    default_row_set: u8,
    outline_row_level: u8,
    outline_col_level: u8,
    header_footer_changed: u8,
    header: [*c]u8,
    footer: [*c]u8,
    repeat_rows: struct_lxw_repeat_rows,
    repeat_cols: struct_lxw_repeat_cols,
    print_area: struct_lxw_print_area,
    autofilter: struct_lxw_autofilter,
    merged_range_count: u16,
    max_url_length: u16,
    hbreaks: [*c]lxw_row_t,
    vbreaks: [*c]lxw_col_t,
    hbreaks_count: u16,
    vbreaks_count: u16,
    drawing_rel_id: u32,
    vml_drawing_rel_id: u32,
    external_hyperlinks: [*c]struct_lxw_rel_tuples,
    external_drawing_links: [*c]struct_lxw_rel_tuples,
    drawing_links: [*c]struct_lxw_rel_tuples,
    vml_drawing_links: [*c]struct_lxw_rel_tuples,
    external_table_links: [*c]struct_lxw_rel_tuples,
    panes: struct_lxw_panes,
    top_left_cell: [14]u8,
    protection: struct_lxw_protection_obj,
    drawing: [*c]lxw_drawing,
    default_url_format: [*c]lxw_format,
    has_vml: u8,
    has_comments: u8,
    has_header_vml: u8,
    has_background_image: u8,
    has_buttons: u8,
    external_vml_comment_link: [*c]lxw_rel_tuple,
    external_comment_link: [*c]lxw_rel_tuple,
    external_vml_header_link: [*c]lxw_rel_tuple,
    external_background_link: [*c]lxw_rel_tuple,
    comment_author: [*c]u8,
    vml_data_id_str: [*c]u8,
    vml_header_id_str: [*c]u8,
    vml_shape_id: u32,
    vml_header_id: u32,
    dxf_priority: u32,
    comment_display_default: u8,
    data_bar_2010_index: u32,
    has_ignore_errors: u8,
    ignore_number_stored_as_text: [*c]u8,
    ignore_eval_error: [*c]u8,
    ignore_formula_differs: [*c]u8,
    ignore_formula_range: [*c]u8,
    ignore_formula_unlocked: [*c]u8,
    ignore_empty_cell_reference: [*c]u8,
    ignore_list_data_validation: [*c]u8,
    ignore_calculated_column: [*c]u8,
    ignore_two_digit_text_year: [*c]u8,
    excel_version: u16,
    header_footer_objs: [6][*c][*c]lxw_object_properties,
    header_left_object_props: [*c]lxw_object_properties,
    header_center_object_props: [*c]lxw_object_properties,
    header_right_object_props: [*c]lxw_object_properties,
    footer_left_object_props: [*c]lxw_object_properties,
    footer_center_object_props: [*c]lxw_object_properties,
    footer_right_object_props: [*c]lxw_object_properties,
    background_image: [*c]lxw_object_properties,
    filter_rules: [*c][*c]lxw_filter_rule_obj,
    num_filter_rules: lxw_col_t,
    list_pointers: struct_unnamed_31,
};
pub const lxw_worksheet = struct_lxw_worksheet;
pub const struct_lxw_worksheet_init_data = extern struct {
    index: u16,
    hidden: u8,
    optimize: u8,
    active_sheet: [*c]u16,
    first_sheet: [*c]u16,
    sst: [*c]lxw_sst,
    name: [*c]u8,
    quoted_name: [*c]u8,
    tmpdir: [*c]u8,
    default_url_format: [*c]lxw_format,
    max_url_length: u16,
};
pub const lxw_worksheet_init_data = struct_lxw_worksheet_init_data;
pub const lxw_row = struct_lxw_row;
pub const lxw_cell = struct_lxw_cell;
pub const lxw_drawing_rel_id = struct_lxw_drawing_rel_id;
pub extern fn worksheet_write_number(worksheet: [*c]lxw_worksheet, row: lxw_row_t, col: lxw_col_t, number: f64, format: [*c]lxw_format) lxw_error;
pub extern fn worksheet_write_string(worksheet: [*c]lxw_worksheet, row: lxw_row_t, col: lxw_col_t, string: [*c]const u8, format: [*c]lxw_format) lxw_error;
pub extern fn worksheet_write_formula(worksheet: [*c]lxw_worksheet, row: lxw_row_t, col: lxw_col_t, formula: [*c]const u8, format: [*c]lxw_format) lxw_error;
pub extern fn worksheet_write_array_formula(worksheet: [*c]lxw_worksheet, first_row: lxw_row_t, first_col: lxw_col_t, last_row: lxw_row_t, last_col: lxw_col_t, formula: [*c]const u8, format: [*c]lxw_format) lxw_error;
pub extern fn worksheet_write_dynamic_array_formula(worksheet: [*c]lxw_worksheet, first_row: lxw_row_t, first_col: lxw_col_t, last_row: lxw_row_t, last_col: lxw_col_t, formula: [*c]const u8, format: [*c]lxw_format) lxw_error;
pub extern fn worksheet_write_dynamic_formula(worksheet: [*c]lxw_worksheet, row: lxw_row_t, col: lxw_col_t, formula: [*c]const u8, format: [*c]lxw_format) lxw_error;
pub extern fn worksheet_write_array_formula_num(worksheet: [*c]lxw_worksheet, first_row: lxw_row_t, first_col: lxw_col_t, last_row: lxw_row_t, last_col: lxw_col_t, formula: [*c]const u8, format: [*c]lxw_format, result: f64) lxw_error;
pub extern fn worksheet_write_dynamic_array_formula_num(worksheet: [*c]lxw_worksheet, first_row: lxw_row_t, first_col: lxw_col_t, last_row: lxw_row_t, last_col: lxw_col_t, formula: [*c]const u8, format: [*c]lxw_format, result: f64) lxw_error;
pub extern fn worksheet_write_dynamic_formula_num(worksheet: [*c]lxw_worksheet, row: lxw_row_t, col: lxw_col_t, formula: [*c]const u8, format: [*c]lxw_format, result: f64) lxw_error;
pub extern fn worksheet_write_datetime(worksheet: [*c]lxw_worksheet, row: lxw_row_t, col: lxw_col_t, datetime: [*c]lxw_datetime, format: [*c]lxw_format) lxw_error;
pub extern fn worksheet_write_unixtime(worksheet: [*c]lxw_worksheet, row: lxw_row_t, col: lxw_col_t, unixtime: i64, format: [*c]lxw_format) lxw_error;
pub extern fn worksheet_write_url(worksheet: [*c]lxw_worksheet, row: lxw_row_t, col: lxw_col_t, url: [*c]const u8, format: [*c]lxw_format) lxw_error;
pub extern fn worksheet_write_url_opt(worksheet: [*c]lxw_worksheet, row_num: lxw_row_t, col_num: lxw_col_t, url: [*c]const u8, format: [*c]lxw_format, string: [*c]const u8, tooltip: [*c]const u8) lxw_error;
pub extern fn worksheet_write_boolean(worksheet: [*c]lxw_worksheet, row: lxw_row_t, col: lxw_col_t, value: c_int, format: [*c]lxw_format) lxw_error;
pub extern fn worksheet_write_blank(worksheet: [*c]lxw_worksheet, row: lxw_row_t, col: lxw_col_t, format: [*c]lxw_format) lxw_error;
pub extern fn worksheet_write_formula_num(worksheet: [*c]lxw_worksheet, row: lxw_row_t, col: lxw_col_t, formula: [*c]const u8, format: [*c]lxw_format, result: f64) lxw_error;
pub extern fn worksheet_write_formula_str(worksheet: [*c]lxw_worksheet, row: lxw_row_t, col: lxw_col_t, formula: [*c]const u8, format: [*c]lxw_format, result: [*c]const u8) lxw_error;
pub extern fn worksheet_write_rich_string(worksheet: [*c]lxw_worksheet, row: lxw_row_t, col: lxw_col_t, rich_string: [*c][*c]lxw_rich_string_tuple, format: [*c]lxw_format) lxw_error;
pub extern fn worksheet_write_comment(worksheet: [*c]lxw_worksheet, row: lxw_row_t, col: lxw_col_t, string: [*c]const u8) lxw_error;
pub extern fn worksheet_write_comment_opt(worksheet: [*c]lxw_worksheet, row: lxw_row_t, col: lxw_col_t, string: [*c]const u8, options: [*c]lxw_comment_options) lxw_error;
pub extern fn worksheet_set_row(worksheet: [*c]lxw_worksheet, row: lxw_row_t, height: f64, format: [*c]lxw_format) lxw_error;
pub extern fn worksheet_set_row_opt(worksheet: [*c]lxw_worksheet, row: lxw_row_t, height: f64, format: [*c]lxw_format, options: [*c]lxw_row_col_options) lxw_error;
pub extern fn worksheet_set_row_pixels(worksheet: [*c]lxw_worksheet, row: lxw_row_t, pixels: u32, format: [*c]lxw_format) lxw_error;
pub extern fn worksheet_set_row_pixels_opt(worksheet: [*c]lxw_worksheet, row: lxw_row_t, pixels: u32, format: [*c]lxw_format, options: [*c]lxw_row_col_options) lxw_error;
pub extern fn worksheet_set_column(worksheet: [*c]lxw_worksheet, first_col: lxw_col_t, last_col: lxw_col_t, width: f64, format: [*c]lxw_format) lxw_error;
pub extern fn worksheet_set_column_opt(worksheet: [*c]lxw_worksheet, first_col: lxw_col_t, last_col: lxw_col_t, width: f64, format: [*c]lxw_format, options: [*c]lxw_row_col_options) lxw_error;
pub extern fn worksheet_set_column_pixels(worksheet: [*c]lxw_worksheet, first_col: lxw_col_t, last_col: lxw_col_t, pixels: u32, format: [*c]lxw_format) lxw_error;
pub extern fn worksheet_set_column_pixels_opt(worksheet: [*c]lxw_worksheet, first_col: lxw_col_t, last_col: lxw_col_t, pixels: u32, format: [*c]lxw_format, options: [*c]lxw_row_col_options) lxw_error;
pub extern fn worksheet_insert_image(worksheet: [*c]lxw_worksheet, row: lxw_row_t, col: lxw_col_t, filename: [*c]const u8) lxw_error;
pub extern fn worksheet_insert_image_opt(worksheet: [*c]lxw_worksheet, row: lxw_row_t, col: lxw_col_t, filename: [*c]const u8, options: [*c]lxw_image_options) lxw_error;
pub extern fn worksheet_insert_image_buffer(worksheet: [*c]lxw_worksheet, row: lxw_row_t, col: lxw_col_t, image_buffer: [*c]const u8, image_size: usize) lxw_error;
pub extern fn worksheet_insert_image_buffer_opt(worksheet: [*c]lxw_worksheet, row: lxw_row_t, col: lxw_col_t, image_buffer: [*c]const u8, image_size: usize, options: [*c]lxw_image_options) lxw_error;
pub extern fn worksheet_set_background(worksheet: [*c]lxw_worksheet, filename: [*c]const u8) lxw_error;
pub extern fn worksheet_set_background_buffer(worksheet: [*c]lxw_worksheet, image_buffer: [*c]const u8, image_size: usize) lxw_error;
pub extern fn worksheet_insert_chart(worksheet: [*c]lxw_worksheet, row: lxw_row_t, col: lxw_col_t, chart: [*c]lxw_chart) lxw_error;
pub extern fn worksheet_insert_chart_opt(worksheet: [*c]lxw_worksheet, row: lxw_row_t, col: lxw_col_t, chart: [*c]lxw_chart, user_options: [*c]lxw_chart_options) lxw_error;
pub extern fn worksheet_merge_range(worksheet: [*c]lxw_worksheet, first_row: lxw_row_t, first_col: lxw_col_t, last_row: lxw_row_t, last_col: lxw_col_t, string: [*c]const u8, format: [*c]lxw_format) lxw_error;
pub extern fn worksheet_autofilter(worksheet: [*c]lxw_worksheet, first_row: lxw_row_t, first_col: lxw_col_t, last_row: lxw_row_t, last_col: lxw_col_t) lxw_error;
pub extern fn worksheet_filter_column(worksheet: [*c]lxw_worksheet, col: lxw_col_t, rule: [*c]lxw_filter_rule) lxw_error;
pub extern fn worksheet_filter_column2(worksheet: [*c]lxw_worksheet, col: lxw_col_t, rule1: [*c]lxw_filter_rule, rule2: [*c]lxw_filter_rule, and_or: u8) lxw_error;
pub extern fn worksheet_filter_list(worksheet: [*c]lxw_worksheet, col: lxw_col_t, list: [*c][*c]u8) lxw_error;
pub extern fn worksheet_data_validation_cell(worksheet: [*c]lxw_worksheet, row: lxw_row_t, col: lxw_col_t, validation: [*c]lxw_data_validation) lxw_error;
pub extern fn worksheet_data_validation_range(worksheet: [*c]lxw_worksheet, first_row: lxw_row_t, first_col: lxw_col_t, last_row: lxw_row_t, last_col: lxw_col_t, validation: [*c]lxw_data_validation) lxw_error;
pub extern fn worksheet_conditional_format_cell(worksheet: [*c]lxw_worksheet, row: lxw_row_t, col: lxw_col_t, conditional_format: [*c]lxw_conditional_format) lxw_error;
pub extern fn worksheet_conditional_format_range(worksheet: [*c]lxw_worksheet, first_row: lxw_row_t, first_col: lxw_col_t, last_row: lxw_row_t, last_col: lxw_col_t, conditional_format: [*c]lxw_conditional_format) lxw_error;
pub extern fn worksheet_insert_button(worksheet: [*c]lxw_worksheet, row: lxw_row_t, col: lxw_col_t, options: [*c]lxw_button_options) lxw_error;
pub extern fn worksheet_add_table(worksheet: [*c]lxw_worksheet, first_row: lxw_row_t, first_col: lxw_col_t, last_row: lxw_row_t, last_col: lxw_col_t, options: [*c]lxw_table_options) lxw_error;
pub extern fn worksheet_activate(worksheet: [*c]lxw_worksheet) void;
pub extern fn worksheet_select(worksheet: [*c]lxw_worksheet) void;
pub extern fn worksheet_hide(worksheet: [*c]lxw_worksheet) void;
pub extern fn worksheet_set_first_sheet(worksheet: [*c]lxw_worksheet) void;
pub extern fn worksheet_freeze_panes(worksheet: [*c]lxw_worksheet, row: lxw_row_t, col: lxw_col_t) void;
pub extern fn worksheet_split_panes(worksheet: [*c]lxw_worksheet, vertical: f64, horizontal: f64) void;
pub extern fn worksheet_freeze_panes_opt(worksheet: [*c]lxw_worksheet, first_row: lxw_row_t, first_col: lxw_col_t, top_row: lxw_row_t, left_col: lxw_col_t, @"type": u8) void;
pub extern fn worksheet_split_panes_opt(worksheet: [*c]lxw_worksheet, vertical: f64, horizontal: f64, top_row: lxw_row_t, left_col: lxw_col_t) void;
pub extern fn worksheet_set_selection(worksheet: [*c]lxw_worksheet, first_row: lxw_row_t, first_col: lxw_col_t, last_row: lxw_row_t, last_col: lxw_col_t) void;
pub extern fn worksheet_set_top_left_cell(worksheet: [*c]lxw_worksheet, row: lxw_row_t, col: lxw_col_t) void;
pub extern fn worksheet_set_landscape(worksheet: [*c]lxw_worksheet) void;
pub extern fn worksheet_set_portrait(worksheet: [*c]lxw_worksheet) void;
pub extern fn worksheet_set_page_view(worksheet: [*c]lxw_worksheet) void;
pub extern fn worksheet_set_paper(worksheet: [*c]lxw_worksheet, paper_type: u8) void;
pub extern fn worksheet_set_margins(worksheet: [*c]lxw_worksheet, left: f64, right: f64, top: f64, bottom: f64) void;
pub extern fn worksheet_set_header(worksheet: [*c]lxw_worksheet, string: [*c]const u8) lxw_error;
pub extern fn worksheet_set_footer(worksheet: [*c]lxw_worksheet, string: [*c]const u8) lxw_error;
pub extern fn worksheet_set_header_opt(worksheet: [*c]lxw_worksheet, string: [*c]const u8, options: [*c]lxw_header_footer_options) lxw_error;
pub extern fn worksheet_set_footer_opt(worksheet: [*c]lxw_worksheet, string: [*c]const u8, options: [*c]lxw_header_footer_options) lxw_error;
pub extern fn worksheet_set_h_pagebreaks(worksheet: [*c]lxw_worksheet, breaks: [*c]lxw_row_t) lxw_error;
pub extern fn worksheet_set_v_pagebreaks(worksheet: [*c]lxw_worksheet, breaks: [*c]lxw_col_t) lxw_error;
pub extern fn worksheet_print_across(worksheet: [*c]lxw_worksheet) void;
pub extern fn worksheet_set_zoom(worksheet: [*c]lxw_worksheet, scale: u16) void;
pub extern fn worksheet_gridlines(worksheet: [*c]lxw_worksheet, option: u8) void;
pub extern fn worksheet_center_horizontally(worksheet: [*c]lxw_worksheet) void;
pub extern fn worksheet_center_vertically(worksheet: [*c]lxw_worksheet) void;
pub extern fn worksheet_print_row_col_headers(worksheet: [*c]lxw_worksheet) void;
pub extern fn worksheet_repeat_rows(worksheet: [*c]lxw_worksheet, first_row: lxw_row_t, last_row: lxw_row_t) lxw_error;
pub extern fn worksheet_repeat_columns(worksheet: [*c]lxw_worksheet, first_col: lxw_col_t, last_col: lxw_col_t) lxw_error;
pub extern fn worksheet_print_area(worksheet: [*c]lxw_worksheet, first_row: lxw_row_t, first_col: lxw_col_t, last_row: lxw_row_t, last_col: lxw_col_t) lxw_error;
pub extern fn worksheet_fit_to_pages(worksheet: [*c]lxw_worksheet, width: u16, height: u16) void;
pub extern fn worksheet_set_start_page(worksheet: [*c]lxw_worksheet, start_page: u16) void;
pub extern fn worksheet_set_print_scale(worksheet: [*c]lxw_worksheet, scale: u16) void;
pub extern fn worksheet_print_black_and_white(worksheet: [*c]lxw_worksheet) void;
pub extern fn worksheet_right_to_left(worksheet: [*c]lxw_worksheet) void;
pub extern fn worksheet_hide_zero(worksheet: [*c]lxw_worksheet) void;
pub extern fn worksheet_set_tab_color(worksheet: [*c]lxw_worksheet, color: lxw_color_t) void;
pub extern fn worksheet_protect(worksheet: [*c]lxw_worksheet, password: [*c]const u8, options: [*c]lxw_protection) void;
pub extern fn worksheet_outline_settings(worksheet: [*c]lxw_worksheet, visible: u8, symbols_below: u8, symbols_right: u8, auto_style: u8) void;
pub extern fn worksheet_set_default_row(worksheet: [*c]lxw_worksheet, height: f64, hide_unused_rows: u8) void;
pub extern fn worksheet_set_vba_name(worksheet: [*c]lxw_worksheet, name: [*c]const u8) lxw_error;
pub extern fn worksheet_show_comments(worksheet: [*c]lxw_worksheet) void;
pub extern fn worksheet_set_comments_author(worksheet: [*c]lxw_worksheet, author: [*c]const u8) void;
pub extern fn worksheet_ignore_errors(worksheet: [*c]lxw_worksheet, @"type": u8, range: [*c]const u8) lxw_error;
pub extern fn lxw_worksheet_new(init_data: [*c]lxw_worksheet_init_data) [*c]lxw_worksheet;
pub extern fn lxw_worksheet_free(worksheet: [*c]lxw_worksheet) void;
pub extern fn lxw_worksheet_assemble_xml_file(worksheet: [*c]lxw_worksheet) void;
pub extern fn lxw_worksheet_write_single_row(worksheet: [*c]lxw_worksheet) void;
pub extern fn lxw_worksheet_prepare_image(worksheet: [*c]lxw_worksheet, image_ref_id: u32, drawing_id: u32, object_props: [*c]lxw_object_properties) void;
pub extern fn lxw_worksheet_prepare_header_image(worksheet: [*c]lxw_worksheet, image_ref_id: u32, object_props: [*c]lxw_object_properties) void;
pub extern fn lxw_worksheet_prepare_background(worksheet: [*c]lxw_worksheet, image_ref_id: u32, object_props: [*c]lxw_object_properties) void;
pub extern fn lxw_worksheet_prepare_chart(worksheet: [*c]lxw_worksheet, chart_ref_id: u32, drawing_id: u32, object_props: [*c]lxw_object_properties, is_chartsheet: u8) void;
pub extern fn lxw_worksheet_prepare_vml_objects(worksheet: [*c]lxw_worksheet, vml_data_id: u32, vml_shape_id: u32, vml_drawing_id: u32, comment_id: u32) u32;
pub extern fn lxw_worksheet_prepare_header_vml_objects(worksheet: [*c]lxw_worksheet, vml_header_id: u32, vml_drawing_id: u32) void;
pub extern fn lxw_worksheet_prepare_tables(worksheet: [*c]lxw_worksheet, table_id: u32) void;
pub extern fn lxw_worksheet_find_row(worksheet: [*c]lxw_worksheet, row_num: lxw_row_t) [*c]lxw_row;
pub extern fn lxw_worksheet_find_cell_in_row(row: [*c]lxw_row, col_num: lxw_col_t) [*c]lxw_cell;
pub extern fn lxw_worksheet_write_sheet_views(worksheet: [*c]lxw_worksheet) void;
pub extern fn lxw_worksheet_write_page_margins(worksheet: [*c]lxw_worksheet) void;
pub extern fn lxw_worksheet_write_drawings(worksheet: [*c]lxw_worksheet) void;
pub extern fn lxw_worksheet_write_sheet_protection(worksheet: [*c]lxw_worksheet, protect: [*c]lxw_protection_obj) void;
pub extern fn lxw_worksheet_write_sheet_pr(worksheet: [*c]lxw_worksheet) void;
pub extern fn lxw_worksheet_write_page_setup(worksheet: [*c]lxw_worksheet) void;
pub extern fn lxw_worksheet_write_header_footer(worksheet: [*c]lxw_worksheet) void;
const struct_unnamed_32 = extern struct {
    stqe_next: [*c]struct_lxw_chartsheet,
};
pub const struct_lxw_chartsheet = extern struct {
    file: [*c]FILE,
    worksheet: [*c]lxw_worksheet,
    chart: [*c]lxw_chart,
    protection: struct_lxw_protection_obj,
    is_protected: u8,
    name: [*c]u8,
    quoted_name: [*c]u8,
    tmpdir: [*c]u8,
    index: u16,
    active: u8,
    selected: u8,
    hidden: u8,
    active_sheet: [*c]u16,
    first_sheet: [*c]u16,
    rel_count: u16,
    list_pointers: struct_unnamed_32,
};
pub const lxw_chartsheet = struct_lxw_chartsheet;
pub extern fn chartsheet_set_chart(chartsheet: [*c]lxw_chartsheet, chart: [*c]lxw_chart) lxw_error;
pub extern fn chartsheet_set_chart_opt(chartsheet: [*c]lxw_chartsheet, chart: [*c]lxw_chart, user_options: [*c]lxw_chart_options) lxw_error;
pub extern fn chartsheet_activate(chartsheet: [*c]lxw_chartsheet) void;
pub extern fn chartsheet_select(chartsheet: [*c]lxw_chartsheet) void;
pub extern fn chartsheet_hide(chartsheet: [*c]lxw_chartsheet) void;
pub extern fn chartsheet_set_first_sheet(chartsheet: [*c]lxw_chartsheet) void;
pub extern fn chartsheet_set_tab_color(chartsheet: [*c]lxw_chartsheet, color: lxw_color_t) void;
pub extern fn chartsheet_protect(chartsheet: [*c]lxw_chartsheet, password: [*c]const u8, options: [*c]lxw_protection) void;
pub extern fn chartsheet_set_zoom(chartsheet: [*c]lxw_chartsheet, scale: u16) void;
pub extern fn chartsheet_set_landscape(chartsheet: [*c]lxw_chartsheet) void;
pub extern fn chartsheet_set_portrait(chartsheet: [*c]lxw_chartsheet) void;
pub extern fn chartsheet_set_paper(chartsheet: [*c]lxw_chartsheet, paper_type: u8) void;
pub extern fn chartsheet_set_margins(chartsheet: [*c]lxw_chartsheet, left: f64, right: f64, top: f64, bottom: f64) void;
pub extern fn chartsheet_set_header(chartsheet: [*c]lxw_chartsheet, string: [*c]const u8) lxw_error;
pub extern fn chartsheet_set_footer(chartsheet: [*c]lxw_chartsheet, string: [*c]const u8) lxw_error;
pub extern fn chartsheet_set_header_opt(chartsheet: [*c]lxw_chartsheet, string: [*c]const u8, options: [*c]lxw_header_footer_options) lxw_error;
pub extern fn chartsheet_set_footer_opt(chartsheet: [*c]lxw_chartsheet, string: [*c]const u8, options: [*c]lxw_header_footer_options) lxw_error;
pub extern fn lxw_chartsheet_new(init_data: [*c]lxw_worksheet_init_data) [*c]lxw_chartsheet;
pub extern fn lxw_chartsheet_free(chartsheet: [*c]lxw_chartsheet) void;
pub extern fn lxw_chartsheet_assemble_xml_file(chartsheet: [*c]lxw_chartsheet) void;
const struct_unnamed_33 = extern struct {
    rbe_left: [*c]struct_lxw_worksheet_name,
    rbe_right: [*c]struct_lxw_worksheet_name,
    rbe_parent: [*c]struct_lxw_worksheet_name,
    rbe_color: c_int,
};
pub const struct_lxw_worksheet_name = extern struct {
    name: [*c]const u8,
    worksheet: [*c]lxw_worksheet,
    tree_pointers: struct_unnamed_33,
};
pub const struct_lxw_worksheet_names = extern struct {
    rbh_root: [*c]struct_lxw_worksheet_name,
};
const struct_unnamed_34 = extern struct {
    rbe_left: [*c]struct_lxw_chartsheet_name,
    rbe_right: [*c]struct_lxw_chartsheet_name,
    rbe_parent: [*c]struct_lxw_chartsheet_name,
    rbe_color: c_int,
};
pub const struct_lxw_chartsheet_name = extern struct {
    name: [*c]const u8,
    chartsheet: [*c]lxw_chartsheet,
    tree_pointers: struct_unnamed_34,
};
pub const struct_lxw_chartsheet_names = extern struct {
    rbh_root: [*c]struct_lxw_chartsheet_name,
};
const struct_unnamed_35 = extern struct {
    rbe_left: [*c]struct_lxw_image_md5,
    rbe_right: [*c]struct_lxw_image_md5,
    rbe_parent: [*c]struct_lxw_image_md5,
    rbe_color: c_int,
};
pub const struct_lxw_image_md5 = extern struct {
    id: u32,
    md5: [*c]u8,
    tree_pointers: struct_unnamed_35,
};
pub const struct_lxw_image_md5s = extern struct {
    rbh_root: [*c]struct_lxw_image_md5,
};
const union_unnamed_36 = extern union {
    worksheet: [*c]lxw_worksheet,
    chartsheet: [*c]lxw_chartsheet,
};
const struct_unnamed_37 = extern struct {
    stqe_next: [*c]struct_lxw_sheet,
};
pub const struct_lxw_sheet = extern struct {
    is_chartsheet: u8,
    u: union_unnamed_36,
    list_pointers: struct_unnamed_37,
};
pub const struct_lxw_sheets = extern struct {
    stqh_first: [*c]struct_lxw_sheet,
    stqh_last: [*c][*c]struct_lxw_sheet,
};
pub const struct_lxw_worksheets = extern struct {
    stqh_first: [*c]struct_lxw_worksheet,
    stqh_last: [*c][*c]struct_lxw_worksheet,
};
pub const struct_lxw_chartsheets = extern struct {
    stqh_first: [*c]struct_lxw_chartsheet,
    stqh_last: [*c][*c]struct_lxw_chartsheet,
};
pub const struct_lxw_charts = extern struct {
    stqh_first: [*c]struct_lxw_chart,
    stqh_last: [*c][*c]struct_lxw_chart,
};
const struct_unnamed_38 = extern struct {
    tqe_next: [*c]struct_lxw_defined_name,
    tqe_prev: [*c][*c]struct_lxw_defined_name,
};
pub const struct_lxw_defined_name = extern struct {
    index: i16,
    hidden: u8,
    name: [128]u8,
    app_name: [128]u8,
    formula: [128]u8,
    normalised_name: [128]u8,
    normalised_sheetname: [128]u8,
    list_pointers: struct_unnamed_38,
};
pub const struct_lxw_defined_names = extern struct {
    tqh_first: [*c]struct_lxw_defined_name,
    tqh_last: [*c][*c]struct_lxw_defined_name,
};
pub const lxw_sheet = struct_lxw_sheet;
pub const lxw_worksheet_name = struct_lxw_worksheet_name;
pub const lxw_chartsheet_name = struct_lxw_chartsheet_name;
pub const lxw_image_md5 = struct_lxw_image_md5;
pub const lxw_defined_name = struct_lxw_defined_name;
pub const struct_lxw_doc_properties = extern struct {
    title: [*c]u8,
    subject: [*c]u8,
    author: [*c]u8,
    manager: [*c]u8,
    company: [*c]u8,
    category: [*c]u8,
    keywords: [*c]u8,
    comments: [*c]u8,
    status: [*c]u8,
    hyperlink_base: [*c]u8,
    created: c_ulong,
};
pub const lxw_doc_properties = struct_lxw_doc_properties;
pub const struct_lxw_workbook_options = extern struct {
    constant_memory: u8,
    tmpdir: [*c]u8,
    use_zip64: u8,
    output_buffer: [*c][*c]u8,
    output_buffer_size: [*c]usize,
};
pub const lxw_workbook_options = struct_lxw_workbook_options;
pub const struct_lxw_workbook = extern struct {
    file: [*c]FILE,
    sheets: [*c]struct_lxw_sheets,
    worksheets: [*c]struct_lxw_worksheets,
    chartsheets: [*c]struct_lxw_chartsheets,
    worksheet_names: [*c]struct_lxw_worksheet_names,
    chartsheet_names: [*c]struct_lxw_chartsheet_names,
    image_md5s: [*c]struct_lxw_image_md5s,
    header_image_md5s: [*c]struct_lxw_image_md5s,
    background_md5s: [*c]struct_lxw_image_md5s,
    charts: [*c]struct_lxw_charts,
    ordered_charts: [*c]struct_lxw_charts,
    formats: [*c]struct_lxw_formats,
    defined_names: [*c]struct_lxw_defined_names,
    sst: [*c]lxw_sst,
    properties: [*c]lxw_doc_properties,
    custom_properties: [*c]struct_lxw_custom_properties,
    filename: [*c]u8,
    options: lxw_workbook_options,
    num_sheets: u16,
    num_worksheets: u16,
    num_chartsheets: u16,
    first_sheet: u16,
    active_sheet: u16,
    num_xf_formats: u16,
    num_dxf_formats: u16,
    num_format_count: u16,
    drawing_count: u16,
    comment_count: u16,
    font_count: u16,
    border_count: u16,
    fill_count: u16,
    optimize: u8,
    max_url_length: u16,
    read_only: u8,
    has_png: u8,
    has_jpeg: u8,
    has_bmp: u8,
    has_gif: u8,
    has_vml: u8,
    has_comments: u8,
    has_metadata: u8,
    used_xf_formats: [*c]lxw_hash_table,
    used_dxf_formats: [*c]lxw_hash_table,
    vba_project: [*c]u8,
    vba_codename: [*c]u8,
    default_url_format: [*c]lxw_format,
};
pub const lxw_workbook = struct_lxw_workbook;
pub extern fn workbook_new(filename: [*c]const u8) [*c]lxw_workbook;
pub extern fn workbook_new_opt(filename: [*c]const u8, options: [*c]lxw_workbook_options) [*c]lxw_workbook;
pub extern fn workbook_add_worksheet(workbook: [*c]lxw_workbook, sheetname: [*c]const u8) [*c]lxw_worksheet;
pub extern fn workbook_add_chartsheet(workbook: [*c]lxw_workbook, sheetname: [*c]const u8) [*c]lxw_chartsheet;
pub extern fn workbook_add_format(workbook: [*c]lxw_workbook) [*c]lxw_format;
pub extern fn workbook_add_chart(workbook: [*c]lxw_workbook, chart_type: u8) [*c]lxw_chart;
pub extern fn workbook_close(workbook: [*c]lxw_workbook) lxw_error;
pub extern fn workbook_set_properties(workbook: [*c]lxw_workbook, properties: [*c]lxw_doc_properties) lxw_error;
pub extern fn workbook_set_custom_property_string(workbook: [*c]lxw_workbook, name: [*c]const u8, value: [*c]const u8) lxw_error;
pub extern fn workbook_set_custom_property_number(workbook: [*c]lxw_workbook, name: [*c]const u8, value: f64) lxw_error;
pub extern fn workbook_set_custom_property_integer(workbook: [*c]lxw_workbook, name: [*c]const u8, value: i32) lxw_error;
pub extern fn workbook_set_custom_property_boolean(workbook: [*c]lxw_workbook, name: [*c]const u8, value: u8) lxw_error;
pub extern fn workbook_set_custom_property_datetime(workbook: [*c]lxw_workbook, name: [*c]const u8, datetime: [*c]lxw_datetime) lxw_error;
pub extern fn workbook_define_name(workbook: [*c]lxw_workbook, name: [*c]const u8, formula: [*c]const u8) lxw_error;
pub extern fn workbook_get_default_url_format(workbook: [*c]lxw_workbook) [*c]lxw_format;
pub extern fn workbook_get_worksheet_by_name(workbook: [*c]lxw_workbook, name: [*c]const u8) [*c]lxw_worksheet;
pub extern fn workbook_get_chartsheet_by_name(workbook: [*c]lxw_workbook, name: [*c]const u8) [*c]lxw_chartsheet;
pub extern fn workbook_validate_sheet_name(workbook: [*c]lxw_workbook, sheetname: [*c]const u8) lxw_error;
pub extern fn workbook_add_vba_project(workbook: [*c]lxw_workbook, filename: [*c]const u8) lxw_error;
pub extern fn workbook_set_vba_name(workbook: [*c]lxw_workbook, name: [*c]const u8) lxw_error;
pub extern fn workbook_read_only_recommended(workbook: [*c]lxw_workbook) void;
pub extern fn lxw_workbook_free(workbook: [*c]lxw_workbook) void;
pub extern fn lxw_workbook_assemble_xml_file(workbook: [*c]lxw_workbook) void;
pub extern fn lxw_workbook_set_default_xf_indices(workbook: [*c]lxw_workbook) void;
pub extern fn workbook_unset_default_url_format(workbook: [*c]lxw_workbook) void;
pub const NULL = std.zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub inline fn SLIST_EMPTY(head: anytype) @TypeOf(head.*.slh_first == NULL) {
    return head.*.slh_first == NULL;
}
pub inline fn SLIST_FIRST(head: anytype) @TypeOf(head.*.slh_first) {
    return head.*.slh_first;
}
pub inline fn SLIST_NEXT(elm: anytype, field: anytype) @TypeOf(elm.*.field.sle_next) {
    _ = @TypeOf(field);
    return elm.*.field.sle_next;
}
pub inline fn STAILQ_EMPTY(head: anytype) @TypeOf(head.*.stqh_first == NULL) {
    return head.*.stqh_first == NULL;
}
pub inline fn STAILQ_FIRST(head: anytype) @TypeOf(head.*.stqh_first) {
    return head.*.stqh_first;
}
pub inline fn STAILQ_NEXT(elm: anytype, field: anytype) @TypeOf(elm.*.field.stqe_next) {
    _ = @TypeOf(field);
    return elm.*.field.stqe_next;
}
pub inline fn LIST_EMPTY(head: anytype) @TypeOf(head.*.lh_first == NULL) {
    return head.*.lh_first == NULL;
}
pub inline fn LIST_FIRST(head: anytype) @TypeOf(head.*.lh_first) {
    return head.*.lh_first;
}
pub inline fn LIST_NEXT(elm: anytype, field: anytype) @TypeOf(elm.*.field.le_next) {
    _ = @TypeOf(field);
    return elm.*.field.le_next;
}
pub inline fn TAILQ_EMPTY(head: anytype) @TypeOf(head.*.tqh_first == NULL) {
    return head.*.tqh_first == NULL;
}
pub inline fn TAILQ_FIRST(head: anytype) @TypeOf(head.*.tqh_first) {
    return head.*.tqh_first;
}
pub const struct_headname = opaque {};
pub inline fn TAILQ_LAST(head: anytype, headname: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]struct_headname, head.*.tqh_last).*.tqh_last.*) {
    _ = @TypeOf(headname);
    return @import("std").zig.c_translation.cast([*c]struct_headname, head.*.tqh_last).*.tqh_last.*;
}
pub inline fn TAILQ_NEXT(elm: anytype, field: anytype) @TypeOf(elm.*.field.tqe_next) {
    _ = @TypeOf(field);
    return elm.*.field.tqe_next;
}
pub inline fn TAILQ_PREV(elm: anytype, headname: anytype, field: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]struct_headname, elm.*.field.tqe_prev).*.tqh_last.*) {
    _ = @TypeOf(headname);
    _ = @TypeOf(field);
    return @import("std").zig.c_translation.cast([*c]struct_headname, elm.*.field.tqe_prev).*.tqh_last.*;
}
pub const _SYS_TREE_H_ = "";
pub inline fn SPLAY_LEFT(elm: anytype, field: anytype) @TypeOf(elm.*.field.spe_left) {
    _ = @TypeOf(field);
    return elm.*.field.spe_left;
}
pub inline fn SPLAY_RIGHT(elm: anytype, field: anytype) @TypeOf(elm.*.field.spe_right) {
    _ = @TypeOf(field);
    return elm.*.field.spe_right;
}
pub inline fn SPLAY_ROOT(head: anytype) @TypeOf(head.*.sph_root) {
    return head.*.sph_root;
}
pub inline fn SPLAY_EMPTY(head: anytype) @TypeOf(SPLAY_ROOT(head) == NULL) {
    return SPLAY_ROOT(head) == NULL;
}
pub const SPLAY_NEGINF = -@as(c_int, 1);
pub const SPLAY_INF = @as(c_int, 1);
pub const RB_BLACK = @as(c_int, 0);
pub const RB_RED = @as(c_int, 1);
pub inline fn RB_LEFT(elm: anytype, field: anytype) @TypeOf(elm.*.field.rbe_left) {
    _ = @TypeOf(field);
    return elm.*.field.rbe_left;
}
pub inline fn RB_RIGHT(elm: anytype, field: anytype) @TypeOf(elm.*.field.rbe_right) {
    _ = @TypeOf(field);
    return elm.*.field.rbe_right;
}
pub inline fn RB_PARENT(elm: anytype, field: anytype) @TypeOf(elm.*.field.rbe_parent) {
    _ = @TypeOf(field);
    return elm.*.field.rbe_parent;
}
pub inline fn RB_COLOR(elm: anytype, field: anytype) @TypeOf(elm.*.field.rbe_color) {
    _ = @TypeOf(field);
    return elm.*.field.rbe_color;
}
pub inline fn RB_ROOT(head: anytype) @TypeOf(head.*.rbh_root) {
    return head.*.rbh_root;
}
pub inline fn RB_EMPTY(head: anytype) @TypeOf(RB_ROOT(head) == NULL) {
    return RB_ROOT(head) == NULL;
}
pub const RB_NEGINF = -@as(c_int, 1);
pub const RB_INF = @as(c_int, 1);
pub inline fn DEPRECATED(func: anytype, msg: anytype) @TypeOf(func) {
    _ = @TypeOf(msg);
    return func;
}
pub const LXW_MAX_CELL_NAME_LENGTH = @sizeOf("$XFWD$1048576");
pub const LXW_MD5_SIZE = @as(c_int, 16);
pub const LXW_SHEETNAME_MAX = @as(c_int, 31);
pub const LXW_MAX_SHEETNAME_LENGTH = ((LXW_SHEETNAME_MAX * @as(c_int, 4)) + @as(c_int, 2)) + @as(c_int, 1);
pub const LXW_MAX_CELL_RANGE_LENGTH = LXW_MAX_CELL_NAME_LENGTH * @as(c_int, 2);
pub const LXW_MAX_FORMULA_RANGE_LENGTH = LXW_MAX_SHEETNAME_LENGTH + LXW_MAX_CELL_RANGE_LENGTH;
pub const LXW_EPOCH_1900 = @as(c_int, 0);
pub const LXW_EPOCH_1904 = @as(c_int, 1);
pub const LXW_FILENAME_LENGTH = @as(c_int, 128);
pub const LXW_IGNORE = @as(c_int, 1);
pub const LXW_PORTRAIT = @as(c_int, 1);
pub const LXW_LANDSCAPE = @as(c_int, 0);
pub const LXW_SCHEMA_MS = "http://schemas.microsoft.com/office/2006/relationships";
pub const LXW_SCHEMA_ROOT = "http://schemas.openxmlformats.org";
pub const LXW_SCHEMA_DRAWING = LXW_SCHEMA_ROOT ++ "/drawingml/2006";
pub const LXW_SCHEMA_OFFICEDOC = LXW_SCHEMA_ROOT ++ "/officeDocument/2006";
pub const LXW_SCHEMA_PACKAGE = LXW_SCHEMA_ROOT ++ "/package/2006/relationships";
pub const LXW_SCHEMA_DOCUMENT = LXW_SCHEMA_ROOT ++ "/officeDocument/2006/relationships";
pub const LXW_SCHEMA_CONTENT = LXW_SCHEMA_ROOT ++ "/package/2006/content-types";
pub const LXW_PRINTF = std.c.printf;

// pub inline fn LXW_MEM_ERROR() @TypeOf(LXW_ERROR("Memory allocation failed.")) {
//     return LXW_ERROR("Memory allocation failed.");
// }
// pub inline fn LXW_WARN(message: anytype) @TypeOf(LXW_PRINTF(LXW_STDERR ++ "[WARNING]: " ++ message ++ "\n")) {
//     return LXW_PRINTF(LXW_STDERR ++ "[WARNING]: " ++ message ++ "\n");
// }
// pub inline fn LXW_WARN_FORMAT(message: anytype) @TypeOf(LXW_PRINTF(LXW_STDERR ++ "[WARNING]: " ++ message ++ "\n")) {
//     return LXW_PRINTF(LXW_STDERR ++ "[WARNING]: " ++ message ++ "\n");
// }
// pub inline fn LXW_WARN_FORMAT1(message: anytype, @"var": anytype) @TypeOf(LXW_PRINTF(LXW_STDERR ++ "[WARNING]: " ++ message ++ "\n", @"var")) {
//     return LXW_PRINTF(LXW_STDERR ++ "[WARNING]: " ++ message ++ "\n", @"var");
// }
// pub inline fn LXW_WARN_FORMAT2(message: anytype, var1: anytype, var2: anytype) @TypeOf(LXW_PRINTF(LXW_STDERR ++ "[WARNING]: " ++ message ++ "\n", var1, var2)) {
//     return LXW_PRINTF(LXW_STDERR ++ "[WARNING]: " ++ message ++ "\n", var1, var2);
// }
// pub inline fn LXW_WARN_FORMAT3(message: anytype, var1: anytype, var2: anytype, var3: anytype) @TypeOf(LXW_PRINTF(LXW_STDERR ++ "[WARNING]: " ++ message ++ "\n", var1, var2, var3)) {
//     return LXW_PRINTF(LXW_STDERR ++ "[WARNING]: " ++ message ++ "\n", var1, var2, var3);
// }
// pub inline fn LXW_UINT16_HOST(n: anytype) @TypeOf(n) {
//     return n;
// }
// pub inline fn LXW_UINT32_HOST(n: anytype) @TypeOf(n) {
//     return n;
// }
// pub inline fn LXW_UINT16_NETWORK(n: anytype) @TypeOf(((n & @as(c_int, 0x00FF)) << @as(c_int, 8)) | ((n & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFF00, .hexadecimal)) >> @as(c_int, 8))) {
//     return ((n & @as(c_int, 0x00FF)) << @as(c_int, 8)) | ((n & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFF00, .hexadecimal)) >> @as(c_int, 8));
// }
// pub inline fn LXW_UINT32_NETWORK(n: anytype) @TypeOf(((((n & @as(c_int, 0xFF)) << @as(c_int, 24)) | ((n & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFF00, .hexadecimal)) << @as(c_int, 8))) | ((n & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFF0000, .hexadecimal)) >> @as(c_int, 8))) | ((n & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFF000000, .hexadecimal)) >> @as(c_int, 24))) {
//     return ((((n & @as(c_int, 0xFF)) << @as(c_int, 24)) | ((n & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFF00, .hexadecimal)) << @as(c_int, 8))) | ((n & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFF0000, .hexadecimal)) >> @as(c_int, 8))) | ((n & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFF000000, .hexadecimal)) >> @as(c_int, 24));
// }
// pub inline fn lxw_strcpy(dest: anytype, src: anytype) @TypeOf(lxw_snprintf(dest, @import("std").zig.c_translation.sizeof(dest), "%s", src)) {
//     return lxw_snprintf(dest, @import("std").zig.c_translation.sizeof(dest), "%s", src);
// }

pub const LXW_FORMAT_FIELD_LEN = @as(c_int, 128);
pub const LXW_DEFAULT_FONT_NAME = "Calibri";
pub const LXW_DEFAULT_FONT_FAMILY = @as(c_int, 2);
pub const LXW_DEFAULT_FONT_THEME = @as(c_int, 1);
pub const LXW_PROPERTY_UNSET = -@as(c_int, 1);
pub const LXW_COLOR_UNSET = @as(c_int, 0x000000);
pub const LXW_COLOR_MASK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFFFF, .hexadecimal);
pub const LXW_MIN_FONT_SIZE = @as(f64, 1.0);
pub const LXW_MAX_FONT_SIZE = @as(f64, 409.0);
pub const LXW_CHART_NUM_FORMAT_LEN = @as(c_int, 128);
pub const LXW_CHART_DEFAULT_GAP = @as(c_int, 501);

pub const LXW_MAX_ATTRIBUTE_LENGTH = @as(c_int, 2080);
pub const LXW_ATTR_32 = @as(c_int, 32);
pub inline fn CELL(cell: anytype) @TypeOf(lxw_name_to_col(cell)) {
    return blk: {
        _ = lxw_name_to_row(cell);
        break :blk lxw_name_to_col(cell);
    };
}
pub inline fn COLS(cols: anytype) @TypeOf(lxw_name_to_col_2(cols)) {
    return blk: {
        _ = lxw_name_to_col(cols);
        break :blk lxw_name_to_col_2(cols);
    };
}
pub inline fn RANGE(range: anytype) @TypeOf(lxw_name_to_col_2(range)) {
    return blk: {
        _ = lxw_name_to_row(range);
        _ = lxw_name_to_col(range);
        _ = lxw_name_to_row_2(range);
        break :blk lxw_name_to_col_2(range);
    };
}
// pub inline fn lxw_sprintf_dbl(data: anytype, number: anytype) @TypeOf(lxw_snprintf(data, LXW_ATTR_32, "%.16G", number)) {
//     return lxw_snprintf(data, LXW_ATTR_32, "%.16G", number);
// }
pub const LXW_ROW_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 1048576, .decimal);
pub const LXW_COL_MAX = @as(c_int, 16384);
pub const LXW_COL_META_MAX = @as(c_int, 128);
pub const LXW_HEADER_FOOTER_MAX = @as(c_int, 255);
pub const LXW_MAX_NUMBER_URLS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65530, .decimal);
pub const LXW_PANE_NAME_LENGTH = @as(c_int, 12);
pub const LXW_IMAGE_BUFFER_SIZE = @as(c_int, 1024);
pub const LXW_HEADER_FOOTER_OBJS_MAX = @as(c_int, 6);
pub const LXW_BREAKS_MAX = @as(c_int, 1023);
pub const LXW_DEF_COL_WIDTH = @import("std").zig.c_translation.cast(f64, @as(f64, 8.43));
pub const LXW_DEF_ROW_HEIGHT = @import("std").zig.c_translation.cast(f64, @as(f64, 15.0));
pub const LXW_DEF_COL_WIDTH_PIXELS = @as(c_int, 64);
pub const LXW_DEF_ROW_HEIGHT_PIXELS = @as(c_int, 20);
pub const __LXW_CHARTSHEET_H__ = "";
pub const LXW_DEFINED_NAME_LENGTH = @as(c_int, 128);
pub const LXW_VERSION = "1.1.4";
pub const LXW_VERSION_ID = @as(c_int, 114);
pub const LXW_SOVERSION = "4";

pub const lxw_boolean = enum_lxw_boolean;
pub const lxw_custom_property_types = enum_lxw_custom_property_types;
pub const lxw_hash_order_list = struct_lxw_hash_order_list;
pub const lxw_hash_bucket_list = struct_lxw_hash_bucket_list;
pub const lxw_formats = struct_lxw_formats;
pub const lxw_tuples = struct_lxw_tuples;
pub const lxw_custom_properties = struct_lxw_custom_properties;
pub const sst_element = struct_sst_element;
pub const sst_rb_tree = struct_sst_rb_tree;
pub const sst_order_list = struct_sst_order_list;
pub const lxw_format_underlines = enum_lxw_format_underlines;
pub const lxw_format_scripts = enum_lxw_format_scripts;
pub const lxw_format_alignments = enum_lxw_format_alignments;
pub const lxw_format_diagonal_types = enum_lxw_format_diagonal_types;
pub const lxw_defined_colors = enum_lxw_defined_colors;
pub const lxw_format_patterns = enum_lxw_format_patterns;
pub const lxw_format_borders = enum_lxw_format_borders;
pub const lxw_series_data_points = struct_lxw_series_data_points;
pub const lxw_chart_series_list = struct_lxw_chart_series_list;
pub const lxw_chart_subtype = enum_lxw_chart_subtype;
pub const lxw_chart_grouping = enum_lxw_chart_grouping;
pub const lxw_chart_axis_tick_mark = enum_lxw_chart_axis_tick_mark;
pub const lxw_chart_position = enum_lxw_chart_position;
pub const lxw_drawing_objects = struct_lxw_drawing_objects;
pub const lxw_drawing_types = enum_lxw_drawing_types;
pub const image_types = enum_image_types;
pub const xml_attribute = struct_xml_attribute;
pub const xml_attribute_list = struct_xml_attribute_list;
pub const lxw_rel_tuples = struct_lxw_rel_tuples;
pub const lxw_gridlines = enum_lxw_gridlines;
pub const lxw_validation_boolean = enum_lxw_validation_boolean;
pub const lxw_validation_types = enum_lxw_validation_types;
pub const lxw_validation_criteria = enum_lxw_validation_criteria;
pub const lxw_validation_error_types = enum_lxw_validation_error_types;
pub const lxw_comment_display_types = enum_lxw_comment_display_types;
pub const lxw_conditional_format_types = enum_lxw_conditional_format_types;
pub const lxw_conditional_criteria = enum_lxw_conditional_criteria;
pub const lxw_conditional_format_rule_types = enum_lxw_conditional_format_rule_types;
pub const lxw_conditional_format_bar_direction = enum_lxw_conditional_format_bar_direction;
pub const lxw_conditional_bar_axis_position = enum_lxw_conditional_bar_axis_position;
pub const lxw_conditional_icon_types = enum_lxw_conditional_icon_types;
pub const lxw_table_style_type = enum_lxw_table_style_type;
pub const lxw_table_total_functions = enum_lxw_table_total_functions;
pub const lxw_filter_criteria = enum_lxw_filter_criteria;
pub const lxw_filter_operator = enum_lxw_filter_operator;
pub const lxw_filter_type = enum_lxw_filter_type;
pub const lxw_object_position = enum_lxw_object_position;
pub const lxw_ignore_errors = enum_lxw_ignore_errors;
pub const cell_types = enum_cell_types;
pub const pane_types = enum_pane_types;
pub const lxw_image_position = enum_lxw_image_position;
pub const lxw_table_cells = struct_lxw_table_cells;
pub const lxw_drawing_rel_ids = struct_lxw_drawing_rel_ids;
pub const lxw_vml_drawing_rel_ids = struct_lxw_vml_drawing_rel_ids;
pub const lxw_cond_format_list = struct_lxw_cond_format_list;
pub const lxw_cond_format_hash = struct_lxw_cond_format_hash;
pub const lxw_table_rows = struct_lxw_table_rows;
pub const lxw_merged_ranges = struct_lxw_merged_ranges;
pub const lxw_selections = struct_lxw_selections;
pub const lxw_data_validations = struct_lxw_data_validations;
pub const lxw_image_props = struct_lxw_image_props;
pub const lxw_chart_props = struct_lxw_chart_props;
pub const lxw_comment_objs = struct_lxw_comment_objs;
pub const lxw_table_objs = struct_lxw_table_objs;
pub const lxw_worksheet_names = struct_lxw_worksheet_names;
pub const lxw_chartsheet_names = struct_lxw_chartsheet_names;
pub const lxw_image_md5s = struct_lxw_image_md5s;
pub const lxw_sheets = struct_lxw_sheets;
pub const lxw_worksheets = struct_lxw_worksheets;
pub const lxw_chartsheets = struct_lxw_chartsheets;
pub const lxw_charts = struct_lxw_charts;
pub const lxw_defined_names = struct_lxw_defined_names;
