; ModuleID = '/llk/IR_all_yes/lib/842/842_compress.c_pt.bc'
source_filename = "../lib/842/842_compress.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sw842_compress\22, \22a\22\09"
module asm "\09.weak\09__crc_sw842_compress\09\09\09\09"
module asm "\09.long\09__crc_sw842_compress\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sw842_compress:\09\09\09\09\09"
module asm "\09.asciz \09\22sw842_compress\22\09\09\09\09\09"
module asm "__kstrtabns_sw842_compress:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sw842_param = type { ptr, ptr, i64, ptr, i64, i8, [1 x i64], [2 x i32], [4 x i16], [1 x i32], [2 x i32], [4 x i32], [1024 x %struct.hlist_head], [2048 x %struct.hlist_head], [1024 x %struct.hlist_head], [256 x %struct.sw842_hlist_node8], [512 x %struct.sw842_hlist_node4], [256 x %struct.sw842_hlist_node2] }
%struct.hlist_head = type { ptr }
%struct.sw842_hlist_node8 = type { %struct.hlist_node, i64, i8 }
%struct.hlist_node = type { ptr, ptr }
%struct.sw842_hlist_node4 = type { %struct.hlist_node, i32, i16 }
%struct.sw842_hlist_node2 = type { %struct.hlist_node, i16, i8 }

@__param_str_template_counts = internal constant [29 x i8] c"842_compress.template_counts\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@sw842_template_counts = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_template_counts = internal constant %struct.kernel_param { ptr @__param_str_template_counts, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @sw842_template_counts } }, section "__param", align 4
@__UNIQUE_ID_template_countstype200 = internal constant [43 x i8] c"842_compress.parmtype=template_counts:bool\00", section ".modinfo", align 1
@sw842_debugfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_str_strict = internal constant [20 x i8] c"842_compress.strict\00", align 1
@sw842_strict = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_strict = internal constant %struct.kernel_param { ptr @__param_str_strict, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @sw842_strict } }, section "__param", align 4
@__UNIQUE_ID_stricttype201 = internal constant [34 x i8] c"842_compress.parmtype=strict:bool\00", section ".modinfo", align 1
@sw842_compress._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013842_compress: Using strict mode, can't compress len %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sw842_compress\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lib/842/842_compress.c\00", [41 x i8] zeroinitializer }, align 32
@sw842_compress._entry_ptr = internal global ptr @sw842_compress._entry, section ".printk_index", align 4
@__kstrtab_sw842_compress = external dso_local constant [0 x i8], align 1
@__kstrtabns_sw842_compress = external dso_local constant [0 x i8], align 1
@__ksymtab_sw842_compress = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sw842_compress to i32), ptr @__kstrtab_sw842_compress, ptr @__kstrtabns_sw842_compress }, section "___ksymtab_gpl+sw842_compress", align 4
@__initcall__kmod_842_compress__213_619_sw842_init6 = internal global ptr @sw842_init, section ".initcall6.init", align 4
@__exitcall_sw842_exit = internal global ptr @sw842_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file214 = internal constant [39 x i8] c"842_compress.file=lib/842/842_compress\00", section ".modinfo", align 1
@__UNIQUE_ID_license215 = internal constant [25 x i8] c"842_compress.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description216 = internal constant [49 x i8] c"842_compress.description=Software 842 Compressor\00", section ".modinfo", align 1
@__UNIQUE_ID_author217 = internal constant [54 x i8] c"842_compress.author=Dan Streetman <ddstreet@ieee.org>\00", section ".modinfo", align 1
@template_repeat_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@template_zeros_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@comp_ops = internal constant { [26 x [5 x i8]], [62 x i8] } { [26 x [5 x i8]] [[5 x i8] c"\18@@@\19", [5 x i8] c"\14\14@@\18", [5 x i8] c"\14\12\12@\17", [5 x i8] c"\12\12\14@\13", [5 x i8] c"\12\12\12\12\12", [5 x i8] c"\14\12\22@\16", [5 x i8] c"\14\22\12@\15", [5 x i8] c"\12\22\14@\0E", [5 x i8] c"\22\12\14@\09", [5 x i8] c"\12\12\12\22\11", [5 x i8] c"\12\12\22\12\10", [5 x i8] c"\12\22\12\12\0D", [5 x i8] c"\22\12\12\12\08", [5 x i8] c"\14$@@\14", [5 x i8] c"$\14@@\04", [5 x i8] c"\12\12$@\0F", [5 x i8] c"\12\22\12\22\0C", [5 x i8] c"\12$\12@\0B", [5 x i8] c"\22\12\12\22\07", [5 x i8] c"\22\12\22\12\06", [5 x i8] c"$\12\12@\03", [5 x i8] c"\12\22$@\0A", [5 x i8] c"\22\12$@\05", [5 x i8] c"$\12\22@\02", [5 x i8] c"$\22\12@\01", [5 x i8] c"(@@@\00"], [62 x i8] zeroinitializer }, align 32
@add_template.__UNIQUE_ID_ddebug203 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"842_compress\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"add_template\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"template %x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"842_compress: template %x\0A\00", [37 x i8] zeroinitializer }, align 32
@add_template.__UNIQUE_ID_ddebug204 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.7, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"op %x\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"842_compress: op %x\0A\00", [43 x i8] zeroinitializer }, align 32
@add_template._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013842_compress: Invalid templ %x op %d : %x %x %x %x\0A\00", [42 x i8] zeroinitializer }, align 32
@add_template._entry_ptr = internal global ptr @add_template._entry, section ".printk_index", align 4
@add_template._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.2, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013842_compress: Invalid template %x len %x : %x %x %x %x\0A\00", [38 x i8] zeroinitializer }, align 32
@add_template._entry_ptr.12 = internal global ptr @add_template._entry.10, section ".printk_index", align 4
@template_count = internal global { [26 x %struct.atomic_t], [56 x i8] } zeroinitializer, align 32
@update_hashtables.__UNIQUE_ID_ddebug205 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"update_hashtables\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"add hash index%x %x pos %x data %lx\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"842_compress: add hash index%x %x pos %x data %lx\0A\00", [45 x i8] zeroinitializer }, align 32
@update_hashtables.__UNIQUE_ID_ddebug206 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@update_hashtables.__UNIQUE_ID_ddebug207 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@update_hashtables.__UNIQUE_ID_ddebug208 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@update_hashtables.__UNIQUE_ID_ddebug209 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@update_hashtables.__UNIQUE_ID_ddebug210 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@update_hashtables.__UNIQUE_ID_ddebug211 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@template_short_data_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@template_end_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@add_bits.__UNIQUE_ID_ddebug202 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"add_bits\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"add %u bits %lx\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"842_compress: add %u bits %lx\0A\00", [33 x i8] zeroinitializer }, align 32
@bmask = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\80\C0\E0\F0\F8\FC\FE", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"template_%02x\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"template_repeat\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"template_zeros\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"template_short_data\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"template_end\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.25 = private unnamed_addr constant [22 x i8] c"sw842_template_counts\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 8, i32 13 }
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"sw842_debugfs_root\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 14, i32 23 }
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"sw842_strict\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 35, i32 13 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 505, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [22 x i8] c"template_repeat_count\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 11, i32 42 }
@___asan_gen_.49 = private unnamed_addr constant [21 x i8] c"template_zeros_count\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 12, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [9 x i8] c"comp_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 38, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 231, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 238, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 285, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 294, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [15 x i8] c"template_count\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 11, i32 17 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 430, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [26 x i8] c"template_short_data_count\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 12, i32 24 }
@___asan_gen_.100 = private unnamed_addr constant [19 x i8] c"template_end_count\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 12, i32 51 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 173, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"bmask\00", align 1
@___asan_gen_.113 = private constant [26 x i8] c"../lib/842/842_compress.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 150, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 29, i32 22 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 33, i32 26 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 35, i32 26 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 37, i32 26 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [25 x i8] c"../lib/842/842_debugfs.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 39, i32 26 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author217, ptr @__UNIQUE_ID_description216, ptr @__UNIQUE_ID_file214, ptr @__UNIQUE_ID_license215, ptr @__UNIQUE_ID_stricttype201, ptr @__UNIQUE_ID_template_countstype200, ptr @__exitcall_sw842_exit, ptr @__initcall__kmod_842_compress__213_619_sw842_init6, ptr @__ksymtab_sw842_compress, ptr @__param_strict, ptr @__param_template_counts, ptr @add_template._entry, ptr @add_template._entry.10, ptr @add_template._entry_ptr, ptr @add_template._entry_ptr.12, ptr @sw842_compress._entry, ptr @sw842_compress._entry_ptr, ptr @sw842_debugfs_remove, ptr @sw842_exit, ptr @sw842_template_counts, ptr @sw842_debugfs_root, ptr @sw842_strict, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @template_repeat_count, ptr @template_zeros_count, ptr @comp_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @template_count, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @template_short_data_count, ptr @template_end_count, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @bmask, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw842_template_counts to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw842_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw842_strict to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw842_compress._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @template_repeat_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @template_zeros_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_ops to i32), i32 130, i32 192, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_template._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_template._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @template_count to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @template_short_data_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @template_end_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmask to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
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
define dso_local i32 @sw842_compress(ptr noundef %in, i32 noundef %ilen, ptr noundef %out, ptr nocapture noundef %olen, ptr noundef %wmem) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %htable8 = getelementptr inbounds %struct.sw842_param, ptr %wmem, i32 0, i32 12
  %0 = call ptr @memset(ptr %htable8, i32 0, i32 4096)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %_i.0342 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %conv = trunc i32 %_i.0342 to i8
  %arrayidx = getelementptr %struct.sw842_param, ptr %wmem, i32 0, i32 15, i32 %_i.0342
  %index = getelementptr %struct.sw842_param, ptr %wmem, i32 0, i32 15, i32 %_i.0342, i32 2
  %1 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %index, align 8
  %inc = add nuw nsw i32 %_i.0342, 1
  %exitcond.not = icmp eq i32 %inc, 256
  %2 = call ptr @memset(ptr %arrayidx, i32 0, i32 16)
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %htable4 = getelementptr inbounds %struct.sw842_param, ptr %wmem, i32 0, i32 13
  %3 = call ptr @memset(ptr %htable4, i32 0, i32 8192)
  br label %for.body14

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.end
  %_i9.0343 = phi i32 [ 0, %for.end ], [ %inc25, %for.body14.for.body14_crit_edge ]
  %conv15 = trunc i32 %_i9.0343 to i16
  %arrayidx16 = getelementptr %struct.sw842_param, ptr %wmem, i32 0, i32 16, i32 %_i9.0343
  %index17 = getelementptr %struct.sw842_param, ptr %wmem, i32 0, i32 16, i32 %_i9.0343, i32 2
  %4 = ptrtoint ptr %index17 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv15, ptr %index17, align 4
  %data20 = getelementptr %struct.sw842_param, ptr %wmem, i32 0, i32 16, i32 %_i9.0343, i32 1
  %5 = ptrtoint ptr %data20 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %data20, align 8
  %6 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx16, align 4
  %pprev.i282 = getelementptr inbounds %struct.hlist_node, ptr %arrayidx16, i32 0, i32 1
  %7 = ptrtoint ptr %pprev.i282 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pprev.i282, align 4
  %inc25 = add nuw nsw i32 %_i9.0343, 1
  %exitcond355.not = icmp eq i32 %inc25, 512
  br i1 %exitcond355.not, label %for.end26, label %for.body14.for.body14_crit_edge

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14

for.end26:                                        ; preds = %for.body14
  %htable2 = getelementptr inbounds %struct.sw842_param, ptr %wmem, i32 0, i32 14
  %8 = call ptr @memset(ptr %htable2, i32 0, i32 4096)
  br label %for.body35

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %for.end26
  %_i30.0344 = phi i32 [ 0, %for.end26 ], [ %inc46, %for.body35.for.body35_crit_edge ]
  %conv36 = trunc i32 %_i30.0344 to i8
  %arrayidx37 = getelementptr %struct.sw842_param, ptr %wmem, i32 0, i32 17, i32 %_i30.0344
  %index38 = getelementptr %struct.sw842_param, ptr %wmem, i32 0, i32 17, i32 %_i30.0344, i32 2
  %9 = ptrtoint ptr %index38 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv36, ptr %index38, align 2
  %data41 = getelementptr %struct.sw842_param, ptr %wmem, i32 0, i32 17, i32 %_i30.0344, i32 1
  %10 = ptrtoint ptr %data41 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %data41, align 4
  %11 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx37, align 4
  %pprev.i283 = getelementptr inbounds %struct.hlist_node, ptr %arrayidx37, i32 0, i32 1
  %12 = ptrtoint ptr %pprev.i283 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %pprev.i283, align 4
  %inc46 = add nuw nsw i32 %_i30.0344, 1
  %exitcond356.not = icmp eq i32 %inc46, 256
  br i1 %exitcond356.not, label %for.end47, label %for.body35.for.body35_crit_edge

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35

for.end47:                                        ; preds = %for.body35
  %13 = ptrtoint ptr %wmem to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %in, ptr %wmem, align 8
  %instart = getelementptr inbounds %struct.sw842_param, ptr %wmem, i32 0, i32 1
  %14 = ptrtoint ptr %instart to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %in, ptr %instart, align 4
  %conv52 = zext i32 %ilen to i64
  %ilen53 = getelementptr inbounds %struct.sw842_param, ptr %wmem, i32 0, i32 2
  %15 = ptrtoint ptr %ilen53 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv52, ptr %ilen53, align 8
  %out54 = getelementptr inbounds %struct.sw842_param, ptr %wmem, i32 0, i32 3
  %16 = ptrtoint ptr %out54 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %out, ptr %out54, align 8
  %17 = ptrtoint ptr %olen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %olen, align 4
  %conv55 = zext i32 %18 to i64
  %olen56 = getelementptr inbounds %struct.sw842_param, ptr %wmem, i32 0, i32 4
  %19 = ptrtoint ptr %olen56 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv55, ptr %olen56, align 8
  %bit = getelementptr inbounds %struct.sw842_param, ptr %wmem, i32 0, i32 5
  %20 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %bit, align 8
  store i32 0, ptr %olen, align 4
  %21 = load i8, ptr @sw842_strict, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  %rem = and i32 %ilen, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool59.not = icmp eq i32 %rem, 0
  %or.cond = or i1 %tobool59.not, %tobool.not
  br i1 %or.cond, label %if.end, label %do.end62

