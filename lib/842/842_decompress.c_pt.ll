; ModuleID = '/llk/IR_all_yes/lib/842/842_decompress.c_pt.bc'
source_filename = "../lib/842/842_decompress.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sw842_decompress\22, \22a\22\09"
module asm "\09.weak\09__crc_sw842_decompress\09\09\09\09"
module asm "\09.long\09__crc_sw842_decompress\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sw842_decompress:\09\09\09\09\09"
module asm "\09.asciz \09\22sw842_decompress\22\09\09\09\09\09"
module asm "__kstrtabns_sw842_decompress:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sw842_param = type { ptr, i8, i64, ptr, ptr, i64 }

@__param_str_template_counts = internal constant [31 x i8] c"842_decompress.template_counts\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@sw842_template_counts = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_template_counts = internal constant %struct.kernel_param { ptr @__param_str_template_counts, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @sw842_template_counts } }, section "__param", align 4
@__UNIQUE_ID_template_countstype200 = internal constant [45 x i8] c"842_decompress.parmtype=template_counts:bool\00", section ".modinfo", align 1
@sw842_debugfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sw842_decompress.__UNIQUE_ID_ddebug206 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"842_decompress\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sw842_decompress\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lib/842/842_decompress.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"template is %lx\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"842_decompress: template is %lx\0A\00", [63 x i8] zeroinitializer }, align 32
@template_repeat_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@template_zeros_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@template_short_data_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@template_end_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@sw842_decompress.__UNIQUE_ID_ddebug207 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CRC mismatch for decompression\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"842_decompress: CRC mismatch for decompression\0A\00", [48 x i8] zeroinitializer }, align 32
@__kstrtab_sw842_decompress = external dso_local constant [0 x i8], align 1
@__kstrtabns_sw842_decompress = external dso_local constant [0 x i8], align 1
@__ksymtab_sw842_decompress = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sw842_decompress to i32), ptr @__kstrtab_sw842_decompress, ptr @__kstrtabns_sw842_decompress }, section "___ksymtab_gpl+sw842_decompress", align 4
@__initcall__kmod_842_decompress__208_406_sw842_init6 = internal global ptr @sw842_init, section ".initcall6.init", align 4
@__exitcall_sw842_exit = internal global ptr @sw842_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file209 = internal constant [43 x i8] c"842_decompress.file=lib/842/842_decompress\00", section ".modinfo", align 1
@__UNIQUE_ID_license210 = internal constant [27 x i8] c"842_decompress.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description211 = internal constant [53 x i8] c"842_decompress.description=Software 842 Decompressor\00", section ".modinfo", align 1
@__UNIQUE_ID_author212 = internal constant [56 x i8] c"842_decompress.author=Dan Streetman <ddstreet@ieee.org>\00", section ".modinfo", align 1
@next_bits.__UNIQUE_ID_ddebug202 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"next_bits\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"next_bits invalid n %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"842_decompress: next_bits invalid n %u\0A\00", [56 x i8] zeroinitializer }, align 32
@__split_next_bits.__UNIQUE_ID_ddebug201 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__split_next_bits\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"split_next_bits invalid n %u s %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"842_decompress: split_next_bits invalid n %u s %u\0A\00", [45 x i8] zeroinitializer }, align 32
@decomp_ops = internal constant { [26 x [4 x i8]], [56 x i8] } { [26 x [4 x i8]] [[4 x i8] c"(@@@", [4 x i8] c"$\22\12@", [4 x i8] c"$\12\22@", [4 x i8] c"$\12\12@", [4 x i8] c"$\14@@", [4 x i8] c"\22\12$@", [4 x i8] c"\22\12\22\12", [4 x i8] c"\22\12\12\22", [4 x i8] c"\22\12\12\12", [4 x i8] c"\22\12\14@", [4 x i8] c"\12\22$@", [4 x i8] c"\12$\12@", [4 x i8] c"\12\22\12\22", [4 x i8] c"\12\22\12\12", [4 x i8] c"\12\22\14@", [4 x i8] c"\12\12$@", [4 x i8] c"\12\12\22\12", [4 x i8] c"\12\12\12\22", [4 x i8] c"\12\12\12\12", [4 x i8] c"\12\12\14@", [4 x i8] c"\14$@@", [4 x i8] c"\14\22\12@", [4 x i8] c"\14\12\22@", [4 x i8] c"\14\12\12@", [4 x i8] c"\14\14@@", [4 x i8] c"\18@@@"], [56 x i8] zeroinitializer }, align 32
@do_op.__UNIQUE_ID_ddebug205 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"do_op\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"op is %x\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"842_decompress: op is %x\0A\00", [38 x i8] zeroinitializer }, align 32
@do_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013842_decompress: Internal error, invalid op %x\0A\00", [47 x i8] zeroinitializer }, align 32
@do_op._entry_ptr = internal global ptr @do_op._entry, section ".printk_index", align 4
@template_count = internal global { [26 x %struct.atomic_t], [56 x i8] } zeroinitializer, align 32
@__do_index.__UNIQUE_ID_ddebug203 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"__do_index\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"index%x %lx points past end %lx\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"842_decompress: index%x %lx points past end %lx\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"__do_index invalid size %x\0A\00", [36 x i8] zeroinitializer }, align 32
@__do_index.__UNIQUE_ID_ddebug204 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.21, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"index%x to %lx off %lx adjoff %lx tot %lx data %lx\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"842_decompress: index%x to %lx off %lx adjoff %lx tot %lx data %lx\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"template_%02x\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"template_repeat\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"template_zeros\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"template_short_data\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"template_end\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 64, i64 27, i64 28, i64 29, i64 30]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 32, i64 64]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 4, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 4, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 4, i64 8]
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"sw842_template_counts\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 8, i32 13 }
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"sw842_debugfs_root\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 14, i32 23 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 301, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [22 x i8] c"template_repeat_count\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 11, i32 42 }
@___asan_gen_.57 = private unnamed_addr constant [21 x i8] c"template_zeros_count\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 12, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [26 x i8] c"template_short_data_count\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 12, i32 24 }
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"template_end_count\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 12, i32 51 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 386, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 92, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 73, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [11 x i8] c"decomp_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 21, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 236, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 248, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant [15 x i8] c"template_count\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 11, i32 17 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 191, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 197, i32 3 }
@___asan_gen_.127 = private constant [28 x i8] c"../lib/842/842_decompress.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 199, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 29, i32 22 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 33, i32 26 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 35, i32 26 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 37, i32 26 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [25 x i8] c"../lib/842/842_debugfs.h\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 39, i32 26 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_file209, ptr @__UNIQUE_ID_license210, ptr @__UNIQUE_ID_template_countstype200, ptr @__exitcall_sw842_exit, ptr @__initcall__kmod_842_decompress__208_406_sw842_init6, ptr @__ksymtab_sw842_decompress, ptr @__param_template_counts, ptr @do_op._entry, ptr @do_op._entry_ptr, ptr @sw842_debugfs_remove, ptr @sw842_exit, ptr @sw842_template_counts, ptr @sw842_debugfs_root, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @template_repeat_count, ptr @template_zeros_count, ptr @template_short_data_count, ptr @template_end_count, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @decomp_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @template_count, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw842_template_counts to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw842_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @template_repeat_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @template_zeros_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @template_short_data_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @template_end_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decomp_ops to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @template_count to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sw842_debugfs_remove() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @sw842_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sw842_decompress(ptr noundef %in, i32 noundef %ilen, ptr noundef %out, ptr nocapture noundef %olen) #2 align 64 {
entry:
  %p = alloca %struct.sw842_param, align 8
  %op = alloca i64, align 8
  %rep = alloca i64, align 8
  %tmp = alloca i64, align 8
  %bytes = alloca i64, align 8
  %crc = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %p) #8
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %p, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %op) #8
  %1 = ptrtoint ptr %op to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %op, align 8, !annotation !93
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rep) #8
  %2 = ptrtoint ptr %rep to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %rep, align 8, !annotation !93
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #8
  %3 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %tmp, align 8, !annotation !93
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes) #8
  %4 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %bytes, align 8, !annotation !93
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %crc) #8
  %5 = ptrtoint ptr %crc to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %crc, align 8, !annotation !93
  %6 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %in, ptr %p, align 8
  %bit = getelementptr inbounds %struct.sw842_param, ptr %p, i32 0, i32 1
  %7 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %bit, align 4
  %conv = zext i32 %ilen to i64
  %ilen2 = getelementptr inbounds %struct.sw842_param, ptr %p, i32 0, i32 2
  %8 = ptrtoint ptr %ilen2 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %ilen2, align 8
  %out3 = getelementptr inbounds %struct.sw842_param, ptr %p, i32 0, i32 3
  %9 = ptrtoint ptr %out3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %out, ptr %out3, align 8
  %ostart = getelementptr inbounds %struct.sw842_param, ptr %p, i32 0, i32 4
  %10 = ptrtoint ptr %ostart to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %out, ptr %ostart, align 4
  %11 = ptrtoint ptr %olen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %olen, align 4
  %conv4 = zext i32 %12 to i64
  %olen5 = getelementptr inbounds %struct.sw842_param, ptr %p, i32 0, i32 5
  %13 = ptrtoint ptr %olen5 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv4, ptr %olen5, align 8
  store i32 0, ptr %olen, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond90.do.body_crit_edge, %entry
  %call = call fastcc i32 @next_bits(ptr noundef nonnull %p, ptr noundef nonnull %op, i8 noundef zeroext 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body7, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body7:                                         ; preds = %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sw842_decompress.__UNIQUE_ID_ddebug206, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sw842_decompress, %if.then13)) #8
          to label %do.end [label %if.then13], !srcloc !94

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %op to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %op, align 8
  %conv14 = trunc i64 %15 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sw842_decompress.__UNIQUE_ID_ddebug206, ptr noundef nonnull @.str.4, i32 noundef %conv14) #8
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body7
  %16 = ptrtoint ptr %op to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %op, align 8
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i64 %17, label %sw.default [
    i64 27, label %sw.bb
    i64 28, label %sw.bb39
    i64 29, label %sw.bb53
    i64 30, label %sw.bb81
  ]

