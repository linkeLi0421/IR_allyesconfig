; ModuleID = '/llk/IR_all_yes/lib/string_helpers.c_pt.bc'
source_filename = "../lib/string_helpers.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+string_get_size\22, \22a\22\09"
module asm "\09.weak\09__crc_string_get_size\09\09\09\09"
module asm "\09.long\09__crc_string_get_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_string_get_size:\09\09\09\09\09"
module asm "\09.asciz \09\22string_get_size\22\09\09\09\09\09"
module asm "__kstrtabns_string_get_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+string_unescape\22, \22a\22\09"
module asm "\09.weak\09__crc_string_unescape\09\09\09\09"
module asm "\09.long\09__crc_string_unescape\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_string_unescape:\09\09\09\09\09"
module asm "\09.asciz \09\22string_unescape\22\09\09\09\09\09"
module asm "__kstrtabns_string_unescape:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+string_escape_mem\22, \22a\22\09"
module asm "\09.weak\09__crc_string_escape_mem\09\09\09\09"
module asm "\09.long\09__crc_string_escape_mem\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_string_escape_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22string_escape_mem\22\09\09\09\09\09"
module asm "__kstrtabns_string_escape_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kstrdup_quotable\22, \22a\22\09"
module asm "\09.weak\09__crc_kstrdup_quotable\09\09\09\09"
module asm "\09.long\09__crc_kstrdup_quotable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrdup_quotable:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrdup_quotable\22\09\09\09\09\09"
module asm "__kstrtabns_kstrdup_quotable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kstrdup_quotable_cmdline\22, \22a\22\09"
module asm "\09.weak\09__crc_kstrdup_quotable_cmdline\09\09\09\09"
module asm "\09.long\09__crc_kstrdup_quotable_cmdline\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrdup_quotable_cmdline:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrdup_quotable_cmdline\22\09\09\09\09\09"
module asm "__kstrtabns_kstrdup_quotable_cmdline:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kstrdup_quotable_file\22, \22a\22\09"
module asm "\09.weak\09__crc_kstrdup_quotable_file\09\09\09\09"
module asm "\09.long\09__crc_kstrdup_quotable_file\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrdup_quotable_file:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrdup_quotable_file\22\09\09\09\09\09"
module asm "__kstrtabns_kstrdup_quotable_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kasprintf_strarray\22, \22a\22\09"
module asm "\09.weak\09__crc_kasprintf_strarray\09\09\09\09"
module asm "\09.long\09__crc_kasprintf_strarray\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kasprintf_strarray:\09\09\09\09\09"
module asm "\09.asciz \09\22kasprintf_strarray\22\09\09\09\09\09"
module asm "__kstrtabns_kasprintf_strarray:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kfree_strarray\22, \22a\22\09"
module asm "\09.weak\09__crc_kfree_strarray\09\09\09\09"
module asm "\09.long\09__crc_kfree_strarray\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kfree_strarray:\09\09\09\09\09"
module asm "\09.asciz \09\22kfree_strarray\22\09\09\09\09\09"
module asm "__kstrtabns_kfree_strarray:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_kasprintf_strarray\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_kasprintf_strarray\09\09\09\09"
module asm "\09.long\09__crc_devm_kasprintf_strarray\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_kasprintf_strarray:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_kasprintf_strarray\22\09\09\09\09\09"
module asm "__kstrtabns_devm_kasprintf_strarray:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+strscpy_pad\22, \22a\22\09"
module asm "\09.weak\09__crc_strscpy_pad\09\09\09\09"
module asm "\09.long\09__crc_strscpy_pad\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strscpy_pad:\09\09\09\09\09"
module asm "\09.asciz \09\22strscpy_pad\22\09\09\09\09\09"
module asm "__kstrtabns_strscpy_pad:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+skip_spaces\22, \22a\22\09"
module asm "\09.weak\09__crc_skip_spaces\09\09\09\09"
module asm "\09.long\09__crc_skip_spaces\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skip_spaces:\09\09\09\09\09"
module asm "\09.asciz \09\22skip_spaces\22\09\09\09\09\09"
module asm "__kstrtabns_skip_spaces:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+strim\22, \22a\22\09"
module asm "\09.weak\09__crc_strim\09\09\09\09"
module asm "\09.long\09__crc_strim\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strim:\09\09\09\09\09"
module asm "\09.asciz \09\22strim\22\09\09\09\09\09"
module asm "__kstrtabns_strim:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sysfs_streq\22, \22a\22\09"
module asm "\09.weak\09__crc_sysfs_streq\09\09\09\09"
module asm "\09.long\09__crc_sysfs_streq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_streq:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_streq\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_streq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+match_string\22, \22a\22\09"
module asm "\09.weak\09__crc_match_string\09\09\09\09"
module asm "\09.long\09__crc_match_string\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_match_string:\09\09\09\09\09"
module asm "\09.asciz \09\22match_string\22\09\09\09\09\09"
module asm "__kstrtabns_match_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__sysfs_match_string\22, \22a\22\09"
module asm "\09.weak\09__crc___sysfs_match_string\09\09\09\09"
module asm "\09.long\09__crc___sysfs_match_string\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sysfs_match_string:\09\09\09\09\09"
module asm "\09.asciz \09\22__sysfs_match_string\22\09\09\09\09\09"
module asm "__kstrtabns___sysfs_match_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+strreplace\22, \22a\22\09"
module asm "\09.weak\09__crc_strreplace\09\09\09\09"
module asm "\09.long\09__crc_strreplace\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strreplace:\09\09\09\09\09"
module asm "\09.asciz \09\22strreplace\22\09\09\09\09\09"
module asm "__kstrtabns_strreplace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+memcpy_and_pad\22, \22a\22\09"
module asm "\09.weak\09__crc_memcpy_and_pad\09\09\09\09"
module asm "\09.long\09__crc_memcpy_and_pad\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memcpy_and_pad:\09\09\09\09\09"
module asm "\09.asciz \09\22memcpy_and_pad\22\09\09\09\09\09"
module asm "__kstrtabns_memcpy_and_pad:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.strarray = type { ptr, i32 }

@string_get_size.units_10 = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"kB\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MB\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"GB\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TB\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PB\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"EB\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ZB\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"YB\00", [29 x i8] zeroinitializer }, align 32
@string_get_size.units_2 = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"KiB\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MiB\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GiB\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TiB\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PiB\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EiB\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ZiB\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"YiB\00", [28 x i8] zeroinitializer }, align 32
@string_get_size.units_str = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @string_get_size.units_10, ptr @string_get_size.units_2], [24 x i8] zeroinitializer }, align 32
@string_get_size.divisor = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1000, i32 1024], [24 x i8] zeroinitializer }, align 32
@string_get_size.rounding = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 500, i32 50, i32 5], [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c".%03u\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UNK\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%u%s %s\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_string_get_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_string_get_size = external dso_local constant [0 x i8], align 1
@__ksymtab_string_get_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @string_get_size to i32), ptr @__kstrtab_string_get_size, ptr @__kstrtabns_string_get_size }, section "___ksymtab+string_get_size", align 4
@__kstrtab_string_unescape = external dso_local constant [0 x i8], align 1
@__kstrtabns_string_unescape = external dso_local constant [0 x i8], align 1
@__ksymtab_string_unescape = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @string_unescape to i32), ptr @__kstrtab_string_unescape, ptr @__kstrtabns_string_unescape }, section "___ksymtab+string_unescape", align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__kstrtab_string_escape_mem = external dso_local constant [0 x i8], align 1
@__kstrtabns_string_escape_mem = external dso_local constant [0 x i8], align 1
@__ksymtab_string_escape_mem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @string_escape_mem to i32), ptr @__kstrtab_string_escape_mem, ptr @__kstrtabns_string_escape_mem }, section "___ksymtab+string_escape_mem", align 4
@__const.kstrdup_quotable.esc = private unnamed_addr constant [10 x i8] c"\0C\0A\0D\09\0B\07\1B\\\22\00", align 1
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lib/string_helpers.c\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_kstrdup_quotable = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrdup_quotable = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrdup_quotable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrdup_quotable to i32), ptr @__kstrtab_kstrdup_quotable, ptr @__kstrtabns_kstrdup_quotable }, section "___ksymtab_gpl+kstrdup_quotable", align 4
@__kstrtab_kstrdup_quotable_cmdline = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrdup_quotable_cmdline = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrdup_quotable_cmdline = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrdup_quotable_cmdline to i32), ptr @__kstrtab_kstrdup_quotable_cmdline, ptr @__kstrtabns_kstrdup_quotable_cmdline }, section "___ksymtab_gpl+kstrdup_quotable_cmdline", align 4
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<unknown>\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"<no_memory>\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"<too_long>\00", [21 x i8] zeroinitializer }, align 32
@__kstrtab_kstrdup_quotable_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrdup_quotable_file = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrdup_quotable_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrdup_quotable_file to i32), ptr @__kstrtab_kstrdup_quotable_file, ptr @__kstrtabns_kstrdup_quotable_file }, section "___ksymtab_gpl+kstrdup_quotable_file", align 4
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s-%zu\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_kasprintf_strarray = external dso_local constant [0 x i8], align 1
@__kstrtabns_kasprintf_strarray = external dso_local constant [0 x i8], align 1
@__ksymtab_kasprintf_strarray = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kasprintf_strarray to i32), ptr @__kstrtab_kasprintf_strarray, ptr @__kstrtabns_kasprintf_strarray }, section "___ksymtab_gpl+kasprintf_strarray", align 4
@__kstrtab_kfree_strarray = external dso_local constant [0 x i8], align 1
@__kstrtabns_kfree_strarray = external dso_local constant [0 x i8], align 1
@__ksymtab_kfree_strarray = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kfree_strarray to i32), ptr @__kstrtab_kfree_strarray, ptr @__kstrtabns_kfree_strarray }, section "___ksymtab_gpl+kfree_strarray", align 4
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"devm_kfree_strarray\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_devm_kasprintf_strarray = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_kasprintf_strarray = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_kasprintf_strarray = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_kasprintf_strarray to i32), ptr @__kstrtab_devm_kasprintf_strarray, ptr @__kstrtabns_devm_kasprintf_strarray }, section "___ksymtab_gpl+devm_kasprintf_strarray", align 4
@__kstrtab_strscpy_pad = external dso_local constant [0 x i8], align 1
@__kstrtabns_strscpy_pad = external dso_local constant [0 x i8], align 1
@__ksymtab_strscpy_pad = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strscpy_pad to i32), ptr @__kstrtab_strscpy_pad, ptr @__kstrtabns_strscpy_pad }, section "___ksymtab+strscpy_pad", align 4
@__kstrtab_skip_spaces = external dso_local constant [0 x i8], align 1
@__kstrtabns_skip_spaces = external dso_local constant [0 x i8], align 1
@__ksymtab_skip_spaces = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skip_spaces to i32), ptr @__kstrtab_skip_spaces, ptr @__kstrtabns_skip_spaces }, section "___ksymtab+skip_spaces", align 4
@__kstrtab_strim = external dso_local constant [0 x i8], align 1
@__kstrtabns_strim = external dso_local constant [0 x i8], align 1
@__ksymtab_strim = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strim to i32), ptr @__kstrtab_strim, ptr @__kstrtabns_strim }, section "___ksymtab+strim", align 4
@__kstrtab_sysfs_streq = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_streq = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_streq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_streq to i32), ptr @__kstrtab_sysfs_streq, ptr @__kstrtabns_sysfs_streq }, section "___ksymtab+sysfs_streq", align 4
@__kstrtab_match_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_match_string = external dso_local constant [0 x i8], align 1
@__ksymtab_match_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @match_string to i32), ptr @__kstrtab_match_string, ptr @__kstrtabns_match_string }, section "___ksymtab+match_string", align 4
@__kstrtab___sysfs_match_string = external dso_local constant [0 x i8], align 1
@__kstrtabns___sysfs_match_string = external dso_local constant [0 x i8], align 1
@__ksymtab___sysfs_match_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sysfs_match_string to i32), ptr @__kstrtab___sysfs_match_string, ptr @__kstrtabns___sysfs_match_string }, section "___ksymtab+__sysfs_match_string", align 4
@__kstrtab_strreplace = external dso_local constant [0 x i8], align 1
@__kstrtabns_strreplace = external dso_local constant [0 x i8], align 1
@__ksymtab_strreplace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strreplace to i32), ptr @__kstrtab_strreplace, ptr @__kstrtabns_strreplace }, section "___ksymtab+strreplace", align 4
@__kstrtab_memcpy_and_pad = external dso_local constant [0 x i8], align 1
@__kstrtabns_memcpy_and_pad = external dso_local constant [0 x i8], align 1
@__ksymtab_memcpy_and_pad = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memcpy_and_pad to i32), ptr @__kstrtab_memcpy_and_pad, ptr @__kstrtabns_memcpy_and_pad }, section "___ksymtab+memcpy_and_pad", align 4
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.string_unescape = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\0C\0A\0A\0A\0A\0A\0D\09\0B", [23 x i8] zeroinitializer }, align 32
@switch.table.string_escape_mem = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tnvfr", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 34, i64 92, i64 97, i64 101]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 8, i64 7, i64 27, i64 34, i64 92]
@___asan_gen_.27 = private unnamed_addr constant [9 x i8] c"units_10\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 38, i32 27 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 39, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 39, i32 8 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 39, i32 14 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 39, i32 20 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 39, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 39, i32 32 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 39, i32 38 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 39, i32 44 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 39, i32 50 }
@___asan_gen_.57 = private unnamed_addr constant [8 x i8] c"units_2\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 41, i32 27 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 42, i32 8 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 42, i32 15 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 42, i32 22 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 42, i32 29 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 42, i32 36 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 42, i32 43 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 42, i32 50 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 42, i32 57 }
@___asan_gen_.84 = private unnamed_addr constant [10 x i8] c"units_str\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 44, i32 34 }
@___asan_gen_.87 = private unnamed_addr constant [8 x i8] c"divisor\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 48, i32 28 }
@___asan_gen_.90 = private unnamed_addr constant [9 x i8] c"rounding\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 52, i32 28 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 119, i32 30 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 125, i32 10 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 129, i32 21 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 610, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 660, i32 18 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 665, i32 18 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 669, i32 22 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 700, i32 29 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [24 x i8] c"../lib/string_helpers.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 750, i32 8 }
@___asan_gen_.120 = private unnamed_addr constant [29 x i8] c"switch.table.string_unescape\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [31 x i8] c"switch.table.string_escape_mem\00", align 1
@llvm.compiler.used = appending global [50 x ptr] [ptr @__ksymtab___sysfs_match_string, ptr @__ksymtab_devm_kasprintf_strarray, ptr @__ksymtab_kasprintf_strarray, ptr @__ksymtab_kfree_strarray, ptr @__ksymtab_kstrdup_quotable, ptr @__ksymtab_kstrdup_quotable_cmdline, ptr @__ksymtab_kstrdup_quotable_file, ptr @__ksymtab_match_string, ptr @__ksymtab_memcpy_and_pad, ptr @__ksymtab_skip_spaces, ptr @__ksymtab_strim, ptr @__ksymtab_string_escape_mem, ptr @__ksymtab_string_get_size, ptr @__ksymtab_string_unescape, ptr @__ksymtab_strreplace, ptr @__ksymtab_strscpy_pad, ptr @__ksymtab_sysfs_streq, ptr @string_get_size.units_10, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @string_get_size.units_2, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @string_get_size.units_str, ptr @string_get_size.divisor, ptr @string_get_size.rounding, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @switch.table.string_unescape, ptr @switch.table.string_escape_mem], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @string_get_size.units_10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @string_get_size.units_2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @string_get_size.units_str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @string_get_size.divisor to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @string_get_size.rounding to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.string_unescape to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.string_escape_mem to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @string_get_size(i64 noundef %size, i64 noundef %blk_size, i32 noundef %units, ptr nocapture noundef writeonly %buf, i32 noundef %len) #0 align 64 {
entry:
  %tmp = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #15
  %0 = getelementptr inbounds i8, ptr %tmp, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 7)
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %tmp, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %blk_size)
  %cmp = icmp eq i64 %blk_size, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size)
  %cmp1 = icmp eq i64 %size, 0
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %entry.if.else678_crit_edge, label %while.cond.preheader