do.end62:                                         ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %ilen) #11
  br label %cleanup

if.end:                                           ; preds = %for.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %ilen)
  %cmp63 = icmp ult i32 %ilen, 8
  br i1 %cmp63, label %if.end.skip_compthread-pre-split_crit_edge, label %if.end68, !prof !107

if.end.skip_compthread-pre-split_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_compthread-pre-split

if.end68:                                         ; preds = %if.end
  %22 = ptrtoint ptr %ilen53 to i32
  call void @__asan_load8_noabort(i32 %22)
  %.pr = load i64, ptr %ilen53, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 7, i64 %.pr)
  %cmp72345 = icmp ugt i64 %.pr, 7
  br i1 %cmp72345, label %while.body.lr.ph, label %if.end68.skip_comp_crit_edge

if.end68.skip_comp_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_comp

while.body.lr.ph:                                 ; preds = %if.end68
  %23 = ptrtoint ptr %wmem to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wmem, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %24, align 1
  %neg = xor i64 %26, -1
  %data8.i = getelementptr inbounds %struct.sw842_param, ptr %wmem, i32 0, i32 6
  %data4.i = getelementptr inbounds %struct.sw842_param, ptr %wmem, i32 0, i32 7
  %arrayidx13.i = getelementptr %struct.sw842_param, ptr %wmem, i32 0, i32 7, i32 1
  %data2.i = getelementptr inbounds %struct.sw842_param, ptr %wmem, i32 0, i32 8
  %arrayidx26.i = getelementptr %struct.sw842_param, ptr %wmem, i32 0, i32 8, i32 1
  %arrayidx33.i = getelementptr %struct.sw842_param, ptr %wmem, i32 0, i32 8, i32 2
  %arrayidx40.i = getelementptr %struct.sw842_param, ptr %wmem, i32 0, i32 8, i32 3
  %index8.i = getelementptr inbounds %struct.sw842_param, ptr %wmem, i32 0, i32 9
  %index4.i = getelementptr inbounds %struct.sw842_param, ptr %wmem, i32 0, i32 10
  %arrayidx3.i = getelementptr %struct.sw842_param, ptr %wmem, i32 0, i32 10, i32 1
  %index2.i = getelementptr inbounds %struct.sw842_param, ptr %wmem, i32 0, i32 11
  %arrayidx6.i = getelementptr %struct.sw842_param, ptr %wmem, i32 0, i32 11, i32 1
  %arrayidx8.i = getelementptr %struct.sw842_param, ptr %wmem, i32 0, i32 11, i32 2
  %arrayidx10.i = getelementptr %struct.sw842_param, ptr %wmem, i32 0, i32 11, i32 3
  br label %while.body

while.body:                                       ; preds = %repeat.while.body_crit_edge, %while.body.lr.ph
  %last.0347 = phi i64 [ %neg, %while.body.lr.ph ], [ %30, %repeat.while.body_crit_edge ]
  %repeat_count.0346 = phi i8 [ 0, %while.body.lr.ph ], [ %repeat_count.3, %repeat.while.body_crit_edge ]
  %27 = ptrtoint ptr %wmem to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wmem, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %30 = load i64, ptr %28, align 1
  %31 = ptrtoint ptr %data8.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %data8.i, align 8
  %32 = load i32, ptr %28, align 1
  %33 = ptrtoint ptr %data4.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %data4.i, align 8
  %add.ptr9.i = getelementptr i8, ptr %28, i32 4
  %34 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %add.ptr9.i, align 1
  %36 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx13.i, align 4
  %37 = load i16, ptr %28, align 1
  %38 = ptrtoint ptr %data2.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %data2.i, align 8
  %add.ptr22.i = getelementptr i8, ptr %28, i32 2
  %39 = ptrtoint ptr %add.ptr22.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %add.ptr22.i, align 1
  %41 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %arrayidx26.i, align 2
  %42 = load i16, ptr %add.ptr9.i, align 1
  %43 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %arrayidx33.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %28, i32 6
  %44 = ptrtoint ptr %add.ptr36.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %add.ptr36.i, align 1
  %46 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %arrayidx40.i, align 2
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %last.0347)
  %cmp78 = icmp eq i64 %30, %last.0347
  br i1 %cmp78, label %if.then80, label %if.end87

if.then80:                                        ; preds = %while.body
  %inc81 = add i8 %repeat_count.0346, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %inc81)
  %cmp83 = icmp ult i8 %inc81, 64
  br i1 %cmp83, label %if.then80.repeat_crit_edge, label %if.then80.if.then89_crit_edge

if.then80.if.then89_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then89

if.then80.repeat_crit_edge:                       ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %repeat

if.end87:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %repeat_count.0346)
  %tobool88.not = icmp eq i8 %repeat_count.0346, 0
  br i1 %tobool88.not, label %if.end87.if.end95_crit_edge, label %if.end87.if.then89_crit_edge

if.end87.if.then89_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then89

if.end87.if.end95_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then89:                                        ; preds = %if.end87.if.then89_crit_edge, %if.then80.if.then89_crit_edge
  %repeat_count.1324 = phi i8 [ %repeat_count.0346, %if.end87.if.then89_crit_edge ], [ %inc81, %if.then80.if.then89_crit_edge ]
  %dec.i = add i8 %repeat_count.1324, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %dec.i)
  %cmp.i = icmp ugt i8 %dec.i, 63
  br i1 %cmp.i, label %if.then89.add_repeat_template.exit_crit_edge, label %if.end.i

if.then89.add_repeat_template.exit_crit_edge:     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_repeat_template.exit

if.end.i:                                         ; preds = %if.then89
  %call.i = tail call fastcc i32 @add_bits(ptr noundef %wmem, i64 noundef 27, i8 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.add_repeat_template.exit_crit_edge

if.end.i.add_repeat_template.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_repeat_template.exit

if.end4.i:                                        ; preds = %if.end.i
  %conv5.i = zext i8 %dec.i to i64
  %call6.i = tail call fastcc i32 @add_bits(ptr noundef %wmem, i64 noundef %conv5.i, i8 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end4.i.add_repeat_template.exit_crit_edge

if.end4.i.add_repeat_template.exit_crit_edge:     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_repeat_template.exit

if.end9.i:                                        ; preds = %if.end4.i
  %47 = load i8, ptr @sw842_template_counts, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool10.not.i = icmp eq i8 %47, 0
  br i1 %tobool10.not.i, label %if.end9.i.add_repeat_template.exit_crit_edge, label %if.then11.i

if.end9.i.add_repeat_template.exit_crit_edge:     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_repeat_template.exit

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @template_repeat_count, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @template_repeat_count, i32 1, i32 3, i32 1) #8
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @template_repeat_count, ptr nonnull @template_repeat_count, i32 1, ptr nonnull elementtype(i32) @template_repeat_count) #8, !srcloc !108
  br label %add_repeat_template.exit

add_repeat_template.exit:                         ; preds = %if.then11.i, %if.end9.i.add_repeat_template.exit_crit_edge, %if.end4.i.add_repeat_template.exit_crit_edge, %if.end.i.add_repeat_template.exit_crit_edge, %if.then89.add_repeat_template.exit_crit_edge
  br i1 %cmp78, label %add_repeat_template.exit.repeat_crit_edge, label %add_repeat_template.exit.if.end95_crit_edge

add_repeat_template.exit.if.end95_crit_edge:      ; preds = %add_repeat_template.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

add_repeat_template.exit.repeat_crit_edge:        ; preds = %add_repeat_template.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %repeat

if.end95:                                         ; preds = %add_repeat_template.exit.if.end95_crit_edge, %if.end87.if.end95_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %cmp96 = icmp eq i64 %30, 0
  br i1 %cmp96, label %if.then98, label %if.else

if.then98:                                        ; preds = %if.end95
  %call.i284 = tail call fastcc i32 @add_bits(ptr noundef %wmem, i64 noundef 28, i8 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i284)
  %tobool.not.i = icmp eq i32 %call.i284, 0
  br i1 %tobool.not.i, label %if.end.i285, label %if.then98.cleanup_crit_edge

if.then98.cleanup_crit_edge:                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i285:                                      ; preds = %if.then98
  %49 = load i8, ptr @sw842_template_counts, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool1.not.i = icmp eq i8 %49, 0
  br i1 %tobool1.not.i, label %if.end.i285.repeat_crit_edge, label %if.then2.i

if.end.i285.repeat_crit_edge:                     ; preds = %if.end.i285
  call void @__sanitizer_cov_trace_pc() #10
  br label %repeat

if.then2.i:                                       ; preds = %if.end.i285
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i286 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @template_zeros_count, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @template_zeros_count, i32 1, i32 3, i32 1) #8
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @template_zeros_count, ptr nonnull @template_zeros_count, i32 1, ptr nonnull elementtype(i32) @template_zeros_count) #8, !srcloc !108
  br label %repeat

if.else:                                          ; preds = %if.end95
  %51 = ptrtoint ptr %index8.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -2, ptr %index8.i, align 8
  %52 = ptrtoint ptr %index4.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -2, ptr %index4.i, align 4
  %53 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -2, ptr %arrayidx3.i, align 4
  %54 = ptrtoint ptr %index2.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -2, ptr %index2.i, align 4
  %55 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -2, ptr %arrayidx6.i, align 4
  %56 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -2, ptr %arrayidx8.i, align 4
  %57 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -2, ptr %arrayidx10.i, align 4
  br label %for.body.i.preheader.i

for.body.i.preheader.i:                           ; preds = %for.inc.i.for.body.i.preheader.i_crit_edge, %if.else
  %i.035.i = phi i32 [ 0, %if.else ], [ %inc.i, %for.inc.i.for.body.i.preheader.i_crit_edge ]
  %arrayidx.i.i = getelementptr [26 x [5 x i8]], ptr @comp_ops, i32 0, i32 %i.035.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end213.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %i.0311.i.i = phi i32 [ %inc.i.i, %if.end213.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %b.0308.i.i = phi i32 [ %add.i.i, %if.end213.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %arrayidx4.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 %i.0311.i.i
  %58 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %59 to i32
  %and.i.i = and i32 %conv5.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end213.i.i_crit_edge, label %if.then6.i.i

for.body.i.i.if.end213.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end213.i.i

if.then6.i.i:                                     ; preds = %for.body.i.i
  %and9.i.i = and i32 %conv5.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.else.i.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.then6.i.i
  %shr.i.i = ashr i32 %b.0308.i.i, 1
  %arrayidx12.i.i = getelementptr %struct.sw842_param, ptr %wmem, i32 0, i32 11, i32 %shr.i.i
  %60 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx12.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %61)
  %cmp13.i.i = icmp eq i32 %61, -2
  br i1 %cmp13.i.i, label %cond.true.i.i, label %if.then11.i.i.if.end209.i.i_crit_edge

if.then11.i.i.if.end209.i.i_crit_edge:            ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209.i.i

cond.true.i.i:                                    ; preds = %if.then11.i.i
  %62 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %arrayidx12.i.i, align 4
  %arrayidx19.i.i = getelementptr %struct.sw842_param, ptr %wmem, i32 0, i32 8, i32 %shr.i.i
  %63 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx19.i.i, align 2
  %conv20.i.i = zext i16 %64 to i32
  %mul.i.i.i.i = mul i32 %conv20.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 22
  %arrayidx21.i.i = getelementptr %struct.sw842_param, ptr %wmem, i32 0, i32 14, i32 %shr.i.i.i
  br label %for.cond25.i.i

for.cond25.i.i:                                   ; preds = %for.body27.i.i.for.cond25.i.i_crit_edge, %cond.true.i.i
  %_n.0.in.i.i = phi ptr [ %arrayidx21.i.i, %cond.true.i.i ], [ %_n.0.i.i, %for.body27.i.i.for.cond25.i.i_crit_edge ]
  %65 = ptrtoint ptr %_n.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %_n.0.i.i = load ptr, ptr %_n.0.in.i.i, align 4
  %tobool26.not.i.i = icmp eq ptr %_n.0.i.i, null
  br i1 %tobool26.not.i.i, label %for.cond25.i.i.for.end.i.i_crit_edge, label %for.body27.i.i

for.cond25.i.i.for.end.i.i_crit_edge:             ; preds = %for.cond25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body27.i.i:                                   ; preds = %for.cond25.i.i
  %data.i.i = getelementptr inbounds %struct.sw842_hlist_node2, ptr %_n.0.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %data.i.i, align 4
  %cmp33.i.i = icmp eq i16 %64, %67
  br i1 %cmp33.i.i, label %if.then35.i.i, label %for.body27.i.i.for.cond25.i.i_crit_edge

for.body27.i.i.for.cond25.i.i_crit_edge:          ; preds = %for.body27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond25.i.i

if.then35.i.i:                                    ; preds = %for.body27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %index.i.i = getelementptr inbounds %struct.sw842_hlist_node2, ptr %_n.0.i.i, i32 0, i32 2
  %68 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %index.i.i, align 2
  %conv36.i.i = zext i8 %69 to i32
  %70 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv36.i.i, ptr %arrayidx12.i.i, align 4
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.then35.i.i, %for.cond25.i.i.for.end.i.i_crit_edge
  %71 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx12.i.i, align 4
  br label %if.end209.i.i

if.else.i.i:                                      ; preds = %if.then6.i.i
  %and67.i.i = and i32 %conv5.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i.i)
  %tobool68.not.i.i = icmp eq i32 %and67.i.i, 0
  br i1 %tobool68.not.i.i, label %if.else138.i.i, label %if.then69.i.i

if.then69.i.i:                                    ; preds = %if.else.i.i
  %shr70.i.i = ashr i32 %b.0308.i.i, 2
  %arrayidx71.i.i = getelementptr %struct.sw842_param, ptr %wmem, i32 0, i32 10, i32 %shr70.i.i
  %73 = ptrtoint ptr %arrayidx71.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx71.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %74)
  %cmp72.i.i = icmp eq i32 %74, -2
  br i1 %cmp72.i.i, label %cond.true74.i.i, label %if.then69.i.i.if.end209.i.i_crit_edge

if.then69.i.i.if.end209.i.i_crit_edge:            ; preds = %if.then69.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209.i.i