sw.bb:                                            ; preds = %do.end
  %call16 = call fastcc i32 @next_bits(ptr noundef nonnull %p, ptr noundef nonnull %rep, i8 noundef zeroext 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %sw.bb
  %18 = ptrtoint ptr %out3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %out3, align 8
  %cmp = icmp eq ptr %19, %out
  br i1 %cmp, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %20 = ptrtoint ptr %rep to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rep, align 8
  %inc = add i64 %21, 1
  %mul = shl i64 %inc, 3
  %22 = ptrtoint ptr %olen5 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %olen5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %23)
  %cmp25 = icmp ugt i64 %mul, %23
  br i1 %cmp25, label %if.end23.cleanup_crit_edge, label %while.cond.preheader

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %inc)
  %cmp29.not178 = icmp eq i64 %inc, 0
  br i1 %cmp29.not178, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %24 = ptrtoint ptr %out3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %out3, align 8
  %add.ptr = getelementptr i8, ptr %25, i32 -8
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %add.ptr, align 1
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %27, ptr %25, align 1
  %29 = load ptr, ptr %out3, align 8
  %add.ptr34 = getelementptr i8, ptr %29, i32 8
  store ptr %add.ptr34, ptr %out3, align 8
  %30 = ptrtoint ptr %olen5 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %olen5, align 8
  %sub = add i64 %31, -8
  store i64 %sub, ptr %olen5, align 8
  %32 = ptrtoint ptr %rep to i32
  call void @__asan_load8_noabort(i32 %32)
  %.pr = load i64, ptr %rep, align 8
  %dec = add i64 %.pr, -1
  store i64 %dec, ptr %rep, align 8
  %cmp29.not = icmp eq i64 %.pr, 0
  br i1 %cmp29.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %33 = load i8, ptr @sw842_template_counts, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool36.not = icmp eq i8 %33, 0
  br i1 %tobool36.not, label %while.end.do.cond90_crit_edge, label %if.then37

while.end.do.cond90_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond90

if.then37:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @template_repeat_count, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull @template_repeat_count, i32 1, i32 3, i32 1) #8
  %34 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @template_repeat_count, ptr nonnull @template_repeat_count, i32 1, ptr nonnull elementtype(i32) @template_repeat_count) #8, !srcloc !96
  br label %do.cond90

sw.bb39:                                          ; preds = %do.end
  %35 = ptrtoint ptr %olen5 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %olen5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8, i64 %36)
  %cmp41 = icmp ult i64 %36, 8
  br i1 %cmp41, label %sw.bb39.cleanup_crit_edge, label %if.end44

sw.bb39.cleanup_crit_edge:                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44:                                         ; preds = %sw.bb39
  %37 = ptrtoint ptr %out3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %out3, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 0, ptr %38, align 1
  %40 = load ptr, ptr %out3, align 8
  %add.ptr47 = getelementptr i8, ptr %40, i32 8
  store ptr %add.ptr47, ptr %out3, align 8
  %41 = ptrtoint ptr %olen5 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %olen5, align 8
  %sub49 = add i64 %42, -8
  store i64 %sub49, ptr %olen5, align 8
  %43 = load i8, ptr @sw842_template_counts, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool50.not = icmp eq i8 %43, 0
  br i1 %tobool50.not, label %if.end44.do.cond90_crit_edge, label %if.then51

if.end44.do.cond90_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond90

if.then51:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i163 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @template_zeros_count, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull @template_zeros_count, i32 1, i32 3, i32 1) #8
  %44 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @template_zeros_count, ptr nonnull @template_zeros_count, i32 1, ptr nonnull elementtype(i32) @template_zeros_count) #8, !srcloc !96
  br label %do.cond90