entry.if.else678_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else678

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %blk_size)
  %tobool.not1091 = icmp ult i64 %blk_size, 4294967296
  br i1 %tobool.not1091, label %while.cond.preheader.while.cond190.preheader_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.cond190.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond190.preheader

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %arrayidx4 = getelementptr [2 x i32], ptr @string_get_size.divisor, i32 0, i32 %units
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx4, align 4
  br label %if.else184

while.cond190.preheader.loopexit:                 ; preds = %if.else184
  call void @__sanitizer_cov_trace_pc() #14
  %asmresult1.i.le = extractvalue { i64, i64 } %7, 1
  br label %while.cond190.preheader

while.cond190.preheader:                          ; preds = %while.cond190.preheader.loopexit, %while.cond.preheader.while.cond190.preheader_crit_edge
  %blk_size.addr.0.lcssa = phi i64 [ %blk_size, %while.cond.preheader.while.cond190.preheader_crit_edge ], [ %asmresult1.i.le, %while.cond190.preheader.loopexit ]
  %i.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.cond190.preheader_crit_edge ], [ %inc, %while.cond190.preheader.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %size)
  %tobool192.not1095 = icmp ult i64 %size, 4294967296
  br i1 %tobool192.not1095, label %while.cond190.preheader.while.end417_crit_edge, label %while.body193.lr.ph

while.cond190.preheader.while.end417_crit_edge:   ; preds = %while.cond190.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end417

while.body193.lr.ph:                              ; preds = %while.cond190.preheader
  %arrayidx195 = getelementptr [2 x i32], ptr @string_get_size.divisor, i32 0, i32 %units
  %5 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx195, align 4
  br label %if.else410

if.else184:                                       ; preds = %if.else184.if.else184_crit_edge, %while.body.lr.ph
  %i.01093 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.else184.if.else184_crit_edge ]
  %blk_size.addr.01092 = phi i64 [ %blk_size, %while.body.lr.ph ], [ %asmresult1.i, %if.else184.if.else184_crit_edge ]
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %4, i64 %blk_size.addr.01092) #16, !srcloc !104
  %asmresult1.i = extractvalue { i64, i64 } %7, 1
  %inc = add i32 %i.01093, 1
  %tobool.not = icmp ult i64 %asmresult1.i, 4294967296
  br i1 %tobool.not, label %while.cond190.preheader.loopexit, label %if.else184.if.else184_crit_edge

if.else184.if.else184_crit_edge:                  ; preds = %if.else184
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else184

if.else410:                                       ; preds = %if.else410.if.else410_crit_edge, %while.body193.lr.ph
  %i.11097 = phi i32 [ %i.0.lcssa, %while.body193.lr.ph ], [ %inc416, %if.else410.if.else410_crit_edge ]
  %size.addr.11096 = phi i64 [ %size, %while.body193.lr.ph ], [ %asmresult1.i975, %if.else410.if.else410_crit_edge ]
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %6, i64 %size.addr.11096) #16, !srcloc !104
  %asmresult1.i975 = extractvalue { i64, i64 } %8, 1
  %inc416 = add i32 %i.11097, 1
  %tobool192.not = icmp ult i64 %asmresult1.i975, 4294967296
  br i1 %tobool192.not, label %while.end417.loopexit, label %if.else410.if.else410_crit_edge

if.else410.if.else410_crit_edge:                  ; preds = %if.else410
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else410

while.end417.loopexit:                            ; preds = %if.else410
  call void @__sanitizer_cov_trace_pc() #14
  %asmresult1.i975.le = extractvalue { i64, i64 } %8, 1
  br label %while.end417

while.end417:                                     ; preds = %while.end417.loopexit, %while.cond190.preheader.while.end417_crit_edge
  %size.addr.1.lcssa = phi i64 [ %size, %while.cond190.preheader.while.end417_crit_edge ], [ %asmresult1.i975.le, %while.end417.loopexit ]
  %i.1.lcssa = phi i32 [ %i.0.lcssa, %while.cond190.preheader.while.end417_crit_edge ], [ %inc416, %while.end417.loopexit ]
  %mul418 = mul i64 %size.addr.1.lcssa, %blk_size.addr.0.lcssa
  %arrayidx420 = getelementptr [2 x i32], ptr @string_get_size.divisor, i32 0, i32 %units
  %9 = ptrtoint ptr %arrayidx420 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx420, align 4
  %conv421 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul418, i64 %conv421)
  %cmp422.not1100 = icmp ult i64 %mul418, %conv421
  br i1 %cmp422.not1100, label %while.end417.while.end648_crit_edge, label %while.end417.if.else625_crit_edge

while.end417.if.else625_crit_edge:                ; preds = %while.end417
  br label %if.else625

while.end417.while.end648_crit_edge:              ; preds = %while.end417
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end648

if.else625:                                       ; preds = %if.end645.if.else625_crit_edge, %while.end417.if.else625_crit_edge
  %i.21102 = phi i32 [ %inc647, %if.end645.if.else625_crit_edge ], [ %i.1.lcssa, %while.end417.if.else625_crit_edge ]
  %size.addr.31101 = phi i64 [ %size.addr.4, %if.end645.if.else625_crit_edge ], [ %mul418, %while.end417.if.else625_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %size.addr.31101)
  %cmp627 = icmp ult i64 %size.addr.31101, 4294967296
  br i1 %cmp627, label %if.then635, label %if.else641, !prof !105

if.then635:                                       ; preds = %if.else625
  call void @__sanitizer_cov_trace_pc() #14
  %conv636 = trunc i64 %size.addr.31101 to i32
  %conv636.frozen = freeze i32 %conv636
  %.frozen = freeze i32 %10
  %div639 = udiv i32 %conv636.frozen, %.frozen
  %11 = mul i32 %div639, %.frozen
  %rem637.decomposed = sub i32 %conv636.frozen, %11
  %conv640 = zext i32 %div639 to i64
  br label %if.end645

if.else641:                                       ; preds = %if.else625
  call void @__sanitizer_cov_trace_pc() #14
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %10, i64 %size.addr.31101) #16, !srcloc !104
  %asmresult.i1002 = extractvalue { i64, i64 } %12, 0
  %asmresult1.i1003 = extractvalue { i64, i64 } %12, 1
  %shr.i1004 = lshr i64 %asmresult.i1002, 32
  %conv.i1005 = trunc i64 %shr.i1004 to i32
  br label %if.end645