cond.true74.i.i:                                  ; preds = %if.then69.i.i
  %75 = ptrtoint ptr %arrayidx71.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %arrayidx71.i.i, align 4
  %arrayidx81.i.i = getelementptr %struct.sw842_param, ptr %wmem, i32 0, i32 7, i32 %shr70.i.i
  %76 = ptrtoint ptr %arrayidx81.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx81.i.i, align 4
  %mul.i.i301.i.i = mul i32 %77, 1640531527
  %shr.i302.i.i = lshr i32 %mul.i.i301.i.i, 21
  %arrayidx83.i.i = getelementptr %struct.sw842_param, ptr %wmem, i32 0, i32 13, i32 %shr.i302.i.i
  br label %for.cond94.i.i

for.cond94.i.i:                                   ; preds = %for.body96.i.i.for.cond94.i.i_crit_edge, %cond.true74.i.i
  %_n75.0.in.i.i = phi ptr [ %arrayidx83.i.i, %cond.true74.i.i ], [ %_n75.0.i.i, %for.body96.i.i.for.cond94.i.i_crit_edge ]
  %78 = ptrtoint ptr %_n75.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %_n75.0.i.i = load ptr, ptr %_n75.0.in.i.i, align 4
  %tobool95.not.i.i = icmp eq ptr %_n75.0.i.i, null
  br i1 %tobool95.not.i.i, label %for.cond94.i.i.for.end123.i.i_crit_edge, label %for.body96.i.i

for.cond94.i.i.for.end123.i.i_crit_edge:          ; preds = %for.cond94.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end123.i.i

for.body96.i.i:                                   ; preds = %for.cond94.i.i
  %data100.i.i = getelementptr inbounds %struct.sw842_hlist_node4, ptr %_n75.0.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %data100.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %data100.i.i, align 4
  %cmp101.i.i = icmp eq i32 %77, %80
  br i1 %cmp101.i.i, label %if.then103.i.i, label %for.body96.i.i.for.cond94.i.i_crit_edge

for.body96.i.i.for.cond94.i.i_crit_edge:          ; preds = %for.body96.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond94.i.i

if.then103.i.i:                                   ; preds = %for.body96.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %index104.i.i = getelementptr inbounds %struct.sw842_hlist_node4, ptr %_n75.0.i.i, i32 0, i32 2
  %81 = ptrtoint ptr %index104.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %index104.i.i, align 4
  %conv105.i.i = zext i16 %82 to i32
  %83 = ptrtoint ptr %arrayidx71.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv105.i.i, ptr %arrayidx71.i.i, align 4
  br label %for.end123.i.i

for.end123.i.i:                                   ; preds = %if.then103.i.i, %for.cond94.i.i.for.end123.i.i_crit_edge
  %84 = ptrtoint ptr %arrayidx71.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx71.i.i, align 4
  br label %if.end209.i.i

if.else138.i.i:                                   ; preds = %if.else.i.i
  %and141.i.i = and i32 %conv5.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141.i.i)
  %tobool142.not.i.i = icmp eq i32 %and141.i.i, 0
  br i1 %tobool142.not.i.i, label %if.else138.i.i.for.inc.i_crit_edge, label %if.then143.i.i

if.else138.i.i.for.inc.i_crit_edge:               ; preds = %if.else138.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then143.i.i:                                   ; preds = %if.else138.i.i
  %86 = ptrtoint ptr %index8.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %index8.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %87)
  %cmp145.i.i = icmp eq i32 %87, -2
  br i1 %cmp145.i.i, label %cond.true147.i.i, label %if.then143.i.i.if.end209.i.i_crit_edge

if.then143.i.i.if.end209.i.i_crit_edge:           ; preds = %if.then143.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209.i.i

cond.true147.i.i:                                 ; preds = %if.then143.i.i
  %88 = ptrtoint ptr %index8.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %index8.i, align 8
  %89 = ptrtoint ptr %data8.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %data8.i, align 8
  %conv153.i.i = trunc i64 %90 to i32
  %mul.i.i303.i.i = mul i32 %conv153.i.i, 1640531527
  %shr.i304.i.i = lshr i32 %mul.i.i303.i.i, 22
  %arrayidx155.i.i = getelementptr %struct.sw842_param, ptr %wmem, i32 0, i32 12, i32 %shr.i304.i.i
  br label %for.cond166.i.i

for.cond166.i.i:                                  ; preds = %for.body168.i.i.for.cond166.i.i_crit_edge, %cond.true147.i.i
  %_n148.0.in.i.i = phi ptr [ %arrayidx155.i.i, %cond.true147.i.i ], [ %_n148.0.i.i, %for.body168.i.i.for.cond166.i.i_crit_edge ]
  %91 = ptrtoint ptr %_n148.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %_n148.0.i.i = load ptr, ptr %_n148.0.in.i.i, align 4
  %tobool167.not.i.i = icmp eq ptr %_n148.0.i.i, null
  br i1 %tobool167.not.i.i, label %for.cond166.i.i.for.end193.i.i_crit_edge, label %for.body168.i.i

for.cond166.i.i.for.end193.i.i_crit_edge:         ; preds = %for.cond166.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end193.i.i

for.body168.i.i:                                  ; preds = %for.cond166.i.i
  %data171.i.i = getelementptr inbounds %struct.sw842_hlist_node8, ptr %_n148.0.i.i, i32 0, i32 1
  %92 = ptrtoint ptr %data171.i.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %data171.i.i, align 8
  %cmp172.i.i = icmp eq i64 %90, %93
  br i1 %cmp172.i.i, label %if.then174.i.i, label %for.body168.i.i.for.cond166.i.i_crit_edge

for.body168.i.i.for.cond166.i.i_crit_edge:        ; preds = %for.body168.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond166.i.i

if.then174.i.i:                                   ; preds = %for.body168.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %index175.i.i = getelementptr inbounds %struct.sw842_hlist_node8, ptr %_n148.0.i.i, i32 0, i32 2
  %94 = ptrtoint ptr %index175.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %index175.i.i, align 8
  %conv176.i.i = zext i8 %95 to i32
  %96 = ptrtoint ptr %index8.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %conv176.i.i, ptr %index8.i, align 8
  br label %for.end193.i.i

for.end193.i.i:                                   ; preds = %if.then174.i.i, %for.cond166.i.i.for.end193.i.i_crit_edge
  %97 = ptrtoint ptr %index8.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %index8.i, align 8
  br label %if.end209.i.i

if.end209.i.i:                                    ; preds = %for.end193.i.i, %if.then143.i.i.if.end209.i.i_crit_edge, %for.end123.i.i, %if.then69.i.i.if.end209.i.i_crit_edge, %for.end.i.i, %if.then11.i.i.if.end209.i.i_crit_edge
  %match.0.in.in.i.i = phi i32 [ %72, %for.end.i.i ], [ %61, %if.then11.i.i.if.end209.i.i_crit_edge ], [ %85, %for.end123.i.i ], [ %74, %if.then69.i.i.if.end209.i.i_crit_edge ], [ %98, %for.end193.i.i ], [ %87, %if.then143.i.i.if.end209.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %match.0.in.in.i.i)
  %tobool210.not.i.i = icmp slt i32 %match.0.in.in.i.i, 0
  br i1 %tobool210.not.i.i, label %if.end209.i.i.for.inc.i_crit_edge, label %if.end209.i.i.if.end213.i.i_crit_edge

if.end209.i.i.if.end213.i.i_crit_edge:            ; preds = %if.end209.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end213.i.i

if.end209.i.i.for.inc.i_crit_edge:                ; preds = %if.end209.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end213.i.i:                                    ; preds = %if.end209.i.i.if.end213.i.i_crit_edge, %for.body.i.i.if.end213.i.i_crit_edge
  %99 = and i8 %59, 15
  %and216.i.i = zext i8 %99 to i32
  %add.i.i = add i32 %b.0308.i.i, %and216.i.i
  %inc.i.i = add nuw nsw i32 %i.0311.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 4
  br i1 %exitcond.not.i.i, label %if.end213.i.i.if.end101_crit_edge, label %if.end213.i.i.for.body.i.i_crit_edge

if.end213.i.i.for.body.i.i_crit_edge:             ; preds = %if.end213.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

if.end213.i.i.if.end101_crit_edge:                ; preds = %if.end213.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

for.inc.i:                                        ; preds = %if.end209.i.i.for.inc.i_crit_edge, %if.else138.i.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 25
  br i1 %exitcond.not.i, label %for.inc.i.if.end101_crit_edge, label %for.inc.i.for.body.i.preheader.i_crit_edge

for.inc.i.for.body.i.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader.i

for.inc.i.if.end101_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.end101:                                        ; preds = %for.inc.i.if.end101_crit_edge, %if.end213.i.i.if.end101_crit_edge
  %i.034.i = phi i32 [ %i.035.i, %if.end213.i.i.if.end101_crit_edge ], [ 25, %for.inc.i.if.end101_crit_edge ]
  %conv11.i = trunc i32 %i.034.i to i8
  %call12.i = tail call fastcc i32 @add_template(ptr noundef %wmem, i8 noundef zeroext %conv11.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool102.not = icmp eq i32 %call12.i, 0
  br i1 %tobool102.not, label %if.end101.repeat_crit_edge, label %if.end101.cleanup_crit_edge

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end101.repeat_crit_edge:                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %repeat

repeat:                                           ; preds = %if.end101.repeat_crit_edge, %if.then2.i, %if.end.i285.repeat_crit_edge, %add_repeat_template.exit.repeat_crit_edge, %if.then80.repeat_crit_edge
  %repeat_count.3 = phi i8 [ %inc81, %if.then80.repeat_crit_edge ], [ 0, %add_repeat_template.exit.repeat_crit_edge ], [ 0, %if.end101.repeat_crit_edge ], [ 0, %if.end.i285.repeat_crit_edge ], [ 0, %if.then2.i ]
  tail call fastcc void @update_hashtables(ptr noundef %wmem)
  %100 = ptrtoint ptr %wmem to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %wmem, align 8
  %add.ptr = getelementptr i8, ptr %101, i32 8
  store ptr %add.ptr, ptr %wmem, align 8
  %102 = ptrtoint ptr %ilen53 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %ilen53, align 8
  %sub = add i64 %103, -8
  store i64 %sub, ptr %ilen53, align 8
  %cmp72 = icmp ugt i64 %sub, 7
  br i1 %cmp72, label %repeat.while.body_crit_edge, label %while.end

repeat.while.body_crit_edge:                      ; preds = %repeat
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %repeat
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %repeat_count.3)
  %tobool107.not = icmp eq i8 %repeat_count.3, 0
  br i1 %tobool107.not, label %while.end.skip_comp_crit_edge, label %if.end.i291

while.end.skip_comp_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_comp

if.end.i291:                                      ; preds = %while.end
  %call.i289 = tail call fastcc i32 @add_bits(ptr noundef %wmem, i64 noundef 27, i8 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i289)
  %tobool2.not.i290 = icmp eq i32 %call.i289, 0
  br i1 %tobool2.not.i290, label %if.end4.i295, label %if.end.i291.cleanup_crit_edge

if.end.i291.cleanup_crit_edge:                    ; preds = %if.end.i291
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i295:                                     ; preds = %if.end.i291
  %dec.i287 = add nsw i8 %repeat_count.3, -1
  %conv5.i292 = zext i8 %dec.i287 to i64
  %call6.i293 = tail call fastcc i32 @add_bits(ptr noundef %wmem, i64 noundef %conv5.i292, i8 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i293)
  %tobool7.not.i294 = icmp eq i32 %call6.i293, 0
  br i1 %tobool7.not.i294, label %if.end9.i297, label %if.end4.i295.cleanup_crit_edge

if.end4.i295.cleanup_crit_edge:                   ; preds = %if.end4.i295
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9.i297:                                     ; preds = %if.end4.i295
  %104 = load i8, ptr @sw842_template_counts, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool10.not.i296 = icmp eq i8 %104, 0
  br i1 %tobool10.not.i296, label %if.end9.i297.skip_compthread-pre-split_crit_edge, label %if.then11.i299

if.end9.i297.skip_compthread-pre-split_crit_edge: ; preds = %if.end9.i297
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_compthread-pre-split

if.then11.i299:                                   ; preds = %if.end9.i297
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i298 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @template_repeat_count, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @template_repeat_count, i32 1, i32 3, i32 1) #8
  %105 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @template_repeat_count, ptr nonnull @template_repeat_count, i32 1, ptr nonnull elementtype(i32) @template_repeat_count) #8, !srcloc !108
  br label %skip_compthread-pre-split

skip_compthread-pre-split:                        ; preds = %if.then11.i299, %if.end9.i297.skip_compthread-pre-split_crit_edge, %if.end.skip_compthread-pre-split_crit_edge
  %106 = ptrtoint ptr %ilen53 to i32
  call void @__asan_load8_noabort(i32 %106)
  %.pr359 = load i64, ptr %ilen53, align 8
  br label %skip_comp

skip_comp:                                        ; preds = %skip_compthread-pre-split, %while.end.skip_comp_crit_edge, %if.end68.skip_comp_crit_edge
  %107 = phi i64 [ %.pr359, %skip_compthread-pre-split ], [ %sub, %while.end.skip_comp_crit_edge ], [ %.pr, %if.end68.skip_comp_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %107)
  %cmp115.not = icmp eq i64 %107, 0
  br i1 %cmp115.not, label %skip_comp.if.end128_crit_edge, label %if.then117

skip_comp.if.end128_crit_edge:                    ; preds = %skip_comp
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

if.then117:                                       ; preds = %skip_comp
  %conv119 = trunc i64 %107 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv119)
  %tobool.not.i302 = icmp eq i8 %conv119, 0
  br i1 %tobool.not.i302, label %if.then117.cleanup_crit_edge, label %lor.lhs.false.i

if.then117.cleanup_crit_edge:                     ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.then117
  %108 = trunc i64 %107 to i32
  %conv.i = and i32 %108, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %conv119)
  %cmp.i303 = icmp ugt i8 %conv119, 7
  br i1 %cmp.i303, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i306

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i306:                                      ; preds = %lor.lhs.false.i
  %call.i304 = tail call fastcc i32 @add_bits(ptr noundef %wmem, i64 noundef 29, i8 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i304)
  %tobool2.not.i305 = icmp eq i32 %call.i304, 0
  br i1 %tobool2.not.i305, label %if.end4.i310, label %if.end.i306.cleanup_crit_edge