sw.bb53:                                          ; preds = %do.end
  %call54 = call fastcc i32 @next_bits(ptr noundef nonnull %p, ptr noundef nonnull %bytes, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %sw.bb53.cleanup_crit_edge

sw.bb53.cleanup_crit_edge:                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end57:                                         ; preds = %sw.bb53
  %45 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %bytes, align 8
  %47 = add i64 %46, -8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -7, i64 %47)
  %48 = icmp ult i64 %47, -7
  br i1 %48, label %if.end57.cleanup_crit_edge, label %while.body67.preheader

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body67.preheader:                           ; preds = %if.end57
  %dec64175 = add nsw i64 %46, -1
  %49 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %dec64175, ptr %bytes, align 8
  br label %while.body67

while.body67:                                     ; preds = %if.end71.while.body67_crit_edge, %while.body67.preheader
  %call68 = call fastcc i32 @next_bits(ptr noundef nonnull %p, ptr noundef nonnull %tmp, i8 noundef zeroext 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %while.body67.cleanup_crit_edge

while.body67.cleanup_crit_edge:                   ; preds = %while.body67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end71:                                         ; preds = %while.body67
  %50 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %tmp, align 8
  %conv72 = trunc i64 %51 to i8
  %52 = ptrtoint ptr %out3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %out3, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv72, ptr %53, align 1
  %55 = load ptr, ptr %out3, align 8
  %incdec.ptr = getelementptr i8, ptr %55, i32 1
  store ptr %incdec.ptr, ptr %out3, align 8
  %56 = ptrtoint ptr %olen5 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %olen5, align 8
  %dec76 = add i64 %57, -1
  store i64 %dec76, ptr %olen5, align 8
  %58 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %58)
  %.pr170 = load i64, ptr %bytes, align 8
  %dec64 = add i64 %.pr170, -1
  store i64 %dec64, ptr %bytes, align 8
  %cmp65.not = icmp eq i64 %.pr170, 0
  br i1 %cmp65.not, label %while.end77, label %if.end71.while.body67_crit_edge

if.end71.while.body67_crit_edge:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body67

while.end77:                                      ; preds = %if.end71
  %59 = load i8, ptr @sw842_template_counts, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool78.not = icmp eq i8 %59, 0
  br i1 %tobool78.not, label %while.end77.do.cond90_crit_edge, label %if.then79

while.end77.do.cond90_crit_edge:                  ; preds = %while.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond90

if.then79:                                        ; preds = %while.end77
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i164 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @template_short_data_count, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull @template_short_data_count, i32 1, i32 3, i32 1) #8
  %60 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @template_short_data_count, ptr nonnull @template_short_data_count, i32 1, ptr nonnull elementtype(i32) @template_short_data_count) #8, !srcloc !96
  br label %do.cond90

sw.bb81:                                          ; preds = %do.end
  %61 = load i8, ptr @sw842_template_counts, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool82.not = icmp eq i8 %61, 0
  br i1 %tobool82.not, label %sw.bb81.do.end93_crit_edge, label %if.then83

sw.bb81.do.end93_crit_edge:                       ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end93

if.then83:                                        ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i165 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @template_end_count, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull @template_end_count, i32 1, i32 3, i32 1) #8
  %62 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @template_end_count, ptr nonnull @template_end_count, i32 1, ptr nonnull elementtype(i32) @template_end_count) #8, !srcloc !96
  br label %do.cond90

sw.default:                                       ; preds = %do.end
  %conv85 = trunc i64 %17 to i8
  %call86 = call fastcc i32 @do_op(ptr noundef nonnull %p, i8 noundef zeroext %conv85)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %sw.default.do.cond90_crit_edge, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.default.do.cond90_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond90

do.cond90:                                        ; preds = %sw.default.do.cond90_crit_edge, %if.then83, %if.then79, %while.end77.do.cond90_crit_edge, %if.then51, %if.end44.do.cond90_crit_edge, %if.then37, %while.end.do.cond90_crit_edge
  %63 = ptrtoint ptr %op to i32
  call void @__asan_load8_noabort(i32 %63)
  %.pr171 = load i64, ptr %op, align 8
  %cmp91.not = icmp eq i64 %.pr171, 30
  br i1 %cmp91.not, label %do.cond90.do.end93_crit_edge, label %do.cond90.do.body_crit_edge

do.cond90.do.body_crit_edge:                      ; preds = %do.cond90
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.cond90.do.end93_crit_edge:                     ; preds = %do.cond90
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end93

do.end93:                                         ; preds = %do.cond90.do.end93_crit_edge, %sw.bb81.do.end93_crit_edge
  %call94 = call fastcc i32 @next_bits(ptr noundef nonnull %p, ptr noundef nonnull %crc, i8 noundef zeroext 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %do.end93.cleanup_crit_edge

do.end93.cleanup_crit_edge:                       ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end97:                                         ; preds = %do.end93
  %64 = ptrtoint ptr %crc to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %crc, align 8
  %66 = ptrtoint ptr %olen5 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %olen5, align 8
  %sub99 = sub i64 %conv4, %67
  %conv100 = trunc i64 %sub99 to i32
  %call101 = call i32 @crc32_be(i32 noundef 0, ptr noundef %out, i32 noundef %conv100) #11
  %conv102 = zext i32 %call101 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %65, i64 %conv102)
  %cmp103.not = icmp eq i64 %65, %conv102
  br i1 %cmp103.not, label %if.end122, label %do.body106

do.body106:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sw842_decompress.__UNIQUE_ID_ddebug207, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sw842_decompress, %if.then118)) #8
          to label %cleanup [label %if.then118], !srcloc !94

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sw842_decompress.__UNIQUE_ID_ddebug207, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end122:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %sub99)
  %cmp125 = icmp ugt i64 %sub99, 4294967295
  br i1 %cmp125, label %if.end122.cleanup_crit_edge, label %if.end134, !prof !97

if.end122.cleanup_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end134:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %olen to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv100, ptr %olen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end134, %if.end122.cleanup_crit_edge, %if.then118, %do.body106, %do.end93.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %while.body67.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %sw.bb53.cleanup_crit_edge, %sw.bb39.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end134 ], [ %call94, %do.end93.cleanup_crit_edge ], [ -22, %if.then118 ], [ -28, %if.end122.cleanup_crit_edge ], [ -22, %do.body106 ], [ %call68, %while.body67.cleanup_crit_edge ], [ %call86, %sw.default.cleanup_crit_edge ], [ -22, %if.end57.cleanup_crit_edge ], [ %call54, %sw.bb53.cleanup_crit_edge ], [ -28, %sw.bb39.cleanup_crit_edge ], [ -28, %if.end23.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ], [ %call16, %sw.bb.cleanup_crit_edge ], [ %call, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %crc) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rep) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %op) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %p) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @next_bits(ptr noundef %p, ptr noundef %d, i8 noundef zeroext %n) unnamed_addr #2 align 64 {
entry:
  %tmp.i194 = alloca i64, align 8
  %tmp.i174 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %bit = getelementptr inbounds %struct.sw842_param, ptr %p, i32 0, i32 1
  %conv2 = zext i8 %n to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %n)
  %cmp = icmp ugt i8 %n, 64
  br i1 %cmp, label %do.body, label %if.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @next_bits.__UNIQUE_ID_ddebug202, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@next_bits, %if.then8)) #8
          to label %cleanup [label %if.then8], !srcloc !94

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @next_bits.__UNIQUE_ID_ddebug202, ptr noundef nonnull @.str.9, i32 noundef %conv2) #8
  br label %cleanup