if.end645:                                        ; preds = %if.else641, %if.then635
  %size.addr.4 = phi i64 [ %conv640, %if.then635 ], [ %asmresult1.i1003, %if.else641 ]
  %__rem427.0 = phi i32 [ %rem637.decomposed, %if.then635 ], [ %conv.i1005, %if.else641 ]
  %inc647 = add i32 %i.21102, 1
  %cmp422.not = icmp ult i64 %size.addr.4, %conv421
  br i1 %cmp422.not, label %if.end645.while.end648_crit_edge, label %if.end645.if.else625_crit_edge

if.end645.if.else625_crit_edge:                   ; preds = %if.end645
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else625

if.end645.while.end648_crit_edge:                 ; preds = %if.end645
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end648

while.end648:                                     ; preds = %if.end645.while.end648_crit_edge, %while.end417.while.end648_crit_edge
  %size.addr.3.lcssa = phi i64 [ %mul418, %while.end417.while.end648_crit_edge ], [ %size.addr.4, %if.end645.while.end648_crit_edge ]
  %remainder.0.lcssa = phi i32 [ 0, %while.end417.while.end648_crit_edge ], [ %__rem427.0, %if.end645.while.end648_crit_edge ]
  %i.2.lcssa = phi i32 [ %i.1.lcssa, %while.end417.while.end648_crit_edge ], [ %inc647, %if.end645.while.end648_crit_edge ]
  %conv649 = trunc i64 %size.addr.3.lcssa to i32
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %while.end648
  %sf_cap.0 = phi i32 [ %conv649, %while.end648 ], [ %mul650, %for.cond.for.cond_crit_edge ]
  %j.0 = phi i32 [ 0, %while.end648 ], [ %inc654, %for.cond.for.cond_crit_edge ]
  %mul650 = mul i32 %sf_cap.0, 10
  %cmp651 = icmp ult i32 %mul650, 1000
  %inc654 = add i32 %j.0, 1
  br i1 %cmp651, label %for.cond.for.cond_crit_edge, label %for.end

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %units)
  %cmp655 = icmp eq i32 %units, 1
  %mul658 = mul i32 %remainder.0.lcssa, 1000
  %shr659 = lshr i32 %mul658, 10
  %remainder.1 = select i1 %cmp655, i32 %shr659, i32 %remainder.0.lcssa
  %arrayidx661 = getelementptr [3 x i32], ptr @string_get_size.rounding, i32 0, i32 %j.0
  %13 = ptrtoint ptr %arrayidx661 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx661, align 4
  %add662 = add i32 %14, %remainder.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %add662)
  %cmp663 = icmp ugt i32 %add662, 999
  %add667 = zext i1 %cmp663 to i64
  %size.addr.5 = add i64 %size.addr.3.lcssa, %add667
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0)
  %tobool669.not = icmp eq i32 %j.0, 0
  br i1 %tobool669.not, label %for.end.out_crit_edge, label %if.then670

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then670:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub666 = add i32 %add662, -1000
  %remainder.2 = select i1 %cmp663, i32 %sub666, i32 %add662
  %call671 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp, i32 noundef 8, ptr noundef nonnull @.str.17, i32 noundef %remainder.2)
  %arrayidx673 = getelementptr [8 x i8], ptr %tmp, i32 0, i32 %inc654
  %15 = ptrtoint ptr %arrayidx673 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx673, align 1
  br label %out

out:                                              ; preds = %if.then670, %for.end.out_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.2.lcssa)
  %cmp675 = icmp ugt i32 %i.2.lcssa, 8
  %extract.t1089 = trunc i64 %size.addr.5 to i32
  br i1 %cmp675, label %out.if.end681_crit_edge, label %out.if.else678_crit_edge

out.if.else678_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else678

out.if.end681_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end681

if.else678:                                       ; preds = %out.if.else678_crit_edge, %entry.if.else678_crit_edge
  %i.31085 = phi i32 [ %i.2.lcssa, %out.if.else678_crit_edge ], [ 0, %entry.if.else678_crit_edge ]
  %size.addr.61083.off0 = phi i32 [ %extract.t1089, %out.if.else678_crit_edge ], [ 0, %entry.if.else678_crit_edge ]
  %arrayidx679 = getelementptr [2 x ptr], ptr @string_get_size.units_str, i32 0, i32 %units
  %16 = ptrtoint ptr %arrayidx679 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx679, align 4
  %arrayidx680 = getelementptr ptr, ptr %17, i32 %i.31085
  %18 = ptrtoint ptr %arrayidx680 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx680, align 4
  br label %if.end681

if.end681:                                        ; preds = %if.else678, %out.if.end681_crit_edge
  %size.addr.61084.off0 = phi i32 [ %size.addr.61083.off0, %if.else678 ], [ %extract.t1089, %out.if.end681_crit_edge ]
  %unit.0 = phi ptr [ %19, %if.else678 ], [ @.str.18, %out.if.end681_crit_edge ]
  %call684 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.19, i32 noundef %size.addr.61084.off0, ptr noundef nonnull %tmp, ptr noundef %unit.0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @string_unescape(ptr noundef %src, ptr noundef %dst, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %src, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not88 = icmp eq i8 %1, 0
  br i1 %tobool.not88, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %and16 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %and23 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %and30 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br label %land.rhs

land.rhs:                                         ; preds = %while.cond.backedge.land.rhs_crit_edge, %land.rhs.lr.ph
  %2 = phi i8 [ %1, %land.rhs.lr.ph ], [ %42, %while.cond.backedge.land.rhs_crit_edge ]
  %size.addr.091 = phi i32 [ %size, %land.rhs.lr.ph ], [ %size.addr.0.be, %while.cond.backedge.land.rhs_crit_edge ]
  %out.090 = phi ptr [ %dst, %land.rhs.lr.ph ], [ %out.0.be, %while.cond.backedge.land.rhs_crit_edge ]
  %src.addr.089 = phi ptr [ %src, %land.rhs.lr.ph ], [ %src.addr.0.be, %while.cond.backedge.land.rhs_crit_edge ]
  %dec = add i32 %size.addr.091, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool1.not = icmp eq i32 %dec, 0
  br i1 %tobool1.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %2)
  %cmp = icmp eq i8 %2, 92
  br i1 %cmp, label %land.lhs.true, label %while.body.if.end38_crit_edge

while.body.if.end38_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

land.lhs.true:                                    ; preds = %while.body
  %arrayidx4 = getelementptr i8, ptr %src.addr.089, i32 1
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp6.not = icmp eq i8 %4, 0
  br i1 %cmp6.not, label %land.lhs.true.if.end38_crit_edge, label %land.lhs.true8

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

land.lhs.true8:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp9 = icmp ugt i32 %dec, 1
  br i1 %cmp9, label %if.then, label %land.lhs.true8.if.end38_crit_edge

land.lhs.true8.if.end38_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then:                                          ; preds = %land.lhs.true8
  %dec11 = add i32 %size.addr.091, -2
  br i1 %tobool12.not, label %if.then.if.end_crit_edge, label %land.lhs.true13

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true13:                                  ; preds = %if.then
  %conv.i = zext i8 %4 to i32
  %5 = add nsw i32 %conv.i, -102
  %6 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 31) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %6)
  %7 = icmp ult i32 %6, 9
  br i1 %7, label %switch.hole_check, label %land.lhs.true13.if.end_crit_edge

land.lhs.true13.if.end_crit_edge:                 ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

switch.hole_check:                                ; preds = %land.lhs.true13
  %switch.maskindex = trunc i32 %6 to i16
  %switch.shifted = lshr i16 465, %switch.maskindex
  %8 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %switch.lobit.not = icmp eq i16 %8, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end_crit_edge, label %switch.lookup

switch.hole_check.if.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [9 x i8], ptr @switch.table.string_unescape, i32 0, i32 %6
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %9)
  %switch.load = load i8, ptr %switch.gep, align 1
  %10 = ptrtoint ptr %out.090 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %switch.load, ptr %out.090, align 1
  %add.ptr.i = getelementptr i8, ptr %out.090, i32 1
  %add.ptr5.i = getelementptr i8, ptr %src.addr.089, i32 2
  br label %while.cond.backedge

if.end:                                           ; preds = %switch.hole_check.if.end_crit_edge, %land.lhs.true13.if.end_crit_edge, %if.then.if.end_crit_edge
  br i1 %tobool17.not, label %if.end.if.end22_crit_edge, label %land.lhs.true18

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

land.lhs.true18:                                  ; preds = %if.end
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx4, align 1
  %13 = and i8 %12, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %13)
  %.not.i = icmp eq i8 %13, 48
  br i1 %.not.i, label %if.end.i, label %land.lhs.true18.if.end22_crit_edge

land.lhs.true18.if.end22_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.end.i:                                         ; preds = %land.lhs.true18
  %14 = and i8 %12, 7
  %q.030.i = getelementptr i8, ptr %src.addr.089, i32 2
  %15 = ptrtoint ptr %q.030.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %q.030.i, align 1
  %17 = and i8 %16, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %17)
  %18 = icmp eq i8 %17, 48
  br i1 %18, label %while.body.i, label %if.end.i.unescape_octal.exit_crit_edge

if.end.i.unescape_octal.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unescape_octal.exit

while.body.i:                                     ; preds = %if.end.i
  %shl.i = shl nuw nsw i8 %14, 3
  %19 = and i8 %16, 7
  %add29.i = or i8 %19, %shl.i
  %q.0.i = getelementptr i8, ptr %src.addr.089, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %add29.i)
  %cmp3.i = icmp ult i8 %add29.i, 32
  br i1 %cmp3.i, label %land.lhs.true.i.1, label %while.body.i.unescape_octal.exit_crit_edge

while.body.i.unescape_octal.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unescape_octal.exit

land.lhs.true.i.1:                                ; preds = %while.body.i
  %20 = ptrtoint ptr %q.0.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %q.0.i, align 1
  %22 = and i8 %21, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %22)
  %23 = icmp eq i8 %22, 48
  br i1 %23, label %while.body.i.1, label %land.lhs.true.i.1.unescape_octal.exit_crit_edge

land.lhs.true.i.1.unescape_octal.exit_crit_edge:  ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %unescape_octal.exit

while.body.i.1:                                   ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #14
  %shl.i.1 = shl nuw i8 %add29.i, 3
  %24 = and i8 %21, 7
  %add29.i.1 = or i8 %24, %shl.i.1
  %q.0.i.1 = getelementptr i8, ptr %src.addr.089, i32 4
  br label %unescape_octal.exit

unescape_octal.exit:                              ; preds = %while.body.i.1, %land.lhs.true.i.1.unescape_octal.exit_crit_edge, %while.body.i.unescape_octal.exit_crit_edge, %if.end.i.unescape_octal.exit_crit_edge
  %num.0.lcssa.i = phi i8 [ %add29.i, %while.body.i.unescape_octal.exit_crit_edge ], [ %14, %if.end.i.unescape_octal.exit_crit_edge ], [ %add29.i, %land.lhs.true.i.1.unescape_octal.exit_crit_edge ], [ %add29.i.1, %while.body.i.1 ]
  %q.0.lcssa.i = phi ptr [ %q.0.i, %while.body.i.unescape_octal.exit_crit_edge ], [ %q.030.i, %if.end.i.unescape_octal.exit_crit_edge ], [ %q.0.i, %land.lhs.true.i.1.unescape_octal.exit_crit_edge ], [ %q.0.i.1, %while.body.i.1 ]
  %25 = ptrtoint ptr %out.090 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %num.0.lcssa.i, ptr %out.090, align 1
  %add.ptr.i47 = getelementptr i8, ptr %out.090, i32 1
  br label %while.cond.backedge