if.end.i306.cleanup_crit_edge:                    ; preds = %if.end.i306
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i310:                                     ; preds = %if.end.i306
  %conv5.i307 = and i64 %107, 255
  %call6.i308 = tail call fastcc i32 @add_bits(ptr noundef %wmem, i64 noundef %conv5.i307, i8 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i308)
  %tobool7.not.i309 = icmp eq i32 %call6.i308, 0
  br i1 %tobool7.not.i309, label %if.end4.i310.for.body.i_crit_edge, label %if.end4.i310.cleanup_crit_edge

if.end4.i310.cleanup_crit_edge:                   ; preds = %if.end4.i310
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i310.for.body.i_crit_edge:                ; preds = %if.end4.i310
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i311 = add nuw nsw i32 %i.035.i313, 1
  %exitcond.not.i312 = icmp eq i32 %inc.i311, %conv.i
  br i1 %exitcond.not.i312, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end4.i310.for.body.i_crit_edge
  %i.035.i313 = phi i32 [ %inc.i311, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end4.i310.for.body.i_crit_edge ]
  %109 = ptrtoint ptr %wmem to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %wmem, align 8
  %arrayidx.i = getelementptr i8, ptr %110, i32 %i.035.i313
  %111 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx.i, align 1
  %conv13.i = zext i8 %112 to i64
  %call14.i = tail call fastcc i32 @add_bits(ptr noundef %wmem, i64 noundef %conv13.i, i8 noundef zeroext 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %for.cond.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.i:                                        ; preds = %for.cond.i
  %113 = load i8, ptr @sw842_template_counts, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool18.not.i = icmp eq i8 %113, 0
  br i1 %tobool18.not.i, label %for.end.i.if.end123_crit_edge, label %if.then19.i

for.end.i.if.end123_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

if.then19.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i314 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @template_short_data_count, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @template_short_data_count, i32 1, i32 3, i32 1) #8
  %114 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @template_short_data_count, ptr nonnull @template_short_data_count, i32 1, ptr nonnull elementtype(i32) @template_short_data_count) #8, !srcloc !108
  br label %if.end123

if.end123:                                        ; preds = %if.then19.i, %for.end.i.if.end123_crit_edge
  %115 = ptrtoint ptr %ilen53 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %ilen53, align 8
  %117 = ptrtoint ptr %wmem to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %wmem, align 8
  %idx.ext = trunc i64 %116 to i32
  %add.ptr126 = getelementptr i8, ptr %118, i32 %idx.ext
  store ptr %add.ptr126, ptr %wmem, align 8
  store i64 0, ptr %ilen53, align 8
  br label %if.end128

if.end128:                                        ; preds = %if.end123, %skip_comp.if.end128_crit_edge
  %call.i316 = tail call fastcc i32 @add_bits(ptr noundef %wmem, i64 noundef 30, i8 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i316)
  %tobool.not.i317 = icmp eq i32 %call.i316, 0
  br i1 %tobool.not.i317, label %if.end.i319, label %if.end128.cleanup_crit_edge

if.end128.cleanup_crit_edge:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i319:                                      ; preds = %if.end128
  %119 = load i8, ptr @sw842_template_counts, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool1.not.i318 = icmp eq i8 %119, 0
  br i1 %tobool1.not.i318, label %if.end.i319.if.end132_crit_edge, label %if.then2.i321

if.end.i319.if.end132_crit_edge:                  ; preds = %if.end.i319
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132

if.then2.i321:                                    ; preds = %if.end.i319
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i320 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @template_end_count, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @template_end_count, i32 1, i32 3, i32 1) #8
  %120 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @template_end_count, ptr nonnull @template_end_count, i32 1, ptr nonnull elementtype(i32) @template_end_count) #8, !srcloc !108
  br label %if.end132

if.end132:                                        ; preds = %if.then2.i321, %if.end.i319.if.end132_crit_edge
  %call133 = tail call i32 @crc32_be(i32 noundef 0, ptr noundef %in, i32 noundef %ilen) #12
  %conv134 = zext i32 %call133 to i64
  %call135 = tail call fastcc i32 @add_bits(ptr noundef %wmem, i64 noundef %conv134, i8 noundef zeroext 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end138, label %if.end132.cleanup_crit_edge

if.end132.cleanup_crit_edge:                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end138:                                        ; preds = %if.end132
  %121 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %bit, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool140.not = icmp eq i8 %122, 0
  br i1 %tobool140.not, label %if.end138.if.end145_crit_edge, label %if.then141

if.end138.if.end145_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

if.then141:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  %123 = ptrtoint ptr %out54 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %out54, align 8
  %incdec.ptr = getelementptr i8, ptr %124, i32 1
  store ptr %incdec.ptr, ptr %out54, align 8
  %125 = ptrtoint ptr %olen56 to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %olen56, align 8
  %dec = add i64 %126, -1
  store i64 %dec, ptr %olen56, align 8
  %127 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %bit, align 8
  br label %if.end145

if.end145:                                        ; preds = %if.then141, %if.end138.if.end145_crit_edge
  %128 = ptrtoint ptr %olen56 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %olen56, align 8
  %sub147.neg = sub i64 %129, %conv55
  %rem150 = and i64 %sub147.neg, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem150)
  %tobool151.not = icmp eq i64 %rem150, 0
  br i1 %tobool151.not, label %if.end145.if.end165_crit_edge, label %if.then152

if.end145.if.end165_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end165

if.then152:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_cmp8(i64 %rem150, i64 %129)
  %cmp154 = icmp ugt i64 %rem150, %129
  br i1 %cmp154, label %if.then152.cleanup_crit_edge, label %if.end157

if.then152.cleanup_crit_edge:                     ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end157:                                        ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #10
  %130 = ptrtoint ptr %out54 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %out54, align 8
  %conv159 = trunc i64 %rem150 to i32
  %132 = call ptr @memset(ptr %131, i32 0, i32 %conv159)
  %133 = load ptr, ptr %out54, align 8
  %add.ptr162 = getelementptr i8, ptr %133, i32 %conv159
  store ptr %add.ptr162, ptr %out54, align 8
  %134 = ptrtoint ptr %olen56 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %olen56, align 8
  %sub164 = sub i64 %135, %rem150
  store i64 %sub164, ptr %olen56, align 8
  br label %if.end165

if.end165:                                        ; preds = %if.end157, %if.end145.if.end165_crit_edge
  %136 = ptrtoint ptr %olen56 to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %olen56, align 8
  %sub167 = sub i64 %conv55, %137
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %sub167)
  %cmp168 = icmp ugt i64 %sub167, 4294967295
  br i1 %cmp168, label %if.end165.cleanup_crit_edge, label %if.end177, !prof !107

if.end165.cleanup_crit_edge:                      ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end177:                                        ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #10
  %conv180 = trunc i64 %sub167 to i32
  %138 = ptrtoint ptr %olen to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %conv180, ptr %olen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end177, %if.end165.cleanup_crit_edge, %if.then152.cleanup_crit_edge, %if.end132.cleanup_crit_edge, %if.end128.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.end4.i310.cleanup_crit_edge, %if.end.i306.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.then117.cleanup_crit_edge, %if.end4.i295.cleanup_crit_edge, %if.end.i291.cleanup_crit_edge, %if.end101.cleanup_crit_edge, %if.then98.cleanup_crit_edge, %do.end62
  %retval.0 = phi i32 [ -22, %do.end62 ], [ 0, %if.end177 ], [ %call135, %if.end132.cleanup_crit_edge ], [ -28, %if.then152.cleanup_crit_edge ], [ -28, %if.end165.cleanup_crit_edge ], [ %call.i289, %if.end.i291.cleanup_crit_edge ], [ %call6.i293, %if.end4.i295.cleanup_crit_edge ], [ %call.i316, %if.end128.cleanup_crit_edge ], [ %call6.i308, %if.end4.i310.cleanup_crit_edge ], [ %call.i304, %if.end.i306.cleanup_crit_edge ], [ -22, %if.then117.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ %call14.i, %for.body.i.cleanup_crit_edge ], [ %call.i284, %if.then98.cleanup_crit_edge ], [ %call12.i, %if.end101.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_hashtables(ptr noundef %p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %instart = getelementptr inbounds %struct.sw842_param, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %instart to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %instart, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %4 = lshr i32 %sub.ptr.sub, 1
  %5 = and i32 %4, 255
  %6 = lshr i32 %sub.ptr.sub, 3
  %idxprom = and i32 %6, 255
  %arrayidx = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 15, i32 %idxprom
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %arrayidx, i32 0, i32 1
  %7 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.not.i.i, label %entry.hash_del.exit_crit_edge, label %if.then.i.i

entry.hash_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %entry
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %10, ptr %8, align 4
  %tobool.not.i3.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %8, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %entry.hash_del.exit_crit_edge
  %data8 = getelementptr inbounds %struct.sw842_param, ptr %p, i32 0, i32 6
  %15 = ptrtoint ptr %data8 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %data8, align 8
  %data = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 15, i32 %idxprom, i32 1
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %data, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_hashtables.__UNIQUE_ID_ddebug205, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_hashtables, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !109

if.then:                                          ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %index = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 15, i32 %idxprom, i32 2
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %index, align 8
  %conv9 = zext i8 %19 to i32
  %20 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p, align 8
  %22 = ptrtoint ptr %instart to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %instart, align 4
  %sub.ptr.lhs.cast12 = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast13 = ptrtoint ptr %23 to i32
  %sub.ptr.sub14 = sub i32 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %data, align 8
  %conv16 = trunc i64 %25 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @update_hashtables.__UNIQUE_ID_ddebug205, ptr noundef nonnull @.str.15, i32 noundef 8, i32 noundef %conv9, i32 noundef %sub.ptr.sub14, i32 noundef %conv16) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %hash_del.exit
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %data, align 8
  %conv19 = trunc i64 %27 to i32
  %mul.i.i = mul i32 %conv19, 1640531527
  %shr.i = lshr i32 %mul.i.i, 22
  %arrayidx21 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 12, i32 %shr.i
  %28 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx21, align 4
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %do.end.hlist_add_head.exit_crit_edge, label %do.body12.i

do.end.hlist_add_head.exit_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %29, i32 0, i32 1
  %31 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %arrayidx, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %do.end.hlist_add_head.exit_crit_edge
  %32 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %arrayidx, ptr %arrayidx21, align 4
  %33 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %arrayidx21, ptr %pprev.i.i.i, align 4
  %34 = lshr i32 %sub.ptr.sub, 2
  %idxprom27 = and i32 %34, 511
  %arrayidx28 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 16, i32 %idxprom27
  %pprev.i.i.i367 = getelementptr inbounds %struct.hlist_node, ptr %arrayidx28, i32 0, i32 1
  %35 = ptrtoint ptr %pprev.i.i.i367 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pprev.i.i.i367, align 4
  %tobool.not.i.not.i.i368 = icmp eq ptr %36, null
  br i1 %tobool.not.i.not.i.i368, label %hlist_add_head.exit.hash_del.exit374_crit_edge, label %if.then.i.i370

hlist_add_head.exit.hash_del.exit374_crit_edge:   ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_del.exit374

if.then.i.i370:                                   ; preds = %hlist_add_head.exit
  %37 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx28, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %38, ptr %36, align 4
  %tobool.not.i3.i.i369 = icmp eq ptr %38, null
  br i1 %tobool.not.i3.i.i369, label %if.then.i.i370.__hlist_del.exit.i.i373_crit_edge, label %do.body13.i.i.i372

if.then.i.i370.__hlist_del.exit.i.i373_crit_edge: ; preds = %if.then.i.i370
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hlist_del.exit.i.i373

do.body13.i.i.i372:                               ; preds = %if.then.i.i370
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i371 = getelementptr inbounds %struct.hlist_node, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %pprev14.i.i.i371 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %36, ptr %pprev14.i.i.i371, align 4
  br label %__hlist_del.exit.i.i373

__hlist_del.exit.i.i373:                          ; preds = %do.body13.i.i.i372, %if.then.i.i370.__hlist_del.exit.i.i373_crit_edge
  %41 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx28, align 4
  %42 = ptrtoint ptr %pprev.i.i.i367 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %pprev.i.i.i367, align 4
  br label %hash_del.exit374

hash_del.exit374:                                 ; preds = %__hlist_del.exit.i.i373, %hlist_add_head.exit.hash_del.exit374_crit_edge
  %data4 = getelementptr inbounds %struct.sw842_param, ptr %p, i32 0, i32 7
  %43 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data4, align 8
  %data31 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 16, i32 %idxprom27, i32 1
  %45 = ptrtoint ptr %data31 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %data31, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_hashtables.__UNIQUE_ID_ddebug206, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_hashtables, %if.then44)) #8
          to label %do.end55 [label %if.then44], !srcloc !109

if.then44:                                        ; preds = %hash_del.exit374
  call void @__sanitizer_cov_trace_pc() #10
  %index45 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 16, i32 %idxprom27, i32 2
  %46 = ptrtoint ptr %index45 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %index45, align 4
  %conv46 = zext i16 %47 to i32
  %48 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %p, align 8
  %50 = ptrtoint ptr %instart to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %instart, align 4
  %sub.ptr.lhs.cast49 = ptrtoint ptr %49 to i32
  %sub.ptr.rhs.cast50 = ptrtoint ptr %51 to i32
  %sub.ptr.sub51 = sub i32 %sub.ptr.lhs.cast49, %sub.ptr.rhs.cast50
  %52 = ptrtoint ptr %data31 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %data31, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @update_hashtables.__UNIQUE_ID_ddebug206, ptr noundef nonnull @.str.15, i32 noundef 4, i32 noundef %conv46, i32 noundef %sub.ptr.sub51, i32 noundef %53) #8
  br label %do.end55

do.end55:                                         ; preds = %if.then44, %hash_del.exit374
  %54 = ptrtoint ptr %data31 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data31, align 4
  %mul.i.i375 = mul i32 %55, 1640531527
  %shr.i376 = lshr i32 %mul.i.i375, 21
  %arrayidx59 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 13, i32 %shr.i376
  %56 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx59, align 4
  %58 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %57, ptr %arrayidx28, align 4
  %tobool.not.i377 = icmp eq ptr %57, null
  br i1 %tobool.not.i377, label %do.end55.hlist_add_head.exit381_crit_edge, label %do.body12.i379