if.end10:                                         ; preds = %entry
  %2 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bit, align 4
  %add = add i8 %3, %n
  %conv11 = zext i8 %add to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %add)
  %cmp12 = icmp ugt i8 %add, 64
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #8
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %tmp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %n)
  %cmp.not.i = icmp ugt i8 %n, 32
  br i1 %cmp.not.i, label %if.end9.i, label %do.body.i

do.body.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__split_next_bits.__UNIQUE_ID_ddebug201, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@next_bits, %if.then6.i)) #8
          to label %__split_next_bits.exit [label %if.then6.i], !srcloc !94

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__split_next_bits.__UNIQUE_ID_ddebug201, ptr noundef nonnull @.str.12, i32 noundef %conv2, i32 noundef 32) #8
  br label %__split_next_bits.exit

if.end9.i:                                        ; preds = %if.then14
  %sub.i = add nsw i8 %n, -32
  %call13.i = call fastcc i32 @next_bits(ptr noundef %p, ptr noundef nonnull %tmp.i, i8 noundef zeroext %sub.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end9.i.__split_next_bits.exit_crit_edge

if.end9.i.__split_next_bits.exit_crit_edge:       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__split_next_bits.exit

if.end16.i:                                       ; preds = %if.end9.i
  %call17.i = call fastcc i32 @next_bits(ptr noundef %p, ptr noundef %d, i8 noundef zeroext 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end16.i.__split_next_bits.exit_crit_edge

if.end16.i.__split_next_bits.exit_crit_edge:      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__split_next_bits.exit

if.end20.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tmp.i, align 8
  %shl.i = shl i64 %6, 32
  %7 = ptrtoint ptr %d to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %d, align 8
  %or.i = or i64 %8, %shl.i
  store i64 %or.i, ptr %d, align 8
  br label %__split_next_bits.exit

__split_next_bits.exit:                           ; preds = %if.end20.i, %if.end16.i.__split_next_bits.exit_crit_edge, %if.end9.i.__split_next_bits.exit_crit_edge, %if.then6.i, %do.body.i
  %retval.0.i173 = phi i32 [ 0, %if.end20.i ], [ -22, %if.then6.i ], [ %call13.i, %if.end9.i.__split_next_bits.exit_crit_edge ], [ %call17.i, %if.end16.i.__split_next_bits.exit_crit_edge ], [ -22, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #8
  br label %cleanup

if.else:                                          ; preds = %if.end10
  %ilen = getelementptr inbounds %struct.sw842_param, ptr %p, i32 0, i32 2
  %9 = ptrtoint ptr %ilen to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ilen, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8, i64 %10)
  %cmp16 = icmp ult i64 %10, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %add)
  %cmp19 = icmp ugt i8 %add, 32
  %or.cond = select i1 %cmp16, i1 %cmp19, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %add)
  %cmp23 = icmp ult i8 %add, 57
  %or.cond170 = select i1 %or.cond, i1 %cmp23, i1 false
  br i1 %or.cond170, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i174) #8
  %11 = ptrtoint ptr %tmp.i174 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %tmp.i174, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %n)
  %cmp.not.i176 = icmp ugt i8 %n, 16
  br i1 %cmp.not.i176, label %if.end9.i185, label %do.body.i177

do.body.i177:                                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__split_next_bits.__UNIQUE_ID_ddebug201, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@next_bits, %if.then6.i181)) #8
          to label %__split_next_bits.exit193 [label %if.then6.i181], !srcloc !94

if.then6.i181:                                    ; preds = %do.body.i177
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__split_next_bits.__UNIQUE_ID_ddebug201, ptr noundef nonnull @.str.12, i32 noundef %conv2, i32 noundef 16) #8
  br label %__split_next_bits.exit193

if.end9.i185:                                     ; preds = %if.then25
  %sub.i182 = add nsw i8 %n, -16
  %call13.i183 = call fastcc i32 @next_bits(ptr noundef %p, ptr noundef nonnull %tmp.i174, i8 noundef zeroext %sub.i182) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i183)
  %tobool14.not.i184 = icmp eq i32 %call13.i183, 0
  br i1 %tobool14.not.i184, label %if.end16.i188, label %if.end9.i185.__split_next_bits.exit193_crit_edge

if.end9.i185.__split_next_bits.exit193_crit_edge: ; preds = %if.end9.i185
  call void @__sanitizer_cov_trace_pc() #10
  br label %__split_next_bits.exit193

if.end16.i188:                                    ; preds = %if.end9.i185
  %call17.i186 = call fastcc i32 @next_bits(ptr noundef %p, ptr noundef %d, i8 noundef zeroext 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i186)
  %tobool18.not.i187 = icmp eq i32 %call17.i186, 0
  br i1 %tobool18.not.i187, label %if.end20.i191, label %if.end16.i188.__split_next_bits.exit193_crit_edge

if.end16.i188.__split_next_bits.exit193_crit_edge: ; preds = %if.end16.i188
  call void @__sanitizer_cov_trace_pc() #10
  br label %__split_next_bits.exit193

if.end20.i191:                                    ; preds = %if.end16.i188
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %tmp.i174 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tmp.i174, align 8
  %shl.i189 = shl i64 %13, 16
  %14 = ptrtoint ptr %d to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %d, align 8
  %or.i190 = or i64 %15, %shl.i189
  store i64 %or.i190, ptr %d, align 8
  br label %__split_next_bits.exit193

__split_next_bits.exit193:                        ; preds = %if.end20.i191, %if.end16.i188.__split_next_bits.exit193_crit_edge, %if.end9.i185.__split_next_bits.exit193_crit_edge, %if.then6.i181, %do.body.i177
  %retval.0.i192 = phi i32 [ 0, %if.end20.i191 ], [ -22, %if.then6.i181 ], [ %call13.i183, %if.end9.i185.__split_next_bits.exit193_crit_edge ], [ %call17.i186, %if.end16.i188.__split_next_bits.exit193_crit_edge ], [ -22, %do.body.i177 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i174) #8
  br label %cleanup

if.else27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %10)
  %cmp29 = icmp ult i64 %10, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %add)
  %cmp33 = icmp ugt i8 %add, 16
  %or.cond171 = select i1 %cmp29, i1 %cmp33, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %add)
  %cmp37 = icmp ult i8 %add, 25
  %or.cond172 = select i1 %or.cond171, i1 %cmp37, i1 false
  br i1 %or.cond172, label %if.then39, label %if.end43