if.end22:                                         ; preds = %land.lhs.true18.if.end22_crit_edge, %if.end.if.end22_crit_edge
  br i1 %tobool24.not, label %if.end22.if.end29_crit_edge, label %land.lhs.true25

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true25:                                  ; preds = %if.end22
  %26 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 120, i8 %27)
  %cmp.not.i = icmp eq i8 %27, 120
  br i1 %cmp.not.i, label %if.end.i48, label %land.lhs.true25.if.end29_crit_edge

land.lhs.true25.if.end29_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.end.i48:                                       ; preds = %land.lhs.true25
  %incdec.ptr.i = getelementptr i8, ptr %src.addr.089, i32 2
  %28 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr.i, align 1
  %call.i = tail call i32 @hex_to_bin(i8 noundef zeroext %29) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp slt i32 %call.i, 0
  br i1 %cmp4.i, label %if.end.i48.if.end29_crit_edge, label %unescape_hex.exit

if.end.i48.if.end29_crit_edge:                    ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

unescape_hex.exit:                                ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr2.i = getelementptr i8, ptr %src.addr.089, i32 3
  %30 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %incdec.ptr2.i, align 1
  %call8.i = tail call i32 @hex_to_bin(i8 noundef zeroext %31) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8.i)
  %cmp9.i = icmp sgt i32 %call8.i, -1
  %incdec.ptr12.i = getelementptr i8, ptr %src.addr.089, i32 4
  %conv13.i = shl i32 %call.i, 4
  %or.i = or i32 %call8.i, %conv13.i
  %q.0.i49 = select i1 %cmp9.i, ptr %incdec.ptr12.i, ptr %incdec.ptr2.i
  %num.0.in.i = select i1 %cmp9.i, i32 %or.i, i32 %call.i
  %num.0.i = trunc i32 %num.0.in.i to i8
  %32 = ptrtoint ptr %out.090 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %num.0.i, ptr %out.090, align 1
  %add.ptr.i50 = getelementptr i8, ptr %out.090, i32 1
  br label %while.cond.backedge

if.end29:                                         ; preds = %if.end.i48.if.end29_crit_edge, %land.lhs.true25.if.end29_crit_edge, %if.end22.if.end29_crit_edge
  br i1 %tobool31.not, label %if.end29.if.end36_crit_edge, label %land.lhs.true32

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

land.lhs.true32:                                  ; preds = %if.end29
  %33 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx4, align 1
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i8 %34, label %land.lhs.true32.if.end36_crit_edge [
    i8 34, label %land.lhs.true32.unescape_special.exit_crit_edge
    i8 92, label %sw.bb1.i52
    i8 97, label %sw.bb2.i53
    i8 101, label %sw.bb3.i54
  ]

land.lhs.true32.unescape_special.exit_crit_edge:  ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %unescape_special.exit

land.lhs.true32.if.end36_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

sw.bb1.i52:                                       ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %unescape_special.exit

sw.bb2.i53:                                       ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %unescape_special.exit

sw.bb3.i54:                                       ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %unescape_special.exit

unescape_special.exit:                            ; preds = %sw.bb3.i54, %sw.bb2.i53, %sw.bb1.i52, %land.lhs.true32.unescape_special.exit_crit_edge
  %.sink.i55 = phi i8 [ 27, %sw.bb3.i54 ], [ 7, %sw.bb2.i53 ], [ 92, %sw.bb1.i52 ], [ %34, %land.lhs.true32.unescape_special.exit_crit_edge ]
  %36 = ptrtoint ptr %out.090 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.sink.i55, ptr %out.090, align 1
  %add.ptr.i56 = getelementptr i8, ptr %out.090, i32 1
  %add.ptr4.i = getelementptr i8, ptr %src.addr.089, i32 2
  br label %while.cond.backedge

if.end36:                                         ; preds = %land.lhs.true32.if.end36_crit_edge, %if.end29.if.end36_crit_edge
  %incdec.ptr37 = getelementptr i8, ptr %out.090, i32 1
  %37 = ptrtoint ptr %out.090 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 92, ptr %out.090, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.end36, %land.lhs.true8.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge, %while.body.if.end38_crit_edge
  %src.addr.9 = phi ptr [ %src.addr.089, %land.lhs.true.if.end38_crit_edge ], [ %arrayidx4, %if.end36 ], [ %src.addr.089, %land.lhs.true8.if.end38_crit_edge ], [ %src.addr.089, %while.body.if.end38_crit_edge ]
  %out.9 = phi ptr [ %out.090, %land.lhs.true.if.end38_crit_edge ], [ %incdec.ptr37, %if.end36 ], [ %out.090, %land.lhs.true8.if.end38_crit_edge ], [ %out.090, %while.body.if.end38_crit_edge ]
  %size.addr.1 = phi i32 [ %dec, %land.lhs.true.if.end38_crit_edge ], [ %dec11, %if.end36 ], [ 1, %land.lhs.true8.if.end38_crit_edge ], [ %dec, %while.body.if.end38_crit_edge ]
  %incdec.ptr39 = getelementptr i8, ptr %src.addr.9, i32 1
  %38 = ptrtoint ptr %src.addr.9 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %src.addr.9, align 1
  %incdec.ptr40 = getelementptr i8, ptr %out.9, i32 1
  %40 = ptrtoint ptr %out.9 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %out.9, align 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end38, %unescape_special.exit, %unescape_hex.exit, %unescape_octal.exit, %switch.lookup
  %src.addr.0.be = phi ptr [ %incdec.ptr39, %if.end38 ], [ %add.ptr4.i, %unescape_special.exit ], [ %q.0.i49, %unescape_hex.exit ], [ %q.0.lcssa.i, %unescape_octal.exit ], [ %add.ptr5.i, %switch.lookup ]
  %out.0.be = phi ptr [ %incdec.ptr40, %if.end38 ], [ %add.ptr.i56, %unescape_special.exit ], [ %add.ptr.i50, %unescape_hex.exit ], [ %add.ptr.i47, %unescape_octal.exit ], [ %add.ptr.i, %switch.lookup ]
  %size.addr.0.be = phi i32 [ %size.addr.1, %if.end38 ], [ %dec11, %unescape_special.exit ], [ %dec11, %unescape_hex.exit ], [ %dec11, %unescape_octal.exit ], [ %dec11, %switch.lookup ]
  %41 = ptrtoint ptr %src.addr.0.be to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %src.addr.0.be, align 1
  %tobool.not = icmp eq i8 %42, 0
  br i1 %tobool.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.land.rhs_crit_edge

while.cond.backedge.land.rhs_crit_edge:           ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %out.0.lcssa = phi ptr [ %dst, %entry.while.end_crit_edge ], [ %out.0.be, %while.cond.backedge.while.end_crit_edge ], [ %out.090, %land.rhs.while.end_crit_edge ]
  %43 = ptrtoint ptr %out.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %out.0.lcssa, align 1
  %sub.ptr.lhs.cast = ptrtoint ptr %out.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %dst to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @string_escape_mem(ptr nocapture noundef readonly %src, i32 noundef %isz, ptr noundef %dst, i32 noundef %osz, i32 noundef %flags, ptr noundef readonly %only) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %dst, i32 %osz
  %tobool.not = icmp eq ptr %only, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %only to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %only, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1 = icmp ne i8 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %2 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool1, %land.rhs ]
  %and = and i32 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %isz)
  %tobool4.not239 = icmp eq i32 %isz, 0
  br i1 %tobool4.not239, label %land.end.while.end_crit_edge, label %while.body.lr.ph

land.end.while.end_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %land.end
  %tobool2.not.not = xor i1 %tobool2.not, true
  %.not = xor i1 %2, true
  %and36 = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %and56 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  %and73 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp ne i32 %and73, 0
  %and80 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  %and87 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  %and94 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp ne i32 %and94, 0
  %and101 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  %and108 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %dec247.in = phi i32 [ %isz, %while.body.lr.ph ], [ %dec247, %cleanup.while.body_crit_edge ]
  %src.addr.0246 = phi ptr [ %src, %while.body.lr.ph ], [ %incdec.ptr, %cleanup.while.body_crit_edge ]
  %p.0240 = phi ptr [ %dst, %while.body.lr.ph ], [ %incdec.ptr6.i, %cleanup.while.body_crit_edge ]
  %dec247 = add i32 %dec247.in, -1
  %incdec.ptr = getelementptr i8, ptr %src.addr.0246, i32 1
  %3 = ptrtoint ptr %src.addr.0246 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %src.addr.0246, align 1
  br i1 %2, label %land.end10, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.end10:                                       ; preds = %while.body
  %conv8 = zext i8 %4 to i32
  %call = tail call ptr @strchr(ptr noundef %only, i32 noundef %conv8)
  %tobool9 = icmp ne ptr %call, null
  %brmerge = select i1 %tobool2.not.not, i1 true, i1 %tobool9
  %brmerge162 = select i1 %brmerge, i1 true, i1 %.not
  br i1 %brmerge162, label %land.end10.if.end_crit_edge, label %land.lhs.true18

land.end10.if.end_crit_edge:                      ; preds = %land.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true18:                                  ; preds = %land.end10
  %cmp.i = icmp ult ptr %p.0240, %add.ptr
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true18.cleanup_crit_edge

land.lhs.true18.cleanup_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %p.0240 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %p.0240, align 1
  br label %cleanup

if.end:                                           ; preds = %land.end10.if.end_crit_edge, %while.body.if.end_crit_edge
  %6 = phi i1 [ %tobool9, %land.end10.if.end_crit_edge ], [ false, %while.body.if.end_crit_edge ]
  %.not163 = xor i1 %6, true
  %brmerge164 = select i1 %tobool2.not, i1 true, i1 %.not163
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp = icmp sgt i8 %4, -1
  %or.cond = select i1 %brmerge164, i1 %cmp, i1 false
  br i1 %or.cond, label %land.lhs.true29, label %if.end.if.end42_crit_edge

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

land.lhs.true29:                                  ; preds = %if.end
  %conv27 = zext i8 %4 to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv27
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = and i8 %8, -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp33.not = icmp eq i8 %9, 0
  %or.cond165 = or i1 %tobool37.not, %cmp33.not
  br i1 %or.cond165, label %land.lhs.true29.if.end42_crit_edge, label %land.lhs.true38

land.lhs.true29.if.end42_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

land.lhs.true38:                                  ; preds = %land.lhs.true29
  %cmp.i173 = icmp ult ptr %p.0240, %add.ptr
  br i1 %cmp.i173, label %if.then.i174, label %land.lhs.true38.cleanup_crit_edge

land.lhs.true38.cleanup_crit_edge:                ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i174:                                     ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %p.0240 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %4, ptr %p.0240, align 1
  br label %cleanup

if.end42:                                         ; preds = %land.lhs.true29.if.end42_crit_edge, %if.end.if.end42_crit_edge
  br i1 %brmerge164, label %land.lhs.true48, label %if.end42.if.end62_crit_edge

if.end42.if.end62_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

land.lhs.true48:                                  ; preds = %if.end42
  %conv49 = zext i8 %4 to i32
  %arrayidx50 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv49
  %11 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx50, align 1
  %13 = and i8 %12, -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp53.not = icmp eq i8 %13, 0
  %or.cond168 = or i1 %tobool57.not, %cmp53.not
  br i1 %or.cond168, label %land.lhs.true48.if.end62_crit_edge, label %land.lhs.true58