do.end55.hlist_add_head.exit381_crit_edge:        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_add_head.exit381

do.body12.i379:                                   ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i378 = getelementptr inbounds %struct.hlist_node, ptr %57, i32 0, i32 1
  %59 = ptrtoint ptr %pprev.i378 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %arrayidx28, ptr %pprev.i378, align 4
  br label %hlist_add_head.exit381

hlist_add_head.exit381:                           ; preds = %do.body12.i379, %do.end55.hlist_add_head.exit381_crit_edge
  %60 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %arrayidx28, ptr %arrayidx59, align 4
  %61 = ptrtoint ptr %pprev.i.i.i367 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %arrayidx59, ptr %pprev.i.i.i367, align 4
  %idxprom66 = add nuw nsw i32 %idxprom27, 1
  %arrayidx67 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 16, i32 %idxprom66
  %pprev.i.i.i382 = getelementptr inbounds %struct.hlist_node, ptr %arrayidx67, i32 0, i32 1
  %62 = ptrtoint ptr %pprev.i.i.i382 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pprev.i.i.i382, align 4
  %tobool.not.i.not.i.i383 = icmp eq ptr %63, null
  br i1 %tobool.not.i.not.i.i383, label %hlist_add_head.exit381.hash_del.exit389_crit_edge, label %if.then.i.i385

hlist_add_head.exit381.hash_del.exit389_crit_edge: ; preds = %hlist_add_head.exit381
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_del.exit389

if.then.i.i385:                                   ; preds = %hlist_add_head.exit381
  %64 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx67, align 4
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %65, ptr %63, align 4
  %tobool.not.i3.i.i384 = icmp eq ptr %65, null
  br i1 %tobool.not.i3.i.i384, label %if.then.i.i385.__hlist_del.exit.i.i388_crit_edge, label %do.body13.i.i.i387

if.then.i.i385.__hlist_del.exit.i.i388_crit_edge: ; preds = %if.then.i.i385
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hlist_del.exit.i.i388

do.body13.i.i.i387:                               ; preds = %if.then.i.i385
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i386 = getelementptr inbounds %struct.hlist_node, ptr %65, i32 0, i32 1
  %67 = ptrtoint ptr %pprev14.i.i.i386 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %63, ptr %pprev14.i.i.i386, align 4
  br label %__hlist_del.exit.i.i388

__hlist_del.exit.i.i388:                          ; preds = %do.body13.i.i.i387, %if.then.i.i385.__hlist_del.exit.i.i388_crit_edge
  %68 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %arrayidx67, align 4
  %69 = ptrtoint ptr %pprev.i.i.i382 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %pprev.i.i.i382, align 4
  br label %hash_del.exit389

hash_del.exit389:                                 ; preds = %__hlist_del.exit.i.i388, %hlist_add_head.exit381.hash_del.exit389_crit_edge
  %arrayidx70 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 7, i32 1
  %70 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx70, align 4
  %data71 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 16, i32 %idxprom66, i32 1
  %72 = ptrtoint ptr %data71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %data71, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_hashtables.__UNIQUE_ID_ddebug207, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_hashtables, %if.then84)) #8
          to label %do.end95 [label %if.then84], !srcloc !109

if.then84:                                        ; preds = %hash_del.exit389
  call void @__sanitizer_cov_trace_pc() #10
  %index85 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 16, i32 %idxprom66, i32 2
  %73 = ptrtoint ptr %index85 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %index85, align 4
  %conv86 = zext i16 %74 to i32
  %75 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %p, align 8
  %77 = ptrtoint ptr %instart to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %instart, align 4
  %sub.ptr.lhs.cast89 = ptrtoint ptr %76 to i32
  %sub.ptr.rhs.cast90 = ptrtoint ptr %78 to i32
  %sub.ptr.sub91 = sub i32 %sub.ptr.lhs.cast89, %sub.ptr.rhs.cast90
  %79 = ptrtoint ptr %data71 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %data71, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @update_hashtables.__UNIQUE_ID_ddebug207, ptr noundef nonnull @.str.15, i32 noundef 4, i32 noundef %conv86, i32 noundef %sub.ptr.sub91, i32 noundef %80) #8
  br label %do.end95

do.end95:                                         ; preds = %if.then84, %hash_del.exit389
  %81 = ptrtoint ptr %data71 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %data71, align 4
  %mul.i.i390 = mul i32 %82, 1640531527
  %shr.i391 = lshr i32 %mul.i.i390, 21
  %arrayidx100 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 13, i32 %shr.i391
  %83 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx100, align 4
  %85 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %84, ptr %arrayidx67, align 4
  %tobool.not.i392 = icmp eq ptr %84, null
  br i1 %tobool.not.i392, label %do.end95.hlist_add_head.exit396_crit_edge, label %do.body12.i394

do.end95.hlist_add_head.exit396_crit_edge:        ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_add_head.exit396

do.body12.i394:                                   ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i393 = getelementptr inbounds %struct.hlist_node, ptr %84, i32 0, i32 1
  %86 = ptrtoint ptr %pprev.i393 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %arrayidx67, ptr %pprev.i393, align 4
  br label %hlist_add_head.exit396

hlist_add_head.exit396:                           ; preds = %do.body12.i394, %do.end95.hlist_add_head.exit396_crit_edge
  %87 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %arrayidx67, ptr %arrayidx100, align 4
  %88 = ptrtoint ptr %pprev.i.i.i382 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %arrayidx100, ptr %pprev.i.i.i382, align 4
  %arrayidx107 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 17, i32 %5
  %pprev.i.i.i397 = getelementptr inbounds %struct.hlist_node, ptr %arrayidx107, i32 0, i32 1
  %89 = ptrtoint ptr %pprev.i.i.i397 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pprev.i.i.i397, align 4
  %tobool.not.i.not.i.i398 = icmp eq ptr %90, null
  br i1 %tobool.not.i.not.i.i398, label %hlist_add_head.exit396.hash_del.exit404_crit_edge, label %if.then.i.i400

hlist_add_head.exit396.hash_del.exit404_crit_edge: ; preds = %hlist_add_head.exit396
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_del.exit404

if.then.i.i400:                                   ; preds = %hlist_add_head.exit396
  %91 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx107, align 4
  %93 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %92, ptr %90, align 4
  %tobool.not.i3.i.i399 = icmp eq ptr %92, null
  br i1 %tobool.not.i3.i.i399, label %if.then.i.i400.__hlist_del.exit.i.i403_crit_edge, label %do.body13.i.i.i402

if.then.i.i400.__hlist_del.exit.i.i403_crit_edge: ; preds = %if.then.i.i400
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hlist_del.exit.i.i403

do.body13.i.i.i402:                               ; preds = %if.then.i.i400
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i401 = getelementptr inbounds %struct.hlist_node, ptr %92, i32 0, i32 1
  %94 = ptrtoint ptr %pprev14.i.i.i401 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %90, ptr %pprev14.i.i.i401, align 4
  br label %__hlist_del.exit.i.i403

__hlist_del.exit.i.i403:                          ; preds = %do.body13.i.i.i402, %if.then.i.i400.__hlist_del.exit.i.i403_crit_edge
  %95 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %arrayidx107, align 4
  %96 = ptrtoint ptr %pprev.i.i.i397 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %pprev.i.i.i397, align 4
  br label %hash_del.exit404

hash_del.exit404:                                 ; preds = %__hlist_del.exit.i.i403, %hlist_add_head.exit396.hash_del.exit404_crit_edge
  %data2 = getelementptr inbounds %struct.sw842_param, ptr %p, i32 0, i32 8
  %97 = ptrtoint ptr %data2 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %data2, align 8
  %data110 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 17, i32 %5, i32 1
  %99 = ptrtoint ptr %data110 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %data110, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_hashtables.__UNIQUE_ID_ddebug208, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_hashtables, %if.then123)) #8
          to label %do.end135 [label %if.then123], !srcloc !109

if.then123:                                       ; preds = %hash_del.exit404
  call void @__sanitizer_cov_trace_pc() #10
  %index124 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 17, i32 %5, i32 2
  %100 = ptrtoint ptr %index124 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %index124, align 2
  %conv125 = zext i8 %101 to i32
  %102 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %p, align 8
  %104 = ptrtoint ptr %instart to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %instart, align 4
  %sub.ptr.lhs.cast128 = ptrtoint ptr %103 to i32
  %sub.ptr.rhs.cast129 = ptrtoint ptr %105 to i32
  %sub.ptr.sub130 = sub i32 %sub.ptr.lhs.cast128, %sub.ptr.rhs.cast129
  %106 = ptrtoint ptr %data110 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %data110, align 4
  %conv132 = zext i16 %107 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @update_hashtables.__UNIQUE_ID_ddebug208, ptr noundef nonnull @.str.15, i32 noundef 2, i32 noundef %conv125, i32 noundef %sub.ptr.sub130, i32 noundef %conv132) #8
  br label %do.end135

do.end135:                                        ; preds = %if.then123, %hash_del.exit404
  %108 = ptrtoint ptr %data110 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %data110, align 4
  %conv138 = zext i16 %109 to i32
  %mul.i.i405 = mul i32 %conv138, 1640531527
  %shr.i406 = lshr i32 %mul.i.i405, 22
  %arrayidx140 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 14, i32 %shr.i406
  %110 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx140, align 4
  %112 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %111, ptr %arrayidx107, align 4
  %tobool.not.i407 = icmp eq ptr %111, null
  br i1 %tobool.not.i407, label %do.end135.hlist_add_head.exit411_crit_edge, label %do.body12.i409

do.end135.hlist_add_head.exit411_crit_edge:       ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_add_head.exit411

do.body12.i409:                                   ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i408 = getelementptr inbounds %struct.hlist_node, ptr %111, i32 0, i32 1
  %113 = ptrtoint ptr %pprev.i408 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %arrayidx107, ptr %pprev.i408, align 4
  br label %hlist_add_head.exit411

hlist_add_head.exit411:                           ; preds = %do.body12.i409, %do.end135.hlist_add_head.exit411_crit_edge
  %114 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %arrayidx107, ptr %arrayidx140, align 4
  %115 = ptrtoint ptr %pprev.i.i.i397 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %arrayidx140, ptr %pprev.i.i.i397, align 4
  %idxprom147 = add nuw nsw i32 %5, 1
  %arrayidx148 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 17, i32 %idxprom147
  %pprev.i.i.i412 = getelementptr inbounds %struct.hlist_node, ptr %arrayidx148, i32 0, i32 1
  %116 = ptrtoint ptr %pprev.i.i.i412 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pprev.i.i.i412, align 4
  %tobool.not.i.not.i.i413 = icmp eq ptr %117, null
  br i1 %tobool.not.i.not.i.i413, label %hlist_add_head.exit411.hash_del.exit419_crit_edge, label %if.then.i.i415

hlist_add_head.exit411.hash_del.exit419_crit_edge: ; preds = %hlist_add_head.exit411
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_del.exit419

if.then.i.i415:                                   ; preds = %hlist_add_head.exit411
  %118 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx148, align 4
  %120 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile ptr %119, ptr %117, align 4
  %tobool.not.i3.i.i414 = icmp eq ptr %119, null
  br i1 %tobool.not.i3.i.i414, label %if.then.i.i415.__hlist_del.exit.i.i418_crit_edge, label %do.body13.i.i.i417

if.then.i.i415.__hlist_del.exit.i.i418_crit_edge: ; preds = %if.then.i.i415
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hlist_del.exit.i.i418

do.body13.i.i.i417:                               ; preds = %if.then.i.i415
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i416 = getelementptr inbounds %struct.hlist_node, ptr %119, i32 0, i32 1
  %121 = ptrtoint ptr %pprev14.i.i.i416 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %117, ptr %pprev14.i.i.i416, align 4
  br label %__hlist_del.exit.i.i418

__hlist_del.exit.i.i418:                          ; preds = %do.body13.i.i.i417, %if.then.i.i415.__hlist_del.exit.i.i418_crit_edge
  %122 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %arrayidx148, align 4
  %123 = ptrtoint ptr %pprev.i.i.i412 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %pprev.i.i.i412, align 4
  br label %hash_del.exit419

hash_del.exit419:                                 ; preds = %__hlist_del.exit.i.i418, %hlist_add_head.exit411.hash_del.exit419_crit_edge
  %arrayidx151 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 8, i32 1
  %124 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %arrayidx151, align 2
  %data152 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 17, i32 %idxprom147, i32 1
  %126 = ptrtoint ptr %data152 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %125, ptr %data152, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_hashtables.__UNIQUE_ID_ddebug209, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_hashtables, %if.then165)) #8
          to label %do.end177 [label %if.then165], !srcloc !109

if.then165:                                       ; preds = %hash_del.exit419
  call void @__sanitizer_cov_trace_pc() #10
  %index166 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 17, i32 %idxprom147, i32 2
  %127 = ptrtoint ptr %index166 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %index166, align 2
  %conv167 = zext i8 %128 to i32
  %129 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %p, align 8
  %131 = ptrtoint ptr %instart to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %instart, align 4
  %sub.ptr.lhs.cast170 = ptrtoint ptr %130 to i32
  %sub.ptr.rhs.cast171 = ptrtoint ptr %132 to i32
  %sub.ptr.sub172 = sub i32 %sub.ptr.lhs.cast170, %sub.ptr.rhs.cast171
  %133 = ptrtoint ptr %data152 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %data152, align 4
  %conv174 = zext i16 %134 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @update_hashtables.__UNIQUE_ID_ddebug209, ptr noundef nonnull @.str.15, i32 noundef 2, i32 noundef %conv167, i32 noundef %sub.ptr.sub172, i32 noundef %conv174) #8
  br label %do.end177

do.end177:                                        ; preds = %if.then165, %hash_del.exit419
  %135 = ptrtoint ptr %data152 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %data152, align 4
  %conv181 = zext i16 %136 to i32
  %mul.i.i420 = mul i32 %conv181, 1640531527
  %shr.i421 = lshr i32 %mul.i.i420, 22
  %arrayidx183 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 14, i32 %shr.i421
  %137 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx183, align 4
  %139 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %138, ptr %arrayidx148, align 4
  %tobool.not.i422 = icmp eq ptr %138, null
  br i1 %tobool.not.i422, label %do.end177.hlist_add_head.exit426_crit_edge, label %do.body12.i424