if.then39:                                        ; preds = %if.else27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i194) #8
  %16 = ptrtoint ptr %tmp.i194 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %tmp.i194, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %n)
  %cmp.not.i196 = icmp ugt i8 %n, 8
  br i1 %cmp.not.i196, label %if.end9.i205, label %do.body.i197

do.body.i197:                                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__split_next_bits.__UNIQUE_ID_ddebug201, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@next_bits, %if.then6.i201)) #8
          to label %__split_next_bits.exit213 [label %if.then6.i201], !srcloc !94

if.then6.i201:                                    ; preds = %do.body.i197
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__split_next_bits.__UNIQUE_ID_ddebug201, ptr noundef nonnull @.str.12, i32 noundef %conv2, i32 noundef 8) #8
  br label %__split_next_bits.exit213

if.end9.i205:                                     ; preds = %if.then39
  %sub.i202 = add nsw i8 %n, -8
  %call13.i203 = call fastcc i32 @next_bits(ptr noundef %p, ptr noundef nonnull %tmp.i194, i8 noundef zeroext %sub.i202) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i203)
  %tobool14.not.i204 = icmp eq i32 %call13.i203, 0
  br i1 %tobool14.not.i204, label %if.end16.i208, label %if.end9.i205.__split_next_bits.exit213_crit_edge

if.end9.i205.__split_next_bits.exit213_crit_edge: ; preds = %if.end9.i205
  call void @__sanitizer_cov_trace_pc() #10
  br label %__split_next_bits.exit213

if.end16.i208:                                    ; preds = %if.end9.i205
  %call17.i206 = call fastcc i32 @next_bits(ptr noundef %p, ptr noundef %d, i8 noundef zeroext 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i206)
  %tobool18.not.i207 = icmp eq i32 %call17.i206, 0
  br i1 %tobool18.not.i207, label %if.end20.i211, label %if.end16.i208.__split_next_bits.exit213_crit_edge

if.end16.i208.__split_next_bits.exit213_crit_edge: ; preds = %if.end16.i208
  call void @__sanitizer_cov_trace_pc() #10
  br label %__split_next_bits.exit213

if.end20.i211:                                    ; preds = %if.end16.i208
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %tmp.i194 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %tmp.i194, align 8
  %shl.i209 = shl i64 %18, 8
  %19 = ptrtoint ptr %d to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %d, align 8
  %or.i210 = or i64 %20, %shl.i209
  store i64 %or.i210, ptr %d, align 8
  br label %__split_next_bits.exit213

__split_next_bits.exit213:                        ; preds = %if.end20.i211, %if.end16.i208.__split_next_bits.exit213_crit_edge, %if.end9.i205.__split_next_bits.exit213_crit_edge, %if.then6.i201, %do.body.i197
  %retval.0.i212 = phi i32 [ 0, %if.end20.i211 ], [ -22, %if.then6.i201 ], [ %call13.i203, %if.end9.i205.__split_next_bits.exit213_crit_edge ], [ %call17.i206, %if.end16.i208.__split_next_bits.exit213_crit_edge ], [ -22, %do.body.i197 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i194) #8
  br label %cleanup

if.end43:                                         ; preds = %if.else27
  %sub = add nuw nsw i32 %conv11, 7
  %div169 = lshr i32 %sub, 3
  %21 = zext i32 %div169 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %21)
  %cmp48 = icmp ult i64 %10, %21
  br i1 %cmp48, label %if.end43.cleanup_crit_edge, label %if.end51

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end51:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %add)
  %cmp53 = icmp ult i8 %add, 9
  br i1 %cmp53, label %if.then55, label %if.else60

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %1, align 1
  %conv56 = zext i8 %23 to i32
  %sub58 = sub nsw i32 8, %conv11
  %shr = lshr i32 %conv56, %sub58
  %24 = zext i32 %shr to i64
  br label %if.end92

if.else60:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %add)
  %cmp62 = icmp ult i8 %add, 17
  br i1 %cmp62, label %if.then64, label %if.else71

if.then64:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %1, align 1
  %conv66 = zext i16 %26 to i32
  %sub68 = sub nsw i32 16, %conv11
  %shr69 = lshr i32 %conv66, %sub68
  %27 = zext i32 %shr69 to i64
  br label %if.end92

if.else71:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %add)
  %cmp73 = icmp ult i8 %add, 33
  br i1 %cmp73, label %if.then75, label %if.else83

if.then75:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %1, align 1
  %sub80 = sub nsw i32 32, %conv11
  %shr81 = lshr i32 %29, %sub80
  %conv82 = zext i32 %shr81 to i64
  br label %if.end92

if.else83:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %1, align 1
  %sub88 = sub nsw i32 64, %conv11
  %sh_prom = zext i32 %sub88 to i64
  %shr89 = lshr i64 %31, %sh_prom
  br label %if.end92

if.end92:                                         ; preds = %if.else83, %if.then75, %if.then64, %if.then55
  %.sink = phi i64 [ %27, %if.then64 ], [ %shr89, %if.else83 ], [ %conv82, %if.then75 ], [ %24, %if.then55 ]
  %sub95 = sub nsw i32 64, %conv2
  %sh_prom96 = zext i32 %sub95 to i64
  %shr97 = lshr i64 -1, %sh_prom96
  %and99 = and i64 %.sink, %shr97
  %32 = ptrtoint ptr %d to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %and99, ptr %d, align 8
  %33 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bit, align 4
  %add103 = add i8 %34, %n
  store i8 %add103, ptr %bit, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %add103)
  %cmp107 = icmp ugt i8 %add103, 7
  br i1 %cmp107, label %if.then109, label %if.end92.cleanup_crit_edge

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then109:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %35 = lshr i8 %add103, 3
  %div112 = zext i8 %35 to i32
  %36 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %p, align 8
  %add.ptr = getelementptr i8, ptr %37, i32 %div112
  store ptr %add.ptr, ptr %p, align 8
  %38 = zext i8 %35 to i64
  %39 = ptrtoint ptr %ilen to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %ilen, align 8
  %sub119 = sub i64 %40, %38
  store i64 %sub119, ptr %ilen, align 8
  %41 = and i8 %add103, 7
  %42 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %bit, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then109, %if.end92.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %__split_next_bits.exit213, %__split_next_bits.exit193, %__split_next_bits.exit, %if.then8, %do.body
  %retval.0 = phi i32 [ %retval.0.i173, %__split_next_bits.exit ], [ %retval.0.i192, %__split_next_bits.exit193 ], [ %retval.0.i212, %__split_next_bits.exit213 ], [ -22, %if.then8 ], [ -75, %if.end43.cleanup_crit_edge ], [ 0, %if.then109 ], [ 0, %if.end92.cleanup_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_op(ptr noundef %p, i8 noundef zeroext %o) unnamed_addr #2 align 64 {
entry:
  %v.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %o to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %o)
  %cmp = icmp ugt i8 %o, 25
  br i1 %cmp, label %entry.cleanup34_crit_edge, label %for.cond.preheader

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup34