land.lhs.true48.if.end62_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

land.lhs.true58:                                  ; preds = %land.lhs.true48
  %cmp.i177 = icmp ult ptr %p.0240, %add.ptr
  br i1 %cmp.i177, label %if.then.i178, label %land.lhs.true58.cleanup_crit_edge

land.lhs.true58.cleanup_crit_edge:                ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i178:                                     ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %p.0240 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %4, ptr %p.0240, align 1
  br label %cleanup

if.end62:                                         ; preds = %land.lhs.true48.if.end62_crit_edge, %if.end42.if.end62_crit_edge
  %15 = and i1 %tobool74.not, %or.cond
  br i1 %15, label %land.lhs.true75, label %if.end79

land.lhs.true75:                                  ; preds = %if.end62
  %cmp.i181 = icmp ult ptr %p.0240, %add.ptr
  br i1 %cmp.i181, label %if.then.i182, label %land.lhs.true75.cleanup_crit_edge

land.lhs.true75.cleanup_crit_edge:                ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i182:                                     ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %p.0240 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %4, ptr %p.0240, align 1
  br label %cleanup

if.end79:                                         ; preds = %if.end62
  br i1 %tobool81.not, label %if.end79.if.end86_crit_edge, label %land.lhs.true82

if.end79.if.end86_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

land.lhs.true82:                                  ; preds = %if.end79
  %switch.tableidx = add i8 %4, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %17 = icmp ult i8 %switch.tableidx, 5
  br i1 %17, label %switch.lookup, label %land.lhs.true82.if.end86_crit_edge

land.lhs.true82.if.end86_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

switch.lookup:                                    ; preds = %land.lhs.true82
  %18 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.string_escape_mem, i32 0, i32 %18
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %19)
  %switch.load = load i8, ptr %switch.gep, align 1
  %cmp.i185 = icmp ult ptr %p.0240, %add.ptr
  br i1 %cmp.i185, label %if.then.i186, label %switch.lookup.if.end.i_crit_edge

switch.lookup.if.end.i_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i186:                                     ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %p.0240 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 92, ptr %p.0240, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i186, %switch.lookup.if.end.i_crit_edge
  %incdec.ptr.i = getelementptr i8, ptr %p.0240, i32 1
  %cmp6.i = icmp ult ptr %incdec.ptr.i, %add.ptr
  br i1 %cmp6.i, label %if.then8.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %switch.load, ptr %incdec.ptr.i, align 1
  br label %cleanup

if.end86:                                         ; preds = %land.lhs.true82.if.end86_crit_edge, %if.end79.if.end86_crit_edge
  br i1 %tobool88.not, label %if.end86.if.end93_crit_edge, label %land.lhs.true89

if.end86.if.end93_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

land.lhs.true89:                                  ; preds = %if.end86
  %22 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %4, label %land.lhs.true89.if.end93_crit_edge [
    i8 92, label %land.lhs.true89.sw.epilog.i192_crit_edge
    i8 7, label %sw.bb1.i187
    i8 27, label %sw.bb2.i188
    i8 34, label %sw.bb3.i189
  ]

land.lhs.true89.sw.epilog.i192_crit_edge:         ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i192

land.lhs.true89.if.end93_crit_edge:               ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

sw.bb1.i187:                                      ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i192

sw.bb2.i188:                                      ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i192

sw.bb3.i189:                                      ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i192

sw.epilog.i192:                                   ; preds = %sw.bb3.i189, %sw.bb2.i188, %sw.bb1.i187, %land.lhs.true89.sw.epilog.i192_crit_edge
  %to.0.i190 = phi i8 [ 34, %sw.bb3.i189 ], [ 101, %sw.bb2.i188 ], [ 97, %sw.bb1.i187 ], [ %4, %land.lhs.true89.sw.epilog.i192_crit_edge ]
  %cmp.i191 = icmp ult ptr %p.0240, %add.ptr
  br i1 %cmp.i191, label %if.then.i193, label %sw.epilog.i192.if.end.i195_crit_edge

sw.epilog.i192.if.end.i195_crit_edge:             ; preds = %sw.epilog.i192
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i195

if.then.i193:                                     ; preds = %sw.epilog.i192
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %p.0240 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 92, ptr %p.0240, align 1
  br label %if.end.i195

if.end.i195:                                      ; preds = %if.then.i193, %sw.epilog.i192.if.end.i195_crit_edge
  %incdec.ptr.i194 = getelementptr i8, ptr %p.0240, i32 1
  %cmp5.i = icmp ult ptr %incdec.ptr.i194, %add.ptr
  br i1 %cmp5.i, label %if.then7.i, label %if.end.i195.cleanup_crit_edge

if.end.i195.cleanup_crit_edge:                    ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7.i:                                       ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %incdec.ptr.i194 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %to.0.i190, ptr %incdec.ptr.i194, align 1
  br label %cleanup

if.end93:                                         ; preds = %land.lhs.true89.if.end93_crit_edge, %if.end86.if.end93_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %or.cond237 = select i1 %tobool95.not, i1 %tobool.not.i, i1 false
  %cmp.i197 = icmp ult ptr %p.0240, %add.ptr
  br i1 %or.cond237, label %if.end.i198, label %if.end100

if.end.i198:                                      ; preds = %if.end93
  br i1 %cmp.i197, label %if.then1.i, label %if.end.i198.if.end2.i_crit_edge

if.end.i198.if.end2.i_crit_edge:                  ; preds = %if.end.i198
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i198
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %p.0240 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 92, ptr %p.0240, align 1
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then1.i, %if.end.i198.if.end2.i_crit_edge
  %incdec.ptr.i199 = getelementptr i8, ptr %p.0240, i32 1
  %cmp3.i = icmp ult ptr %incdec.ptr.i199, %add.ptr
  br i1 %cmp3.i, label %if.then4.i, label %if.end2.i.cleanup_crit_edge

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %incdec.ptr.i199 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 48, ptr %incdec.ptr.i199, align 1
  br label %cleanup

if.end100:                                        ; preds = %if.end93
  br i1 %tobool102.not, label %if.end107, label %land.lhs.true103

land.lhs.true103:                                 ; preds = %if.end100
  br i1 %cmp.i197, label %if.then.i201, label %land.lhs.true103.if.end.i203_crit_edge

land.lhs.true103.if.end.i203_crit_edge:           ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i203

if.then.i201:                                     ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %p.0240 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 92, ptr %p.0240, align 1
  br label %if.end.i203

if.end.i203:                                      ; preds = %if.then.i201, %land.lhs.true103.if.end.i203_crit_edge
  %incdec.ptr.i202 = getelementptr i8, ptr %p.0240, i32 1
  %cmp1.i = icmp ult ptr %incdec.ptr.i202, %add.ptr
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i203.if.end4.i_crit_edge

if.end.i203.if.end4.i_crit_edge:                  ; preds = %if.end.i203
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i203
  call void @__sanitizer_cov_trace_pc() #14
  %28 = lshr i8 %4, 6
  %29 = or i8 %28, 48
  %30 = ptrtoint ptr %incdec.ptr.i202 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %incdec.ptr.i202, align 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i203.if.end4.i_crit_edge
  %incdec.ptr5.i = getelementptr i8, ptr %p.0240, i32 2
  %cmp6.i204 = icmp ult ptr %incdec.ptr5.i, %add.ptr
  br i1 %cmp6.i204, label %if.then8.i205, label %if.end4.i.if.end14.i_crit_edge

if.end4.i.if.end14.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.then8.i205:                                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = lshr i8 %4, 3
  %32 = and i8 %31, 7
  %33 = or i8 %32, 48
  %34 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %incdec.ptr5.i, align 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then8.i205, %if.end4.i.if.end14.i_crit_edge
  %incdec.ptr15.i = getelementptr i8, ptr %p.0240, i32 3
  %cmp16.i = icmp ult ptr %incdec.ptr15.i, %add.ptr
  br i1 %cmp16.i, label %if.then18.i, label %if.end14.i.cleanup_crit_edge

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = and i8 %4, 7
  %36 = or i8 %35, 48
  %37 = ptrtoint ptr %incdec.ptr15.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %incdec.ptr15.i, align 1
  br label %cleanup

if.end107:                                        ; preds = %if.end100
  br i1 %tobool109.not, label %if.end114, label %land.lhs.true110

land.lhs.true110:                                 ; preds = %if.end107
  br i1 %cmp.i197, label %if.then.i207, label %land.lhs.true110.if.end.i210_crit_edge

land.lhs.true110.if.end.i210_crit_edge:           ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i210

if.then.i207:                                     ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %p.0240 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 92, ptr %p.0240, align 1
  br label %if.end.i210

if.end.i210:                                      ; preds = %if.then.i207, %land.lhs.true110.if.end.i210_crit_edge
  %incdec.ptr.i208 = getelementptr i8, ptr %p.0240, i32 1
  %cmp1.i209 = icmp ult ptr %incdec.ptr.i208, %add.ptr
  br i1 %cmp1.i209, label %if.then2.i211, label %if.end.i210.if.end3.i_crit_edge

if.end.i210.if.end3.i_crit_edge:                  ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i

if.then2.i211:                                    ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %incdec.ptr.i208 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 120, ptr %incdec.ptr.i208, align 1
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i211, %if.end.i210.if.end3.i_crit_edge
  %incdec.ptr4.i = getelementptr i8, ptr %p.0240, i32 2
  %cmp5.i212 = icmp ult ptr %incdec.ptr4.i, %add.ptr
  br i1 %cmp5.i212, label %if.then6.i, label %if.end3.i.if.end7.i_crit_edge

if.end3.i.if.end7.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  %40 = lshr i8 %4, 4
  %41 = zext i8 %40 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i, align 1
  %44 = ptrtoint ptr %incdec.ptr4.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %incdec.ptr4.i, align 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end3.i.if.end7.i_crit_edge
  %incdec.ptr8.i = getelementptr i8, ptr %p.0240, i32 3
  %cmp9.i = icmp ult ptr %incdec.ptr8.i, %add.ptr
  br i1 %cmp9.i, label %if.then11.i, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = and i8 %4, 15
  %and13.i = zext i8 %45 to i32
  %arrayidx14.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and13.i
  %46 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx14.i, align 1
  %48 = ptrtoint ptr %incdec.ptr8.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %incdec.ptr8.i, align 1
  br label %cleanup

if.end114:                                        ; preds = %if.end107
  br i1 %cmp.i197, label %if.then.i214, label %if.end114.cleanup_crit_edge