do.end177.hlist_add_head.exit426_crit_edge:       ; preds = %do.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_add_head.exit426

do.body12.i424:                                   ; preds = %do.end177
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i423 = getelementptr inbounds %struct.hlist_node, ptr %138, i32 0, i32 1
  %140 = ptrtoint ptr %pprev.i423 to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %arrayidx148, ptr %pprev.i423, align 4
  br label %hlist_add_head.exit426

hlist_add_head.exit426:                           ; preds = %do.body12.i424, %do.end177.hlist_add_head.exit426_crit_edge
  %141 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %arrayidx148, ptr %arrayidx183, align 4
  %142 = ptrtoint ptr %pprev.i.i.i412 to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %arrayidx183, ptr %pprev.i.i.i412, align 4
  %idxprom190 = add nuw nsw i32 %5, 2
  %arrayidx191 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 17, i32 %idxprom190
  %pprev.i.i.i427 = getelementptr inbounds %struct.hlist_node, ptr %arrayidx191, i32 0, i32 1
  %143 = ptrtoint ptr %pprev.i.i.i427 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pprev.i.i.i427, align 4
  %tobool.not.i.not.i.i428 = icmp eq ptr %144, null
  br i1 %tobool.not.i.not.i.i428, label %hlist_add_head.exit426.hash_del.exit434_crit_edge, label %if.then.i.i430

hlist_add_head.exit426.hash_del.exit434_crit_edge: ; preds = %hlist_add_head.exit426
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_del.exit434

if.then.i.i430:                                   ; preds = %hlist_add_head.exit426
  %145 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx191, align 4
  %147 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %146, ptr %144, align 4
  %tobool.not.i3.i.i429 = icmp eq ptr %146, null
  br i1 %tobool.not.i3.i.i429, label %if.then.i.i430.__hlist_del.exit.i.i433_crit_edge, label %do.body13.i.i.i432

if.then.i.i430.__hlist_del.exit.i.i433_crit_edge: ; preds = %if.then.i.i430
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hlist_del.exit.i.i433

do.body13.i.i.i432:                               ; preds = %if.then.i.i430
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i431 = getelementptr inbounds %struct.hlist_node, ptr %146, i32 0, i32 1
  %148 = ptrtoint ptr %pprev14.i.i.i431 to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile ptr %144, ptr %pprev14.i.i.i431, align 4
  br label %__hlist_del.exit.i.i433

__hlist_del.exit.i.i433:                          ; preds = %do.body13.i.i.i432, %if.then.i.i430.__hlist_del.exit.i.i433_crit_edge
  %149 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %arrayidx191, align 4
  %150 = ptrtoint ptr %pprev.i.i.i427 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %pprev.i.i.i427, align 4
  br label %hash_del.exit434

hash_del.exit434:                                 ; preds = %__hlist_del.exit.i.i433, %hlist_add_head.exit426.hash_del.exit434_crit_edge
  %arrayidx194 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 8, i32 2
  %151 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %arrayidx194, align 4
  %data195 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 17, i32 %idxprom190, i32 1
  %153 = ptrtoint ptr %data195 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %152, ptr %data195, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_hashtables.__UNIQUE_ID_ddebug210, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_hashtables, %if.then208)) #8
          to label %do.end220 [label %if.then208], !srcloc !109

if.then208:                                       ; preds = %hash_del.exit434
  call void @__sanitizer_cov_trace_pc() #10
  %index209 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 17, i32 %idxprom190, i32 2
  %154 = ptrtoint ptr %index209 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %index209, align 2
  %conv210 = zext i8 %155 to i32
  %156 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %p, align 8
  %158 = ptrtoint ptr %instart to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %instart, align 4
  %sub.ptr.lhs.cast213 = ptrtoint ptr %157 to i32
  %sub.ptr.rhs.cast214 = ptrtoint ptr %159 to i32
  %sub.ptr.sub215 = sub i32 %sub.ptr.lhs.cast213, %sub.ptr.rhs.cast214
  %160 = ptrtoint ptr %data195 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %data195, align 4
  %conv217 = zext i16 %161 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @update_hashtables.__UNIQUE_ID_ddebug210, ptr noundef nonnull @.str.15, i32 noundef 2, i32 noundef %conv210, i32 noundef %sub.ptr.sub215, i32 noundef %conv217) #8
  br label %do.end220

do.end220:                                        ; preds = %if.then208, %hash_del.exit434
  %162 = ptrtoint ptr %data195 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %data195, align 4
  %conv224 = zext i16 %163 to i32
  %mul.i.i435 = mul i32 %conv224, 1640531527
  %shr.i436 = lshr i32 %mul.i.i435, 22
  %arrayidx226 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 14, i32 %shr.i436
  %164 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx226, align 4
  %166 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_store4_noabort(i32 %166)
  store volatile ptr %165, ptr %arrayidx191, align 4
  %tobool.not.i437 = icmp eq ptr %165, null
  br i1 %tobool.not.i437, label %do.end220.hlist_add_head.exit441_crit_edge, label %do.body12.i439

do.end220.hlist_add_head.exit441_crit_edge:       ; preds = %do.end220
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_add_head.exit441

do.body12.i439:                                   ; preds = %do.end220
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i438 = getelementptr inbounds %struct.hlist_node, ptr %165, i32 0, i32 1
  %167 = ptrtoint ptr %pprev.i438 to i32
  call void @__asan_store4_noabort(i32 %167)
  store volatile ptr %arrayidx191, ptr %pprev.i438, align 4
  br label %hlist_add_head.exit441

hlist_add_head.exit441:                           ; preds = %do.body12.i439, %do.end220.hlist_add_head.exit441_crit_edge
  %168 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_store4_noabort(i32 %168)
  store volatile ptr %arrayidx191, ptr %arrayidx226, align 4
  %169 = ptrtoint ptr %pprev.i.i.i427 to i32
  call void @__asan_store4_noabort(i32 %169)
  store volatile ptr %arrayidx226, ptr %pprev.i.i.i427, align 4
  %idxprom233 = add nuw nsw i32 %5, 3
  %arrayidx234 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 17, i32 %idxprom233
  %pprev.i.i.i442 = getelementptr inbounds %struct.hlist_node, ptr %arrayidx234, i32 0, i32 1
  %170 = ptrtoint ptr %pprev.i.i.i442 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %pprev.i.i.i442, align 4
  %tobool.not.i.not.i.i443 = icmp eq ptr %171, null
  br i1 %tobool.not.i.not.i.i443, label %hlist_add_head.exit441.hash_del.exit449_crit_edge, label %if.then.i.i445

hlist_add_head.exit441.hash_del.exit449_crit_edge: ; preds = %hlist_add_head.exit441
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_del.exit449

if.then.i.i445:                                   ; preds = %hlist_add_head.exit441
  %172 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %arrayidx234, align 4
  %174 = ptrtoint ptr %171 to i32
  call void @__asan_store4_noabort(i32 %174)
  store volatile ptr %173, ptr %171, align 4
  %tobool.not.i3.i.i444 = icmp eq ptr %173, null
  br i1 %tobool.not.i3.i.i444, label %if.then.i.i445.__hlist_del.exit.i.i448_crit_edge, label %do.body13.i.i.i447

if.then.i.i445.__hlist_del.exit.i.i448_crit_edge: ; preds = %if.then.i.i445
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hlist_del.exit.i.i448

do.body13.i.i.i447:                               ; preds = %if.then.i.i445
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i446 = getelementptr inbounds %struct.hlist_node, ptr %173, i32 0, i32 1
  %175 = ptrtoint ptr %pprev14.i.i.i446 to i32
  call void @__asan_store4_noabort(i32 %175)
  store volatile ptr %171, ptr %pprev14.i.i.i446, align 4
  br label %__hlist_del.exit.i.i448

__hlist_del.exit.i.i448:                          ; preds = %do.body13.i.i.i447, %if.then.i.i445.__hlist_del.exit.i.i448_crit_edge
  %176 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr null, ptr %arrayidx234, align 4
  %177 = ptrtoint ptr %pprev.i.i.i442 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr null, ptr %pprev.i.i.i442, align 4
  br label %hash_del.exit449

hash_del.exit449:                                 ; preds = %__hlist_del.exit.i.i448, %hlist_add_head.exit441.hash_del.exit449_crit_edge
  %arrayidx237 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 8, i32 3
  %178 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %arrayidx237, align 2
  %data238 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 17, i32 %idxprom233, i32 1
  %180 = ptrtoint ptr %data238 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %179, ptr %data238, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_hashtables.__UNIQUE_ID_ddebug211, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_hashtables, %if.then251)) #8
          to label %do.end263 [label %if.then251], !srcloc !109

if.then251:                                       ; preds = %hash_del.exit449
  call void @__sanitizer_cov_trace_pc() #10
  %index252 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 17, i32 %idxprom233, i32 2
  %181 = ptrtoint ptr %index252 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %index252, align 2
  %conv253 = zext i8 %182 to i32
  %183 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %p, align 8
  %185 = ptrtoint ptr %instart to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %instart, align 4
  %sub.ptr.lhs.cast256 = ptrtoint ptr %184 to i32
  %sub.ptr.rhs.cast257 = ptrtoint ptr %186 to i32
  %sub.ptr.sub258 = sub i32 %sub.ptr.lhs.cast256, %sub.ptr.rhs.cast257
  %187 = ptrtoint ptr %data238 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %data238, align 4
  %conv260 = zext i16 %188 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @update_hashtables.__UNIQUE_ID_ddebug211, ptr noundef nonnull @.str.15, i32 noundef 2, i32 noundef %conv253, i32 noundef %sub.ptr.sub258, i32 noundef %conv260) #8
  br label %do.end263

do.end263:                                        ; preds = %if.then251, %hash_del.exit449
  %189 = ptrtoint ptr %data238 to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %data238, align 4
  %conv267 = zext i16 %190 to i32
  %mul.i.i450 = mul i32 %conv267, 1640531527
  %shr.i451 = lshr i32 %mul.i.i450, 22
  %arrayidx269 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 14, i32 %shr.i451
  %191 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx269, align 4
  %193 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_store4_noabort(i32 %193)
  store volatile ptr %192, ptr %arrayidx234, align 4
  %tobool.not.i452 = icmp eq ptr %192, null
  br i1 %tobool.not.i452, label %do.end263.hlist_add_head.exit456_crit_edge, label %do.body12.i454

do.end263.hlist_add_head.exit456_crit_edge:       ; preds = %do.end263
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_add_head.exit456

do.body12.i454:                                   ; preds = %do.end263
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i453 = getelementptr inbounds %struct.hlist_node, ptr %192, i32 0, i32 1
  %194 = ptrtoint ptr %pprev.i453 to i32
  call void @__asan_store4_noabort(i32 %194)
  store volatile ptr %arrayidx234, ptr %pprev.i453, align 4
  br label %hlist_add_head.exit456

hlist_add_head.exit456:                           ; preds = %do.body12.i454, %do.end263.hlist_add_head.exit456_crit_edge
  %195 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_store4_noabort(i32 %195)
  store volatile ptr %arrayidx234, ptr %arrayidx269, align 4
  %196 = ptrtoint ptr %pprev.i.i.i442 to i32
  call void @__asan_store4_noabort(i32 %196)
  store volatile ptr %arrayidx269, ptr %pprev.i.i.i442, align 4
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_bits(ptr noundef %p, i64 noundef %d, i8 noundef zeroext %n) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bit = getelementptr inbounds %struct.sw842_param, ptr %p, i32 0, i32 5
  %out4 = getelementptr inbounds %struct.sw842_param, ptr %p, i32 0, i32 3
  %olen = getelementptr inbounds %struct.sw842_param, ptr %p, i32 0, i32 4
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %entry
  %d.tr = phi i64 [ %d, %entry ], [ %and14.i, %tailrecurse.backedge ]
  %n.tr = phi i8 [ %n, %entry ], [ %n.tr.be, %tailrecurse.backedge ]
  %0 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bit, align 8
  %conv = zext i8 %1 to i32
  %conv1 = zext i8 %n.tr to i32
  %add = add nuw nsw i32 %conv, %conv1
  %2 = ptrtoint ptr %out4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %out4, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_bits.__UNIQUE_ID_ddebug202, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_bits, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !109

if.then:                                          ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #10
  %conv8 = trunc i64 %d.tr to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_bits.__UNIQUE_ID_ddebug202, ptr noundef nonnull @.str.18, i32 noundef %conv1, i32 noundef %conv8) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %tailrecurse
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %n.tr)
  %cmp = icmp ugt i8 %n.tr, 64
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add)
  %cmp13 = icmp ugt i32 %add, 64
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %n.tr)
  %cmp.not.i = icmp ugt i8 %n.tr, 32
  br i1 %cmp.not.i, label %if.end.i, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then15
  %shr.i = lshr i64 %d.tr, 32
  %sub.i = add nsw i8 %n.tr, -32
  %call.i = tail call fastcc i32 @add_bits(ptr noundef %p, i64 noundef %shr.i, i8 noundef zeroext %sub.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.tailrecurse.backedge_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.tailrecurse.backedge_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %if.end.i255.tailrecurse.backedge_crit_edge, %if.end.i244.tailrecurse.backedge_crit_edge, %if.end.i.tailrecurse.backedge_crit_edge
  %.sink = phi i64 [ 65535, %if.end.i244.tailrecurse.backedge_crit_edge ], [ 255, %if.end.i255.tailrecurse.backedge_crit_edge ], [ 4294967295, %if.end.i.tailrecurse.backedge_crit_edge ]
  %n.tr.be = phi i8 [ 16, %if.end.i244.tailrecurse.backedge_crit_edge ], [ 8, %if.end.i255.tailrecurse.backedge_crit_edge ], [ 32, %if.end.i.tailrecurse.backedge_crit_edge ]
  %and14.i = and i64 %.sink, %d.tr
  br label %tailrecurse

if.else:                                          ; preds = %if.end12
  %4 = ptrtoint ptr %olen to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %olen, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8, i64 %5)
  %cmp17 = icmp ult i64 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add)
  %cmp19 = icmp ugt i32 %add, 32
  %or.cond = select i1 %cmp17, i1 %cmp19, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %add)
  %cmp22 = icmp ult i32 %add, 57
  %or.cond235 = select i1 %or.cond, i1 %cmp22, i1 false
  br i1 %or.cond235, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %n.tr)
  %cmp.not.i239 = icmp ugt i8 %n.tr, 16
  br i1 %cmp.not.i239, label %if.end.i244, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i244:                                      ; preds = %if.then24
  %shr.i240 = lshr i64 %d.tr, 16
  %sub.i241 = add nsw i8 %n.tr, -16
  %call.i242 = tail call fastcc i32 @add_bits(ptr noundef %p, i64 noundef %shr.i240, i8 noundef zeroext %sub.i241) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i242)
  %tobool.not.i243 = icmp eq i32 %call.i242, 0
  br i1 %tobool.not.i243, label %if.end.i244.tailrecurse.backedge_crit_edge, label %if.end.i244.cleanup_crit_edge