for.cond.preheader:                               ; preds = %entry
  %olen.i = getelementptr inbounds %struct.sw842_param, ptr %p, i32 0, i32 5
  %out19.i = getelementptr inbounds %struct.sw842_param, ptr %p, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.065 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx4 = getelementptr [26 x [4 x i8]], ptr @decomp_ops, i32 0, i32 %conv, i32 %i.065
  %0 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx4, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @do_op.__UNIQUE_ID_ddebug205, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@do_op, %if.then7)) #8
          to label %do.end [label %if.then7], !srcloc !94

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv8 = zext i8 %1 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @do_op.__UNIQUE_ID_ddebug205, ptr noundef nonnull @.str.15, i32 noundef %conv8) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %for.body
  %2 = and i8 %1, 112
  %and = zext i8 %2 to i32
  %3 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %and, label %cleanup.thread [
    i32 32, label %sw.bb
    i32 16, label %sw.bb15
    i32 64, label %do.end.for.inc_crit_edge
  ]

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb:                                            ; preds = %do.end
  %and12 = and i8 %1, 15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.i) #8
  %4 = ptrtoint ptr %v.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %v.i, align 8, !annotation !93
  %conv.i = zext i8 %and12 to i64
  %5 = ptrtoint ptr %olen.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %olen.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %conv.i)
  %cmp.i = icmp ult i64 %6, %conv.i
  br i1 %cmp.i, label %sw.bb.do_data.exit_crit_edge, label %if.end.i

sw.bb.do_data.exit_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_data.exit

if.end.i:                                         ; preds = %sw.bb
  %conv2.i = zext i8 %and12 to i32
  %mul.i = shl nuw nsw i8 %and12, 3
  %call.i = call fastcc i32 @next_bits(ptr noundef %p, ptr noundef nonnull %v.i, i8 noundef zeroext %mul.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.end.i.do_data.exit_crit_edge

if.end.i.do_data.exit_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_data.exit

if.end5.i:                                        ; preds = %if.end.i
  %trunc63 = trunc i8 %1 to i4
  %7 = zext i4 %trunc63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.29)
  switch i4 %trunc63, label %if.end5.i.do_data.exit_crit_edge [
    i4 2, label %do.body.i
    i4 4, label %do.body9.i
    i4 -8, label %do.body17.i
  ]

if.end5.i.do_data.exit_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_data.exit

do.body.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %out19.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %out19.i, align 8
  %10 = ptrtoint ptr %v.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %v.i, align 8
  %conv7.i = trunc i64 %11 to i16
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %conv7.i, ptr %9, align 1
  br label %sw.epilog.i

do.body9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %out19.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %out19.i, align 8
  %15 = ptrtoint ptr %v.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %v.i, align 8
  %conv12.i = trunc i64 %16 to i32
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %conv12.i, ptr %14, align 1
  br label %sw.epilog.i

do.body17.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %out19.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %out19.i, align 8
  %20 = ptrtoint ptr %v.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %v.i, align 8
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %19, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.body17.i, %do.body9.i, %do.body.i
  %23 = ptrtoint ptr %out19.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %out19.i, align 8
  %add.ptr.i = getelementptr i8, ptr %24, i32 %conv2.i
  store ptr %add.ptr.i, ptr %out19.i, align 8
  %25 = ptrtoint ptr %olen.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %olen.i, align 8
  %sub.i = sub i64 %26, %conv.i
  store i64 %sub.i, ptr %olen.i, align 8
  br label %do_data.exit

do_data.exit:                                     ; preds = %sw.epilog.i, %if.end5.i.do_data.exit_crit_edge, %if.end.i.do_data.exit_crit_edge, %sw.bb.do_data.exit_crit_edge
  %retval.0.i46 = phi i32 [ 0, %sw.epilog.i ], [ -28, %sw.bb.do_data.exit_crit_edge ], [ %call.i, %if.end.i.do_data.exit_crit_edge ], [ -22, %if.end5.i.do_data.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.i) #8
  br label %cleanup

sw.bb15:                                          ; preds = %do.end
  %trunc = trunc i8 %1 to i4
  %27 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.30)
  switch i4 %trunc, label %sw.bb15.cleanup34_crit_edge [
    i4 2, label %sw.bb.i
    i4 4, label %sw.bb1.i
    i4 -8, label %sw.bb3.i
  ]

sw.bb15.cleanup34_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup34

sw.bb.i:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  %call.i47 = call fastcc i32 @__do_index(ptr noundef %p, i8 noundef zeroext 2, i8 noundef zeroext 8, i64 noundef 512) #8
  br label %cleanup

sw.bb1.i:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call fastcc i32 @__do_index(ptr noundef %p, i8 noundef zeroext 4, i8 noundef zeroext 9, i64 noundef 2048) #8
  br label %cleanup

sw.bb3.i:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = call fastcc i32 @__do_index(ptr noundef %p, i8 noundef zeroext 8, i8 noundef zeroext 8, i64 noundef 2048) #8
  br label %cleanup

cleanup.thread:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv10.le = zext i8 %1 to i32
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv10.le) #12
  br label %cleanup34

cleanup:                                          ; preds = %sw.bb3.i, %sw.bb1.i, %sw.bb.i, %do_data.exit
  %ret.1 = phi i32 [ %retval.0.i46, %do_data.exit ], [ %call4.i, %sw.bb3.i ], [ %call2.i, %sw.bb1.i ], [ %call.i47, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool26.not = icmp eq i32 %ret.1, 0
  br i1 %tobool26.not, label %cleanup.for.inc_crit_edge, label %cleanup.cleanup34_crit_edge

cleanup.cleanup34_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup34

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %do.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %28 = load i8, ptr @sw842_template_counts, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool29.not = icmp eq i8 %28, 0
  br i1 %tobool29.not, label %for.end.cleanup34_crit_edge, label %if.then30

for.end.cleanup34_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup34

if.then30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx32 = getelementptr [26 x %struct.atomic_t], ptr @template_count, i32 0, i32 %conv
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx32, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %arrayidx32, i32 1, i32 3, i32 1) #8
  %29 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx32, ptr %arrayidx32, i32 1, ptr elementtype(i32) %arrayidx32) #8, !srcloc !96
  br label %cleanup34