if.end114.cleanup_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i214:                                     ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %p.0240 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %4, ptr %p.0240, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then.i214, %if.end114.cleanup_crit_edge, %if.then11.i, %if.end7.i.cleanup_crit_edge, %if.then18.i, %if.end14.i.cleanup_crit_edge, %if.then4.i, %if.end2.i.cleanup_crit_edge, %if.then7.i, %if.end.i195.cleanup_crit_edge, %if.then8.i, %if.end.i.cleanup_crit_edge, %if.then.i182, %land.lhs.true75.cleanup_crit_edge, %if.then.i178, %land.lhs.true58.cleanup_crit_edge, %if.then.i174, %land.lhs.true38.cleanup_crit_edge, %if.then.i, %land.lhs.true18.cleanup_crit_edge
  %.sink = phi i32 [ 1, %land.lhs.true18.cleanup_crit_edge ], [ 1, %if.then.i ], [ 1, %land.lhs.true38.cleanup_crit_edge ], [ 1, %if.then.i174 ], [ 1, %land.lhs.true58.cleanup_crit_edge ], [ 1, %if.then.i178 ], [ 1, %land.lhs.true75.cleanup_crit_edge ], [ 1, %if.then.i182 ], [ 2, %if.end.i.cleanup_crit_edge ], [ 2, %if.then8.i ], [ 2, %if.end.i195.cleanup_crit_edge ], [ 2, %if.then7.i ], [ 2, %if.end2.i.cleanup_crit_edge ], [ 2, %if.then4.i ], [ 4, %if.end14.i.cleanup_crit_edge ], [ 4, %if.then18.i ], [ 4, %if.end7.i.cleanup_crit_edge ], [ 4, %if.then11.i ], [ 1, %if.end114.cleanup_crit_edge ], [ 1, %if.then.i214 ]
  %incdec.ptr6.i = getelementptr i8, ptr %p.0240, i32 %.sink
  %tobool4.not = icmp eq i32 %dec247, 0
  br i1 %tobool4.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %land.end.while.end_crit_edge
  %p.0.lcssa = phi ptr [ %dst, %land.end.while.end_crit_edge ], [ %incdec.ptr6.i, %cleanup.while.end_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %p.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %dst to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kstrdup_quotable(ptr noundef readonly %src, i32 noundef %gfp) #0 align 64 {
entry:
  %esc = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %esc) #15
  %0 = call ptr @memcpy(ptr %esc, ptr @__const.kstrdup_quotable.esc, i32 10)
  %tobool.not = icmp eq ptr %src, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @strlen(ptr noundef nonnull %src) #17
  %1 = ptrtoint ptr %esc to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %esc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.i.not = icmp eq i8 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not239.i = icmp eq i32 %call, 0
  br i1 %tobool4.not239.i, label %if.end.if.end8.i_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.if.end8.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %dec247.in.i = phi i32 [ %dec247.i, %cleanup.i.while.body.i_crit_edge ], [ %call, %if.end.while.body.i_crit_edge ]
  %src.addr.0246.i = phi ptr [ %incdec.ptr.i, %cleanup.i.while.body.i_crit_edge ], [ %src, %if.end.while.body.i_crit_edge ]
  %p.0240.i = phi ptr [ %incdec.ptr6.i.i, %cleanup.i.while.body.i_crit_edge ], [ null, %if.end.while.body.i_crit_edge ]
  %dec247.i = add i32 %dec247.in.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %src.addr.0246.i, i32 1
  br i1 %tobool1.i.not, label %while.body.i.if.end.i45_crit_edge, label %land.end10.i

while.body.i.if.end.i45_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i45

land.end10.i:                                     ; preds = %while.body.i
  %3 = ptrtoint ptr %src.addr.0246.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %src.addr.0246.i, align 1
  %conv8.i = zext i8 %4 to i32
  %call.i = call ptr @strchr(ptr noundef nonnull %esc, i32 noundef %conv8.i) #15
  %tobool9.i.not = icmp eq ptr %call.i, null
  br i1 %tobool9.i.not, label %land.end10.i.cleanup.i_crit_edge, label %land.end10.i.if.end.i45_crit_edge

land.end10.i.if.end.i45_crit_edge:                ; preds = %land.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i45

land.end10.i.cleanup.i_crit_edge:                 ; preds = %land.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end.i45:                                       ; preds = %land.end10.i.if.end.i45_crit_edge, %while.body.i.if.end.i45_crit_edge
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i45, %land.end10.i.cleanup.i_crit_edge
  %.sink.i = phi i32 [ 4, %if.end.i45 ], [ 1, %land.end10.i.cleanup.i_crit_edge ]
  %incdec.ptr6.i.i = getelementptr i8, ptr %p.0240.i, i32 %.sink.i
  %tobool4.not.i = icmp eq i32 %dec247.i, 0
  br i1 %tobool4.not.i, label %string_escape_mem.exit.loopexit, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

string_escape_mem.exit.loopexit:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast = ptrtoint ptr %incdec.ptr6.i.i to i32
  br label %if.end8.i

if.end8.i:                                        ; preds = %string_escape_mem.exit.loopexit, %if.end.if.end8.i_crit_edge
  %p.0.lcssa.i = phi i32 [ 0, %if.end.if.end8.i_crit_edge ], [ %phi.cast, %string_escape_mem.exit.loopexit ]
  %add = add i32 %p.0.lcssa.i, 1
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef %gfp) #18
  %tobool3.not = icmp eq ptr %call9.i, null
  br i1 %tobool3.not, label %if.end8.i.cleanup_crit_edge, label %if.end5

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end8.i
  %call7 = call i32 @string_escape_mem(ptr noundef nonnull %src, i32 noundef %call, ptr noundef nonnull %call9.i, i32 noundef %p.0.lcssa.i, i32 noundef 32, ptr noundef nonnull %esc)
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %p.0.lcssa.i)
  %cmp.not = icmp eq i32 %call7, %p.0.lcssa.i
  br i1 %cmp.not, label %if.end5.if.end22_crit_edge, label %do.end, !prof !105

if.end5.if.end22_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 610, i32 noundef 9, ptr noundef null) #15
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.end5.if.end22_crit_edge
  %arrayidx = getelementptr i8, ptr %call9.i, i32 %p.0.lcssa.i
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i, %if.end22 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end8.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %esc) #15
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kstrdup_quotable_cmdline(ptr noundef %task, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4096) #19
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @get_cmdline(ptr noundef %task, ptr noundef nonnull %call7.i, i32 noundef 4095) #15
  %arrayidx = getelementptr i8, ptr %call7.i, i32 %call1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %arrayidx, align 1
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %if.end
  %res.0 = phi i32 [ %call1, %if.end ], [ %dec, %land.rhs.while.cond_crit_edge ]
  %dec = add i32 %res.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec)
  %cmp = icmp sgt i32 %dec, -1
  br i1 %cmp, label %land.rhs, label %while.cond.for.end_crit_edge

while.cond.for.end_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.rhs:                                         ; preds = %while.cond
  %arrayidx2 = getelementptr i8, ptr %call7.i, i32 %dec
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  %cmp3 = icmp eq i8 %3, 0
  br i1 %cmp3, label %land.rhs.while.cond_crit_edge, label %land.rhs.for.body_crit_edge

land.rhs.for.body_crit_edge:                      ; preds = %land.rhs
  br label %for.body

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %land.rhs.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %land.rhs.for.body_crit_edge ]
  %arrayidx7 = getelementptr i8, ptr %call7.i, i32 %i.032
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp9 = icmp eq i8 %5, 0
  br i1 %cmp9, label %if.then11, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 32, ptr %arrayidx7, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %for.body.for.inc_crit_edge
  %inc = add i32 %i.032, 1
  %cmp5.not = icmp sgt i32 %inc, %dec
  br i1 %cmp5.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %while.cond.for.end_crit_edge
  %call14 = tail call ptr @kstrdup_quotable(ptr noundef nonnull %call7.i, i32 noundef %gfp)
  tail call void @kfree(ptr noundef nonnull %call7.i) #15
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call14, %for.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_cmdline(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kstrdup_quotable_file(ptr noundef %file, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %tobool.not = icmp eq ptr %file, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call noalias ptr @kstrdup(ptr noundef nonnull @.str.21, i32 noundef %gfp) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4107) #19
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call noalias ptr @kstrdup(ptr noundef nonnull @.str.22, i32 noundef %gfp) #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @file_path(ptr noundef nonnull %file, ptr noundef nonnull %call7.i, i32 noundef 4107) #15
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call noalias ptr @kstrdup(ptr noundef nonnull @.str.23, i32 noundef %gfp) #15
  br label %if.end11

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %call10 = tail call ptr @kstrdup_quotable(ptr noundef %call6, i32 noundef %gfp)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %pathname.0 = phi ptr [ %call9, %if.then8 ], [ %call10, %if.else ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then3, %if.then
  %retval.0 = phi ptr [ %pathname.0, %if.end11 ], [ %call4, %if.then3 ], [ %call, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kasprintf_strarray(i32 noundef %gfp, ptr noundef %prefix, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %add = add i32 %n, 1
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #15
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !106

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %2 = extractvalue { i32, i1 } %0, 0
  %or.i = or i32 %gfp, 256
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef %or.i) #18
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp22.not = icmp eq i32 %n, 0
  br i1 %cmp22.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call1 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef %gfp, ptr noundef nonnull @.str.24, ptr noundef %prefix, i32 noundef %i.023) #15
  %arrayidx = getelementptr ptr, ptr %call8.i.i, i32 %i.023
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %for.cond.preheader.i, label %for.inc

for.cond.preheader.i:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.023)
  %cmp5.not.i = icmp eq i32 %i.023, 0
  br i1 %cmp5.not.i, label %for.cond.preheader.i.kfree_strarray.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.kfree_strarray.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kfree_strarray.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %call8.i.i, i32 %i.06.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %5) #15
  %inc.i = add nuw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %i.023
  br i1 %exitcond.not.i, label %for.body.i.kfree_strarray.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.kfree_strarray.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kfree_strarray.exit

kfree_strarray.exit:                              ; preds = %for.body.i.kfree_strarray.exit_crit_edge, %for.cond.preheader.i.kfree_strarray.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #15
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %kfree_strarray.exit, %for.cond.preheader.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %kfree_strarray.exit ], [ null, %if.end7.i.i.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ %call8.i.i, %for.cond.preheader.cleanup_crit_edge ], [ %call8.i.i, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kfree_strarray(ptr noundef %array, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %tobool.not = icmp eq ptr %array, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp5.not = icmp eq i32 %n, 0
  br i1 %cmp5.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %array, i32 %i.06
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %1) #15
  %inc = add nuw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %array) #15
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_kasprintf_strarray(ptr nocapture readnone %dev, ptr noundef %prefix, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_kfree_strarray, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.25) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.i = add i32 %n, 1
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 4) #15
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %if.end.kasprintf_strarray.exit.thread_crit_edge, label %if.end7.i.i.i, !prof !106

if.end.kasprintf_strarray.exit.thread_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %kasprintf_strarray.exit.thread

if.end7.i.i.i:                                    ; preds = %if.end
  %2 = extractvalue { i32, i1 } %0, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #18
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.kasprintf_strarray.exit.thread_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.kasprintf_strarray.exit.thread_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kasprintf_strarray.exit.thread

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp22.not.i = icmp eq i32 %n, 0
  br i1 %cmp22.not.i, label %for.cond.preheader.i.kasprintf_strarray.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.kasprintf_strarray.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kasprintf_strarray.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call1.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.24, ptr noundef %prefix, i32 noundef %i.023.i) #15
  %arrayidx.i = getelementptr ptr, ptr %call8.i.i.i, i32 %i.023.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1.i, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool3.not.i, label %for.cond.preheader.i.i, label %for.inc.i

for.cond.preheader.i.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.023.i)
  %cmp5.not.i.i = icmp eq i32 %i.023.i, 0
  br i1 %cmp5.not.i.i, label %for.cond.preheader.i.i.kfree_strarray.exit.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.kfree_strarray.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kfree_strarray.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.06.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %call8.i.i.i, i32 %i.06.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @kfree(ptr noundef %5) #15
  %inc.i.i = add nuw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %i.023.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.kfree_strarray.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.kfree_strarray.exit.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kfree_strarray.exit.i