if.end.i244.cleanup_crit_edge:                    ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i244.tailrecurse.backedge_crit_edge:       ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #10
  br label %tailrecurse.backedge

if.else26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %5)
  %cmp28 = icmp ult i64 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add)
  %cmp31 = icmp ugt i32 %add, 16
  %or.cond236 = select i1 %cmp28, i1 %cmp31, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %add)
  %cmp34 = icmp ult i32 %add, 25
  %or.cond237 = select i1 %or.cond236, i1 %cmp34, i1 false
  br i1 %or.cond237, label %if.then36, label %if.end40

if.then36:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %n.tr)
  %cmp.not.i250 = icmp ugt i8 %n.tr, 8
  br i1 %cmp.not.i250, label %if.end.i255, label %if.then36.cleanup_crit_edge

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i255:                                      ; preds = %if.then36
  %shr.i251 = lshr i64 %d.tr, 8
  %sub.i252 = add nsw i8 %n.tr, -8
  %call.i253 = tail call fastcc i32 @add_bits(ptr noundef %p, i64 noundef %shr.i251, i8 noundef zeroext %sub.i252) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i253)
  %tobool.not.i254 = icmp eq i32 %call.i253, 0
  br i1 %tobool.not.i254, label %if.end.i255.tailrecurse.backedge_crit_edge, label %if.end.i255.cleanup_crit_edge

if.end.i255.cleanup_crit_edge:                    ; preds = %if.end.i255
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i255.tailrecurse.backedge_crit_edge:       ; preds = %if.end.i255
  call void @__sanitizer_cov_trace_pc() #10
  br label %tailrecurse.backedge

if.end40:                                         ; preds = %if.else26
  %sub42 = add nuw nsw i32 %add, 7
  %div233 = lshr i32 %sub42, 3
  %6 = zext i32 %div233 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %6)
  %cmp45 = icmp ult i64 %5, %6
  br i1 %cmp45, label %if.end40.cleanup_crit_edge, label %if.end48

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48:                                         ; preds = %if.end40
  %conv.le = zext i8 %1 to i32
  %add2.le = sub nsw i32 1, %add
  %sub.le = add nsw i32 %add, -1
  %or.le = or i32 %sub.le, 7
  %sub3.le = add nsw i32 %add2.le, %or.le
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %3, align 1
  %arrayidx = getelementptr [8 x i8], ptr @bmask, i32 0, i32 %conv.le
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %and234 = and i8 %10, %8
  %11 = zext i8 %and234 to i64
  %sh_prom = zext i32 %sub3.le to i64
  %shl = shl i64 %d.tr, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %add)
  %cmp52 = icmp ult i32 %add, 9
  br i1 %cmp52, label %if.then54, label %if.else57

if.then54:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %12 = trunc i64 %shl to i8
  %conv56 = or i8 %and234, %12
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv56, ptr %3, align 1
  br label %if.end142

if.else57:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %add)
  %cmp58 = icmp ult i32 %add, 17
  br i1 %cmp58, label %do.body61, label %if.else67

do.body61:                                        ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #10
  %shl62 = shl nuw nsw i64 %11, 8
  %or63 = or i64 %shl62, %shl
  %conv64 = trunc i64 %or63 to i16
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %conv64, ptr %3, align 1
  br label %if.end142

if.else67:                                        ; preds = %if.else57
  br i1 %cmp34, label %do.body71, label %if.else80

do.body71:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #10
  %shl73 = shl nuw nsw i64 %11, 24
  %shl74 = shl i64 %shl, 8
  %or75 = or i64 %shl73, %shl74
  %conv76 = trunc i64 %or75 to i32
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %conv76, ptr %3, align 1
  br label %if.end142

if.else80:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %add)
  %cmp81 = icmp ult i32 %add, 33
  br i1 %cmp81, label %do.body84, label %if.else92

do.body84:                                        ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #10
  %shl86 = shl nuw nsw i64 %11, 24
  %or87 = or i64 %shl86, %shl
  %conv88 = trunc i64 %or87 to i32
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %conv88, ptr %3, align 1
  br label %if.end142

if.else92:                                        ; preds = %if.else80
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %add)
  %cmp93 = icmp ult i32 %add, 41
  br i1 %cmp93, label %do.body96, label %if.else104

do.body96:                                        ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #10
  %shl98 = shl nuw i64 %11, 56
  %shl99 = shl i64 %shl, 24
  %or100 = or i64 %shl98, %shl99
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %or100, ptr %3, align 1
  br label %if.end142

if.else104:                                       ; preds = %if.else92
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %add)
  %cmp105 = icmp ult i32 %add, 49
  %shl110 = shl nuw i64 %11, 56
  br i1 %cmp105, label %do.body108, label %if.else116

do.body108:                                       ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #10
  %shl111 = shl i64 %shl, 16
  %or112 = or i64 %shl110, %shl111
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %or112, ptr %3, align 1
  br label %if.end142

if.else116:                                       ; preds = %if.else104
  br i1 %cmp22, label %do.body120, label %do.body129

do.body120:                                       ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #10
  %shl123 = shl i64 %shl, 8
  %or124 = or i64 %shl110, %shl123
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %or124, ptr %3, align 1
  br label %if.end142

do.body129:                                       ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #10
  %or132 = or i64 %shl110, %shl
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %or132, ptr %3, align 1
  br label %if.end142

if.end142:                                        ; preds = %do.body129, %do.body120, %do.body108, %do.body96, %do.body84, %do.body71, %do.body61, %if.then54
  %21 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bit, align 8
  %add146 = add i8 %22, %n.tr
  store i8 %add146, ptr %bit, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %add146)
  %cmp150 = icmp ugt i8 %add146, 7
  br i1 %cmp150, label %if.then152, label %if.end142.cleanup_crit_edge

if.end142.cleanup_crit_edge:                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then152:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  %23 = lshr i8 %add146, 3
  %div155 = zext i8 %23 to i32
  %24 = ptrtoint ptr %out4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %out4, align 8
  %add.ptr = getelementptr i8, ptr %25, i32 %div155
  store ptr %add.ptr, ptr %out4, align 8
  %26 = zext i8 %23 to i64
  %27 = ptrtoint ptr %olen to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %olen, align 8
  %sub162 = sub i64 %28, %26
  store i64 %sub162, ptr %olen, align 8
  %29 = and i8 %add146, 7
  %30 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %bit, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then152, %if.end142.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end.i255.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %if.end.i244.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %if.end40.cleanup_crit_edge ], [ 0, %if.then152 ], [ 0, %if.end142.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %if.then15.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ], [ -22, %if.then24.cleanup_crit_edge ], [ %call.i242, %if.end.i244.cleanup_crit_edge ], [ -22, %if.then36.cleanup_crit_edge ], [ %call.i253, %if.end.i255.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sw842_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @sw842_template_counts, align 1, !range !106
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
  %0 = load i8, ptr @sw842_template_counts, align 1, !range !106
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
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_template(ptr noundef %p, i8 noundef zeroext %c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %c to i32
  %arrayidx = getelementptr [26 x [5 x i8]], ptr @comp_ops, i32 0, i32 %idxprom
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %c)
  %cmp = icmp ugt i8 %c, 25
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_template.__UNIQUE_ID_ddebug203, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_template, %if.then4)) #8
          to label %do.end [label %if.then4], !srcloc !109

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5 = getelementptr i8, ptr %arrayidx, i32 4
  %0 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_template.__UNIQUE_ID_ddebug203, ptr noundef nonnull @.str.6, i32 noundef %conv6) #8
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %arrayidx8 = getelementptr i8, ptr %arrayidx, i32 4
  %2 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %3 to i64
  %call10 = tail call fastcc i32 @add_bits(ptr noundef %p, i64 noundef %conv9, i8 noundef zeroext 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.cond.preheader, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end
  %index8 = getelementptr inbounds %struct.sw842_param, ptr %p, i32 0, i32 9
  %data8 = getelementptr inbounds %struct.sw842_param, ptr %p, i32 0, i32 6
  br label %do.body16

do.body16:                                        ; preds = %if.end165.do.body16_crit_edge, %for.cond.preheader
  %i.0298 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end165.do.body16_crit_edge ]
  %b.0295 = phi i32 [ 0, %for.cond.preheader ], [ %add, %if.end165.do.body16_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_template.__UNIQUE_ID_ddebug204, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_template, %if.then28)) #8
          to label %do.end33 [label %if.then28], !srcloc !109

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx29 = getelementptr i8, ptr %arrayidx, i32 %i.0298
  %4 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_template.__UNIQUE_ID_ddebug204, ptr noundef nonnull @.str.8, i32 noundef %conv30) #8
  br label %do.end33

do.end33:                                         ; preds = %if.then28, %do.body16
  %arrayidx34 = getelementptr i8, ptr %arrayidx, i32 %i.0298
  %6 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %7 to i32
  %and = and i32 %conv35, 15
  %8 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.end33.do.end153_crit_edge [
    i32 8, label %sw.bb
    i32 4, label %sw.bb58
    i32 2, label %sw.bb100
    i32 0, label %sw.epilog.thread
  ]

do.end33.do.end153_crit_edge:                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end153

sw.bb:                                            ; preds = %do.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %b.0295)
  %tobool36.not = icmp eq i32 %b.0295, 0
  br i1 %tobool36.not, label %if.else, label %sw.bb.do.end153_crit_edge

sw.bb.do.end153_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end153

if.else:                                          ; preds = %sw.bb
  %and40 = and i32 %conv35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.else46, label %if.then42

if.then42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %index8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index8, align 8
  %conv44 = sext i32 %10 to i64
  %call45 = tail call fastcc i32 @add_bits(ptr noundef %p, i64 noundef %conv44, i8 noundef zeroext 8)
  br label %sw.epilog

if.else46:                                        ; preds = %if.else
  %and49 = and i32 %conv35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.else46.do.end153_crit_edge, label %if.then51

if.else46.do.end153_crit_edge:                    ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end153

if.then51:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %data8 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %data8, align 8
  %call53 = tail call fastcc i32 @add_bits(ptr noundef %p, i64 noundef %12, i8 noundef zeroext 64)
  br label %sw.epilog

sw.bb58:                                          ; preds = %do.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %b.0295)
  %cmp59 = icmp ne i32 %b.0295, 2
  %and63 = and i32 %conv35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %or.cond = select i1 %cmp59, i1 true, i1 %tobool64.not
  br i1 %or.cond, label %if.else69, label %if.then65

if.then65:                                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p, align 8
  %add.ptr = getelementptr i8, ptr %14, i32 2
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %add.ptr, align 1
  %conv67 = zext i32 %16 to i64
  %call68 = tail call fastcc i32 @add_bits(ptr noundef %p, i64 noundef %conv67, i8 noundef zeroext 32)
  br label %sw.epilog

if.else69:                                        ; preds = %sw.bb58
  %17 = zext i32 %b.0295 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %b.0295, label %if.else69.do.end153_crit_edge [
    i32 0, label %if.else69.if.else76_crit_edge
    i32 4, label %if.else69.if.else76_crit_edge310
  ]

if.else69.if.else76_crit_edge310:                 ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else76

if.else69.if.else76_crit_edge:                    ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else76

if.else69.do.end153_crit_edge:                    ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end153

if.else76:                                        ; preds = %if.else69.if.else76_crit_edge, %if.else69.if.else76_crit_edge310
  %and79 = and i32 %conv35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.else85, label %if.then81

if.then81:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #10
  %shr290 = lshr i32 %b.0295, 2
  %arrayidx82 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 10, i32 %shr290
  %18 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx82, align 4
  %conv83 = sext i32 %19 to i64
  %call84 = tail call fastcc i32 @add_bits(ptr noundef %p, i64 noundef %conv83, i8 noundef zeroext 9)
  br label %sw.epilog

if.else85:                                        ; preds = %if.else76
  br i1 %tobool64.not, label %if.else85.do.end153_crit_edge, label %if.then90

if.else85.do.end153_crit_edge:                    ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end153

if.then90:                                        ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #10
  %shr91289 = lshr i32 %b.0295, 2
  %arrayidx92 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 7, i32 %shr91289
  %20 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx92, align 4
  %conv93 = zext i32 %21 to i64
  %call94 = tail call fastcc i32 @add_bits(ptr noundef %p, i64 noundef %conv93, i8 noundef zeroext 32)
  br label %sw.epilog

sw.bb100:                                         ; preds = %do.end33
  %switch.and = and i32 %b.0295, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp ne i32 %switch.and, 0
  %and116 = and i32 %conv35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.else123, label %if.then118

if.then118:                                       ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #10
  %shr119 = ashr i32 %b.0295, 1
  %arrayidx120 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 11, i32 %shr119
  %22 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx120, align 4
  %conv121 = sext i32 %23 to i64
  %call122 = tail call fastcc i32 @add_bits(ptr noundef %p, i64 noundef %conv121, i8 noundef zeroext 8)
  br label %sw.epilog

if.else123:                                       ; preds = %sw.bb100
  %and126 = and i32 %conv35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %if.else123.do.end153_crit_edge, label %if.then128

if.else123.do.end153_crit_edge:                   ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end153