cleanup34:                                        ; preds = %if.then30, %for.end.cleanup34_crit_edge, %cleanup.cleanup34_crit_edge, %cleanup.thread, %sw.bb15.cleanup34_crit_edge, %entry.cleanup34_crit_edge
  %retval.2 = phi i32 [ -22, %entry.cleanup34_crit_edge ], [ 0, %if.then30 ], [ 0, %for.end.cleanup34_crit_edge ], [ -22, %cleanup.thread ], [ -22, %sw.bb15.cleanup34_crit_edge ], [ %ret.1, %cleanup.cleanup34_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sw842_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @sw842_template_counts, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @sw842_debugfs_create() #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sw842_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load i8, ptr @sw842_template_counts, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load ptr, ptr @sw842_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__do_index(ptr noundef %p, i8 noundef zeroext %size, i8 noundef zeroext %bits, i64 noundef %fsize) unnamed_addr #2 align 64 {
entry:
  %index = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %index) #8
  %0 = ptrtoint ptr %index to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %index, align 8, !annotation !93
  %out = getelementptr inbounds %struct.sw842_param, ptr %p, i32 0, i32 3
  %1 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %out, align 8
  %ostart = getelementptr inbounds %struct.sw842_param, ptr %p, i32 0, i32 4
  %3 = ptrtoint ptr %ostart to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ostart, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %2 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %4 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %and = and i32 %sub.ptr.sub, -8
  %conv = sext i32 %and to i64
  %call = call fastcc i32 @next_bits(ptr noundef %p, ptr noundef nonnull %index, i8 noundef zeroext %bits)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %index, align 8
  %conv1 = zext i8 %size to i64
  %mul = mul i64 %6, %conv1
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %fsize)
  %cmp = icmp ugt i64 %conv, %fsize
  br i1 %cmp, label %if.then3, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %neg = sub i64 0, %fsize
  %and4 = and i64 %conv, %neg
  %sub5 = sub i64 %conv, %and4
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %sub5)
  %cmp6.not = icmp ult i64 %mul, %sub5
  %sub9 = select i1 %cmp6.not, i64 0, i64 %fsize
  %spec.select = add i64 %mul, %and4
  %add = sub i64 %spec.select, %sub9
  br label %if.end11

if.end11:                                         ; preds = %if.then3, %if.end.if.end11_crit_edge
  %offset.0 = phi i64 [ %add, %if.then3 ], [ %mul, %if.end.if.end11_crit_edge ]
  %add13 = add i64 %offset.0, %conv1
  call void @__sanitizer_cov_trace_cmp8(i64 %add13, i64 %conv)
  %cmp14 = icmp ugt i64 %add13, %conv
  br i1 %cmp14, label %do.body, label %if.end26

do.body:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__do_index.__UNIQUE_ID_ddebug203, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__do_index, %if.then21)) #8
          to label %cleanup [label %if.then21], !srcloc !94

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv22 = zext i8 %size to i32
  %conv23 = trunc i64 %offset.0 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__do_index.__UNIQUE_ID_ddebug203, ptr noundef nonnull @.str.19, i32 noundef %conv22, i32 noundef %conv23, i32 noundef %and) #8
  br label %cleanup

if.end26:                                         ; preds = %if.end11
  %conv27 = zext i8 %size to i32
  %7 = zext i8 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %size, label %do.end49 [
    i8 2, label %if.end26.do.body64_crit_edge
    i8 4, label %if.end26.do.body64_crit_edge183
    i8 8, label %if.end26.do.body64_crit_edge184
  ]

if.end26.do.body64_crit_edge184:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64

if.end26.do.body64_crit_edge183:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64

if.end26.do.body64_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64

do.end49:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 197, i32 noundef 9, ptr noundef nonnull @.str.20, i32 noundef %conv27) #8
  br label %if.end121

do.body64:                                        ; preds = %if.end26.do.body64_crit_edge, %if.end26.do.body64_crit_edge183, %if.end26.do.body64_crit_edge184
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__do_index.__UNIQUE_ID_ddebug204, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__do_index, %if.then76)) #8
          to label %if.end121 [label %if.then76], !srcloc !94

if.then76:                                        ; preds = %do.body64
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %index, align 8
  %conv78 = trunc i64 %9 to i32
  %mul80 = mul i64 %9, %conv1
  %conv81 = trunc i64 %mul80 to i32
  %conv82 = trunc i64 %offset.0 to i32
  %10 = zext i8 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %size, label %if.then76.cond.end115_crit_edge [
    i8 2, label %cond.true
    i8 4, label %cond.true93
    i8 8, label %cond.true105
  ]

if.then76.cond.end115_crit_edge:                  ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end115

cond.true:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %ostart to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ostart, align 4
  %arrayidx = getelementptr i8, ptr %12, i32 %conv82
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %arrayidx, align 1
  %extract.t = zext i16 %14 to i32
  br label %cond.end115

cond.true93:                                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %ostart to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ostart, align 4
  %arrayidx97 = getelementptr i8, ptr %16, i32 %conv82
  %17 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %arrayidx97, align 1
  br label %cond.end115

cond.true105:                                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %ostart to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ostart, align 4
  %arrayidx109 = getelementptr i8, ptr %20, i32 %conv82
  %21 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %arrayidx109, align 1
  %extract.t177 = trunc i64 %22 to i32
  br label %cond.end115

cond.end115:                                      ; preds = %cond.true105, %cond.true93, %cond.true, %if.then76.cond.end115_crit_edge
  %cond116.off0 = phi i32 [ %extract.t, %cond.true ], [ %18, %cond.true93 ], [ %extract.t177, %cond.true105 ], [ 0, %if.then76.cond.end115_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__do_index.__UNIQUE_ID_ddebug204, ptr noundef nonnull @.str.22, i32 noundef %conv27, i32 noundef %conv78, i32 noundef %conv81, i32 noundef %conv82, i32 noundef %and, i32 noundef %cond116.off0) #8
  br label %if.end121