kfree_strarray.exit.i:                            ; preds = %for.body.i.i.kfree_strarray.exit.i_crit_edge, %for.cond.preheader.i.i.kfree_strarray.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #15
  br label %kasprintf_strarray.exit.thread

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %n
  br i1 %exitcond.not.i, label %for.inc.i.kasprintf_strarray.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.kasprintf_strarray.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kasprintf_strarray.exit

kasprintf_strarray.exit.thread:                   ; preds = %kfree_strarray.exit.i, %if.end7.i.i.i.kasprintf_strarray.exit.thread_crit_edge, %if.end.kasprintf_strarray.exit.thread_crit_edge
  %6 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %call, align 4
  tail call void @devres_free(ptr noundef nonnull %call) #15
  br label %cleanup

kasprintf_strarray.exit:                          ; preds = %for.inc.i.kasprintf_strarray.exit_crit_edge, %for.cond.preheader.i.kasprintf_strarray.exit_crit_edge
  %7 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8.i.i.i, ptr %call, align 4
  br label %cleanup

cleanup:                                          ; preds = %kasprintf_strarray.exit, %kasprintf_strarray.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %kasprintf_strarray.exit.thread ], [ %call8.i.i.i, %kasprintf_strarray.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_kfree_strarray(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %n = getelementptr inbounds %struct.strarray, ptr %res, i32 0, i32 1
  %2 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.kfree_strarray.exit_crit_edge, label %for.cond.preheader.i

entry.kfree_strarray.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %kfree_strarray.exit

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5.not.i = icmp eq i32 %3, 0
  br i1 %cmp5.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %1, i32 %i.06.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %5) #15
  %inc.i = add nuw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #15
  br label %kfree_strarray.exit

kfree_strarray.exit:                              ; preds = %for.end.i, %entry.kfree_strarray.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @strscpy_pad(ptr noundef %dest, ptr noundef %src, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @strscpy(ptr noundef %dest, ptr noundef %src, i32 noundef %count) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %sub = add i32 %count, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %sub)
  %cmp1 = icmp eq i32 %call, %sub
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %dest, i32 %call
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 1
  %0 = xor i32 %call, -1
  %sub4 = add i32 %0, %count
  %1 = call ptr @memset(ptr %add.ptr2, i32 0, i32 %sub4)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @skip_spaces(ptr noundef readonly %str) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %str.addr.0 = phi ptr [ %str, %entry ], [ %incdec.ptr, %while.cond.while.cond_crit_edge ]
  %0 = ptrtoint ptr %str.addr.0 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %str.addr.0, align 1
  %conv = zext i8 %1 to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 32
  %cmp.not = icmp eq i8 %4, 0
  %incdec.ptr = getelementptr i8, ptr %str.addr.0, i32 1
  br i1 %cmp.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  ret ptr %str.addr.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @strim(ptr noundef %s) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @strlen(ptr noundef %s) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %s, i32 %call
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %if.end
  %add.ptr.pn = phi ptr [ %add.ptr, %if.end ], [ %end.0, %land.rhs.while.cond_crit_edge ]
  %end.0 = getelementptr i8, ptr %add.ptr.pn, i32 -1
  %cmp.not = icmp ult ptr %end.0, %s
  br i1 %cmp.not, label %while.cond.while.end_crit_edge, label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %0 = ptrtoint ptr %end.0 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %end.0, align 1
  %conv = zext i8 %1 to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 32
  %cmp3.not = icmp eq i8 %4, 0
  br i1 %cmp3.not, label %land.rhs.while.end_crit_edge, label %land.rhs.while.cond_crit_edge

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  %5 = ptrtoint ptr %add.ptr.pn to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %add.ptr.pn, align 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %while.end
  %str.addr.0.i = phi ptr [ %s, %while.end ], [ %incdec.ptr.i, %while.cond.i.while.cond.i_crit_edge ]
  %6 = ptrtoint ptr %str.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %str.addr.0.i, align 1
  %conv.i = zext i8 %7 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %10 = and i8 %9, 32
  %cmp.not.i = icmp eq i8 %10, 0
  %incdec.ptr.i = getelementptr i8, ptr %str.addr.0.i, i32 1
  br i1 %cmp.not.i, label %while.cond.i.cleanup_crit_edge, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %while.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %s, %entry.cleanup_crit_edge ], [ %str.addr.0.i, %while.cond.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @sysfs_streq(ptr nocapture noundef readonly %s1, ptr nocapture noundef readonly %s2) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %s1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %s1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not48 = icmp eq i8 %1, 0
  br i1 %tobool.not48, label %entry.while.endthread-pre-split_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.while.endthread-pre-split_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.endthread-pre-split

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %2 = phi i8 [ %6, %while.body.land.rhs_crit_edge ], [ %1, %entry.land.rhs_crit_edge ]
  %s2.addr.050 = phi ptr [ %incdec.ptr4, %while.body.land.rhs_crit_edge ], [ %s2, %entry.land.rhs_crit_edge ]
  %s1.addr.049 = phi ptr [ %incdec.ptr, %while.body.land.rhs_crit_edge ], [ %s1, %entry.land.rhs_crit_edge ]
  %3 = ptrtoint ptr %s2.addr.050 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %s2.addr.050, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %4)
  %cmp = icmp eq i8 %2, %4
  br i1 %cmp, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr i8, ptr %s1.addr.049, i32 1
  %incdec.ptr4 = getelementptr i8, ptr %s2.addr.050, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %incdec.ptr, align 1
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %while.body.while.endthread-pre-split_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

while.body.while.endthread-pre-split_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.endthread-pre-split

while.endthread-pre-split:                        ; preds = %while.body.while.endthread-pre-split_crit_edge, %entry.while.endthread-pre-split_crit_edge
  %s1.addr.0.lcssa = phi ptr [ %s1, %entry.while.endthread-pre-split_crit_edge ], [ %incdec.ptr, %while.body.while.endthread-pre-split_crit_edge ]
  %s2.addr.0.lcssa = phi ptr [ %s2, %entry.while.endthread-pre-split_crit_edge ], [ %incdec.ptr4, %while.body.while.endthread-pre-split_crit_edge ]
  %7 = ptrtoint ptr %s2.addr.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %7)
  %.pr = load i8, ptr %s2.addr.0.lcssa, align 1
  br label %while.end

while.end:                                        ; preds = %while.endthread-pre-split, %land.rhs.while.end_crit_edge
  %s1.addr.046 = phi ptr [ %s1.addr.0.lcssa, %while.endthread-pre-split ], [ %s1.addr.049, %land.rhs.while.end_crit_edge ]
  %s2.addr.044 = phi ptr [ %s2.addr.0.lcssa, %while.endthread-pre-split ], [ %s2.addr.050, %land.rhs.while.end_crit_edge ]
  %8 = phi i8 [ 0, %while.endthread-pre-split ], [ %2, %land.rhs.while.end_crit_edge ]
  %tobool.not41 = phi i1 [ true, %while.endthread-pre-split ], [ false, %land.rhs.while.end_crit_edge ]
  %9 = phi i8 [ %.pr, %while.endthread-pre-split ], [ %4, %land.rhs.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %9)
  %cmp7 = icmp eq i8 %8, %9
  br i1 %cmp7, label %while.end.return_crit_edge, label %if.end

while.end.return_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %9)
  %cmp11 = icmp eq i8 %9, 10
  %or.cond = select i1 %tobool.not41, i1 %cmp11, i1 false
  br i1 %or.cond, label %land.lhs.true13, label %if.end16

land.lhs.true13:                                  ; preds = %if.end
  %arrayidx = getelementptr i8, ptr %s2.addr.044, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool14.not = icmp eq i8 %11, 0
  br i1 %tobool14.not, label %land.lhs.true13.return_crit_edge, label %land.lhs.true13.if.end26_crit_edge

land.lhs.true13.if.end26_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

land.lhs.true13.return_crit_edge:                 ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %8)
  %cmp18 = icmp eq i8 %8, 10
  br i1 %cmp18, label %land.lhs.true20, label %if.end16.if.end26_crit_edge

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

land.lhs.true20:                                  ; preds = %if.end16
  %arrayidx21 = getelementptr i8, ptr %s1.addr.046, i32 1
  %12 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool22.not = icmp eq i8 %13, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool24.not = icmp eq i8 %9, 0
  %or.cond39 = select i1 %tobool22.not, i1 %tobool24.not, i1 false
  br i1 %or.cond39, label %land.lhs.true20.return_crit_edge, label %land.lhs.true20.if.end26_crit_edge

land.lhs.true20.if.end26_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

land.lhs.true20.return_crit_edge:                 ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end26:                                         ; preds = %land.lhs.true20.if.end26_crit_edge, %if.end16.if.end26_crit_edge, %land.lhs.true13.if.end26_crit_edge
  br label %return

return:                                           ; preds = %if.end26, %land.lhs.true20.return_crit_edge, %land.lhs.true13.return_crit_edge, %while.end.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end26 ], [ true, %while.end.return_crit_edge ], [ true, %land.lhs.true13.return_crit_edge ], [ true, %land.lhs.true20.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @match_string(ptr nocapture noundef readonly %array, i32 noundef %n, ptr nocapture noundef readonly %string) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp9.not = icmp eq i32 %n, 0
  br i1 %cmp9.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %index.010 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %array, i32 %index.010
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef %string) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %for.inc

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %if.end
  %inc = add nuw i32 %index.010, 1
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ %index.010, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__sysfs_match_string(ptr nocapture noundef readonly %array, i32 noundef %n, ptr nocapture noundef readonly %str) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp14.not = icmp eq i32 %n, 0
  br i1 %cmp14.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %index.015 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %array, i32 %index.015
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not48.i = icmp eq i8 %3, 0
  br i1 %tobool.not48.i, label %if.end.while.endthread-pre-split.i_crit_edge, label %if.end.land.rhs.i_crit_edge

if.end.land.rhs.i_crit_edge:                      ; preds = %if.end
  br label %land.rhs.i

if.end.while.endthread-pre-split.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.endthread-pre-split.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end.land.rhs.i_crit_edge
  %4 = phi i8 [ %8, %while.body.i.land.rhs.i_crit_edge ], [ %3, %if.end.land.rhs.i_crit_edge ]
  %s2.addr.050.i = phi ptr [ %incdec.ptr4.i, %while.body.i.land.rhs.i_crit_edge ], [ %str, %if.end.land.rhs.i_crit_edge ]
  %s1.addr.049.i = phi ptr [ %incdec.ptr.i, %while.body.i.land.rhs.i_crit_edge ], [ %1, %if.end.land.rhs.i_crit_edge ]
  %5 = ptrtoint ptr %s2.addr.050.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %s2.addr.050.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp.i = icmp eq i8 %4, %6
  br i1 %cmp.i, label %while.body.i, label %land.rhs.i.while.end.i_crit_edge

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  %incdec.ptr.i = getelementptr i8, ptr %s1.addr.049.i, i32 1
  %incdec.ptr4.i = getelementptr i8, ptr %s2.addr.050.i, i32 1
  %7 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr.i, align 1
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %while.body.i.while.endthread-pre-split.i_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

while.body.i.while.endthread-pre-split.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.endthread-pre-split.i