if.then128:                                       ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #10
  %shr129 = ashr i32 %b.0295, 1
  %arrayidx130 = getelementptr %struct.sw842_param, ptr %p, i32 0, i32 8, i32 %shr129
  %24 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx130, align 2
  %conv131 = zext i16 %25 to i64
  %call132 = tail call fastcc i32 @add_bits(ptr noundef %p, i64 noundef %conv131, i8 noundef zeroext 16)
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %do.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %b.0295)
  %cmp137.not = icmp ne i32 %b.0295, 8
  %and141 = and i32 %conv35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  %26 = select i1 %cmp137.not, i1 true, i1 %tobool142.not
  br i1 %26, label %sw.epilog.thread.do.end153_crit_edge, label %sw.epilog.thread.if.end165_crit_edge

sw.epilog.thread.if.end165_crit_edge:             ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end165

sw.epilog.thread.do.end153_crit_edge:             ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end153

sw.epilog:                                        ; preds = %if.then128, %if.then118, %if.then90, %if.then81, %if.then65, %if.then51, %if.then42
  %inv.2.off0 = phi i1 [ %switch.selectcmp, %if.then118 ], [ %switch.selectcmp, %if.then128 ], [ false, %if.then65 ], [ false, %if.then81 ], [ false, %if.then90 ], [ false, %if.then42 ], [ false, %if.then51 ]
  %ret.1 = phi i32 [ %call122, %if.then118 ], [ %call132, %if.then128 ], [ %call68, %if.then65 ], [ %call84, %if.then81 ], [ %call94, %if.then90 ], [ %call45, %if.then42 ], [ %call53, %if.then51 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool146.not = icmp eq i32 %ret.1, 0
  br i1 %tobool146.not, label %if.end148, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end148:                                        ; preds = %sw.epilog
  br i1 %inv.2.off0, label %if.end148.do.end153_crit_edge, label %if.end148.if.end165_crit_edge

if.end148.if.end165_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end165

if.end148.do.end153_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end153

do.end153:                                        ; preds = %if.end148.do.end153_crit_edge, %sw.epilog.thread.do.end153_crit_edge, %if.else123.do.end153_crit_edge, %if.else85.do.end153_crit_edge, %if.else69.do.end153_crit_edge, %if.else46.do.end153_crit_edge, %sw.bb.do.end153_crit_edge, %do.end33.do.end153_crit_edge
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  %conv157 = zext i8 %28 to i32
  %arrayidx158 = getelementptr i8, ptr %arrayidx, i32 1
  %29 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx158, align 1
  %conv159 = zext i8 %30 to i32
  %arrayidx160 = getelementptr i8, ptr %arrayidx, i32 2
  %31 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx160, align 1
  %conv161 = zext i8 %32 to i32
  %arrayidx162 = getelementptr i8, ptr %arrayidx, i32 3
  %33 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx162, align 1
  %conv163 = zext i8 %34 to i32
  %call164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %idxprom, i32 noundef %i.0298, i32 noundef %conv157, i32 noundef %conv159, i32 noundef %conv161, i32 noundef %conv163) #11
  br label %cleanup

if.end165:                                        ; preds = %if.end148.if.end165_crit_edge, %sw.epilog.thread.if.end165_crit_edge
  %35 = and i8 %7, 15
  %and168 = zext i8 %35 to i32
  %add = add i32 %b.0295, %and168
  %inc = add nuw nsw i32 %i.0298, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %if.end165.do.body16_crit_edge

if.end165.do.body16_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body16

for.end:                                          ; preds = %if.end165
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add)
  %cmp169.not = icmp eq i32 %add, 8
  br i1 %cmp169.not, label %if.end186, label %do.end174

do.end174:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx, align 1
  %conv178 = zext i8 %37 to i32
  %arrayidx179 = getelementptr i8, ptr %arrayidx, i32 1
  %38 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx179, align 1
  %conv180 = zext i8 %39 to i32
  %arrayidx181 = getelementptr i8, ptr %arrayidx, i32 2
  %40 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx181, align 1
  %conv182 = zext i8 %41 to i32
  %arrayidx183 = getelementptr i8, ptr %arrayidx, i32 3
  %42 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx183, align 1
  %conv184 = zext i8 %43 to i32
  %call185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %idxprom, i32 noundef %add, i32 noundef %conv178, i32 noundef %conv180, i32 noundef %conv182, i32 noundef %conv184) #11
  br label %cleanup

if.end186:                                        ; preds = %for.end
  %44 = load i8, ptr @sw842_template_counts, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool187.not = icmp eq i8 %44, 0
  br i1 %tobool187.not, label %if.end186.cleanup_crit_edge, label %if.then188

if.end186.cleanup_crit_edge:                      ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then188:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #10
  %idxprom190 = zext i8 %3 to i32
  %arrayidx191 = getelementptr [26 x %struct.atomic_t], ptr @template_count, i32 0, i32 %idxprom190
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx191, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %arrayidx191, i32 1, i32 3, i32 1) #8
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx191, ptr %arrayidx191, i32 1, ptr elementtype(i32) %arrayidx191) #8, !srcloc !108
  br label %cleanup

cleanup:                                          ; preds = %if.then188, %if.end186.cleanup_crit_edge, %do.end174, %do.end153, %sw.epilog.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end153 ], [ -22, %do.end174 ], [ -22, %entry.cleanup_crit_edge ], [ %call10, %do.end.cleanup_crit_edge ], [ 0, %if.then188 ], [ 0, %if.end186.cleanup_crit_edge ], [ %ret.1, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.3, ptr noundef null) #8
  store ptr %call1, ptr @sw842_debugfs_root, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.01 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #8
  %0 = call ptr @memset(ptr %name, i32 255, i32 32)
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.19, i32 noundef %i.01)
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
  call void @debugfs_create_atomic_t(ptr noundef nonnull @.str.20, i16 noundef zeroext 420, ptr noundef %2, ptr noundef nonnull @template_repeat_count) #8
  %3 = load ptr, ptr @sw842_debugfs_root, align 4
  call void @debugfs_create_atomic_t(ptr noundef nonnull @.str.21, i16 noundef zeroext 420, ptr noundef %3, ptr noundef nonnull @template_zeros_count) #8
  %4 = load ptr, ptr @sw842_debugfs_root, align 4
  call void @debugfs_create_atomic_t(ptr noundef nonnull @.str.22, i16 noundef zeroext 420, ptr noundef %4, ptr noundef nonnull @template_short_data_count) #8
  %5 = load ptr, ptr @sw842_debugfs_root, align 4
  call void @debugfs_create_atomic_t(ptr noundef nonnull @.str.23, i16 noundef zeroext 420, ptr noundef %5, ptr noundef nonnull @template_end_count) #8
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

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !32, !33, !35, !37, !39, !41, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !85, !87, !89, !91, !93, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__param_template_counts, !1, !"__param_template_counts", i1 false, i1 false}
!1 = !{!"../lib/842/842_debugfs.h", i32 9, i32 1}
!2 = !{ptr @__UNIQUE_ID_template_countstype200, !1, !"__UNIQUE_ID_template_countstype200", i1 false, i1 false}
!3 = !{ptr @__param_strict, !4, !"__param_strict", i1 false, i1 false}
!4 = !{!"../lib/842/842_compress.c", i32 36, i32 1}
!5 = !{ptr @__UNIQUE_ID_stricttype201, !4, !"__UNIQUE_ID_stricttype201", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../lib/842/842_compress.c", i32 505, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @sw842_compress._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @sw842_compress._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_sw842_compress, !13, !"__ksymtab_sw842_compress", i1 false, i1 false}
!13 = !{!"../lib/842/842_compress.c", i32 610, i32 1}
!14 = !{ptr @__initcall__kmod_842_compress__213_619_sw842_init6, !15, !"__initcall__kmod_842_compress__213_619_sw842_init6", i1 false, i1 false}
!15 = !{!"../lib/842/842_compress.c", i32 619, i32 1}
!16 = !{ptr @__exitcall_sw842_exit, !17, !"__exitcall_sw842_exit", i1 false, i1 false}
!17 = !{!"../lib/842/842_compress.c", i32 626, i32 1}
!18 = !{ptr @__UNIQUE_ID_file214, !19, !"__UNIQUE_ID_file214", i1 false, i1 false}
!19 = !{!"../lib/842/842_compress.c", i32 628, i32 1}
!20 = !{ptr @__UNIQUE_ID_license215, !19, !"__UNIQUE_ID_license215", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_description216, !22, !"__UNIQUE_ID_description216", i1 false, i1 false}
!22 = !{!"../lib/842/842_compress.c", i32 629, i32 1}
!23 = !{ptr @__UNIQUE_ID_author217, !24, !"__UNIQUE_ID_author217", i1 false, i1 false}
!24 = !{!"../lib/842/842_compress.c", i32 630, i32 1}
!25 = !{ptr @sw842_template_counts, !26, !"sw842_template_counts", i1 false, i1 false}
!26 = !{!"../lib/842/842_debugfs.h", i32 8, i32 13}
!27 = !{ptr @sw842_debugfs_root, !28, !"sw842_debugfs_root", i1 false, i1 false}
!28 = !{!"../lib/842/842_debugfs.h", i32 14, i32 23}
!29 = !{ptr @sw842_strict, !30, !"sw842_strict", i1 false, i1 false}
!30 = !{!"../lib/842/842_compress.c", i32 35, i32 13}
!31 = !{ptr @__param_str_template_counts, !1, !"__param_str_template_counts", i1 false, i1 false}
!32 = !{ptr @__param_str_strict, !4, !"__param_str_strict", i1 false, i1 false}
!33 = !{ptr @template_repeat_count, !34, !"template_repeat_count", i1 false, i1 false}
!34 = !{!"../lib/842/842_debugfs.h", i32 11, i32 42}
!35 = !{ptr @template_zeros_count, !36, !"template_zeros_count", i1 false, i1 false}
!36 = !{!"../lib/842/842_debugfs.h", i32 12, i32 2}
!37 = !{ptr @comp_ops, !38, !"comp_ops", i1 false, i1 false}
!38 = !{!"../lib/842/842_compress.c", i32 38, i32 11}
!39 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../lib/842/842_compress.c", i32 231, i32 2}
!41 = !{ptr @.str.4, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @add_template.__UNIQUE_ID_ddebug203, !40, !"__UNIQUE_ID_ddebug203", i1 false, i1 false}
!44 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.7, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../lib/842/842_compress.c", i32 238, i32 3}
!47 = !{ptr @add_template.__UNIQUE_ID_ddebug204, !46, !"__UNIQUE_ID_ddebug204", i1 false, i1 false}
!48 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../lib/842/842_compress.c", i32 285, i32 4}
!51 = !{ptr @add_template._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @add_template._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.11, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../lib/842/842_compress.c", i32 294, i32 3}
!55 = !{ptr @add_template._entry.10, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @add_template._entry_ptr.12, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @template_count, !58, !"template_count", i1 false, i1 false}
!58 = !{!"../lib/842/842_debugfs.h", i32 11, i32 17}
!59 = !{ptr @.str.13, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../lib/842/842_compress.c", i32 430, i32 2}
!61 = !{ptr @.str.14, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @update_hashtables.__UNIQUE_ID_ddebug205, !60, !"__UNIQUE_ID_ddebug205", i1 false, i1 false}
!63 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @update_hashtables.__UNIQUE_ID_ddebug206, !65, !"__UNIQUE_ID_ddebug206", i1 false, i1 false}
!65 = !{!"../lib/842/842_compress.c", i32 431, i32 2}
!66 = !{ptr @update_hashtables.__UNIQUE_ID_ddebug207, !67, !"__UNIQUE_ID_ddebug207", i1 false, i1 false}
!67 = !{!"../lib/842/842_compress.c", i32 432, i32 2}
!68 = !{ptr @update_hashtables.__UNIQUE_ID_ddebug208, !69, !"__UNIQUE_ID_ddebug208", i1 false, i1 false}
!69 = !{!"../lib/842/842_compress.c", i32 433, i32 2}
!70 = !{ptr @update_hashtables.__UNIQUE_ID_ddebug209, !71, !"__UNIQUE_ID_ddebug209", i1 false, i1 false}
!71 = !{!"../lib/842/842_compress.c", i32 434, i32 2}
!72 = !{ptr @update_hashtables.__UNIQUE_ID_ddebug210, !73, !"__UNIQUE_ID_ddebug210", i1 false, i1 false}
!73 = !{!"../lib/842/842_compress.c", i32 435, i32 2}
!74 = !{ptr @update_hashtables.__UNIQUE_ID_ddebug211, !75, !"__UNIQUE_ID_ddebug211", i1 false, i1 false}
!75 = !{!"../lib/842/842_compress.c", i32 436, i32 2}
!76 = !{ptr @template_short_data_count, !77, !"template_short_data_count", i1 false, i1 false}
!77 = !{!"../lib/842/842_debugfs.h", i32 12, i32 24}
!78 = !{ptr @template_end_count, !79, !"template_end_count", i1 false, i1 false}
!79 = !{!"../lib/842/842_debugfs.h", i32 12, i32 51}
!80 = !{ptr @.str.16, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../lib/842/842_compress.c", i32 173, i32 2}
!82 = !{ptr @.str.17, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @add_bits.__UNIQUE_ID_ddebug202, !81, !"__UNIQUE_ID_ddebug202", i1 false, i1 false}
!84 = !{ptr @.str.18, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @bmask, !86, !"bmask", i1 false, i1 false}
!86 = !{!"../lib/842/842_compress.c", i32 150, i32 11}
!87 = !{ptr @.str.19, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../lib/842/842_debugfs.h", i32 29, i32 22}
!89 = !{ptr @.str.20, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../lib/842/842_debugfs.h", i32 33, i32 26}
!91 = !{ptr @.str.21, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../lib/842/842_debugfs.h", i32 35, i32 26}
!93 = !{ptr @.str.22, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../lib/842/842_debugfs.h", i32 37, i32 26}
!95 = !{ptr @.str.23, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../lib/842/842_debugfs.h", i32 39, i32 26}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i8 0, i8 2}
!107 = !{!"branch_weights", i32 1, i32 2000}
!108 = !{i64 2148323138, i64 2148323164, i64 2148323193, i64 2148323227, i64 2148323258, i64 2148323281}
!109 = !{i64 2148805013, i64 2148805018, i64 2148805031, i64 2148805075, i64 2148805109, i64 2148805130}