if.end121:                                        ; preds = %cond.end115, %do.body64, %do.end49
  %23 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %out, align 8
  %25 = ptrtoint ptr %ostart to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ostart, align 4
  %idxprom124 = trunc i64 %offset.0 to i32
  %arrayidx125 = getelementptr i8, ptr %26, i32 %idxprom124
  %27 = call ptr @memcpy(ptr %24, ptr %arrayidx125, i32 %conv27)
  %28 = load ptr, ptr %out, align 8
  %add.ptr = getelementptr i8, ptr %28, i32 %conv27
  store ptr %add.ptr, ptr %out, align 8
  %olen = getelementptr inbounds %struct.sw842_param, ptr %p, i32 0, i32 5
  %29 = ptrtoint ptr %olen to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %olen, align 8
  %sub130 = sub i64 %30, %conv1
  store i64 %sub130, ptr %olen, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end121, %if.then21, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end121 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.then21 ], [ -22, %do.body ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %index) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sw842_debugfs_create() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @debugfs_initialized() #8
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #8
  store ptr %call1, ptr @sw842_debugfs_root, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.01 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #8
  %0 = call ptr @memset(ptr %name, i32 255, i32 32)
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.23, i32 noundef %i.01)
  %1 = load ptr, ptr @sw842_debugfs_root, align 4
  %arrayidx = getelementptr [26 x %struct.atomic_t], ptr @template_count, i32 0, i32 %i.01
  call void @debugfs_create_atomic_t(ptr noundef nonnull %name, i16 noundef zeroext 420, ptr noundef %1, ptr noundef %arrayidx) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #8
  %inc = add nuw nsw i32 %i.01, 1
  %exitcond.not = icmp eq i32 %inc, 26
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load ptr, ptr @sw842_debugfs_root, align 4
  call void @debugfs_create_atomic_t(ptr noundef nonnull @.str.24, i16 noundef zeroext 420, ptr noundef %2, ptr noundef nonnull @template_repeat_count) #8
  %3 = load ptr, ptr @sw842_debugfs_root, align 4
  call void @debugfs_create_atomic_t(ptr noundef nonnull @.str.25, i16 noundef zeroext 420, ptr noundef %3, ptr noundef nonnull @template_zeros_count) #8
  %4 = load ptr, ptr @sw842_debugfs_root, align 4
  call void @debugfs_create_atomic_t(ptr noundef nonnull @.str.26, i16 noundef zeroext 420, ptr noundef %4, ptr noundef nonnull @template_short_data_count) #8
  %5 = load ptr, ptr @sw842_debugfs_root, align 4
  call void @debugfs_create_atomic_t(ptr noundef nonnull @.str.27, i16 noundef zeroext 420, ptr noundef %5, ptr noundef nonnull @template_end_count) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @debugfs_initialized() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_atomic_t(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { cold nounwind }
attributes #13 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !63, !64, !65, !66, !68, !70, !71, !72, !74, !76, !78, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__param_template_counts, !1, !"__param_template_counts", i1 false, i1 false}
!1 = !{!"../lib/842/842_debugfs.h", i32 9, i32 1}
!2 = !{ptr @__UNIQUE_ID_template_countstype200, !1, !"__UNIQUE_ID_template_countstype200", i1 false, i1 false}
!3 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../lib/842/842_decompress.c", i32 301, i32 3}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @sw842_decompress.__UNIQUE_ID_ddebug206, !4, !"__UNIQUE_ID_ddebug206", i1 false, i1 false}
!9 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../lib/842/842_decompress.c", i32 386, i32 3}
!12 = !{ptr @sw842_decompress.__UNIQUE_ID_ddebug207, !11, !"__UNIQUE_ID_ddebug207", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__ksymtab_sw842_decompress, !15, !"__ksymtab_sw842_decompress", i1 false, i1 false}
!15 = !{!"../lib/842/842_decompress.c", i32 397, i32 1}
!16 = !{ptr @__initcall__kmod_842_decompress__208_406_sw842_init6, !17, !"__initcall__kmod_842_decompress__208_406_sw842_init6", i1 false, i1 false}
!17 = !{!"../lib/842/842_decompress.c", i32 406, i32 1}
!18 = !{ptr @__exitcall_sw842_exit, !19, !"__exitcall_sw842_exit", i1 false, i1 false}
!19 = !{!"../lib/842/842_decompress.c", i32 413, i32 1}
!20 = !{ptr @__UNIQUE_ID_file209, !21, !"__UNIQUE_ID_file209", i1 false, i1 false}
!21 = !{!"../lib/842/842_decompress.c", i32 415, i32 1}
!22 = !{ptr @__UNIQUE_ID_license210, !21, !"__UNIQUE_ID_license210", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_description211, !24, !"__UNIQUE_ID_description211", i1 false, i1 false}
!24 = !{!"../lib/842/842_decompress.c", i32 416, i32 1}
!25 = !{ptr @__UNIQUE_ID_author212, !26, !"__UNIQUE_ID_author212", i1 false, i1 false}
!26 = !{!"../lib/842/842_decompress.c", i32 417, i32 1}
!27 = !{ptr @sw842_template_counts, !28, !"sw842_template_counts", i1 false, i1 false}
!28 = !{!"../lib/842/842_debugfs.h", i32 8, i32 13}
!29 = !{ptr @template_repeat_count, !30, !"template_repeat_count", i1 false, i1 false}
!30 = !{!"../lib/842/842_debugfs.h", i32 11, i32 42}
!31 = !{ptr @template_zeros_count, !32, !"template_zeros_count", i1 false, i1 false}
!32 = !{!"../lib/842/842_debugfs.h", i32 12, i32 2}
!33 = !{ptr @template_short_data_count, !34, !"template_short_data_count", i1 false, i1 false}
!34 = !{!"../lib/842/842_debugfs.h", i32 12, i32 24}
!35 = !{ptr @template_end_count, !36, !"template_end_count", i1 false, i1 false}
!36 = !{!"../lib/842/842_debugfs.h", i32 12, i32 51}
!37 = !{ptr @sw842_debugfs_root, !38, !"sw842_debugfs_root", i1 false, i1 false}
!38 = !{!"../lib/842/842_debugfs.h", i32 14, i32 23}
!39 = !{ptr @__param_str_template_counts, !1, !"__param_str_template_counts", i1 false, i1 false}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../lib/842/842_decompress.c", i32 92, i32 3}
!42 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @next_bits.__UNIQUE_ID_ddebug202, !41, !"__UNIQUE_ID_ddebug202", i1 false, i1 false}
!44 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../lib/842/842_decompress.c", i32 73, i32 3}
!47 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @__split_next_bits.__UNIQUE_ID_ddebug201, !46, !"__UNIQUE_ID_ddebug201", i1 false, i1 false}
!49 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../lib/842/842_decompress.c", i32 236, i32 3}
!52 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @do_op.__UNIQUE_ID_ddebug205, !51, !"__UNIQUE_ID_ddebug205", i1 false, i1 false}
!54 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../lib/842/842_decompress.c", i32 248, i32 4}
!57 = !{ptr @do_op._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @do_op._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @decomp_ops, !60, !"decomp_ops", i1 false, i1 false}
!60 = !{!"../lib/842/842_decompress.c", i32 21, i32 11}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../lib/842/842_decompress.c", i32 191, i32 3}
!63 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @__do_index.__UNIQUE_ID_ddebug203, !62, !"__UNIQUE_ID_ddebug203", i1 false, i1 false}
!65 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../lib/842/842_decompress.c", i32 197, i32 3}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../lib/842/842_decompress.c", i32 199, i32 3}
!70 = !{ptr @__do_index.__UNIQUE_ID_ddebug204, !69, !"__UNIQUE_ID_ddebug204", i1 false, i1 false}
!71 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @template_count, !73, !"template_count", i1 false, i1 false}
!73 = !{!"../lib/842/842_debugfs.h", i32 11, i32 17}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../lib/842/842_debugfs.h", i32 29, i32 22}
!76 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../lib/842/842_debugfs.h", i32 33, i32 26}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../lib/842/842_debugfs.h", i32 35, i32 26}
!80 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../lib/842/842_debugfs.h", i32 37, i32 26}
!82 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../lib/842/842_debugfs.h", i32 39, i32 26}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"auto-init"}
!94 = !{i64 2148965798, i64 2148965803, i64 2148965816, i64 2148965860, i64 2148965894, i64 2148965915}
!95 = !{i8 0, i8 2}
!96 = !{i64 2148352421, i64 2148352447, i64 2148352476, i64 2148352510, i64 2148352541, i64 2148352564}
!97 = !{!"branch_weights", i32 1, i32 2000}