while.endthread-pre-split.i:                      ; preds = %while.body.i.while.endthread-pre-split.i_crit_edge, %if.end.while.endthread-pre-split.i_crit_edge
  %s1.addr.0.lcssa.i = phi ptr [ %1, %if.end.while.endthread-pre-split.i_crit_edge ], [ %incdec.ptr.i, %while.body.i.while.endthread-pre-split.i_crit_edge ]
  %s2.addr.0.lcssa.i = phi ptr [ %str, %if.end.while.endthread-pre-split.i_crit_edge ], [ %incdec.ptr4.i, %while.body.i.while.endthread-pre-split.i_crit_edge ]
  %9 = ptrtoint ptr %s2.addr.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %.pr.i = load i8, ptr %s2.addr.0.lcssa.i, align 1
  br label %while.end.i

while.end.i:                                      ; preds = %while.endthread-pre-split.i, %land.rhs.i.while.end.i_crit_edge
  %s1.addr.046.i = phi ptr [ %s1.addr.0.lcssa.i, %while.endthread-pre-split.i ], [ %s1.addr.049.i, %land.rhs.i.while.end.i_crit_edge ]
  %s2.addr.044.i = phi ptr [ %s2.addr.0.lcssa.i, %while.endthread-pre-split.i ], [ %s2.addr.050.i, %land.rhs.i.while.end.i_crit_edge ]
  %10 = phi i8 [ 0, %while.endthread-pre-split.i ], [ %4, %land.rhs.i.while.end.i_crit_edge ]
  %tobool.not41.i = phi i1 [ true, %while.endthread-pre-split.i ], [ false, %land.rhs.i.while.end.i_crit_edge ]
  %11 = phi i8 [ %.pr.i, %while.endthread-pre-split.i ], [ %6, %land.rhs.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %11)
  %cmp7.i = icmp eq i8 %10, %11
  br i1 %cmp7.i, label %while.end.i.cleanup_crit_edge, label %if.end.i

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %11)
  %cmp11.i = icmp eq i8 %11, 10
  %or.cond.i = select i1 %tobool.not41.i, i1 %cmp11.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true13.i, label %if.end16.i

land.lhs.true13.i:                                ; preds = %if.end.i
  %arrayidx.i = getelementptr i8, ptr %s2.addr.044.i, i32 1
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool14.not.i = icmp eq i8 %13, 0
  br i1 %tobool14.not.i, label %land.lhs.true13.i.cleanup_crit_edge, label %land.lhs.true13.i.for.inc_crit_edge

land.lhs.true13.i.for.inc_crit_edge:              ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true13.i.cleanup_crit_edge:              ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %10)
  %cmp18.i = icmp eq i8 %10, 10
  br i1 %cmp18.i, label %land.lhs.true20.i, label %if.end16.i.for.inc_crit_edge

if.end16.i.for.inc_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true20.i:                                ; preds = %if.end16.i
  %arrayidx21.i = getelementptr i8, ptr %s1.addr.046.i, i32 1
  %14 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx21.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool22.not.i = icmp eq i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool24.not.i = icmp eq i8 %11, 0
  %or.cond39.i = select i1 %tobool22.not.i, i1 %tobool24.not.i, i1 false
  br i1 %or.cond39.i, label %land.lhs.true20.i.cleanup_crit_edge, label %land.lhs.true20.i.for.inc_crit_edge

land.lhs.true20.i.for.inc_crit_edge:              ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true20.i.cleanup_crit_edge:              ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true20.i.for.inc_crit_edge, %if.end16.i.for.inc_crit_edge, %land.lhs.true13.i.for.inc_crit_edge
  %inc = add nuw i32 %index.015, 1
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true20.i.cleanup_crit_edge, %land.lhs.true13.i.cleanup_crit_edge, %while.end.i.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %index.015, %land.lhs.true20.i.cleanup_crit_edge ], [ %index.015, %land.lhs.true13.i.cleanup_crit_edge ], [ %index.015, %while.end.i.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @strreplace(ptr noundef %s, i8 noundef zeroext %old, i8 noundef zeroext %new) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %s, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not7 = icmp eq i8 %1, 0
  br i1 %tobool.not7, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %2 = phi i8 [ %5, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %s.addr.08 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %s, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %old)
  %cmp = icmp eq i8 %2, %old
  br i1 %cmp, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %s.addr.08 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %new, ptr %s.addr.08, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr i8, ptr %s.addr.08, i32 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %incdec.ptr, align 1
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %s.addr.0.lcssa = phi ptr [ %s, %entry.for.end_crit_edge ], [ %incdec.ptr, %for.inc.for.end_crit_edge ]
  ret ptr %s.addr.0.lcssa
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @memcpy_and_pad(ptr nocapture noundef writeonly %dest, i32 noundef %dest_len, ptr nocapture noundef readonly %src, i32 noundef %count, i32 noundef %pad) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_cmp4(i32 %dest_len, i32 %count)
  %cmp = icmp ugt i32 %dest_len, %count
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = call ptr @memcpy(ptr %dest, ptr %src, i32 %count)
  %add.ptr = getelementptr i8, ptr %dest, i32 %count
  %1 = trunc i32 %pad to i8
  %sub = sub i32 %dest_len, %count
  %2 = zext i8 %1 to i32
  %3 = call ptr @memset(ptr %add.ptr, i32 %2, i32 %sub)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = call ptr @memcpy(ptr %dest, ptr %src, i32 %dest_len)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind uwtable(sync) }
attributes #14 = { nomerge }
attributes #15 = { nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/string_helpers.c", i32 39, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/string_helpers.c", i32 39, i32 8}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../lib/string_helpers.c", i32 39, i32 14}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../lib/string_helpers.c", i32 39, i32 20}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../lib/string_helpers.c", i32 39, i32 26}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../lib/string_helpers.c", i32 39, i32 32}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/string_helpers.c", i32 39, i32 38}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../lib/string_helpers.c", i32 39, i32 44}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../lib/string_helpers.c", i32 39, i32 50}
!18 = !{ptr @string_get_size.units_10, !19, !"units_10", i1 false, i1 false}
!19 = !{!"../lib/string_helpers.c", i32 38, i32 27}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../lib/string_helpers.c", i32 42, i32 8}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../lib/string_helpers.c", i32 42, i32 15}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../lib/string_helpers.c", i32 42, i32 22}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../lib/string_helpers.c", i32 42, i32 29}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../lib/string_helpers.c", i32 42, i32 36}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../lib/string_helpers.c", i32 42, i32 43}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../lib/string_helpers.c", i32 42, i32 50}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../lib/string_helpers.c", i32 42, i32 57}
!36 = !{ptr @string_get_size.units_2, !37, !"units_2", i1 false, i1 false}
!37 = !{!"../lib/string_helpers.c", i32 41, i32 27}
!38 = !{ptr @string_get_size.units_str, !39, !"units_str", i1 false, i1 false}
!39 = !{!"../lib/string_helpers.c", i32 44, i32 34}
!40 = !{ptr @string_get_size.divisor, !41, !"divisor", i1 false, i1 false}
!41 = !{!"../lib/string_helpers.c", i32 48, i32 28}
!42 = !{ptr @string_get_size.rounding, !43, !"rounding", i1 false, i1 false}
!43 = !{!"../lib/string_helpers.c", i32 52, i32 28}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../lib/string_helpers.c", i32 119, i32 30}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../lib/string_helpers.c", i32 125, i32 10}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../lib/string_helpers.c", i32 129, i32 21}
!50 = !{ptr @__ksymtab_string_get_size, !51, !"__ksymtab_string_get_size", i1 false, i1 false}
!51 = !{!"../lib/string_helpers.c", i32 132, i32 1}
!52 = !{ptr @__ksymtab_string_unescape, !53, !"__ksymtab_string_unescape", i1 false, i1 false}
!53 = !{!"../lib/string_helpers.c", i32 302, i32 1}
!54 = !{ptr @__ksymtab_string_escape_mem, !55, !"__ksymtab_string_escape_mem", i1 false, i1 false}
!55 = !{!"../lib/string_helpers.c", i32 588, i32 1}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../lib/string_helpers.c", i32 610, i32 2}
!58 = !{ptr @__ksymtab_kstrdup_quotable, !59, !"__ksymtab_kstrdup_quotable", i1 false, i1 false}
!59 = !{!"../lib/string_helpers.c", i32 615, i32 1}
!60 = !{ptr @__ksymtab_kstrdup_quotable_cmdline, !61, !"__ksymtab_kstrdup_quotable_cmdline", i1 false, i1 false}
!61 = !{!"../lib/string_helpers.c", i32 648, i32 1}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../lib/string_helpers.c", i32 660, i32 18}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../lib/string_helpers.c", i32 665, i32 18}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../lib/string_helpers.c", i32 669, i32 22}
!68 = !{ptr @__ksymtab_kstrdup_quotable_file, !69, !"__ksymtab_kstrdup_quotable_file", i1 false, i1 false}
!69 = !{!"../lib/string_helpers.c", i32 676, i32 1}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../lib/string_helpers.c", i32 700, i32 29}
!72 = !{ptr @__ksymtab_kasprintf_strarray, !73, !"__ksymtab_kasprintf_strarray", i1 false, i1 false}
!73 = !{!"../lib/string_helpers.c", i32 709, i32 1}
!74 = !{ptr @__ksymtab_kfree_strarray, !75, !"__ksymtab_kfree_strarray", i1 false, i1 false}
!75 = !{!"../lib/string_helpers.c", i32 732, i32 1}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../lib/string_helpers.c", i32 750, i32 8}
!78 = !{ptr @__ksymtab_devm_kasprintf_strarray, !79, !"__ksymtab_devm_kasprintf_strarray", i1 false, i1 false}
!79 = !{!"../lib/string_helpers.c", i32 762, i32 1}
!80 = !{ptr @__ksymtab_strscpy_pad, !81, !"__ksymtab_strscpy_pad", i1 false, i1 false}
!81 = !{!"../lib/string_helpers.c", i32 796, i32 1}
!82 = !{ptr @__ksymtab_skip_spaces, !83, !"__ksymtab_skip_spaces", i1 false, i1 false}
!83 = !{!"../lib/string_helpers.c", i32 810, i32 1}
!84 = !{ptr @__ksymtab_strim, !85, !"__ksymtab_strim", i1 false, i1 false}
!85 = !{!"../lib/string_helpers.c", i32 836, i32 1}
!86 = !{ptr @__ksymtab_sysfs_streq, !87, !"__ksymtab_sysfs_streq", i1 false, i1 false}
!87 = !{!"../lib/string_helpers.c", i32 863, i32 1}
!88 = !{ptr @__ksymtab_match_string, !89, !"__ksymtab_match_string", i1 false, i1 false}
!89 = !{!"../lib/string_helpers.c", i32 897, i32 1}
!90 = !{ptr @__ksymtab___sysfs_match_string, !91, !"__ksymtab___sysfs_match_string", i1 false, i1 false}
!91 = !{!"../lib/string_helpers.c", i32 931, i32 1}
!92 = !{ptr @__ksymtab_strreplace, !93, !"__ksymtab_strreplace", i1 false, i1 false}
!93 = !{!"../lib/string_helpers.c", i32 948, i32 1}
!94 = !{ptr @__ksymtab_memcpy_and_pad, !95, !"__ksymtab_memcpy_and_pad", i1 false, i1 false}
!95 = !{!"../lib/string_helpers.c", i32 968, i32 1}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{i64 2148724841, i64 2148725121, i64 2148725455, i64 2148725789}
!105 = !{!"branch_weights", i32 2000, i32 1}
!106 = !{!"branch_weights", i32 1, i32 2000}
