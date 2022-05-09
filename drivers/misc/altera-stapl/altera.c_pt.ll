; ModuleID = '/llk/IR_all_yes/drivers/misc/altera-stapl/altera.c_pt.bc'
source_filename = "../drivers/misc/altera-stapl/altera.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+altera_init\22, \22a\22\09"
module asm "\09.weak\09__crc_altera_init\09\09\09\09"
module asm "\09.long\09__crc_altera_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_altera_init:\09\09\09\09\09"
module asm "\09.asciz \09\22altera_init\22\09\09\09\09\09"
module asm "__kstrtabns_altera_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.altera_config = type { ptr, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.altera_procinfo = type { ptr, i8, ptr }
%struct.altera_state = type { ptr, %struct.altera_jtag, [1025 x i8], [128 x i32] }
%struct.altera_jtag = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_debug = internal constant [19 x i8] c"altera_stapl.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.41 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype173 = internal constant [32 x i8] c"altera_stapl.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug174 = internal constant [53 x i8] c"altera_stapl.parm=debug:enable debugging information\00", section ".modinfo", align 1
@__UNIQUE_ID_description175 = internal constant [51 x i8] c"altera_stapl.description=altera FPGA kernel module\00", section ".modinfo", align 1
@__UNIQUE_ID_author176 = internal constant [60 x i8] c"altera_stapl.author=Igor M. Liplianin  <liplianin@netup.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_file177 = internal constant [57 x i8] c"altera_stapl.file=drivers/misc/altera-stapl/altera-stapl\00", section ".modinfo", align 1
@__UNIQUE_ID_license178 = internal constant [25 x i8] c"altera_stapl.license=GPL\00", section ".modinfo", align 1
@altera_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: using byteblaster!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"altera_init\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/misc/altera-stapl/altera.c\00", [61 x i8] zeroinitializer }, align 32
@altera_init._entry_ptr = internal global ptr @altera_init._entry, section ".printk_index", align 4
@altera_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 2445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: File format is %s ByteCode format\0A\00", [55 x i8] zeroinitializer }, align 32
@altera_init._entry_ptr.5 = internal global ptr @altera_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Jam STAPL\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pre-standardized Jam 1.1\00", [39 x i8] zeroinitializer }, align 32
@altera_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 2449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: NOTE \22%s\22 = \22%s\22\0A\00", [40 x i8] zeroinitializer }, align 32
@altera_init._entry_ptr.10 = internal global ptr @altera_init._entry.8, section ".printk_index", align 4
@altera_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 2453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: Actions available:\0A\00", [38 x i8] zeroinitializer }, align 32
@altera_init._entry_ptr.13 = internal global ptr @altera_init._entry.11, section ".printk_index", align 4
@altera_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 2463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\016%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@altera_init._entry_ptr.16 = internal global ptr @altera_init._entry.14, section ".printk_index", align 4
@altera_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 2468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016%s: %s \22%s\22\0A\00", [17 x i8] zeroinitializer }, align 32
@altera_init._entry_ptr.19 = internal global ptr @altera_init._entry.17, section ".printk_index", align 4
@altera_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 2477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016%s:    %s (%s)\0A\00", [46 x i8] zeroinitializer }, align 32
@altera_init._entry_ptr.22 = internal global ptr @altera_init._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"optional\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"recommended\00", [20 x i8] zeroinitializer }, align 32
@altera_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.1, ptr @.str.2, i32 2485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\016\0A\00", [28 x i8] zeroinitializer }, align 32
@altera_init._entry_ptr.27 = internal global ptr @altera_init._entry.25, section ".printk_index", align 4
@altera_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.1, ptr @.str.2, i32 2498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013%s: error: no action specified for Jam STAPL file.\0Aprogram terminated.\0A\00", [54 x i8] zeroinitializer }, align 32
@altera_init._entry_ptr.30 = internal global ptr @altera_init._entry.28, section ".printk_index", align 4
@altera_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.1, ptr @.str.2, i32 2504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\013%s: error: action \22%s\22 is not supported for this Jam STAPL file.\0AProgram terminated.\0A\00", [40 x i8] zeroinitializer }, align 32
@altera_init._entry_ptr.33 = internal global ptr @altera_init._entry.31, section ".printk_index", align 4
@altera_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.1, ptr @.str.2, i32 2507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\013%s: error %d\0A\00", [16 x i8] zeroinitializer }, align 32
@altera_init._entry_ptr.36 = internal global ptr @altera_init._entry.34, section ".printk_index", align 4
@__kstrtab_altera_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_altera_init = external dso_local constant [0 x i8], align 1
@__ksymtab_altera_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @altera_init to i32), ptr @__kstrtab_altera_init, ptr @__kstrtabns_altera_init }, section "___ksymtab+altera_init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@altera_check_crc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 2261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: CRC matched: %04x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"altera_check_crc\00", [47 x i8] zeroinitializer }, align 32
@altera_check_crc._entry_ptr = internal global ptr @altera_check_crc._entry, section ".printk_index", align 4
@altera_check_crc._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 2266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: CRC mismatch: expected %04x, actual %04x\0A\00", [48 x i8] zeroinitializer }, align 32
@altera_check_crc._entry_ptr.41 = internal global ptr @altera_check_crc._entry.39, section ".printk_index", align 4
@altera_check_crc._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.2, i32 2270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: error: format isn't recognized.\0A\00", [57 x i8] zeroinitializer }, align 32
@altera_check_crc._entry_ptr.44 = internal global ptr @altera_check_crc._entry.42, section ".printk_index", align 4
@altera_check_crc._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.2, i32 2274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: CRC function returned error code %d\0A\00", [53 x i8] zeroinitializer }, align 32
@altera_check_crc._entry_ptr.47 = internal global ptr @altera_check_crc._entry.45, section ".printk_index", align 4
@altera_execute._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\017%s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"altera_execute\00", [17 x i8] zeroinitializer }, align 32
@altera_execute._entry_ptr = internal global ptr @altera_execute._entry, section ".printk_index", align 4
@altera_execute._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"opcode: %02x\0A\00", [18 x i8] zeroinitializer }, align 32
@altera_execute._entry_ptr.52 = internal global ptr @altera_execute._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%ld\00", [28 x i8] zeroinitializer }, align 32
@altera_execute._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.49, ptr @.str.2, i32 706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@altera_execute._entry_ptr.55 = internal global ptr @altera_execute._entry.54, section ".printk_index", align 4
@.str.56 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@altera_export_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017Export: key = \22%s\22, value = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"altera_export_int\00", [46 x i8] zeroinitializer }, align 32
@altera_export_int._entry_ptr = internal global ptr @altera_export_int._entry, section ".printk_index", align 4
@altera_export_bool_array._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017Export: key = \22%s\22, %d bits, value = HEX\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"altera_export_bool_array\00", [39 x i8] zeroinitializer }, align 32
@altera_export_bool_array._entry_ptr = internal global ptr @altera_export_bool_array._entry, section ".printk_index", align 4
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%1x\00", [28 x i8] zeroinitializer }, align 32
@altera_export_bool_array._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.60, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@altera_export_bool_array._entry_ptr.63 = internal global ptr @altera_export_bool_array._entry.62, section ".printk_index", align 4
@altera_export_bool_array._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017Export: key = \22%s\22, %d bits, value = HEX %s\0A\00", [49 x i8] zeroinitializer }, align 32
@altera_export_bool_array._entry_ptr.66 = internal global ptr @altera_export_bool_array._entry.64, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 14]
@__sancov_gen_cov_switch_values.67 = internal global [74 x i64] [i64 72, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 44, i64 45, i64 47, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 92, i64 128, i64 130, i64 131, i64 132, i64 192]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 5, i64 25, i64 28]
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 22, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 2434, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 2443, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 2448, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 2453, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 2461, i32 5 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 2465, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 2473, i32 6 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 2485, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 2496, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 2500, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 2507, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 2260, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 2264, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 2269, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 2273, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 263, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 515, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 701, i32 6 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 706, i32 5 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 132, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 145, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 170, i32 26 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 178, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.235 = private constant [38 x i8] c"../drivers/misc/altera-stapl/altera.c\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 199, i32 3 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_author176, ptr @__UNIQUE_ID_debug174, ptr @__UNIQUE_ID_debugtype173, ptr @__UNIQUE_ID_description175, ptr @__UNIQUE_ID_file177, ptr @__UNIQUE_ID_license178, ptr @__ksymtab_altera_init, ptr @__param_debug, ptr @altera_check_crc._entry, ptr @altera_check_crc._entry.39, ptr @altera_check_crc._entry.42, ptr @altera_check_crc._entry.45, ptr @altera_check_crc._entry_ptr, ptr @altera_check_crc._entry_ptr.41, ptr @altera_check_crc._entry_ptr.44, ptr @altera_check_crc._entry_ptr.47, ptr @altera_execute._entry, ptr @altera_execute._entry.50, ptr @altera_execute._entry.54, ptr @altera_execute._entry_ptr, ptr @altera_execute._entry_ptr.52, ptr @altera_execute._entry_ptr.55, ptr @altera_export_bool_array._entry, ptr @altera_export_bool_array._entry.62, ptr @altera_export_bool_array._entry.64, ptr @altera_export_bool_array._entry_ptr, ptr @altera_export_bool_array._entry_ptr.63, ptr @altera_export_bool_array._entry_ptr.66, ptr @altera_export_int._entry, ptr @altera_export_int._entry_ptr, ptr @altera_init._entry, ptr @altera_init._entry.11, ptr @altera_init._entry.14, ptr @altera_init._entry.17, ptr @altera_init._entry.20, ptr @altera_init._entry.25, ptr @altera_init._entry.28, ptr @altera_init._entry.3, ptr @altera_init._entry.31, ptr @altera_init._entry.34, ptr @altera_init._entry.8, ptr @altera_init._entry_ptr, ptr @altera_init._entry_ptr.10, ptr @altera_init._entry_ptr.13, ptr @altera_init._entry_ptr.16, ptr @altera_init._entry_ptr.19, ptr @altera_init._entry_ptr.22, ptr @altera_init._entry_ptr.27, ptr @altera_init._entry_ptr.30, ptr @altera_init._entry_ptr.33, ptr @altera_init._entry_ptr.36, ptr @altera_init._entry_ptr.5, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.65], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_check_crc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_check_crc._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_check_crc._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_check_crc._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_execute._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_execute._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_execute._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_export_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_export_bool_array._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_export_bool_array._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_export_bool_array._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @altera_init(ptr noundef %config, ptr nocapture noundef readonly %fw) #0 align 64 {
entry:
  %string.i.i = alloca [73 x i8], align 1
  %args.i = alloca [3 x i32], align 4
  %charbuf.i = alloca [4 x i8], align 4
  %proc_list = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %proc_list)
  %0 = ptrtoint ptr %proc_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %proc_list, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 33) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i165 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 257) #14
  %tobool3.not = icmp eq ptr %call7.i.i165, null
  br i1 %tobool3.not, label %if.end.free_key_crit_edge, label %if.end5

if.end.free_key_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_key

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i166 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1604) #14
  %tobool7.not = icmp eq ptr %call7.i.i166, null
  br i1 %tobool7.not, label %if.end5.free_value_crit_edge, label %if.end9

if.end5.free_value_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_value

if.end9:                                          ; preds = %if.end5
  %4 = ptrtoint ptr %call7.i.i166 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %config, ptr %call7.i.i166, align 8
  %jtag_io = getelementptr inbounds %struct.altera_config, ptr %config, i32 0, i32 2
  %5 = ptrtoint ptr %jtag_io to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %jtag_io, align 4
  %tobool12.not = icmp eq ptr %6, null
  br i1 %tobool12.not, label %if.then13, label %if.end9.if.end20_crit_edge

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then13:                                        ; preds = %if.end9
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool14.not = icmp eq i32 %7, 0
  br i1 %tobool14.not, label %if.then13.if.end17_crit_edge, label %do.end

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #15
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.then13.if.end17_crit_edge
  %8 = ptrtoint ptr %call7.i.i166 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call7.i.i166, align 8
  %jtag_io19 = getelementptr inbounds %struct.altera_config, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %jtag_io19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @netup_jtag_io_lpt, ptr %jtag_io19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end17, %if.end9.if.end20_crit_edge
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %14)
  %cmp.i = icmp sgt i32 %14, 52
  br i1 %cmp.i, label %if.end.i, label %if.end20.do.end59.i_crit_edge

if.end20.do.end59.i_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end59.i

if.end.i:                                         ; preds = %if.end20
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %12, align 1
  %and.i = shl i32 %16, 3
  %mul.i = and i32 %and.i, 8
  %add.i = or i32 %mul.i, 32
  %arrayidx1.i = getelementptr i8, ptr %12, i32 %add.i
  %17 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %arrayidx1.i, align 1
  %19 = and i32 %16, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1245793536, i32 %19)
  %phi.cmp.i = icmp eq i32 %19, 1245793536
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %14)
  %cmp7.not.i = icmp ult i32 %18, %14
  %20 = select i1 %cmp7.not.i, i1 %phi.cmp.i, i1 false
  br i1 %20, label %if.then11.i, label %if.end.i.do.end59.i_crit_edge

if.end.i.do.end59.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end59.i

if.then11.i:                                      ; preds = %if.end.i
  %arrayidx12.i = getelementptr i8, ptr %12, i32 %18
  %21 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %arrayidx12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp1416.not.i = icmp eq i32 %18, 0
  br i1 %cmp1416.not.i, label %if.then11.i.if.end42.i_crit_edge, label %if.then11.i.for.body.i_crit_edge

if.then11.i.for.body.i_crit_edge:                 ; preds = %if.then11.i
  br label %for.body.i

if.then11.i.if.end42.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then11.i.for.body.i_crit_edge
  %shift_reg.018.i = phi i16 [ %spec.select1.7.i, %for.body.i.for.body.i_crit_edge ], [ -1, %if.then11.i.for.body.i_crit_edge ]
  %i.017.i = phi i32 [ %inc32.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then11.i.for.body.i_crit_edge ]
  %arrayidx15.i = getelementptr i8, ptr %12, i32 %i.017.i
  %23 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx15.i, align 1
  %conv.i = zext i8 %24 to i32
  %conv19.i = zext i16 %shift_reg.018.i to i32
  %xor.i = xor i32 %conv.i, %conv19.i
  %and20.i = and i32 %xor.i, 1
  %25 = lshr i16 %shift_reg.018.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool.not.i = icmp eq i32 %and20.i, 0
  %26 = xor i16 %25, -31736
  %spec.select1.i = select i1 %tobool.not.i, i16 %25, i16 %26
  %27 = lshr i8 %24, 1
  %conv.1.i = zext i8 %27 to i32
  %conv19.1.i = zext i16 %spec.select1.i to i32
  %xor.1.i = xor i32 %conv19.1.i, %conv.1.i
  %and20.1.i = and i32 %xor.1.i, 1
  %28 = lshr i16 %spec.select1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.1.i)
  %tobool.not.1.i = icmp eq i32 %and20.1.i, 0
  %29 = xor i16 %28, -31736
  %spec.select1.1.i = select i1 %tobool.not.1.i, i16 %28, i16 %29
  %30 = lshr i8 %24, 2
  %conv.2.i = zext i8 %30 to i32
  %conv19.2.i = zext i16 %spec.select1.1.i to i32
  %xor.2.i = xor i32 %conv19.2.i, %conv.2.i
  %and20.2.i = and i32 %xor.2.i, 1
  %31 = lshr i16 %spec.select1.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.2.i)
  %tobool.not.2.i = icmp eq i32 %and20.2.i, 0
  %32 = xor i16 %31, -31736
  %spec.select1.2.i = select i1 %tobool.not.2.i, i16 %31, i16 %32
  %33 = lshr i8 %24, 3
  %conv.3.i = zext i8 %33 to i32
  %conv19.3.i = zext i16 %spec.select1.2.i to i32
  %xor.3.i = xor i32 %conv19.3.i, %conv.3.i
  %and20.3.i = and i32 %xor.3.i, 1
  %34 = lshr i16 %spec.select1.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.3.i)
  %tobool.not.3.i = icmp eq i32 %and20.3.i, 0
  %35 = xor i16 %34, -31736
  %spec.select1.3.i = select i1 %tobool.not.3.i, i16 %34, i16 %35
  %36 = lshr i8 %24, 4
  %conv.4.i = zext i8 %36 to i32
  %conv19.4.i = zext i16 %spec.select1.3.i to i32
  %xor.4.i = xor i32 %conv19.4.i, %conv.4.i
  %and20.4.i = and i32 %xor.4.i, 1
  %37 = lshr i16 %spec.select1.3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.4.i)
  %tobool.not.4.i = icmp eq i32 %and20.4.i, 0
  %38 = xor i16 %37, -31736
  %spec.select1.4.i = select i1 %tobool.not.4.i, i16 %37, i16 %38
  %39 = lshr i8 %24, 5
  %conv.5.i = zext i8 %39 to i32
  %conv19.5.i = zext i16 %spec.select1.4.i to i32
  %xor.5.i = xor i32 %conv19.5.i, %conv.5.i
  %and20.5.i = and i32 %xor.5.i, 1
  %40 = lshr i16 %spec.select1.4.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.5.i)
  %tobool.not.5.i = icmp eq i32 %and20.5.i, 0
  %41 = xor i16 %40, -31736
  %spec.select1.5.i = select i1 %tobool.not.5.i, i16 %40, i16 %41
  %42 = lshr i8 %24, 6
  %conv.6.i = zext i8 %42 to i32
  %conv19.6.i = zext i16 %spec.select1.5.i to i32
  %xor.6.i = xor i32 %conv19.6.i, %conv.6.i
  %and20.6.i = and i32 %xor.6.i, 1
  %43 = lshr i16 %spec.select1.5.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.6.i)
  %tobool.not.6.i = icmp eq i32 %and20.6.i, 0
  %44 = xor i16 %43, -31736
  %spec.select1.6.i = select i1 %tobool.not.6.i, i16 %43, i16 %44
  %45 = lshr i8 %24, 7
  %46 = and i16 %spec.select1.6.i, 1
  %47 = lshr i16 %spec.select1.6.i, 1
  %48 = zext i8 %45 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %46, i16 %48)
  %tobool.not.7.i = icmp eq i16 %46, %48
  %49 = xor i16 %47, -31736
  %spec.select1.7.i = select i1 %tobool.not.7.i, i16 %47, i16 %49
  %inc32.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc32.i, %18
  br i1 %exitcond.not.i, label %if.end42.loopexit.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end42.loopexit.i:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.bo.i = xor i16 %spec.select1.7.i, -1
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.end42.loopexit.i, %if.then11.i.if.end42.i_crit_edge
  %shift_reg.0.lcssa.i = phi i16 [ 0, %if.then11.i.if.end42.i_crit_edge ], [ %phi.bo.i, %if.end42.loopexit.i ]
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %shift_reg.0.lcssa.i)
  %cmp38.not.i = icmp eq i16 %22, %shift_reg.0.lcssa.i
  %50 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool43.not.i = icmp eq i32 %50, 0
  %or.cond.i = select i1 %tobool43.not.i, i1 %cmp38.not.i, i1 false
  br i1 %or.cond.i, label %if.end42.i.if.end92_crit_edge, label %if.then45.i

if.end42.i.if.end92_crit_edge:                    ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

if.then45.i:                                      ; preds = %if.end42.i
  br i1 %cmp38.not.i, label %do.end.i, label %do.end51.i

do.end.i:                                         ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv46.i = zext i16 %shift_reg.0.lcssa.i to i32
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %conv46.i) #15
  br label %altera_check_crc.exit

do.end51.i:                                       ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv53.i = zext i16 %22 to i32
  %conv54.i = zext i16 %shift_reg.0.lcssa.i to i32
  %call55.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38, i32 noundef %conv53.i, i32 noundef %conv54.i) #15
  br label %altera_check_crc.exit

do.end59.i:                                       ; preds = %if.end.i.do.end59.i_crit_edge, %if.end20.do.end59.i_crit_edge
  %call61.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.38) #15
  br label %altera_check_crc.exit

altera_check_crc.exit:                            ; preds = %do.end59.i, %do.end51.i, %do.end.i
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool22.not = icmp eq i32 %.pr, 0
  br i1 %tobool22.not, label %altera_check_crc.exit.if.end92_crit_edge, label %if.then23

altera_check_crc.exit.if.end92_crit_edge:         ; preds = %altera_check_crc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

if.then23:                                        ; preds = %altera_check_crc.exit
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data, align 4
  %53 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %54)
  %cmp.i167 = icmp slt i32 %54, 53
  br i1 %cmp.i167, label %if.then23.altera_get_file_info.exit.thread_crit_edge, label %if.end.i168

if.then23.altera_get_file_info.exit.thread_crit_edge: ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %altera_get_file_info.exit.thread

if.end.i168:                                      ; preds = %if.then23
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %52, align 1
  %57 = and i32 %56, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1245793536, i32 %57)
  %switch.i = icmp eq i32 %57, 1245793536
  br i1 %switch.i, label %if.then3.i, label %if.end.i168.altera_get_file_info.exit.thread_crit_edge

if.end.i168.altera_get_file_info.exit.thread_crit_edge: ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #13
  br label %altera_get_file_info.exit.thread

if.then3.i:                                       ; preds = %if.end.i168
  %and.i169 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i169)
  %cmp4.not.i = icmp eq i32 %and.i169, 0
  br i1 %cmp4.not.i, label %if.then3.i.altera_get_file_info.exit.thread_crit_edge, label %58

if.then3.i.altera_get_file_info.exit.thread_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %altera_get_file_info.exit.thread

58:                                               ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx6.i = getelementptr i8, ptr %52, i32 48
  %59 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %arrayidx6.i, align 1
  br label %altera_get_file_info.exit.thread

altera_get_file_info.exit.thread:                 ; preds = %58, %if.then3.i.altera_get_file_info.exit.thread_crit_edge, %if.end.i168.altera_get_file_info.exit.thread_crit_edge, %if.then23.altera_get_file_info.exit.thread_crit_edge
  %action_count.0230 = phi i32 [ %60, %58 ], [ 0, %if.then23.altera_get_file_info.exit.thread_crit_edge ], [ 0, %if.then3.i.altera_get_file_info.exit.thread_crit_edge ], [ 0, %if.end.i168.altera_get_file_info.exit.thread_crit_edge ]
  %cmp43 = phi i1 [ true, %58 ], [ false, %if.then23.altera_get_file_info.exit.thread_crit_edge ], [ false, %if.then3.i.altera_get_file_info.exit.thread_crit_edge ], [ false, %if.end.i168.altera_get_file_info.exit.thread_crit_edge ]
  %format_version.0229 = phi i32 [ 2, %58 ], [ 0, %if.then23.altera_get_file_info.exit.thread_crit_edge ], [ 1, %if.then3.i.altera_get_file_info.exit.thread_crit_edge ], [ 0, %if.end.i168.altera_get_file_info.exit.thread_crit_edge ]
  %61 = phi ptr [ @.str.6, %58 ], [ @.str.7, %if.then23.altera_get_file_info.exit.thread_crit_edge ], [ @.str.7, %if.then3.i.altera_get_file_info.exit.thread_crit_edge ], [ @.str.7, %if.end.i168.altera_get_file_info.exit.thread_crit_edge ]
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef nonnull %61) #15
  %62 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %63)
  %cmp.i171300 = icmp sgt i32 %63, 52
  br i1 %cmp.i171300, label %altera_get_file_info.exit.thread.if.end.i178_crit_edge, label %altera_get_file_info.exit.thread.if.end41_crit_edge

altera_get_file_info.exit.thread.if.end41_crit_edge: ; preds = %altera_get_file_info.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

altera_get_file_info.exit.thread.if.end.i178_crit_edge: ; preds = %altera_get_file_info.exit.thread
  br label %if.end.i178

if.end.i178:                                      ; preds = %do.end38.if.end.i178_crit_edge, %altera_get_file_info.exit.thread.if.end.i178_crit_edge
  %offset.0301 = phi i32 [ %add69.i, %do.end38.if.end.i178_crit_edge ], [ 0, %altera_get_file_info.exit.thread.if.end.i178_crit_edge ]
  %64 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %65, align 1
  %and.i172 = shl i32 %67, 3
  %mul.i173 = and i32 %and.i172, 8
  %add.i174 = add nuw nsw i32 %mul.i173, 8
  %arrayidx1.i175 = getelementptr i8, ptr %65, i32 %add.i174
  %68 = ptrtoint ptr %arrayidx1.i175 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %arrayidx1.i175, align 1
  %add3.i = add nuw nsw i32 %mul.i173, 12
  %arrayidx4.i = getelementptr i8, ptr %65, i32 %add3.i
  %70 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %arrayidx4.i, align 1
  %mul6.i = shl nuw nsw i32 %mul.i173, 1
  %add7.i = or i32 %mul6.i, 44
  %arrayidx8.i176 = getelementptr i8, ptr %65, i32 %add7.i
  %72 = ptrtoint ptr %arrayidx8.i176 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %arrayidx8.i176, align 1
  %74 = and i32 %67, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1245793536, i32 %74)
  %switch.i177 = icmp ne i32 %74, 1245793536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp14.i = icmp eq i32 %73, 0
  %or.cond282 = select i1 %switch.i177, i1 true, i1 %cmp14.i
  br i1 %or.cond282, label %if.end.i178.if.end41_crit_edge, label %if.end16.i

if.end.i178.if.end41_crit_edge:                   ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.end16.i:                                       ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %offset.0301)
  %cmp44.i = icmp sgt i32 %offset.0301, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0301, i32 %73)
  %cmp46.i = icmp ult i32 %offset.0301, %73
  %or.cond.i179 = select i1 %cmp44.i, i1 %cmp46.i, i1 false
  br i1 %or.cond.i179, label %do.end38, label %if.end16.i.if.end41_crit_edge

if.end16.i.if.end41_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

do.end38:                                         ; preds = %if.end16.i
  %mul50.i = shl i32 %offset.0301, 3
  %add51.i = add i32 %71, %mul50.i
  %arrayidx52.i = getelementptr i8, ptr %65, i32 %add51.i
  %75 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %arrayidx52.i, align 1
  %add54.i = add i32 %76, %69
  %arrayidx55.i = getelementptr i8, ptr %65, i32 %add54.i
  %call56.i = tail call i32 @strlcpy(ptr noundef nonnull %call7.i.i, ptr noundef %arrayidx55.i, i32 noundef 32) #11
  %add61.i = or i32 %mul50.i, 4
  %add62.i = add i32 %add61.i, %71
  %arrayidx63.i = getelementptr i8, ptr %65, i32 %add62.i
  %77 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %arrayidx63.i, align 1
  %add65.i = add i32 %78, %69
  %arrayidx66.i = getelementptr i8, ptr %65, i32 %add65.i
  %call67.i = tail call i32 @strlcpy(ptr noundef nonnull %call7.i.i165, ptr noundef %arrayidx66.i, i32 noundef 256) #11
  %add69.i = add nuw i32 %offset.0301, 1
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i165) #15
  %79 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %fw, align 4
  %cmp.i171 = icmp sgt i32 %80, 52
  br i1 %cmp.i171, label %do.end38.if.end.i178_crit_edge, label %do.end38.if.end41_crit_edge

do.end38.if.end41_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

do.end38.if.end.i178_crit_edge:                   ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i178

if.end41:                                         ; preds = %do.end38.if.end41_crit_edge, %if.end16.i.if.end41_crit_edge, %if.end.i178.if.end41_crit_edge, %altera_get_file_info.exit.thread.if.end41_crit_edge
  %.pr234 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr234)
  %tobool42.not = icmp ne i32 %.pr234, 0
  %or.cond283 = and i1 %cmp43, %tobool42.not
  br i1 %or.cond283, label %land.lhs.true44, label %if.end41.if.end92_crit_edge

if.end41.if.end92_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

land.lhs.true44:                                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %action_count.0230)
  %cmp45 = icmp sgt i32 %action_count.0230, 0
  br i1 %cmp45, label %do.end49, label %land.lhs.true44.if.end92_crit_edge

land.lhs.true44.if.end92_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

do.end49:                                         ; preds = %land.lhs.true44
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1) #15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end49
  %index.0307 = phi i32 [ 0, %do.end49 ], [ %inc, %for.inc.for.body_crit_edge ]
  %description.0306 = phi ptr [ null, %do.end49 ], [ %description.2, %for.inc.for.body_crit_edge ]
  %action_name.0305 = phi ptr [ null, %do.end49 ], [ %action_name.1, %for.inc.for.body_crit_edge ]
  %81 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data, align 4
  %83 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %84)
  %cmp.i180 = icmp slt i32 %84, 53
  br i1 %cmp.i180, label %for.body.altera_get_act_info.exit_crit_edge, label %if.end.i181

for.body.altera_get_act_info.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %altera_get_act_info.exit

if.end.i181:                                      ; preds = %for.body
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %82, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1245793537, i32 %86)
  %cmp1.not.i = icmp eq i32 %86, 1245793537
  br i1 %cmp1.not.i, label %if.end3.i, label %if.end.i181.altera_get_act_info.exit_crit_edge

if.end.i181.altera_get_act_info.exit_crit_edge:   ; preds = %if.end.i181
  call void @__sanitizer_cov_trace_pc() #13
  br label %altera_get_act_info.exit

if.end3.i:                                        ; preds = %if.end.i181
  %arrayidx6.i182 = getelementptr i8, ptr %82, i32 8
  %87 = ptrtoint ptr %arrayidx6.i182 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %arrayidx6.i182, align 1
  %arrayidx8.i183 = getelementptr i8, ptr %82, i32 12
  %89 = ptrtoint ptr %arrayidx8.i183 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %arrayidx8.i183, align 1
  %arrayidx12.i184 = getelementptr i8, ptr %82, i32 48
  %91 = ptrtoint ptr %arrayidx12.i184 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %arrayidx12.i184, align 1
  %arrayidx14.i = getelementptr i8, ptr %82, i32 52
  %93 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %arrayidx14.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %index.0307)
  %cmp16.not.i = icmp ugt i32 %92, %index.0307
  br i1 %cmp16.not.i, label %if.end18.i, label %if.end3.i.altera_get_act_info.exit_crit_edge

if.end3.i.altera_get_act_info.exit_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %altera_get_act_info.exit

if.end18.i:                                       ; preds = %if.end3.i
  %arrayidx10.i = getelementptr i8, ptr %82, i32 16
  %95 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %arrayidx10.i, align 1
  %arrayidx4.i185 = getelementptr i8, ptr %82, i32 4
  %97 = ptrtoint ptr %arrayidx4.i185 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %arrayidx4.i185, align 1
  %mul.i186 = mul i32 %index.0307, 12
  %add.i187 = add i32 %98, %mul.i186
  %arrayidx19.i = getelementptr i8, ptr %82, i32 %add.i187
  %99 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %arrayidx19.i, align 1
  %add23.i = add i32 %add.i187, 4
  %arrayidx24.i = getelementptr i8, ptr %82, i32 %add23.i
  %101 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %arrayidx24.i, align 1
  %add28.i = add i32 %add.i187, 8
  %arrayidx29.i = getelementptr i8, ptr %82, i32 %add28.i
  %103 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %arrayidx29.i, align 1
  %add31.i = add i32 %100, %90
  %sub.i = sub i32 %96, %90
  %add35.i = add i32 %102, %90
  %arrayidx36.i = getelementptr i8, ptr %82, i32 %add35.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.end64.i.do.body.i_crit_edge, %if.end18.i
  %act_proc_id.0.i = phi i32 [ %104, %if.end18.i ], [ %119, %if.end64.i.do.body.i_crit_edge ]
  %mul38.i = mul i32 %act_proc_id.0.i, 13
  %add39.i = add i32 %mul38.i, %88
  %arrayidx40.i = getelementptr i8, ptr %82, i32 %add39.i
  %105 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %arrayidx40.i, align 1
  %add44.i = add i32 %add39.i, 8
  %arrayidx45.i = getelementptr i8, ptr %82, i32 %add44.i
  %107 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx45.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %109 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %109, i32 noundef 3520, i32 noundef 12) #14
  %cmp48.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp48.i, label %do.body.i.if.end64.i_crit_edge, label %if.else.i

do.body.i.if.end64.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64.i

if.else.i:                                        ; preds = %do.body.i
  %110 = and i8 %108, 3
  %add51.i188 = add i32 %106, %90
  %arrayidx52.i189 = getelementptr i8, ptr %82, i32 %add51.i188
  %111 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %arrayidx52.i189, ptr %call7.i.i.i, align 8
  %attrs.i = getelementptr inbounds %struct.altera_procinfo, ptr %call7.i.i.i, i32 0, i32 1
  %112 = ptrtoint ptr %attrs.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %110, ptr %attrs.i, align 4
  %next.i = getelementptr inbounds %struct.altera_procinfo, ptr %call7.i.i.i, i32 0, i32 2
  %113 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %next.i, align 8
  %114 = ptrtoint ptr %proc_list to i32
  call void @__asan_load4_noabort(i32 %114)
  %proc_list.0.proc_list.0. = load ptr, ptr %proc_list, align 4
  %cmp54.i = icmp eq ptr %proc_list.0.proc_list.0., null
  br i1 %cmp54.i, label %if.else.i.if.end64.sink.split.i_crit_edge, label %if.else.i.while.cond.i_crit_edge

if.else.i.while.cond.i_crit_edge:                 ; preds = %if.else.i
  br label %while.cond.i

if.else.i.if.end64.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64.sink.split.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.else.i.while.cond.i_crit_edge
  %tmpptr.0.i = phi ptr [ %116, %while.cond.i.while.cond.i_crit_edge ], [ %proc_list.0.proc_list.0., %if.else.i.while.cond.i_crit_edge ]
  %next58.i = getelementptr inbounds %struct.altera_procinfo, ptr %tmpptr.0.i, i32 0, i32 2
  %115 = ptrtoint ptr %next58.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %next58.i, align 4
  %cmp59.not.i = icmp eq ptr %116, null
  br i1 %cmp59.not.i, label %if.end64.sink.split.i.loopexit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

if.end64.sink.split.i.loopexit:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %next58.i.le = getelementptr inbounds %struct.altera_procinfo, ptr %tmpptr.0.i, i32 0, i32 2
  br label %if.end64.sink.split.i

if.end64.sink.split.i:                            ; preds = %if.end64.sink.split.i.loopexit, %if.else.i.if.end64.sink.split.i_crit_edge
  %proc_list.sink.i = phi ptr [ %proc_list, %if.else.i.if.end64.sink.split.i_crit_edge ], [ %next58.i.le, %if.end64.sink.split.i.loopexit ]
  %117 = ptrtoint ptr %proc_list.sink.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call7.i.i.i, ptr %proc_list.sink.i, align 4
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.end64.sink.split.i, %do.body.i.if.end64.i_crit_edge
  %add67.i = add i32 %add39.i, 4
  %arrayidx68.i = getelementptr i8, ptr %82, i32 %add67.i
  %118 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %arrayidx68.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp70.not.i = icmp ne i32 %119, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %94)
  %cmp72.i = icmp ult i32 %119, %94
  %or.cond.i190 = select i1 %cmp70.not.i, i1 %cmp72.i, i1 false
  br i1 %or.cond.i190, label %if.end64.i.do.body.i_crit_edge, label %altera_get_act_info.exit.loopexit

if.end64.i.do.body.i_crit_edge:                   ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

altera_get_act_info.exit.loopexit:                ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx32.i = getelementptr i8, ptr %82, i32 %add31.i
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %sub.i)
  %cmp33.i = icmp ult i32 %102, %sub.i
  %description.1 = select i1 %cmp33.i, ptr %arrayidx36.i, ptr %description.0306
  br label %altera_get_act_info.exit

altera_get_act_info.exit:                         ; preds = %altera_get_act_info.exit.loopexit, %if.end3.i.altera_get_act_info.exit_crit_edge, %if.end.i181.altera_get_act_info.exit_crit_edge, %for.body.altera_get_act_info.exit_crit_edge
  %action_name.1 = phi ptr [ %action_name.0305, %for.body.altera_get_act_info.exit_crit_edge ], [ %action_name.0305, %if.end3.i.altera_get_act_info.exit_crit_edge ], [ %action_name.0305, %if.end.i181.altera_get_act_info.exit_crit_edge ], [ %arrayidx32.i, %altera_get_act_info.exit.loopexit ]
  %description.2 = phi ptr [ %description.0306, %for.body.altera_get_act_info.exit_crit_edge ], [ %description.0306, %if.end3.i.altera_get_act_info.exit_crit_edge ], [ %description.0306, %if.end.i181.altera_get_act_info.exit_crit_edge ], [ %description.1, %altera_get_act_info.exit.loopexit ]
  %cmp56 = icmp eq ptr %description.2, null
  br i1 %cmp56, label %do.end60, label %do.end65

do.end60:                                         ; preds = %altera_get_act_info.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, ptr noundef %action_name.1) #15
  br label %if.end68

do.end65:                                         ; preds = %altera_get_act_info.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, ptr noundef %action_name.1, ptr noundef nonnull %description.2) #15
  br label %if.end68

if.end68:                                         ; preds = %do.end65, %do.end60
  %120 = ptrtoint ptr %proc_list to i32
  call void @__asan_load4_noabort(i32 %120)
  %proc_list.0.proc_list.0.procptr.0.pr = load ptr, ptr %proc_list, align 4
  %cmp70.not302 = icmp eq ptr %proc_list.0.proc_list.0.procptr.0.pr, null
  br i1 %cmp70.not302, label %if.end68.for.inc_crit_edge, label %if.end68.while.body71_crit_edge

if.end68.while.body71_crit_edge:                  ; preds = %if.end68
  br label %while.body71

if.end68.for.inc_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

while.body71:                                     ; preds = %if.end85.while.body71_crit_edge, %if.end68.while.body71_crit_edge
  %proc_list.0.procptr.0303 = phi ptr [ %126, %if.end85.while.body71_crit_edge ], [ %proc_list.0.proc_list.0.procptr.0.pr, %if.end68.while.body71_crit_edge ]
  %attrs = getelementptr inbounds %struct.altera_procinfo, ptr %proc_list.0.procptr.0303, i32 0, i32 1
  %121 = ptrtoint ptr %attrs to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %attrs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %cmp72.not = icmp eq i8 %122, 0
  br i1 %cmp72.not, label %while.body71.if.end85_crit_edge, label %do.end77

while.body71.if.end85_crit_edge:                  ; preds = %while.body71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

do.end77:                                         ; preds = %while.body71
  call void @__sanitizer_cov_trace_pc() #13
  %123 = ptrtoint ptr %proc_list.0.procptr.0303 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %proc_list.0.procptr.0303, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %122)
  %cmp81 = icmp eq i8 %122, 1
  %cond83 = select i1 %cmp81, ptr @.str.23, ptr @.str.24
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, ptr noundef %124, ptr noundef nonnull %cond83) #15
  br label %if.end85

if.end85:                                         ; preds = %do.end77, %while.body71.if.end85_crit_edge
  %next = getelementptr inbounds %struct.altera_procinfo, ptr %proc_list.0.procptr.0303, i32 0, i32 2
  %125 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %next, align 4
  tail call void @kfree(ptr noundef nonnull %proc_list.0.procptr.0303) #11
  %cmp70.not = icmp eq ptr %126, null
  br i1 %cmp70.not, label %if.end85.for.inc_crit_edge, label %if.end85.while.body71_crit_edge

if.end85.while.body71_crit_edge:                  ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body71

if.end85.for.inc_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.end85.for.inc_crit_edge, %if.end68.for.inc_crit_edge
  %127 = ptrtoint ptr %proc_list to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %proc_list, align 4
  %inc = add nuw nsw i32 %index.0307, 1
  %exitcond.not = icmp eq i32 %inc, %action_count.0230
  br i1 %exitcond.not, label %do.end89, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.end89:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #15
  br label %if.end92

if.end92:                                         ; preds = %do.end89, %land.lhs.true44.if.end92_crit_edge, %if.end41.if.end92_crit_edge, %altera_check_crc.exit.if.end92_crit_edge, %if.end42.i.if.end92_crit_edge
  %format_version.1238 = phi i32 [ %format_version.0229, %do.end89 ], [ 2, %land.lhs.true44.if.end92_crit_edge ], [ %format_version.0229, %if.end41.if.end92_crit_edge ], [ 0, %altera_check_crc.exit.if.end92_crit_edge ], [ 0, %if.end42.i.if.end92_crit_edge ]
  %128 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %data, align 4
  %130 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %fw, align 4
  %132 = ptrtoint ptr %call7.i.i166 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %call7.i.i166, align 8
  %msg_buff1.i = getelementptr inbounds %struct.altera_state, ptr %call7.i.i166, i32 0, i32 2
  %stack2.i = getelementptr inbounds %struct.altera_state, ptr %call7.i.i166, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args.i)
  %134 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 -1, ptr %args.i, align 4
  %args.i.4.args.i.4.args.4..sroa_idx = getelementptr inbounds i8, ptr %args.i, i32 4
  %135 = ptrtoint ptr %args.i.4.args.i.4.args.4..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 -1, ptr %args.i.4.args.i.4.args.4..sroa_idx, align 4
  %args.i.8.args.i.8.args.8..sroa_idx = getelementptr inbounds i8, ptr %args.i, i32 8
  %136 = ptrtoint ptr %args.i.8.args.i.8.args.8..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 -1, ptr %args.i.8.args.i.8.args.8..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %charbuf.i) #11
  %137 = ptrtoint ptr %charbuf.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 -1, ptr %charbuf.i, align 4
  %138 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool.not.i191 = icmp eq i32 %138, 0
  br i1 %tobool.not.i191, label %if.end92.if.end.i194_crit_edge, label %do.end.i192

if.end92.if.end.i194_crit_edge:                   ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i194

do.end.i192:                                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #15
  br label %if.end.i194

if.end.i194:                                      ; preds = %do.end.i192, %if.end92.if.end.i194_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %131)
  %cmp.i193 = icmp sgt i32 %131, 52
  br i1 %cmp.i193, label %if.end35.i, label %exit_done.thread.thread.i

exit_done.thread.thread.i:                        ; preds = %if.end.i194
  call void @__sanitizer_cov_trace_pc() #13
  %call2074496.i = tail call i32 @altera_jinit(ptr noundef %call7.i.i166) #11
  br label %if.end323.thread.i

if.end35.i:                                       ; preds = %if.end.i194
  %139 = ptrtoint ptr %129 to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %140 = load i32, ptr %129, align 1
  %and.i195 = and i32 %140, 1
  %add.i196 = add nuw nsw i32 %and.i195, 1
  %mul.i197 = shl nuw nsw i32 %and.i195, 3
  %arrayidx6.i198 = getelementptr i8, ptr %129, i32 4
  %141 = ptrtoint ptr %arrayidx6.i198 to i32
  call void @__asan_loadN_noabort(i32 %141, i32 4)
  %142 = load i32, ptr %arrayidx6.i198, align 1
  %arrayidx8.i199 = getelementptr i8, ptr %129, i32 8
  %143 = ptrtoint ptr %arrayidx8.i199 to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %arrayidx8.i199, align 1
  %add10.i = or i32 %mul.i197, 4
  %arrayidx11.i = getelementptr i8, ptr %129, i32 %add10.i
  %145 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %146 = load i32, ptr %arrayidx11.i, align 1
  %add13.i = or i32 %mul.i197, 16
  %arrayidx14.i200 = getelementptr i8, ptr %129, i32 %add13.i
  %147 = ptrtoint ptr %arrayidx14.i200 to i32
  call void @__asan_loadN_noabort(i32 %147, i32 4)
  %148 = load i32, ptr %arrayidx14.i200, align 1
  %add16.i = or i32 %mul.i197, 20
  %arrayidx17.i = getelementptr i8, ptr %129, i32 %add16.i
  %149 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_loadN_noabort(i32 %149, i32 4)
  %150 = load i32, ptr %arrayidx17.i, align 1
  %add19.i = add nuw nsw i32 %mul.i197, 24
  %arrayidx20.i = getelementptr i8, ptr %129, i32 %add19.i
  %151 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_loadN_noabort(i32 %151, i32 4)
  %152 = load i32, ptr %arrayidx20.i, align 1
  %add22.i = add nuw nsw i32 %mul.i197, 28
  %arrayidx23.i = getelementptr i8, ptr %129, i32 %add22.i
  %153 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_loadN_noabort(i32 %153, i32 4)
  %154 = load i32, ptr %arrayidx23.i, align 1
  %add25.i = add nuw nsw i32 %mul.i197, 40
  %arrayidx26.i = getelementptr i8, ptr %129, i32 %add25.i
  %155 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_loadN_noabort(i32 %155, i32 4)
  %156 = load i32, ptr %arrayidx26.i, align 1
  %add28.i201 = add nuw nsw i32 %mul.i197, 44
  %arrayidx29.i202 = getelementptr i8, ptr %129, i32 %add28.i201
  %157 = ptrtoint ptr %arrayidx29.i202 to i32
  call void @__asan_loadN_noabort(i32 %157, i32 4)
  %158 = load i32, ptr %arrayidx29.i202, align 1
  %mul31.i = shl nuw nsw i32 %and.i195, 4
  %add32.i = add nuw nsw i32 %mul31.i, 48
  %arrayidx33.i = getelementptr i8, ptr %129, i32 %add32.i
  %159 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_loadN_noabort(i32 %159, i32 4)
  %160 = load i32, ptr %arrayidx33.i, align 1
  %161 = and i32 %140, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1245793536, i32 %161)
  %switch3425.i = icmp eq i32 %161, 1245793536
  br i1 %switch3425.i, label %if.end39.i, label %if.end35.i.exit_done.thread.i_crit_edge

if.end35.i.exit_done.thread.i_crit_edge:          ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_done.thread.i

if.end39.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp40.i = icmp eq i32 %160, 0
  br i1 %cmp40.i, label %if.end39.i.exit_done.thread4146.i_crit_edge, label %if.end42.i203

if.end39.i.exit_done.thread4146.i_crit_edge:      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_done.thread4146.i

if.end42.i203:                                    ; preds = %if.end39.i
  %162 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %160, i32 4) #11
  %163 = extractvalue { i32, i1 } %162, 1
  %164 = extractvalue { i32, i1 } %162, 0
  br i1 %163, label %if.end42.i203.exit_done.thread.i_crit_edge, label %kcalloc.exit.thread.i, !prof !127

if.end42.i203.exit_done.thread.i_crit_edge:       ; preds = %if.end42.i203
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_done.thread.i

kcalloc.exit.thread.i:                            ; preds = %if.end42.i203
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %164, i32 noundef 3520) #16
  %cmp444761.i = icmp eq ptr %call8.i.i.i, null
  br i1 %cmp444761.i, label %kcalloc.exit.thread.i.exit_done.thread.i_crit_edge, label %kcalloc.exit3460.thread.i

kcalloc.exit.thread.i.exit_done.thread.i_crit_edge: ; preds = %kcalloc.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_done.thread.i

kcalloc.exit3460.thread.i:                        ; preds = %kcalloc.exit.thread.i
  %call8.i.i3457.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %164, i32 noundef 3520) #16
  %cmp504775.i = icmp eq ptr %call8.i.i3457.i, null
  br i1 %cmp504775.i, label %kcalloc.exit3460.thread.i.exit_done.thread.i_crit_edge, label %if.end8.i.i.i

kcalloc.exit3460.thread.i.exit_done.thread.i_crit_edge: ; preds = %kcalloc.exit3460.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_done.thread.i

if.end8.i.i.i:                                    ; preds = %kcalloc.exit3460.thread.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %160, i32 noundef 3520) #16
  %cmp57.i = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp57.i, label %if.end8.i.i.i.exit_done.thread.i_crit_edge, label %if.end60.i

if.end8.i.i.i.exit_done.thread.i_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_done.thread.i

if.end60.i:                                       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i195)
  %cmp63.not.i = icmp eq i32 %and.i195, 0
  br i1 %cmp63.not.i, label %if.end60.i.for.body.lr.ph.i_crit_edge, label %if.end8.i.i3491.i

if.end60.i.for.body.lr.ph.i_crit_edge:            ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph.i

if.end8.i.i3491.i:                                ; preds = %if.end60.i
  %call9.i.i3490.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %158, i32 noundef 3520) #16
  %cmp66.i = icmp eq ptr %call9.i.i3490.i, null
  br i1 %cmp66.i, label %exit_done.thread.thread4508.i, label %if.end8.i.i3491.i.for.body.lr.ph.i_crit_edge

if.end8.i.i3491.i.for.body.lr.ph.i_crit_edge:     ; preds = %if.end8.i.i3491.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph.i

exit_done.thread.thread4508.i:                    ; preds = %if.end8.i.i3491.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2074522.i = tail call i32 @altera_jinit(ptr noundef %call7.i.i166) #11
  %165 = ptrtoint ptr %msg_buff1.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 0, ptr %msg_buff1.i, align 8
  br label %if.then211.i

for.body.lr.ph.i:                                 ; preds = %if.end8.i.i3491.i.for.body.lr.ph.i_crit_edge, %if.end60.i.for.body.lr.ph.i_crit_edge
  %proc_attributes.0.ph.i = phi ptr [ null, %if.end60.i.for.body.lr.ph.i_crit_edge ], [ %call9.i.i3490.i, %if.end8.i.i3491.i.for.body.lr.ph.i_crit_edge ]
  %mul73.i = shl nuw nsw i32 %and.i195, 1
  %add75.i = add nuw nsw i32 %mul73.i, 11
  %166 = ptrtoint ptr %129 to i32
  br label %for.body.i206

for.body.i206:                                    ; preds = %for.inc200.i.for.body.i206_crit_edge, %for.body.lr.ph.i
  %i.04598.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc201.i, %for.inc200.i.for.body.i206_crit_edge ]
  %status.44597.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %status.5.i, %for.inc200.i.for.body.i206_crit_edge ]
  %mul76.i = mul i32 %i.04598.i, %add75.i
  %add77.i = add i32 %mul76.i, %148
  %add78.i = add i32 %add77.i, %mul73.i
  %add79.i = add i32 %add78.i, 3
  %arrayidx80.i = getelementptr i8, ptr %129, i32 %add79.i
  %167 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_loadN_noabort(i32 %167, i32 4)
  %168 = load i32, ptr %arrayidx80.i, align 1
  %arrayidx82.i = getelementptr i8, ptr %129, i32 %add77.i
  %169 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx82.i, align 1
  %arrayidx83.i = getelementptr i8, ptr %call9.i.i.i, i32 %i.04598.i
  %171 = and i8 %170, 127
  %172 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %171, ptr %arrayidx83.i, align 1
  %add88.i = add i32 %add78.i, 7
  %arrayidx89.i = getelementptr i8, ptr %129, i32 %add88.i
  %173 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_loadN_noabort(i32 %173, i32 4)
  %174 = load i32, ptr %arrayidx89.i, align 1
  %arrayidx91.i = getelementptr i32, ptr %call8.i.i3457.i, i32 %i.04598.i
  %175 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %arrayidx91.i, align 4
  %conv93.i = zext i8 %171 to i32
  %and94.i = and i32 %conv93.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and94.i)
  %cmp95.i = icmp eq i32 %and94.i, 4
  br i1 %cmp95.i, label %if.then97.i, label %if.else.i207

if.then97.i:                                      ; preds = %for.body.i206
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx98.i = getelementptr i32, ptr %call8.i.i.i, i32 %i.04598.i
  %176 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %168, ptr %arrayidx98.i, align 4
  br label %for.inc200.i

if.else.i207:                                     ; preds = %for.body.i206
  %and101.i = and i32 %conv93.i, 30
  %177 = zext i32 %and101.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and101.i, label %if.else141.i [
    i32 14, label %if.then104.i
    i32 12, label %if.then137.i
  ]

if.then104.i:                                     ; preds = %if.else.i207
  %add105.i = add i32 %168, %150
  %arrayidx106.i = getelementptr i8, ptr %129, i32 %add105.i
  %178 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_loadN_noabort(i32 %178, i32 4)
  %179 = load i32, ptr %arrayidx106.i, align 1
  %180 = tail call i32 @llvm.bswap.i32(i32 %179) #11
  %call9.i.i3519.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %180, i32 noundef 3520) #16
  %181 = ptrtoint ptr %call9.i.i3519.i to i32
  %arrayidx109.i = getelementptr i32, ptr %call8.i.i.i, i32 %i.04598.i
  %182 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %arrayidx109.i, align 4
  %cmp111.i = icmp eq ptr %call9.i.i3519.i, null
  br i1 %cmp111.i, label %if.then104.i.for.inc200.i_crit_edge, label %if.else114.i

if.then104.i.for.inc200.i_crit_edge:              ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc200.i

if.else114.i:                                     ; preds = %if.then104.i
  %183 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx83.i, align 1
  %185 = or i8 %184, -128
  store i8 %185, ptr %arrayidx83.i, align 1
  %186 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx91.i, align 4
  %188 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx109.i, align 4
  %190 = inttoptr i32 %189 to ptr
  %call122.i = tail call i32 @altera_shrink(ptr noundef %arrayidx106.i, i32 noundef %187, ptr noundef %190, i32 noundef %180, i32 noundef %and.i195) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call122.i, i32 %180)
  %cmp123.not.i = icmp eq i32 %call122.i, %180
  br i1 %cmp123.not.i, label %if.else126.i, label %if.else114.i.for.inc200.i_crit_edge

if.else114.i.for.inc200.i_crit_edge:              ; preds = %if.else114.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc200.i

if.else126.i:                                     ; preds = %if.else114.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul127.i = shl i32 %180, 3
  %191 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %mul127.i, ptr %arrayidx91.i, align 4
  br label %for.inc200.i

if.then137.i:                                     ; preds = %if.else.i207
  call void @__sanitizer_cov_trace_pc() #13
  %add138.i = add i32 %168, %150
  %add139.i = add i32 %add138.i, %166
  %arrayidx140.i = getelementptr i32, ptr %call8.i.i.i, i32 %i.04598.i
  %192 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %add139.i, ptr %arrayidx140.i, align 4
  br label %for.inc200.i

if.else141.i:                                     ; preds = %if.else.i207
  %and144.i = and i32 %conv93.i, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %and144.i)
  %cmp145.i = icmp eq i32 %and144.i, 28
  br i1 %cmp145.i, label %if.then147.i, label %if.else150.i

if.then147.i:                                     ; preds = %if.else141.i
  call void @__sanitizer_cov_trace_pc() #13
  %add148.i = add i32 %168, %150
  %arrayidx149.i = getelementptr i32, ptr %call8.i.i.i, i32 %i.04598.i
  %193 = ptrtoint ptr %arrayidx149.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %add148.i, ptr %arrayidx149.i, align 4
  br label %for.inc200.i

if.else150.i:                                     ; preds = %if.else141.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and94.i)
  %cmp154.i = icmp eq i32 %and94.i, 8
  br i1 %cmp154.i, label %if.then156.i, label %if.else193.i

if.then156.i:                                     ; preds = %if.else150.i
  %or159.i = or i8 %170, -128
  %194 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %or159.i, ptr %arrayidx83.i, align 1
  %195 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx91.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %cmp162.i = icmp sgt i32 %196, 0
  br i1 %cmp162.i, label %if.then164.i, label %if.else190.i

if.then164.i:                                     ; preds = %if.then156.i
  %197 = and i8 %170, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool168.not.i = icmp eq i8 %197, 0
  %mul171.i = shl i32 %196, 2
  %add174.i = add nuw i32 %196, 7
  %div.i = sdiv i32 %add174.i, 8
  %size.0.i = select i1 %tobool168.not.i, i32 %div.i, i32 %mul171.i
  %call9.i.i3548.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size.0.i, i32 noundef 3520) #16
  %198 = ptrtoint ptr %call9.i.i3548.i to i32
  %arrayidx177.i = getelementptr i32, ptr %call8.i.i.i, i32 %i.04598.i
  %199 = ptrtoint ptr %arrayidx177.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %arrayidx177.i, align 4
  %cmp179.i = icmp eq ptr %call9.i.i3548.i, null
  br i1 %cmp179.i, label %if.then164.i.for.inc200.i_crit_edge, label %for.cond183.preheader.i

if.then164.i.for.inc200.i_crit_edge:              ; preds = %if.then164.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc200.i

for.cond183.preheader.i:                          ; preds = %if.then164.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0.i)
  %cmp1844594.not.i = icmp eq i32 %size.0.i, 0
  br i1 %cmp1844594.not.i, label %for.cond183.preheader.i.for.inc200.i_crit_edge, label %for.cond183.preheader.i.for.body186.i_crit_edge

for.cond183.preheader.i.for.body186.i_crit_edge:  ; preds = %for.cond183.preheader.i
  br label %for.body186.i

for.cond183.preheader.i.for.inc200.i_crit_edge:   ; preds = %for.cond183.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc200.i

for.body186.i:                                    ; preds = %for.body186.i.for.body186.i_crit_edge, %for.cond183.preheader.i.for.body186.i_crit_edge
  %j.04595.i = phi i32 [ %inc.i, %for.body186.i.for.body186.i_crit_edge ], [ 0, %for.cond183.preheader.i.for.body186.i_crit_edge ]
  %200 = ptrtoint ptr %arrayidx177.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx177.i, align 4
  %202 = inttoptr i32 %201 to ptr
  %arrayidx188.i = getelementptr i8, ptr %202, i32 %j.04595.i
  %203 = ptrtoint ptr %arrayidx188.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 0, ptr %arrayidx188.i, align 1
  %inc.i = add nuw i32 %j.04595.i, 1
  %exitcond.not.i208 = icmp eq i32 %inc.i, %size.0.i
  br i1 %exitcond.not.i208, label %for.body186.i.for.inc200.i_crit_edge, label %for.body186.i.for.body186.i_crit_edge

for.body186.i.for.body186.i_crit_edge:            ; preds = %for.body186.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body186.i

for.body186.i.for.inc200.i_crit_edge:             ; preds = %for.body186.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc200.i

if.else190.i:                                     ; preds = %if.then156.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx191.i = getelementptr i32, ptr %call8.i.i.i, i32 %i.04598.i
  %204 = ptrtoint ptr %arrayidx191.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 0, ptr %arrayidx191.i, align 4
  br label %for.inc200.i

if.else193.i:                                     ; preds = %if.else150.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx194.i = getelementptr i32, ptr %call8.i.i.i, i32 %i.04598.i
  %205 = ptrtoint ptr %arrayidx194.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 0, ptr %arrayidx194.i, align 4
  br label %for.inc200.i

for.inc200.i:                                     ; preds = %if.else193.i, %if.else190.i, %for.body186.i.for.inc200.i_crit_edge, %for.cond183.preheader.i.for.inc200.i_crit_edge, %if.then164.i.for.inc200.i_crit_edge, %if.then147.i, %if.then137.i, %if.else126.i, %if.else114.i.for.inc200.i_crit_edge, %if.then104.i.for.inc200.i_crit_edge, %if.then97.i
  %status.5.i = phi i32 [ %status.44597.i, %if.then97.i ], [ %status.44597.i, %if.then147.i ], [ %status.44597.i, %if.else190.i ], [ %status.44597.i, %if.else193.i ], [ %status.44597.i, %if.then137.i ], [ %status.44597.i, %if.else126.i ], [ -12, %if.then104.i.for.inc200.i_crit_edge ], [ -5, %if.else114.i.for.inc200.i_crit_edge ], [ -12, %if.then164.i.for.inc200.i_crit_edge ], [ %status.44597.i, %for.cond183.preheader.i.for.inc200.i_crit_edge ], [ %status.44597.i, %for.body186.i.for.inc200.i_crit_edge ]
  %inc201.i = add nuw i32 %i.04598.i, 1
  %exitcond4687.not.i = icmp eq i32 %inc201.i, %160
  br i1 %exitcond4687.not.i, label %exit_done.i, label %for.inc200.i.for.body.i206_crit_edge

for.inc200.i.for.body.i206_crit_edge:             ; preds = %for.inc200.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i206

exit_done.i:                                      ; preds = %for.inc200.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.5.i)
  %cmp203.not.i = icmp eq i32 %status.5.i, 0
  br i1 %cmp203.not.i, label %exit_done.i.exit_done.thread4146.i_crit_edge, label %exit_done.i.exit_done.thread.i_crit_edge

exit_done.i.exit_done.thread.i_crit_edge:         ; preds = %exit_done.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_done.thread.i

exit_done.i.exit_done.thread4146.i_crit_edge:     ; preds = %exit_done.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_done.thread4146.i

exit_done.thread4146.i:                           ; preds = %exit_done.i.exit_done.thread4146.i_crit_edge, %if.end39.i.exit_done.thread4146.i_crit_edge
  %proc_attributes.14174.i = phi ptr [ %proc_attributes.0.ph.i, %exit_done.i.exit_done.thread4146.i_crit_edge ], [ null, %if.end39.i.exit_done.thread4146.i_crit_edge ]
  %attrs.14173.i = phi ptr [ %call9.i.i.i, %exit_done.i.exit_done.thread4146.i_crit_edge ], [ null, %if.end39.i.exit_done.thread4146.i_crit_edge ]
  %var_size.14172.i = phi ptr [ %call8.i.i3457.i, %exit_done.i.exit_done.thread4146.i_crit_edge ], [ null, %if.end39.i.exit_done.thread4146.i_crit_edge ]
  %vars.04171.i = phi ptr [ %call8.i.i.i, %exit_done.i.exit_done.thread4146.i_crit_edge ], [ null, %if.end39.i.exit_done.thread4146.i_crit_edge ]
  br label %exit_done.thread.i

exit_done.thread.i:                               ; preds = %exit_done.thread4146.i, %exit_done.i.exit_done.thread.i_crit_edge, %if.end8.i.i.i.exit_done.thread.i_crit_edge, %kcalloc.exit3460.thread.i.exit_done.thread.i_crit_edge, %kcalloc.exit.thread.i.exit_done.thread.i_crit_edge, %if.end42.i203.exit_done.thread.i_crit_edge, %if.end35.i.exit_done.thread.i_crit_edge
  %proc_attributes.14143.i = phi ptr [ %proc_attributes.14174.i, %exit_done.thread4146.i ], [ %proc_attributes.0.ph.i, %exit_done.i.exit_done.thread.i_crit_edge ], [ null, %if.end35.i.exit_done.thread.i_crit_edge ], [ null, %if.end42.i203.exit_done.thread.i_crit_edge ], [ null, %if.end8.i.i.i.exit_done.thread.i_crit_edge ], [ null, %kcalloc.exit.thread.i.exit_done.thread.i_crit_edge ], [ null, %kcalloc.exit3460.thread.i.exit_done.thread.i_crit_edge ]
  %attrs.14142.i = phi ptr [ %attrs.14173.i, %exit_done.thread4146.i ], [ %call9.i.i.i, %exit_done.i.exit_done.thread.i_crit_edge ], [ null, %if.end35.i.exit_done.thread.i_crit_edge ], [ null, %if.end42.i203.exit_done.thread.i_crit_edge ], [ null, %if.end8.i.i.i.exit_done.thread.i_crit_edge ], [ null, %kcalloc.exit.thread.i.exit_done.thread.i_crit_edge ], [ null, %kcalloc.exit3460.thread.i.exit_done.thread.i_crit_edge ]
  %var_size.14141.i = phi ptr [ %var_size.14172.i, %exit_done.thread4146.i ], [ %call8.i.i3457.i, %exit_done.i.exit_done.thread.i_crit_edge ], [ null, %if.end35.i.exit_done.thread.i_crit_edge ], [ null, %if.end42.i203.exit_done.thread.i_crit_edge ], [ %call8.i.i3457.i, %if.end8.i.i.i.exit_done.thread.i_crit_edge ], [ null, %kcalloc.exit.thread.i.exit_done.thread.i_crit_edge ], [ null, %kcalloc.exit3460.thread.i.exit_done.thread.i_crit_edge ]
  %vars.04140.i = phi ptr [ %vars.04171.i, %exit_done.thread4146.i ], [ %call8.i.i.i, %exit_done.i.exit_done.thread.i_crit_edge ], [ null, %if.end35.i.exit_done.thread.i_crit_edge ], [ null, %if.end42.i203.exit_done.thread.i_crit_edge ], [ %call8.i.i.i, %if.end8.i.i.i.exit_done.thread.i_crit_edge ], [ null, %kcalloc.exit.thread.i.exit_done.thread.i_crit_edge ], [ %call8.i.i.i, %kcalloc.exit3460.thread.i.exit_done.thread.i_crit_edge ]
  %status.64139.i = phi i32 [ 0, %exit_done.thread4146.i ], [ %status.5.i, %exit_done.i.exit_done.thread.i_crit_edge ], [ -5, %if.end35.i.exit_done.thread.i_crit_edge ], [ -12, %if.end42.i203.exit_done.thread.i_crit_edge ], [ -12, %if.end8.i.i.i.exit_done.thread.i_crit_edge ], [ -12, %kcalloc.exit.thread.i.exit_done.thread.i_crit_edge ], [ -12, %kcalloc.exit3460.thread.i.exit_done.thread.i_crit_edge ]
  %206 = phi i32 [ 0, %exit_done.thread4146.i ], [ 1, %exit_done.i.exit_done.thread.i_crit_edge ], [ 1, %if.end35.i.exit_done.thread.i_crit_edge ], [ 1, %if.end42.i203.exit_done.thread.i_crit_edge ], [ 1, %if.end8.i.i.i.exit_done.thread.i_crit_edge ], [ 1, %kcalloc.exit.thread.i.exit_done.thread.i_crit_edge ], [ 1, %kcalloc.exit3460.thread.i.exit_done.thread.i_crit_edge ]
  %call207.i = tail call i32 @altera_jinit(ptr noundef %call7.i.i166) #11
  %207 = ptrtoint ptr %msg_buff1.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 0, ptr %msg_buff1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i195)
  %cmp209.not.i = icmp eq i32 %and.i195, 0
  br i1 %cmp209.not.i, label %exit_done.thread.i.if.end323.i_crit_edge, label %exit_done.thread.i.if.then211.i_crit_edge

exit_done.thread.i.if.then211.i_crit_edge:        ; preds = %exit_done.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then211.i

exit_done.thread.i.if.end323.i_crit_edge:         ; preds = %exit_done.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end323.i

if.then211.i:                                     ; preds = %exit_done.thread.i.if.then211.i_crit_edge, %exit_done.thread.thread4508.i
  %208 = phi i32 [ 1, %exit_done.thread.thread4508.i ], [ %206, %exit_done.thread.i.if.then211.i_crit_edge ]
  %status.641394534.i = phi i32 [ -12, %exit_done.thread.thread4508.i ], [ %status.64139.i, %exit_done.thread.i.if.then211.i_crit_edge ]
  %vars.041404531.i = phi ptr [ %call8.i.i.i, %exit_done.thread.thread4508.i ], [ %vars.04140.i, %exit_done.thread.i.if.then211.i_crit_edge ]
  %var_size.141414528.i = phi ptr [ %call8.i.i3457.i, %exit_done.thread.thread4508.i ], [ %var_size.14141.i, %exit_done.thread.i.if.then211.i_crit_edge ]
  %attrs.141424525.i = phi ptr [ %call9.i.i.i, %exit_done.thread.thread4508.i ], [ %attrs.14142.i, %exit_done.thread.i.if.then211.i_crit_edge ]
  %proc_attributes.141434524.i = phi ptr [ null, %exit_done.thread.thread4508.i ], [ %proc_attributes.14143.i, %exit_done.thread.i.if.then211.i_crit_edge ]
  %action.i = getelementptr inbounds %struct.altera_config, ptr %133, i32 0, i32 1
  %209 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %action.i, align 4
  %cmp212.i = icmp eq ptr %210, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp2174602.not.i = icmp eq i32 %156, 0
  %or.cond4904.i = select i1 %cmp212.i, i1 true, i1 %cmp2174602.not.i
  br i1 %or.cond4904.i, label %if.then211.i.if.end323.thread.i_crit_edge, label %if.then211.i.for.body220.i_crit_edge

if.then211.i.for.body220.i_crit_edge:             ; preds = %if.then211.i
  br label %for.body220.i

if.then211.i.if.end323.thread.i_crit_edge:        ; preds = %if.then211.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end323.thread.i

for.body220.i:                                    ; preds = %for.inc239.i.for.body220.i_crit_edge, %if.then211.i.for.body220.i_crit_edge
  %i.14603.i = phi i32 [ %inc240.i, %for.inc239.i.for.body220.i_crit_edge ], [ 0, %if.then211.i.for.body220.i_crit_edge ]
  %mul221.i = mul i32 %i.14603.i, 12
  %add222.i = add i32 %mul221.i, %142
  %arrayidx223.i = getelementptr i8, ptr %129, i32 %add222.i
  %211 = ptrtoint ptr %arrayidx223.i to i32
  call void @__asan_loadN_noabort(i32 %211, i32 4)
  %212 = load i32, ptr %arrayidx223.i, align 1
  %add225.i = add i32 %212, %146
  %arrayidx226.i = getelementptr i8, ptr %129, i32 %add225.i
  %call228.i = tail call i32 @strlen(ptr noundef %arrayidx226.i) #17
  %call229.i = tail call i32 @strncasecmp(ptr noundef nonnull %210, ptr noundef %arrayidx226.i, i32 noundef %call228.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229.i)
  %cmp230.i = icmp eq i32 %call229.i, 0
  br i1 %cmp230.i, label %if.end245.i, label %for.inc239.i

for.inc239.i:                                     ; preds = %for.body220.i
  %inc240.i = add nuw i32 %i.14603.i, 1
  %exitcond317.not = icmp eq i32 %inc240.i, %156
  br i1 %exitcond317.not, label %for.inc239.i.if.end323.thread.i_crit_edge, label %for.inc239.i.for.body220.i_crit_edge

for.inc239.i.for.body220.i_crit_edge:             ; preds = %for.inc239.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body220.i

for.inc239.i.if.end323.thread.i_crit_edge:        ; preds = %for.inc239.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end323.thread.i

if.end245.i:                                      ; preds = %for.body220.i
  %add235.i = add i32 %add222.i, 8
  %arrayidx236.i = getelementptr i8, ptr %129, i32 %add235.i
  %213 = ptrtoint ptr %arrayidx236.i to i32
  call void @__asan_loadN_noabort(i32 %213, i32 4)
  %214 = load i32, ptr %arrayidx236.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.641394534.i)
  %cmp246.i = icmp eq i32 %status.641394534.i, 0
  br i1 %cmp246.i, label %if.end245.i.while.body.i_crit_edge, label %if.end245.i.if.end323.i_crit_edge

if.end245.i.if.end323.i_crit_edge:                ; preds = %if.end245.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end323.i

if.end245.i.while.body.i_crit_edge:               ; preds = %if.end245.i
  br label %while.body.i

while.cond265.preheader.i:                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %cmp266.not4609.i = icmp eq i32 %214, 0
  br i1 %cmp266.not4609.i, label %land.lhs.true295.i, label %land.rhs268.lr.ph.i

land.rhs268.lr.ph.i:                              ; preds = %while.cond265.preheader.i
  %add283.i = add i32 %144, 4
  br label %land.rhs268.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end245.i.while.body.i_crit_edge
  %i.24608.i = phi i32 [ %220, %while.body.i.while.body.i_crit_edge ], [ %214, %if.end245.i.while.body.i_crit_edge ]
  %mul252.i = mul i32 %i.24608.i, 13
  %add253.i = add i32 %mul252.i, %144
  %add254.i = add i32 %add253.i, 8
  %arrayidx255.i = getelementptr i8, ptr %129, i32 %add254.i
  %215 = ptrtoint ptr %arrayidx255.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx255.i, align 1
  %217 = and i8 %216, 3
  %arrayidx259.i = getelementptr i8, ptr %proc_attributes.141434524.i, i32 %i.24608.i
  %218 = ptrtoint ptr %arrayidx259.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %217, ptr %arrayidx259.i, align 1
  %add262.i = add i32 %add253.i, 4
  %arrayidx263.i = getelementptr i8, ptr %129, i32 %add262.i
  %219 = ptrtoint ptr %arrayidx263.i to i32
  call void @__asan_loadN_noabort(i32 %219, i32 4)
  %220 = load i32, ptr %arrayidx263.i, align 1
  %cmp249.not.not.i = icmp eq i32 %220, 0
  br i1 %cmp249.not.not.i, label %while.cond265.preheader.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

land.rhs268.i:                                    ; preds = %while.body281.i.land.rhs268.i_crit_edge, %land.rhs268.lr.ph.i
  %i.34610.i = phi i32 [ %214, %land.rhs268.lr.ph.i ], [ %225, %while.body281.i.land.rhs268.i_crit_edge ]
  %arrayidx269.i = getelementptr i8, ptr %proc_attributes.141434524.i, i32 %i.34610.i
  %221 = ptrtoint ptr %arrayidx269.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx269.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %222)
  %cmp271.i = icmp eq i8 %222, 1
  %223 = and i8 %222, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %223)
  %cmp277.i = icmp eq i8 %223, 64
  %or.cond3398.i = or i1 %cmp271.i, %cmp277.i
  br i1 %or.cond3398.i, label %while.body281.i, label %land.rhs268.i.if.then306.i_crit_edge

land.rhs268.i.if.then306.i_crit_edge:             ; preds = %land.rhs268.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then306.i

while.body281.i:                                  ; preds = %land.rhs268.i
  %mul282.i = mul i32 %i.34610.i, 13
  %add284.i = add i32 %add283.i, %mul282.i
  %arrayidx285.i = getelementptr i8, ptr %129, i32 %add284.i
  %224 = ptrtoint ptr %arrayidx285.i to i32
  call void @__asan_loadN_noabort(i32 %224, i32 4)
  %225 = load i32, ptr %arrayidx285.i, align 1
  %cmp266.not.i = icmp eq i32 %225, 0
  br i1 %cmp266.not.i, label %while.body281.i.if.end323.thread.i_crit_edge, label %while.body281.i.land.rhs268.i_crit_edge

while.body281.i.land.rhs268.i_crit_edge:          ; preds = %while.body281.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs268.i

while.body281.i.if.end323.thread.i_crit_edge:     ; preds = %while.body281.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end323.thread.i

land.lhs.true295.i:                               ; preds = %while.cond265.preheader.i
  %226 = ptrtoint ptr %proc_attributes.141434524.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %proc_attributes.141434524.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %227)
  %cmp298.not.i = icmp eq i8 %227, 1
  %228 = and i8 %227, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %228)
  %cmp304.not.i = icmp eq i8 %228, 64
  %or.cond3399.i = or i1 %cmp298.not.i, %cmp304.not.i
  br i1 %or.cond3399.i, label %land.lhs.true295.i.if.end323.thread.i_crit_edge, label %land.lhs.true295.i.if.then306.i_crit_edge

land.lhs.true295.i.if.then306.i_crit_edge:        ; preds = %land.lhs.true295.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then306.i

land.lhs.true295.i.if.end323.thread.i_crit_edge:  ; preds = %land.lhs.true295.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end323.thread.i

if.then306.i:                                     ; preds = %land.lhs.true295.i.if.then306.i_crit_edge, %land.rhs268.i.if.then306.i_crit_edge
  %i.34593.i = phi i32 [ 0, %land.lhs.true295.i.if.then306.i_crit_edge ], [ %i.34610.i, %land.rhs268.i.if.then306.i_crit_edge ]
  %mul307.i = mul i32 %i.34593.i, 13
  %add308.i = add i32 %144, 9
  %add309.i = add i32 %add308.i, %mul307.i
  %arrayidx310.i = getelementptr i8, ptr %129, i32 %add309.i
  %229 = ptrtoint ptr %arrayidx310.i to i32
  call void @__asan_loadN_noabort(i32 %229, i32 4)
  %230 = load i32, ptr %arrayidx310.i, align 1
  %add312.i = add i32 %230, %152
  call void @__sanitizer_cov_trace_cmp4(i32 %add312.i, i32 %152)
  %cmp313.i = icmp uge i32 %add312.i, %152
  call void @__sanitizer_cov_trace_cmp4(i32 %add312.i, i32 %154)
  %cmp316.not.i = icmp ult i32 %add312.i, %154
  %or.cond3400.i = select i1 %cmp313.i, i1 %cmp316.not.i, i1 false
  %spec.select.i209 = select i1 %or.cond3400.i, i32 0, i32 -34
  br label %if.end323.i

if.end323.thread.i:                               ; preds = %land.lhs.true295.i.if.end323.thread.i_crit_edge, %while.body281.i.if.end323.thread.i_crit_edge, %for.inc239.i.if.end323.thread.i_crit_edge, %if.then211.i.if.end323.thread.i_crit_edge, %exit_done.thread.thread.i
  %format_version.2 = phi i32 [ %add.i196, %if.then211.i.if.end323.thread.i_crit_edge ], [ %add.i196, %land.lhs.true295.i.if.end323.thread.i_crit_edge ], [ %format_version.1238, %exit_done.thread.thread.i ], [ %add.i196, %while.body281.i.if.end323.thread.i_crit_edge ], [ %add.i196, %for.inc239.i.if.end323.thread.i_crit_edge ]
  %sym_count.0406441324506.ph.i = phi i32 [ %160, %if.then211.i.if.end323.thread.i_crit_edge ], [ %160, %land.lhs.true295.i.if.end323.thread.i_crit_edge ], [ 0, %exit_done.thread.thread.i ], [ %160, %while.body281.i.if.end323.thread.i_crit_edge ], [ %160, %for.inc239.i.if.end323.thread.i_crit_edge ]
  %vars.041404501.ph.i = phi ptr [ %vars.041404531.i, %if.then211.i.if.end323.thread.i_crit_edge ], [ %vars.041404531.i, %land.lhs.true295.i.if.end323.thread.i_crit_edge ], [ null, %exit_done.thread.thread.i ], [ %vars.041404531.i, %while.body281.i.if.end323.thread.i_crit_edge ], [ %vars.041404531.i, %for.inc239.i.if.end323.thread.i_crit_edge ]
  %var_size.141414500.ph.i = phi ptr [ %var_size.141414528.i, %if.then211.i.if.end323.thread.i_crit_edge ], [ %var_size.141414528.i, %land.lhs.true295.i.if.end323.thread.i_crit_edge ], [ null, %exit_done.thread.thread.i ], [ %var_size.141414528.i, %while.body281.i.if.end323.thread.i_crit_edge ], [ %var_size.141414528.i, %for.inc239.i.if.end323.thread.i_crit_edge ]
  %attrs.141424499.ph.i = phi ptr [ %attrs.141424525.i, %if.then211.i.if.end323.thread.i_crit_edge ], [ %attrs.141424525.i, %land.lhs.true295.i.if.end323.thread.i_crit_edge ], [ null, %exit_done.thread.thread.i ], [ %attrs.141424525.i, %while.body281.i.if.end323.thread.i_crit_edge ], [ %attrs.141424525.i, %for.inc239.i.if.end323.thread.i_crit_edge ]
  %proc_attributes.14144.ph.i = phi ptr [ %proc_attributes.141434524.i, %if.then211.i.if.end323.thread.i_crit_edge ], [ %proc_attributes.141434524.i, %land.lhs.true295.i.if.end323.thread.i_crit_edge ], [ null, %exit_done.thread.thread.i ], [ %proc_attributes.141434524.i, %while.body281.i.if.end323.thread.i_crit_edge ], [ %proc_attributes.141434524.i, %for.inc239.i.if.end323.thread.i_crit_edge ]
  %status.8.ph.i = phi i32 [ -22, %if.then211.i.if.end323.thread.i_crit_edge ], [ 0, %land.lhs.true295.i.if.end323.thread.i_crit_edge ], [ -5, %exit_done.thread.thread.i ], [ 0, %while.body281.i.if.end323.thread.i_crit_edge ], [ -22, %for.inc239.i.if.end323.thread.i_crit_edge ]
  %231 = ptrtoint ptr %msg_buff1.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 0, ptr %msg_buff1.i, align 8
  br label %while.end2143.i

if.end323.i:                                      ; preds = %if.then306.i, %if.end245.i.if.end323.i_crit_edge, %exit_done.thread.i.if.end323.i_crit_edge
  %cmp209.not4507.i = phi i1 [ true, %exit_done.thread.i.if.end323.i_crit_edge ], [ false, %if.end245.i.if.end323.i_crit_edge ], [ false, %if.then306.i ]
  %vars.041404501.i = phi ptr [ %vars.04140.i, %exit_done.thread.i.if.end323.i_crit_edge ], [ %vars.041404531.i, %if.end245.i.if.end323.i_crit_edge ], [ %vars.041404531.i, %if.then306.i ]
  %var_size.141414500.i = phi ptr [ %var_size.14141.i, %exit_done.thread.i.if.end323.i_crit_edge ], [ %var_size.141414528.i, %if.end245.i.if.end323.i_crit_edge ], [ %var_size.141414528.i, %if.then306.i ]
  %attrs.141424499.i = phi ptr [ %attrs.14142.i, %exit_done.thread.i.if.end323.i_crit_edge ], [ %attrs.141424525.i, %if.end245.i.if.end323.i_crit_edge ], [ %attrs.141424525.i, %if.then306.i ]
  %proc_attributes.14144.i = phi ptr [ %proc_attributes.14143.i, %exit_done.thread.i.if.end323.i_crit_edge ], [ %proc_attributes.141434524.i, %if.end245.i.if.end323.i_crit_edge ], [ %proc_attributes.141434524.i, %if.then306.i ]
  %status.8.i = phi i32 [ %status.64139.i, %exit_done.thread.i.if.end323.i_crit_edge ], [ %status.641394534.i, %if.end245.i.if.end323.i_crit_edge ], [ %spec.select.i209, %if.then306.i ]
  %pc.1.i = phi i32 [ %152, %exit_done.thread.i.if.end323.i_crit_edge ], [ %152, %if.end245.i.if.end323.i_crit_edge ], [ %add312.i, %if.then306.i ]
  %done.5.i = phi i32 [ %206, %exit_done.thread.i.if.end323.i_crit_edge ], [ %208, %if.end245.i.if.end323.i_crit_edge ], [ %208, %if.then306.i ]
  %current_proc.4.i = phi i32 [ 0, %exit_done.thread.i.if.end323.i_crit_edge ], [ %214, %if.end245.i.if.end323.i_crit_edge ], [ %i.34593.i, %if.then306.i ]
  %232 = ptrtoint ptr %msg_buff1.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 0, ptr %msg_buff1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done.5.i)
  %tobool326.not4661.i = icmp eq i32 %done.5.i, 0
  br i1 %tobool326.not4661.i, label %while.body328.lr.ph.i, label %if.end323.i.while.end2143.i_crit_edge

if.end323.i.while.end2143.i_crit_edge:            ; preds = %if.end323.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

while.body328.lr.ph.i:                            ; preds = %if.end323.i
  %arrayidx162.i.i = getelementptr inbounds [73 x i8], ptr %string.i.i, i32 0, i32 72
  %js1438.i = getelementptr inbounds %struct.altera_state, ptr %call7.i.i166, i32 0, i32 1
  %cmp209.not.not.i = xor i1 %cmp209.not4507.i, true
  %add525.pn.in.i = add i32 %144, 4
  %add556.i = add i32 %144, 9
  %uglygep.i = getelementptr i8, ptr %129, i32 1
  %233 = getelementptr inbounds i8, ptr %string.i.i, i32 1
  br label %while.body328.i

while.body328.i:                                  ; preds = %sw.epilog.i.thread.while.body328.i_crit_edge, %while.body328.lr.ph.i
  %current_proc.54674.i = phi i32 [ %current_proc.4.i, %while.body328.lr.ph.i ], [ %current_proc.6.i269, %sw.epilog.i.thread.while.body328.i_crit_edge ]
  %stack_ptr.04665.i = phi i32 [ 0, %while.body328.lr.ph.i ], [ %stack_ptr.12.i267, %sw.epilog.i.thread.while.body328.i_crit_edge ]
  %pc.24664.i = phi i32 [ %pc.1.i, %while.body328.lr.ph.i ], [ %pc.5.i266, %sw.epilog.i.thread.while.body328.i_crit_edge ]
  %status.94662.i = phi i32 [ %status.8.i, %while.body328.lr.ph.i ], [ 0, %sw.epilog.i.thread.while.body328.i_crit_edge ]
  %arrayidx329.i = getelementptr i8, ptr %129, i32 %pc.24664.i
  %234 = ptrtoint ptr %arrayidx329.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %arrayidx329.i, align 1
  %conv330.i = zext i8 %235 to i32
  %inc332.i = add i32 %pc.24664.i, 1
  %236 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %236)
  %cmp333.i = icmp sgt i32 %236, 1
  br i1 %cmp333.i, label %do.end338.i, label %while.body328.i.if.end341.i_crit_edge

while.body328.i.if.end341.i_crit_edge:            ; preds = %while.body328.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end341.i

do.end338.i:                                      ; preds = %while.body328.i
  call void @__sanitizer_cov_trace_pc() #13
  %call340.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %conv330.i) #15
  br label %if.end341.i

if.end341.i:                                      ; preds = %do.end338.i, %while.body328.i.if.end341.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %235)
  %cmp3444612.not.i = icmp ult i8 %235, 64
  br i1 %cmp3444612.not.i, label %if.end341.i.for.end353.i_crit_edge, label %for.body346.preheader.i

if.end341.i.for.end353.i_crit_edge:               ; preds = %if.end341.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end353.i

for.body346.preheader.i:                          ; preds = %if.end341.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i = lshr i32 %conv330.i, 6
  %uglygep4688.i = getelementptr i8, ptr %uglygep.i, i32 %pc.24664.i
  %umax4689.i = call i32 @llvm.umax.i32(i32 %shr.i, i32 1) #11
  %237 = shl nuw nsw i32 %umax4689.i, 2
  %238 = call ptr @memcpy(ptr %args.i, ptr %uglygep4688.i, i32 %237)
  %239 = add i32 %237, %inc332.i
  br label %for.end353.i

for.end353.i:                                     ; preds = %for.body346.preheader.i, %if.end341.i.for.end353.i_crit_edge
  %pc.3.lcssa.i = phi i32 [ %inc332.i, %if.end341.i.for.end353.i_crit_edge ], [ %239, %for.body346.preheader.i ]
  %240 = zext i8 %235 to i64
  call void @__sanitizer_cov_trace_switch(i64 %240, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %235, label %for.end353.i.while.end2143.i_crit_edge [
    i8 0, label %for.end353.i.sw.epilog.i.thread_crit_edge
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb361.i
    i8 3, label %sw.bb374.i
    i8 4, label %sw.bb383.i
    i8 5, label %sw.bb393.i
    i8 6, label %sw.bb403.i
    i8 7, label %sw.bb413.i
    i8 8, label %sw.bb422.i
    i8 9, label %sw.bb431.i
    i8 10, label %sw.bb441.i
    i8 11, label %sw.bb448.i
    i8 12, label %sw.bb458.i
    i8 13, label %sw.bb468.i
    i8 14, label %sw.bb478.i
    i8 15, label %sw.bb488.i
    i8 16, label %sw.bb502.i
    i8 17, label %sw.bb516.i
    i8 18, label %sw.bb585.i
    i8 19, label %sw.bb616.i
    i8 20, label %sw.bb626.i
    i8 21, label %sw.bb638.i
    i8 22, label %sw.bb650.i
    i8 23, label %sw.bb667.i
    i8 24, label %sw.bb679.i
    i8 28, label %sw.bb696.i
    i8 29, label %sw.bb704.i
    i8 30, label %sw.bb717.i
    i8 31, label %sw.bb726.i
    i8 32, label %sw.bb739.i
    i8 33, label %sw.bb748.i
    i8 34, label %sw.bb761.i
    i8 35, label %sw.bb770.i
    i8 36, label %sw.bb783.i
    i8 37, label %sw.bb804.i
    i8 38, label %sw.bb811.i
    i8 39, label %sw.bb825.i
    i8 44, label %sw.bb831.i
    i8 45, label %sw.bb847.i
    i8 47, label %sw.bb944.i
    i8 64, label %sw.bb947.i
    i8 65, label %sw.bb951.i
    i8 66, label %sw.bb956.i
    i8 67, label %sw.bb966.i
    i8 68, label %sw.bb978.i
    i8 69, label %sw.bb1020.i
    i8 71, label %sw.bb1028.i
    i8 72, label %sw.bb1031.i
    i8 73, label %sw.bb1034.i
    i8 74, label %sw.bb1038.i
    i8 75, label %sw.bb1042.i
    i8 76, label %sw.bb1057.i
    i8 77, label %sw.bb1068.i
    i8 78, label %sw.bb1077.i
    i8 79, label %sw.bb1139.i
    i8 80, label %sw.bb1269.i
    i8 81, label %for.end353.i.sw.bb1289.i_crit_edge
    i8 82, label %for.end353.i.sw.bb1289.i_crit_edge540
    i8 83, label %sw.bb1364.i
    i8 84, label %sw.bb1383.i
    i8 85, label %sw.bb1402.i
    i8 86, label %sw.bb1421.i
    i8 87, label %sw.bb1440.i
    i8 88, label %sw.bb1450.i
    i8 89, label %sw.bb1485.i
    i8 90, label %sw.bb1538.i
    i8 92, label %sw.bb1593.i
    i8 -128, label %sw.bb1675.i
    i8 -126, label %for.end353.i.sw.bb1857.i_crit_edge
    i8 -125, label %for.end353.i.sw.bb1857.i_crit_edge541
    i8 -124, label %sw.bb1985.i
    i8 -64, label %sw.bb2026.i
  ]

for.end353.i.sw.bb1857.i_crit_edge541:            ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1857.i

for.end353.i.sw.bb1857.i_crit_edge:               ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1857.i

for.end353.i.sw.bb1289.i_crit_edge540:            ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1289.i

for.end353.i.sw.bb1289.i_crit_edge:               ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1289.i

for.end353.i.sw.epilog.i.thread_crit_edge:        ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.thread

for.end353.i.while.end2143.i_crit_edge:           ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

sw.bb.i:                                          ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stack_ptr.04665.i)
  %cmp.i.i = icmp eq i32 %stack_ptr.04665.i, 0
  br i1 %cmp.i.i, label %sw.bb.i.while.end2143.i_crit_edge, label %if.then356.i

sw.bb.i.while.end2143.i_crit_edge:                ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then356.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i210 = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx357.i = getelementptr i32, ptr %stack2.i, i32 %sub.i210
  %241 = ptrtoint ptr %arrayidx357.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx357.i, align 4
  %arrayidx358.i = getelementptr i32, ptr %stack2.i, i32 %stack_ptr.04665.i
  %243 = ptrtoint ptr %arrayidx358.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %242, ptr %arrayidx358.i, align 4
  %inc359.i = add nuw nsw i32 %stack_ptr.04665.i, 1
  br label %sw.epilog.i

sw.bb361.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3552.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3552.i, label %sw.bb361.i.while.end2143.i_crit_edge, label %if.then364.i

sw.bb361.i.while.end2143.i_crit_edge:             ; preds = %sw.bb361.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then364.i:                                     ; preds = %sw.bb361.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub365.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx366.i = getelementptr i32, ptr %stack2.i, i32 %sub365.i
  %244 = ptrtoint ptr %arrayidx366.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx366.i, align 4
  %sub367.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx368.i = getelementptr i32, ptr %stack2.i, i32 %sub367.i
  %246 = ptrtoint ptr %arrayidx368.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx368.i, align 4
  store i32 %247, ptr %arrayidx366.i, align 4
  store i32 %245, ptr %arrayidx368.i, align 4
  br label %sw.epilog.i.thread

sw.bb374.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3556.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3556.i, label %sw.bb374.i.while.end2143.i_crit_edge, label %if.then377.i

sw.bb374.i.while.end2143.i_crit_edge:             ; preds = %sw.bb374.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then377.i:                                     ; preds = %sw.bb374.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx378.i = getelementptr i32, ptr %stack2.i, i32 %dec.i
  %248 = ptrtoint ptr %arrayidx378.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx378.i, align 4
  %sub379.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx380.i = getelementptr i32, ptr %stack2.i, i32 %sub379.i
  %250 = ptrtoint ptr %arrayidx380.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx380.i, align 4
  %add381.i = add i32 %251, %249
  store i32 %add381.i, ptr %arrayidx380.i, align 4
  br label %sw.epilog.i.thread

sw.bb383.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3560.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3560.i, label %sw.bb383.i.while.end2143.i_crit_edge, label %if.then386.i

sw.bb383.i.while.end2143.i_crit_edge:             ; preds = %sw.bb383.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then386.i:                                     ; preds = %sw.bb383.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec387.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx388.i = getelementptr i32, ptr %stack2.i, i32 %dec387.i
  %252 = ptrtoint ptr %arrayidx388.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx388.i, align 4
  %sub389.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx390.i = getelementptr i32, ptr %stack2.i, i32 %sub389.i
  %254 = ptrtoint ptr %arrayidx390.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx390.i, align 4
  %sub391.i = sub i32 %255, %253
  store i32 %sub391.i, ptr %arrayidx390.i, align 4
  br label %sw.epilog.i.thread

sw.bb393.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3564.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3564.i, label %sw.bb393.i.while.end2143.i_crit_edge, label %if.then396.i

sw.bb393.i.while.end2143.i_crit_edge:             ; preds = %sw.bb393.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then396.i:                                     ; preds = %sw.bb393.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec397.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx398.i = getelementptr i32, ptr %stack2.i, i32 %dec397.i
  %256 = ptrtoint ptr %arrayidx398.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx398.i, align 4
  %sub399.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx400.i = getelementptr i32, ptr %stack2.i, i32 %sub399.i
  %258 = ptrtoint ptr %arrayidx400.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx400.i, align 4
  %mul401.i = mul i32 %259, %257
  store i32 %mul401.i, ptr %arrayidx400.i, align 4
  br label %sw.epilog.i.thread

sw.bb403.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3568.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3568.i, label %sw.bb403.i.while.end2143.i_crit_edge, label %if.then406.i

sw.bb403.i.while.end2143.i_crit_edge:             ; preds = %sw.bb403.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then406.i:                                     ; preds = %sw.bb403.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec407.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx408.i = getelementptr i32, ptr %stack2.i, i32 %dec407.i
  %260 = ptrtoint ptr %arrayidx408.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx408.i, align 4
  %sub409.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx410.i = getelementptr i32, ptr %stack2.i, i32 %sub409.i
  %262 = ptrtoint ptr %arrayidx410.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx410.i, align 4
  %div411.i = sdiv i32 %263, %261
  store i32 %div411.i, ptr %arrayidx410.i, align 4
  br label %sw.epilog.i.thread

sw.bb413.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3572.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3572.i, label %sw.bb413.i.while.end2143.i_crit_edge, label %if.then416.i

sw.bb413.i.while.end2143.i_crit_edge:             ; preds = %sw.bb413.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then416.i:                                     ; preds = %sw.bb413.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec417.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx418.i = getelementptr i32, ptr %stack2.i, i32 %dec417.i
  %264 = ptrtoint ptr %arrayidx418.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx418.i, align 4
  %sub419.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx420.i = getelementptr i32, ptr %stack2.i, i32 %sub419.i
  %266 = ptrtoint ptr %arrayidx420.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %arrayidx420.i, align 4
  %rem.i = srem i32 %267, %265
  store i32 %rem.i, ptr %arrayidx420.i, align 4
  br label %sw.epilog.i.thread

sw.bb422.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3576.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3576.i, label %sw.bb422.i.while.end2143.i_crit_edge, label %if.then425.i

sw.bb422.i.while.end2143.i_crit_edge:             ; preds = %sw.bb422.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then425.i:                                     ; preds = %sw.bb422.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec426.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx427.i = getelementptr i32, ptr %stack2.i, i32 %dec426.i
  %268 = ptrtoint ptr %arrayidx427.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %arrayidx427.i, align 4
  %sub428.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx429.i = getelementptr i32, ptr %stack2.i, i32 %sub428.i
  %270 = ptrtoint ptr %arrayidx429.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %arrayidx429.i, align 4
  %shl.i = shl i32 %271, %269
  store i32 %shl.i, ptr %arrayidx429.i, align 4
  br label %sw.epilog.i.thread

sw.bb431.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3580.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3580.i, label %sw.bb431.i.while.end2143.i_crit_edge, label %if.then434.i

sw.bb431.i.while.end2143.i_crit_edge:             ; preds = %sw.bb431.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then434.i:                                     ; preds = %sw.bb431.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec435.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx436.i = getelementptr i32, ptr %stack2.i, i32 %dec435.i
  %272 = ptrtoint ptr %arrayidx436.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %arrayidx436.i, align 4
  %sub437.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx438.i = getelementptr i32, ptr %stack2.i, i32 %sub437.i
  %274 = ptrtoint ptr %arrayidx438.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %arrayidx438.i, align 4
  %shr439.i = ashr i32 %275, %273
  store i32 %shr439.i, ptr %arrayidx438.i, align 4
  br label %sw.epilog.i.thread

sw.bb441.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stack_ptr.04665.i)
  %cmp.i3584.i = icmp eq i32 %stack_ptr.04665.i, 0
  br i1 %cmp.i3584.i, label %sw.bb441.i.while.end2143.i_crit_edge, label %if.then444.i

sw.bb441.i.while.end2143.i_crit_edge:             ; preds = %sw.bb441.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then444.i:                                     ; preds = %sw.bb441.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub445.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx446.i = getelementptr i32, ptr %stack2.i, i32 %sub445.i
  %276 = ptrtoint ptr %arrayidx446.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %arrayidx446.i, align 4
  %xor.i211 = xor i32 %277, -1
  store i32 %xor.i211, ptr %arrayidx446.i, align 4
  br label %sw.epilog.i.thread

sw.bb448.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3588.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3588.i, label %sw.bb448.i.while.end2143.i_crit_edge, label %if.then451.i

sw.bb448.i.while.end2143.i_crit_edge:             ; preds = %sw.bb448.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then451.i:                                     ; preds = %sw.bb448.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec452.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx453.i = getelementptr i32, ptr %stack2.i, i32 %dec452.i
  %278 = ptrtoint ptr %arrayidx453.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %arrayidx453.i, align 4
  %sub454.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx455.i = getelementptr i32, ptr %stack2.i, i32 %sub454.i
  %280 = ptrtoint ptr %arrayidx455.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %arrayidx455.i, align 4
  %and456.i = and i32 %281, %279
  store i32 %and456.i, ptr %arrayidx455.i, align 4
  br label %sw.epilog.i.thread

sw.bb458.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3592.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3592.i, label %sw.bb458.i.while.end2143.i_crit_edge, label %if.then461.i

sw.bb458.i.while.end2143.i_crit_edge:             ; preds = %sw.bb458.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then461.i:                                     ; preds = %sw.bb458.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec462.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx463.i = getelementptr i32, ptr %stack2.i, i32 %dec462.i
  %282 = ptrtoint ptr %arrayidx463.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %arrayidx463.i, align 4
  %sub464.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx465.i = getelementptr i32, ptr %stack2.i, i32 %sub464.i
  %284 = ptrtoint ptr %arrayidx465.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %arrayidx465.i, align 4
  %or466.i = or i32 %285, %283
  store i32 %or466.i, ptr %arrayidx465.i, align 4
  br label %sw.epilog.i.thread

sw.bb468.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3596.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3596.i, label %sw.bb468.i.while.end2143.i_crit_edge, label %if.then471.i

sw.bb468.i.while.end2143.i_crit_edge:             ; preds = %sw.bb468.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then471.i:                                     ; preds = %sw.bb468.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec472.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx473.i = getelementptr i32, ptr %stack2.i, i32 %dec472.i
  %286 = ptrtoint ptr %arrayidx473.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %arrayidx473.i, align 4
  %sub474.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx475.i = getelementptr i32, ptr %stack2.i, i32 %sub474.i
  %288 = ptrtoint ptr %arrayidx475.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %arrayidx475.i, align 4
  %xor476.i = xor i32 %289, %287
  store i32 %xor476.i, ptr %arrayidx475.i, align 4
  br label %sw.epilog.i.thread

sw.bb478.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stack_ptr.04665.i)
  %cmp.i3600.i = icmp eq i32 %stack_ptr.04665.i, 0
  br i1 %cmp.i3600.i, label %sw.bb478.i.while.end2143.i_crit_edge, label %if.end482.i

sw.bb478.i.while.end2143.i_crit_edge:             ; preds = %sw.bb478.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end482.i:                                      ; preds = %sw.bb478.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub483.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx484.i = getelementptr i32, ptr %stack2.i, i32 %sub483.i
  %290 = ptrtoint ptr %arrayidx484.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %arrayidx484.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %291)
  %tobool485.not.i = icmp eq i32 %291, 0
  %cond.i = zext i1 %tobool485.not.i to i32
  %292 = ptrtoint ptr %arrayidx484.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %cond.i, ptr %arrayidx484.i, align 4
  br label %sw.epilog.i.thread

sw.bb488.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3604.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3604.i, label %sw.bb488.i.while.end2143.i_crit_edge, label %if.end492.i

sw.bb488.i.while.end2143.i_crit_edge:             ; preds = %sw.bb488.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end492.i:                                      ; preds = %sw.bb488.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec493.i = add nsw i32 %stack_ptr.04665.i, -1
  %sub494.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx495.i = getelementptr i32, ptr %stack2.i, i32 %sub494.i
  %293 = ptrtoint ptr %arrayidx495.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %arrayidx495.i, align 4
  %arrayidx496.i = getelementptr i32, ptr %stack2.i, i32 %dec493.i
  %295 = ptrtoint ptr %arrayidx496.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %arrayidx496.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %294, i32 %296)
  %cmp497.i = icmp sgt i32 %294, %296
  %cond499.i = zext i1 %cmp497.i to i32
  %297 = ptrtoint ptr %arrayidx495.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %cond499.i, ptr %arrayidx495.i, align 4
  br label %sw.epilog.i.thread

sw.bb502.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3608.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3608.i, label %sw.bb502.i.while.end2143.i_crit_edge, label %if.end506.i

sw.bb502.i.while.end2143.i_crit_edge:             ; preds = %sw.bb502.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end506.i:                                      ; preds = %sw.bb502.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec507.i = add nsw i32 %stack_ptr.04665.i, -1
  %sub508.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx509.i = getelementptr i32, ptr %stack2.i, i32 %sub508.i
  %298 = ptrtoint ptr %arrayidx509.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %arrayidx509.i, align 4
  %arrayidx510.i = getelementptr i32, ptr %stack2.i, i32 %dec507.i
  %300 = ptrtoint ptr %arrayidx510.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %arrayidx510.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %299, i32 %301)
  %cmp511.i = icmp slt i32 %299, %301
  %cond513.i = zext i1 %cmp511.i to i32
  %302 = ptrtoint ptr %arrayidx509.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 %cond513.i, ptr %arrayidx509.i, align 4
  br label %sw.epilog.i.thread

sw.bb516.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stack_ptr.04665.i)
  %cmp520.i = icmp eq i32 %stack_ptr.04665.i, 0
  %or.cond3401.i = select i1 %cmp209.not.not.i, i1 %cmp520.i, i1 false
  br i1 %or.cond3401.i, label %sw.bb516.i.while.cond528.i_crit_edge, label %if.else569.i

sw.bb516.i.while.cond528.i_crit_edge:             ; preds = %sw.bb516.i
  br label %while.cond528.i

while.cond528.i:                                  ; preds = %land.rhs531.i.while.cond528.i_crit_edge, %sw.bb516.i.while.cond528.i_crit_edge
  %mul523.pn.in.i = phi i32 [ %i.5.i, %land.rhs531.i.while.cond528.i_crit_edge ], [ %current_proc.54674.i, %sw.bb516.i.while.cond528.i_crit_edge ]
  %mul523.pn.i = mul i32 %mul523.pn.in.i, 13
  %add525.pn.i = add i32 %add525.pn.in.i, %mul523.pn.i
  %i.5.in.i = getelementptr i8, ptr %129, i32 %add525.pn.i
  %303 = ptrtoint ptr %i.5.in.i to i32
  call void @__asan_loadN_noabort(i32 %303, i32 4)
  %i.5.i = load i32, ptr %i.5.in.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.5.i)
  %cond3426.i = icmp eq i32 %i.5.i, 0
  br i1 %cond3426.i, label %while.cond528.i.while.end2143.i_crit_edge, label %land.rhs531.i

while.cond528.i.while.end2143.i_crit_edge:        ; preds = %while.cond528.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

land.rhs531.i:                                    ; preds = %while.cond528.i
  %arrayidx532.i = getelementptr i8, ptr %proc_attributes.14144.i, i32 %i.5.i
  %304 = ptrtoint ptr %arrayidx532.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %arrayidx532.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %305)
  %cmp534.i = icmp eq i8 %305, 1
  %306 = and i8 %305, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %306)
  %cmp540.i = icmp eq i8 %306, 64
  %or.cond3402.i = or i1 %cmp534.i, %cmp540.i
  br i1 %or.cond3402.i, label %land.rhs531.i.while.cond528.i_crit_edge, label %if.else554.i

land.rhs531.i.while.cond528.i_crit_edge:          ; preds = %land.rhs531.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond528.i

if.else554.i:                                     ; preds = %land.rhs531.i
  %mul555.i = mul i32 %i.5.i, 13
  %add557.i = add i32 %add556.i, %mul555.i
  %arrayidx558.i = getelementptr i8, ptr %129, i32 %add557.i
  %307 = ptrtoint ptr %arrayidx558.i to i32
  call void @__asan_loadN_noabort(i32 %307, i32 4)
  %308 = load i32, ptr %arrayidx558.i, align 1
  %add560.i = add i32 %308, %152
  call void @__sanitizer_cov_trace_cmp4(i32 %add560.i, i32 %152)
  %cmp561.i = icmp uge i32 %add560.i, %152
  call void @__sanitizer_cov_trace_cmp4(i32 %add560.i, i32 %154)
  %cmp564.not.i = icmp ult i32 %add560.i, %154
  %or.cond3403.i = select i1 %cmp561.i, i1 %cmp564.not.i, i1 false
  br i1 %or.cond3403.i, label %if.else554.i.sw.epilog.i.thread_crit_edge, label %if.else554.i.while.end2143.i_crit_edge

if.else554.i.while.end2143.i_crit_edge:           ; preds = %if.else554.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.else554.i.sw.epilog.i.thread_crit_edge:        ; preds = %if.else554.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.thread

if.else569.i:                                     ; preds = %sw.bb516.i
  br i1 %cmp520.i, label %if.else569.i.while.end2143.i_crit_edge, label %if.then572.i

if.else569.i.while.end2143.i_crit_edge:           ; preds = %if.else569.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then572.i:                                     ; preds = %if.else569.i
  %dec573.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx574.i = getelementptr i32, ptr %stack2.i, i32 %dec573.i
  %309 = ptrtoint ptr %arrayidx574.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %arrayidx574.i, align 4
  %add575.i = add i32 %310, %152
  call void @__sanitizer_cov_trace_cmp4(i32 %add575.i, i32 %152)
  %cmp576.not.i = icmp ugt i32 %add575.i, %152
  call void @__sanitizer_cov_trace_cmp4(i32 %add575.i, i32 %154)
  %cmp579.not.i = icmp ult i32 %add575.i, %154
  %or.cond3404.i = select i1 %cmp576.not.i, i1 %cmp579.not.i, i1 false
  br i1 %or.cond3404.i, label %if.then572.i.sw.epilog.i.thread_crit_edge, label %if.then572.i.while.end2143.i_crit_edge

if.then572.i.while.end2143.i_crit_edge:           ; preds = %if.then572.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then572.i.sw.epilog.i.thread_crit_edge:        ; preds = %if.then572.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.thread

sw.bb585.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %stack_ptr.04665.i)
  %cmp.i3616.i = icmp ult i32 %stack_ptr.04665.i, 4
  br i1 %cmp.i3616.i, label %sw.bb585.i.while.end2143.i_crit_edge, label %if.then588.i

sw.bb585.i.while.end2143.i_crit_edge:             ; preds = %sw.bb585.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then588.i:                                     ; preds = %sw.bb585.i
  %sub595.i = add nsw i32 %stack_ptr.04665.i, -4
  %arrayidx596.i = getelementptr i32, ptr %stack2.i, i32 %sub595.i
  %311 = ptrtoint ptr %arrayidx596.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %arrayidx596.i, align 4
  %313 = add i32 %312, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %313)
  %314 = icmp ult i32 %313, -32
  br i1 %314, label %if.then588.i.while.end2143.i_crit_edge, label %if.else603.i

if.then588.i.while.end2143.i_crit_edge:           ; preds = %if.then588.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.else603.i:                                     ; preds = %if.then588.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec593.i = add nsw i32 %stack_ptr.04665.i, -3
  %arrayidx594.i = getelementptr i32, ptr %stack2.i, i32 %dec593.i
  %315 = ptrtoint ptr %arrayidx594.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %arrayidx594.i, align 4
  %dec591.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx592.i = getelementptr i32, ptr %stack2.i, i32 %dec591.i
  %317 = ptrtoint ptr %arrayidx592.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %arrayidx592.i, align 4
  %dec589.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx590.i = getelementptr i32, ptr %stack2.i, i32 %dec589.i
  %319 = ptrtoint ptr %arrayidx590.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %arrayidx590.i, align 4
  %321 = xor i32 %320, %318
  %322 = and i32 %321, %316
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %322)
  %cmp609.i = icmp eq i32 %322, 0
  %cond611.i = zext i1 %cmp609.i to i32
  %323 = ptrtoint ptr %arrayidx596.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %cond611.i, ptr %arrayidx596.i, align 4
  br label %sw.epilog.i.thread

sw.bb616.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stack_ptr.04665.i)
  %cmp.i3620.i = icmp eq i32 %stack_ptr.04665.i, 0
  br i1 %cmp.i3620.i, label %sw.bb616.i.while.end2143.i_crit_edge, label %if.end620.i

sw.bb616.i.while.end2143.i_crit_edge:             ; preds = %sw.bb616.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end620.i:                                      ; preds = %sw.bb616.i
  call void @__sanitizer_cov_trace_pc() #13
  %call621.i = call i32 @strlen(ptr noundef %msg_buff1.i) #17
  %arrayidx622.i = getelementptr i8, ptr %msg_buff1.i, i32 %call621.i
  %dec623.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx624.i = getelementptr i32, ptr %stack2.i, i32 %dec623.i
  %324 = ptrtoint ptr %arrayidx624.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %arrayidx624.i, align 4
  %call625.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx622.i, ptr noundef nonnull @.str.53, i32 noundef %325) #11
  br label %sw.epilog.i.thread

sw.bb626.i:                                       ; preds = %for.end353.i
  %326 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %326)
  %tobool627.not.i = icmp eq i32 %326, 0
  br i1 %tobool627.not.i, label %sw.bb626.i.if.end636.i_crit_edge, label %do.end633.i

sw.bb626.i.if.end636.i_crit_edge:                 ; preds = %sw.bb626.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end636.i

do.end633.i:                                      ; preds = %sw.bb626.i
  call void @__sanitizer_cov_trace_pc() #13
  %call635.i = call i32 (ptr, ...) @_printk(ptr noundef %msg_buff1.i, ptr noundef nonnull @.str.56) #15
  br label %if.end636.i

if.end636.i:                                      ; preds = %do.end633.i, %sw.bb626.i.if.end636.i_crit_edge
  %327 = ptrtoint ptr %msg_buff1.i to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 0, ptr %msg_buff1.i, align 8
  br label %sw.epilog.i.thread

sw.bb638.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3624.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3624.i, label %sw.bb638.i.while.end2143.i_crit_edge, label %if.end642.i

sw.bb638.i.while.end2143.i_crit_edge:             ; preds = %sw.bb638.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end642.i:                                      ; preds = %sw.bb638.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec643.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx644.i = getelementptr i32, ptr %stack2.i, i32 %dec643.i
  %328 = ptrtoint ptr %arrayidx644.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %arrayidx644.i, align 4
  %dec645.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx646.i = getelementptr i32, ptr %stack2.i, i32 %dec645.i
  %330 = ptrtoint ptr %arrayidx646.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %arrayidx646.i, align 4
  %332 = call i32 @llvm.bswap.i32(i32 %329) #11
  %333 = ptrtoint ptr %charbuf.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %332, ptr %charbuf.i, align 4
  %call649.i = call i32 @altera_drscan(ptr noundef %call7.i.i166, i32 noundef %331, ptr noundef nonnull %charbuf.i, i32 noundef 0) #11
  br label %sw.epilog.i.thread

sw.bb650.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3628.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3628.i, label %sw.bb650.i.while.end2143.i_crit_edge, label %if.end654.i

sw.bb650.i.while.end2143.i_crit_edge:             ; preds = %sw.bb650.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end654.i:                                      ; preds = %sw.bb650.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec655.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx656.i = getelementptr i32, ptr %stack2.i, i32 %dec655.i
  %334 = ptrtoint ptr %arrayidx656.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %arrayidx656.i, align 4
  %sub657.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx658.i = getelementptr i32, ptr %stack2.i, i32 %sub657.i
  %336 = ptrtoint ptr %arrayidx658.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %arrayidx658.i, align 4
  %338 = call i32 @llvm.bswap.i32(i32 %335) #11
  %339 = ptrtoint ptr %charbuf.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %338, ptr %charbuf.i, align 4
  %call662.i = call i32 @altera_swap_dr(ptr noundef %call7.i.i166, i32 noundef %337, ptr noundef nonnull %charbuf.i, i32 noundef 0, ptr noundef nonnull %charbuf.i, i32 noundef 0) #11
  %340 = ptrtoint ptr %charbuf.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %charbuf.i, align 4
  %342 = call i32 @llvm.bswap.i32(i32 %341) #11
  %343 = ptrtoint ptr %arrayidx658.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 %342, ptr %arrayidx658.i, align 4
  br label %sw.epilog.i.thread

sw.bb667.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3632.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3632.i, label %sw.bb667.i.while.end2143.i_crit_edge, label %if.end671.i

sw.bb667.i.while.end2143.i_crit_edge:             ; preds = %sw.bb667.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end671.i:                                      ; preds = %sw.bb667.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec672.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx673.i = getelementptr i32, ptr %stack2.i, i32 %dec672.i
  %344 = ptrtoint ptr %arrayidx673.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %arrayidx673.i, align 4
  %dec674.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx675.i = getelementptr i32, ptr %stack2.i, i32 %dec674.i
  %346 = ptrtoint ptr %arrayidx675.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %arrayidx675.i, align 4
  %348 = call i32 @llvm.bswap.i32(i32 %345) #11
  %349 = ptrtoint ptr %charbuf.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 %348, ptr %charbuf.i, align 4
  %call678.i = call i32 @altera_irscan(ptr noundef %call7.i.i166, i32 noundef %347, ptr noundef nonnull %charbuf.i, i32 noundef 0) #11
  br label %sw.epilog.i.thread

sw.bb679.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3636.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3636.i, label %sw.bb679.i.while.end2143.i_crit_edge, label %if.end683.i

sw.bb679.i.while.end2143.i_crit_edge:             ; preds = %sw.bb679.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end683.i:                                      ; preds = %sw.bb679.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec684.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx685.i = getelementptr i32, ptr %stack2.i, i32 %dec684.i
  %350 = ptrtoint ptr %arrayidx685.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %arrayidx685.i, align 4
  %sub686.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx687.i = getelementptr i32, ptr %stack2.i, i32 %sub686.i
  %352 = ptrtoint ptr %arrayidx687.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %arrayidx687.i, align 4
  %354 = call i32 @llvm.bswap.i32(i32 %351) #11
  %355 = ptrtoint ptr %charbuf.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 %354, ptr %charbuf.i, align 4
  %call691.i = call i32 @altera_swap_ir(ptr noundef %call7.i.i166, i32 noundef %353, ptr noundef nonnull %charbuf.i, i32 noundef 0, ptr noundef nonnull %charbuf.i, i32 noundef 0) #11
  %356 = ptrtoint ptr %charbuf.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %charbuf.i, align 4
  %358 = call i32 @llvm.bswap.i32(i32 %357) #11
  %359 = ptrtoint ptr %arrayidx687.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %358, ptr %arrayidx687.i, align 4
  br label %sw.epilog.i.thread

sw.bb696.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stack_ptr.04665.i)
  %cmp.i3640.i = icmp eq i32 %stack_ptr.04665.i, 0
  br i1 %cmp.i3640.i, label %sw.bb696.i.while.end2143.i_crit_edge, label %if.end700.i

sw.bb696.i.while.end2143.i_crit_edge:             ; preds = %sw.bb696.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end700.i:                                      ; preds = %sw.bb696.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec701.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx702.i = getelementptr i32, ptr %stack2.i, i32 %dec701.i
  %360 = ptrtoint ptr %arrayidx702.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %arrayidx702.i, align 4
  %call703.i = call i32 @altera_set_dr_pre(ptr noundef %js1438.i, i32 noundef %361, i32 noundef 0, ptr noundef null) #11
  br label %sw.epilog.i.thread

sw.bb704.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3644.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3644.i, label %sw.bb704.i.while.end2143.i_crit_edge, label %if.end708.i

sw.bb704.i.while.end2143.i_crit_edge:             ; preds = %sw.bb704.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end708.i:                                      ; preds = %sw.bb704.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec709.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx710.i = getelementptr i32, ptr %stack2.i, i32 %dec709.i
  %362 = ptrtoint ptr %arrayidx710.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %arrayidx710.i, align 4
  %dec711.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx712.i = getelementptr i32, ptr %stack2.i, i32 %dec711.i
  %364 = ptrtoint ptr %arrayidx712.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %arrayidx712.i, align 4
  %366 = call i32 @llvm.bswap.i32(i32 %365) #11
  %367 = ptrtoint ptr %charbuf.i to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 %366, ptr %charbuf.i, align 4
  %call716.i = call i32 @altera_set_dr_pre(ptr noundef %js1438.i, i32 noundef %363, i32 noundef 0, ptr noundef nonnull %charbuf.i) #11
  br label %sw.epilog.i.thread

sw.bb717.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stack_ptr.04665.i)
  %cmp.i3648.i = icmp eq i32 %stack_ptr.04665.i, 0
  br i1 %cmp.i3648.i, label %sw.bb717.i.while.end2143.i_crit_edge, label %if.then720.i

sw.bb717.i.while.end2143.i_crit_edge:             ; preds = %sw.bb717.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then720.i:                                     ; preds = %sw.bb717.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec721.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx722.i = getelementptr i32, ptr %stack2.i, i32 %dec721.i
  %368 = ptrtoint ptr %arrayidx722.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %arrayidx722.i, align 4
  %call724.i = call i32 @altera_set_dr_post(ptr noundef %js1438.i, i32 noundef %369, i32 noundef 0, ptr noundef null) #11
  br label %sw.epilog.i.thread

sw.bb726.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3652.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3652.i, label %sw.bb726.i.while.end2143.i_crit_edge, label %if.end730.i

sw.bb726.i.while.end2143.i_crit_edge:             ; preds = %sw.bb726.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end730.i:                                      ; preds = %sw.bb726.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec731.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx732.i = getelementptr i32, ptr %stack2.i, i32 %dec731.i
  %370 = ptrtoint ptr %arrayidx732.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %arrayidx732.i, align 4
  %dec733.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx734.i = getelementptr i32, ptr %stack2.i, i32 %dec733.i
  %372 = ptrtoint ptr %arrayidx734.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %arrayidx734.i, align 4
  %374 = call i32 @llvm.bswap.i32(i32 %373) #11
  %375 = ptrtoint ptr %charbuf.i to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 %374, ptr %charbuf.i, align 4
  %call738.i = call i32 @altera_set_dr_post(ptr noundef %js1438.i, i32 noundef %371, i32 noundef 0, ptr noundef nonnull %charbuf.i) #11
  br label %sw.epilog.i.thread

sw.bb739.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stack_ptr.04665.i)
  %cmp.i3656.i = icmp eq i32 %stack_ptr.04665.i, 0
  br i1 %cmp.i3656.i, label %sw.bb739.i.while.end2143.i_crit_edge, label %if.then742.i

sw.bb739.i.while.end2143.i_crit_edge:             ; preds = %sw.bb739.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then742.i:                                     ; preds = %sw.bb739.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec743.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx744.i = getelementptr i32, ptr %stack2.i, i32 %dec743.i
  %376 = ptrtoint ptr %arrayidx744.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %arrayidx744.i, align 4
  %call746.i = call i32 @altera_set_ir_pre(ptr noundef %js1438.i, i32 noundef %377, i32 noundef 0, ptr noundef null) #11
  br label %sw.epilog.i.thread

sw.bb748.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3660.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3660.i, label %sw.bb748.i.while.end2143.i_crit_edge, label %if.then751.i

sw.bb748.i.while.end2143.i_crit_edge:             ; preds = %sw.bb748.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then751.i:                                     ; preds = %sw.bb748.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec752.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx753.i = getelementptr i32, ptr %stack2.i, i32 %dec752.i
  %378 = ptrtoint ptr %arrayidx753.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %arrayidx753.i, align 4
  %dec754.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx755.i = getelementptr i32, ptr %stack2.i, i32 %dec754.i
  %380 = ptrtoint ptr %arrayidx755.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %arrayidx755.i, align 4
  %382 = call i32 @llvm.bswap.i32(i32 %381) #11
  %383 = ptrtoint ptr %charbuf.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store i32 %382, ptr %charbuf.i, align 4
  %call759.i = call i32 @altera_set_ir_pre(ptr noundef %js1438.i, i32 noundef %379, i32 noundef 0, ptr noundef nonnull %charbuf.i) #11
  br label %sw.epilog.i.thread

sw.bb761.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stack_ptr.04665.i)
  %cmp.i3664.i = icmp eq i32 %stack_ptr.04665.i, 0
  br i1 %cmp.i3664.i, label %sw.bb761.i.while.end2143.i_crit_edge, label %if.then764.i

sw.bb761.i.while.end2143.i_crit_edge:             ; preds = %sw.bb761.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then764.i:                                     ; preds = %sw.bb761.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec765.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx766.i = getelementptr i32, ptr %stack2.i, i32 %dec765.i
  %384 = ptrtoint ptr %arrayidx766.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %arrayidx766.i, align 4
  %call768.i = call i32 @altera_set_ir_post(ptr noundef %js1438.i, i32 noundef %385, i32 noundef 0, ptr noundef null) #11
  br label %sw.epilog.i.thread

sw.bb770.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3668.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3668.i, label %sw.bb770.i.while.end2143.i_crit_edge, label %if.end774.i

sw.bb770.i.while.end2143.i_crit_edge:             ; preds = %sw.bb770.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end774.i:                                      ; preds = %sw.bb770.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec775.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx776.i = getelementptr i32, ptr %stack2.i, i32 %dec775.i
  %386 = ptrtoint ptr %arrayidx776.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %arrayidx776.i, align 4
  %dec777.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx778.i = getelementptr i32, ptr %stack2.i, i32 %dec777.i
  %388 = ptrtoint ptr %arrayidx778.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %arrayidx778.i, align 4
  %390 = call i32 @llvm.bswap.i32(i32 %389) #11
  %391 = ptrtoint ptr %charbuf.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %390, ptr %charbuf.i, align 4
  %call782.i = call i32 @altera_set_ir_post(ptr noundef %js1438.i, i32 noundef %387, i32 noundef 0, ptr noundef nonnull %charbuf.i) #11
  br label %sw.epilog.i.thread

sw.bb783.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stack_ptr.04665.i)
  %cmp.i3672.i = icmp eq i32 %stack_ptr.04665.i, 0
  br i1 %cmp.i3672.i, label %sw.bb783.i.while.end2143.i_crit_edge, label %if.then786.i

sw.bb783.i.while.end2143.i_crit_edge:             ; preds = %sw.bb783.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then786.i:                                     ; preds = %sw.bb783.i
  call void @__sanitizer_cov_trace_pc() #13
  %call787.i = call i32 @strlen(ptr noundef %msg_buff1.i) #17
  %dec788.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx789.i = getelementptr i32, ptr %stack2.i, i32 %dec788.i
  %392 = ptrtoint ptr %arrayidx789.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %arrayidx789.i, align 4
  %conv791.i = and i32 %393, 255
  %conv790.i = trunc i32 %393 to i8
  %394 = add nsw i32 %conv791.i, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127, i32 %394)
  %395 = icmp ult i32 %394, -127
  %ch.0.i = select i1 %395, i8 127, i8 %conv790.i
  %arrayidx800.i = getelementptr i8, ptr %msg_buff1.i, i32 %call787.i
  %396 = ptrtoint ptr %arrayidx800.i to i32
  call void @__asan_store1_noabort(i32 %396)
  store i8 %ch.0.i, ptr %arrayidx800.i, align 1
  %add801.i = add i32 %call787.i, 1
  %arrayidx802.i = getelementptr i8, ptr %msg_buff1.i, i32 %add801.i
  %397 = ptrtoint ptr %arrayidx802.i to i32
  call void @__asan_store1_noabort(i32 %397)
  store i8 0, ptr %arrayidx802.i, align 1
  br label %sw.epilog.i.thread

sw.bb804.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stack_ptr.04665.i)
  %cmp.i3676.i = icmp eq i32 %stack_ptr.04665.i, 0
  br i1 %cmp.i3676.i, label %sw.bb804.i.while.end2143.i_crit_edge, label %if.then807.i

sw.bb804.i.while.end2143.i_crit_edge:             ; preds = %sw.bb804.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then807.i:                                     ; preds = %sw.bb804.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec808.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx809.i = getelementptr i32, ptr %stack2.i, i32 %dec808.i
  %398 = ptrtoint ptr %arrayidx809.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %arrayidx809.i, align 4
  br label %while.end2143.i

sw.bb811.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3680.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3680.i, label %sw.bb811.i.while.end2143.i_crit_edge, label %if.end815.i

sw.bb811.i.while.end2143.i_crit_edge:             ; preds = %sw.bb811.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end815.i:                                      ; preds = %sw.bb811.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec816.i = add nsw i32 %stack_ptr.04665.i, -1
  %sub817.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx818.i = getelementptr i32, ptr %stack2.i, i32 %sub817.i
  %400 = ptrtoint ptr %arrayidx818.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %arrayidx818.i, align 4
  %arrayidx819.i = getelementptr i32, ptr %stack2.i, i32 %dec816.i
  %402 = ptrtoint ptr %arrayidx819.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %arrayidx819.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %401, i32 %403)
  %cmp820.i = icmp eq i32 %401, %403
  %cond822.i = zext i1 %cmp820.i to i32
  %404 = ptrtoint ptr %arrayidx818.i to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 %cond822.i, ptr %arrayidx818.i, align 4
  br label %sw.epilog.i.thread

sw.bb825.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stack_ptr.04665.i)
  %cmp.i3684.i = icmp eq i32 %stack_ptr.04665.i, 0
  %spec.select4566.i = select i1 %cmp.i3684.i, i32 -75, i32 %status.94662.i
  %not.cmp.i3684.i = xor i1 %cmp.i3684.i, true
  %dec829.i = sext i1 %not.cmp.i3684.i to i32
  %spec.select4567.i = add nsw i32 %stack_ptr.04665.i, %dec829.i
  br label %sw.epilog.i

sw.bb831.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stack_ptr.04665.i)
  %cmp.i3688.i = icmp eq i32 %stack_ptr.04665.i, 0
  br i1 %cmp.i3688.i, label %sw.bb831.i.while.end2143.i_crit_edge, label %if.end835.i

sw.bb831.i.while.end2143.i_crit_edge:             ; preds = %sw.bb831.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end835.i:                                      ; preds = %sw.bb831.i
  %sub836.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx837.i = getelementptr i32, ptr %stack2.i, i32 %sub836.i
  %405 = ptrtoint ptr %arrayidx837.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %arrayidx837.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %406)
  %cmp838.i = icmp slt i32 %406, 0
  br i1 %cmp838.i, label %if.then840.i, label %if.end835.i.sw.epilog.i.thread_crit_edge

if.end835.i.sw.epilog.i.thread_crit_edge:         ; preds = %if.end835.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.thread

if.then840.i:                                     ; preds = %if.end835.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub843.i = sub i32 0, %406
  %407 = ptrtoint ptr %arrayidx837.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 %sub843.i, ptr %arrayidx837.i, align 4
  br label %sw.epilog.i.thread

sw.bb847.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3692.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3692.i, label %sw.bb847.i.while.end2143.i_crit_edge, label %if.end859.i

sw.bb847.i.while.end2143.i_crit_edge:             ; preds = %sw.bb847.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end859.i:                                      ; preds = %sw.bb847.i
  %sub851.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx852.i = getelementptr i32, ptr %stack2.i, i32 %sub851.i
  %408 = ptrtoint ptr %arrayidx852.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %arrayidx852.i, align 4
  %sub853.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx854.i = getelementptr i32, ptr %stack2.i, i32 %sub853.i
  %410 = ptrtoint ptr %arrayidx854.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %arrayidx854.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %stack_ptr.04665.i)
  %cmp.i3696.i = icmp ult i32 %stack_ptr.04665.i, 8
  br i1 %cmp.i3696.i, label %if.end883.i, label %if.end895.i

if.end883.i:                                      ; preds = %if.end859.i
  %412 = ptrtoint ptr %arrayidx852.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 %409, ptr %arrayidx852.i, align 4
  %413 = ptrtoint ptr %arrayidx854.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %411, ptr %arrayidx854.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %stack_ptr.04665.i)
  %cmp.i3704.not.i = icmp eq i32 %stack_ptr.04665.i, 7
  br i1 %cmp.i3704.not.i, label %if.end895.thread.i, label %if.end903.i

if.end895.thread.i:                               ; preds = %if.end883.i
  call void @__sanitizer_cov_trace_pc() #13
  %414 = ptrtoint ptr %stack2.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %stack2.i, align 4
  store i32 %411, ptr %stack2.i, align 4
  %416 = ptrtoint ptr %arrayidx854.i to i32
  call void @__asan_store4_noabort(i32 %416)
  store i32 %415, ptr %arrayidx854.i, align 4
  br label %if.end915.thread.i

if.end895.i:                                      ; preds = %if.end859.i
  %sub863.i = add nsw i32 %stack_ptr.04665.i, -8
  %arrayidx864.i = getelementptr i32, ptr %stack2.i, i32 %sub863.i
  %417 = ptrtoint ptr %arrayidx864.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %arrayidx864.i, align 4
  store i32 %409, ptr %arrayidx864.i, align 4
  %419 = ptrtoint ptr %arrayidx852.i to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 %418, ptr %arrayidx852.i, align 4
  %sub887.i = add nsw i32 %stack_ptr.04665.i, -7
  %arrayidx888.i = getelementptr i32, ptr %stack2.i, i32 %sub887.i
  %420 = ptrtoint ptr %arrayidx888.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %arrayidx888.i, align 4
  store i32 %411, ptr %arrayidx888.i, align 4
  %422 = ptrtoint ptr %arrayidx854.i to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 %421, ptr %arrayidx854.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %stack_ptr.04665.i)
  %cmp.i3708.i = icmp eq i32 %stack_ptr.04665.i, 8
  br i1 %cmp.i3708.i, label %if.end895.i.if.end915.thread.i_crit_edge, label %if.end903.i.thread

if.end895.i.if.end915.thread.i_crit_edge:         ; preds = %if.end895.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end915.thread.i

if.end903.i.thread:                               ; preds = %if.end895.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub899.i = add nsw i32 %stack_ptr.04665.i, -9
  %arrayidx900.i = getelementptr i32, ptr %stack2.i, i32 %sub899.i
  %423 = ptrtoint ptr %arrayidx900.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %arrayidx900.i, align 4
  %arrayidx901.i = getelementptr i32, ptr %stack2.i, i32 %stack_ptr.04665.i
  %425 = ptrtoint ptr %arrayidx901.i to i32
  call void @__asan_store4_noabort(i32 %425)
  store i32 %424, ptr %arrayidx901.i, align 4
  %inc902.i = add nuw nsw i32 %stack_ptr.04665.i, 1
  br label %if.end915.thread.i

if.end903.i:                                      ; preds = %if.end883.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %stack_ptr.04665.i)
  %cmp.i3712.i = icmp ult i32 %stack_ptr.04665.i, 3
  br i1 %cmp.i3712.i, label %if.end903.i.if.end927.i_crit_edge, label %if.end903.i.if.end915.thread.i_crit_edge

if.end903.i.if.end915.thread.i_crit_edge:         ; preds = %if.end903.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end915.thread.i

if.end903.i.if.end927.i_crit_edge:                ; preds = %if.end903.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end927.i

if.end915.thread.i:                               ; preds = %if.end903.i.if.end915.thread.i_crit_edge, %if.end903.i.thread, %if.end895.i.if.end915.thread.i_crit_edge, %if.end895.thread.i
  %sub909.pre-phi.i = phi i32 [ 7, %if.end895.i.if.end915.thread.i_crit_edge ], [ 6, %if.end895.thread.i ], [ %stack_ptr.04665.i, %if.end903.i.thread ], [ %sub853.i, %if.end903.i.if.end915.thread.i_crit_edge ]
  %stack_ptr.24559.i = phi i32 [ 8, %if.end895.i.if.end915.thread.i_crit_edge ], [ 7, %if.end895.thread.i ], [ %inc902.i, %if.end903.i.thread ], [ %stack_ptr.04665.i, %if.end903.i.if.end915.thread.i_crit_edge ]
  %status.51.i = phi i32 [ -75, %if.end895.i.if.end915.thread.i_crit_edge ], [ -75, %if.end895.thread.i ], [ %status.94662.i, %if.end903.i.thread ], [ -75, %if.end903.i.if.end915.thread.i_crit_edge ]
  %sub907.i = add nsw i32 %stack_ptr.24559.i, -3
  %arrayidx908.i = getelementptr i32, ptr %stack2.i, i32 %sub907.i
  %426 = ptrtoint ptr %arrayidx908.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %arrayidx908.i, align 4
  %arrayidx910.i = getelementptr i32, ptr %stack2.i, i32 %sub909.pre-phi.i
  %428 = ptrtoint ptr %arrayidx910.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %arrayidx910.i, align 4
  store i32 %429, ptr %arrayidx908.i, align 4
  store i32 %427, ptr %arrayidx910.i, align 4
  br label %if.end927.i

if.end927.i:                                      ; preds = %if.end915.thread.i, %if.end903.i.if.end927.i_crit_edge
  %stack_ptr.24552.i = phi i32 [ %stack_ptr.24559.i, %if.end915.thread.i ], [ 2, %if.end903.i.if.end927.i_crit_edge ]
  %status.52.ph.i = phi i32 [ %status.51.i, %if.end915.thread.i ], [ -75, %if.end903.i.if.end927.i_crit_edge ]
  %sub919.i = add nsw i32 %stack_ptr.24552.i, -2
  %arrayidx920.i = getelementptr i32, ptr %stack2.i, i32 %sub919.i
  %430 = ptrtoint ptr %arrayidx920.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %arrayidx920.i, align 4
  %sub921.i = add nsw i32 %stack_ptr.24552.i, -1
  %arrayidx922.i = getelementptr i32, ptr %stack2.i, i32 %sub921.i
  %432 = ptrtoint ptr %arrayidx922.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %arrayidx922.i, align 4
  store i32 %433, ptr %arrayidx920.i, align 4
  store i32 %431, ptr %arrayidx922.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %stack_ptr.24552.i)
  %cmp.i3720.i = icmp ult i32 %stack_ptr.24552.i, 7
  br i1 %cmp.i3720.i, label %if.end927.i.while.end2143.i_crit_edge, label %if.then938.i

if.end927.i.while.end2143.i_crit_edge:            ; preds = %if.end927.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then938.i:                                     ; preds = %if.end927.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub931.i = add nsw i32 %stack_ptr.24552.i, -7
  %arrayidx932.i = getelementptr i32, ptr %stack2.i, i32 %sub931.i
  %434 = ptrtoint ptr %arrayidx932.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %arrayidx932.i, align 4
  %arrayidx933.i = getelementptr i32, ptr %stack2.i, i32 %stack_ptr.24552.i
  %436 = ptrtoint ptr %arrayidx933.i to i32
  call void @__asan_store4_noabort(i32 %436)
  store i32 %435, ptr %arrayidx933.i, align 4
  %inc934.i = add nuw nsw i32 %stack_ptr.24552.i, 1
  %sub939.i = add nsw i32 %stack_ptr.24552.i, -6
  %arrayidx940.i = getelementptr i32, ptr %stack2.i, i32 %sub939.i
  %437 = ptrtoint ptr %arrayidx940.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %arrayidx940.i, align 4
  %arrayidx941.i = getelementptr i32, ptr %stack2.i, i32 %inc934.i
  %439 = ptrtoint ptr %arrayidx941.i to i32
  call void @__asan_store4_noabort(i32 %439)
  store i32 %438, ptr %arrayidx941.i, align 4
  %inc942.i = add nuw nsw i32 %stack_ptr.24552.i, 2
  br label %sw.epilog.i

sw.bb944.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc945.i = add nuw nsw i32 %stack_ptr.04665.i, 1
  %arrayidx946.i = getelementptr i32, ptr %stack2.i, i32 %stack_ptr.04665.i
  %440 = ptrtoint ptr %arrayidx946.i to i32
  call void @__asan_store4_noabort(i32 %440)
  store i32 0, ptr %arrayidx946.i, align 4
  br label %sw.epilog.i

sw.bb947.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_pc() #13
  %441 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %args.i.0.args.i.0.args.0..i = load i32, ptr %args.i, align 4
  %inc949.i = add nuw nsw i32 %stack_ptr.04665.i, 1
  %arrayidx950.i = getelementptr i32, ptr %stack2.i, i32 %stack_ptr.04665.i
  %442 = ptrtoint ptr %arrayidx950.i to i32
  call void @__asan_store4_noabort(i32 %442)
  store i32 %args.i.0.args.i.0.args.0..i, ptr %arrayidx950.i, align 4
  br label %sw.epilog.i

sw.bb951.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_pc() #13
  %443 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %args.i.0.args.i.0.args.0.4703.i = load i32, ptr %args.i, align 4
  %arrayidx953.i = getelementptr i32, ptr %vars.041404501.i, i32 %args.i.0.args.i.0.args.0.4703.i
  %444 = ptrtoint ptr %arrayidx953.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %arrayidx953.i, align 4
  %inc954.i = add nuw nsw i32 %stack_ptr.04665.i, 1
  %arrayidx955.i = getelementptr i32, ptr %stack2.i, i32 %stack_ptr.04665.i
  %446 = ptrtoint ptr %arrayidx955.i to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 %445, ptr %arrayidx955.i, align 4
  br label %sw.epilog.i

sw.bb956.i:                                       ; preds = %for.end353.i
  %447 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %args.i.0.args.i.0.args.0.4704.i = load i32, ptr %args.i, align 4
  %add958.i = add i32 %args.i.0.args.i.0.args.0.4704.i, %152
  call void @__sanitizer_cov_trace_cmp4(i32 %add958.i, i32 %152)
  %cmp959.i = icmp uge i32 %add958.i, %152
  call void @__sanitizer_cov_trace_cmp4(i32 %add958.i, i32 %154)
  %cmp962.not.i = icmp ult i32 %add958.i, %154
  %or.cond3408.i = select i1 %cmp959.i, i1 %cmp962.not.i, i1 false
  br i1 %or.cond3408.i, label %sw.bb956.i.sw.epilog.i.thread_crit_edge, label %sw.bb956.i.while.end2143.i_crit_edge

sw.bb956.i.while.end2143.i_crit_edge:             ; preds = %sw.bb956.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

sw.bb956.i.sw.epilog.i.thread_crit_edge:          ; preds = %sw.bb956.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.thread

sw.bb966.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc967.i = add nuw nsw i32 %stack_ptr.04665.i, 1
  %arrayidx968.i = getelementptr i32, ptr %stack2.i, i32 %stack_ptr.04665.i
  %448 = ptrtoint ptr %arrayidx968.i to i32
  call void @__asan_store4_noabort(i32 %448)
  store i32 %pc.3.lcssa.i, ptr %arrayidx968.i, align 4
  %449 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %args.i.0.args.i.0.args.0.4705.i = load i32, ptr %args.i, align 4
  %add970.i = add i32 %args.i.0.args.i.0.args.0.4705.i, %152
  call void @__sanitizer_cov_trace_cmp4(i32 %add970.i, i32 %152)
  %cmp971.i = icmp uge i32 %add970.i, %152
  call void @__sanitizer_cov_trace_cmp4(i32 %add970.i, i32 %154)
  %cmp974.not.i = icmp ult i32 %add970.i, %154
  %or.cond3409.i = select i1 %cmp971.i, i1 %cmp974.not.i, i1 false
  %spec.select4569.i = select i1 %or.cond3409.i, i32 %status.94662.i, i32 -34
  br label %sw.epilog.i

sw.bb978.i:                                       ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %stack_ptr.04665.i)
  %cmp.i3728.i = icmp ult i32 %stack_ptr.04665.i, 3
  br i1 %cmp.i3728.i, label %sw.bb978.i.while.end2143.i_crit_edge, label %if.then981.i

sw.bb978.i.while.end2143.i_crit_edge:             ; preds = %sw.bb978.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then981.i:                                     ; preds = %sw.bb978.i
  %sub982.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx983.i = getelementptr i32, ptr %stack2.i, i32 %sub982.i
  %450 = ptrtoint ptr %arrayidx983.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %arrayidx983.i, align 4
  %sub984.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx985.i = getelementptr i32, ptr %stack2.i, i32 %sub984.i
  %452 = ptrtoint ptr %arrayidx985.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %arrayidx985.i, align 4
  %sub986.i = add nsw i32 %stack_ptr.04665.i, -3
  %arrayidx987.i = getelementptr i32, ptr %stack2.i, i32 %sub986.i
  %454 = ptrtoint ptr %arrayidx987.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %arrayidx987.i, align 4
  %456 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %args.i.0.args.i.0.args.0.4706.i = load i32, ptr %args.i, align 4
  %arrayidx989.i = getelementptr i32, ptr %vars.041404501.i, i32 %args.i.0.args.i.0.args.0.4706.i
  %457 = ptrtoint ptr %arrayidx989.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %arrayidx989.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %451)
  %cmp990.i = icmp slt i32 %451, 0
  br i1 %cmp990.i, label %if.then992.i, label %if.end1002.i

if.then992.i:                                     ; preds = %if.then981.i
  call void @__sanitizer_cov_trace_cmp4(i32 %458, i32 %453)
  %cmp993.not.i = icmp sgt i32 %458, %453
  br i1 %cmp993.not.i, label %if.then992.i.if.else1006.i_crit_edge, label %if.then992.i.sw.epilog.i.thread_crit_edge

if.then992.i.sw.epilog.i.thread_crit_edge:        ; preds = %if.then992.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.thread

if.then992.i.if.else1006.i_crit_edge:             ; preds = %if.then992.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else1006.i

if.end1002.i:                                     ; preds = %if.then981.i
  call void @__sanitizer_cov_trace_cmp4(i32 %458, i32 %453)
  %cmp998.not.i = icmp slt i32 %458, %453
  br i1 %cmp998.not.i, label %if.end1002.i.if.else1006.i_crit_edge, label %if.end1002.i.sw.epilog.i.thread_crit_edge

if.end1002.i.sw.epilog.i.thread_crit_edge:        ; preds = %if.end1002.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.thread

if.end1002.i.if.else1006.i_crit_edge:             ; preds = %if.end1002.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else1006.i

if.else1006.i:                                    ; preds = %if.end1002.i.if.else1006.i_crit_edge, %if.then992.i.if.else1006.i_crit_edge
  %add1007.i = add i32 %458, %451
  %459 = ptrtoint ptr %arrayidx989.i to i32
  call void @__asan_store4_noabort(i32 %459)
  store i32 %add1007.i, ptr %arrayidx989.i, align 4
  %add1010.i = add i32 %455, %152
  call void @__sanitizer_cov_trace_cmp4(i32 %add1010.i, i32 %152)
  %cmp1011.i = icmp uge i32 %add1010.i, %152
  call void @__sanitizer_cov_trace_cmp4(i32 %add1010.i, i32 %154)
  %cmp1014.not.i = icmp ult i32 %add1010.i, %154
  %or.cond3412.i = select i1 %cmp1011.i, i1 %cmp1014.not.i, i1 false
  br i1 %or.cond3412.i, label %if.else1006.i.sw.epilog.i.thread_crit_edge, label %if.else1006.i.while.end2143.i_crit_edge

if.else1006.i.while.end2143.i_crit_edge:          ; preds = %if.else1006.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.else1006.i.sw.epilog.i.thread_crit_edge:       ; preds = %if.else1006.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.thread

sw.bb1020.i:                                      ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1021.i = call i32 @strlen(ptr noundef %msg_buff1.i) #17
  %arrayidx1022.i = getelementptr i8, ptr %msg_buff1.i, i32 %call1021.i
  %460 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %args.i.0.args.i.0.args.0.4707.i = load i32, ptr %args.i, align 4
  %add1024.i = add i32 %args.i.0.args.i.0.args.0.4707.i, %146
  %arrayidx1025.i = getelementptr i8, ptr %129, i32 %add1024.i
  %sub1026.i = sub i32 1024, %call1021.i
  %call1027.i = call i32 @strlcpy(ptr noundef %arrayidx1022.i, ptr noundef %arrayidx1025.i, i32 noundef %sub1026.i) #11
  br label %sw.epilog.i.thread

sw.bb1028.i:                                      ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_pc() #13
  %461 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %args.i.0.args.i.0.args.0.4708.i = load i32, ptr %args.i, align 4
  %call1030.i = call i32 @altera_goto_jstate(ptr noundef %call7.i.i166, i32 noundef %args.i.0.args.i.0.args.0.4708.i) #11
  br label %sw.epilog.i.thread

sw.bb1031.i:                                      ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_pc() #13
  %462 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %args.i.0.args.i.0.args.0.4709.i = load i32, ptr %args.i, align 4
  %call1033.i = call i32 @altera_goto_jstate(ptr noundef %call7.i.i166, i32 noundef %args.i.0.args.i.0.args.0.4709.i) #11
  br label %sw.epilog.i.thread

sw.bb1034.i:                                      ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_pc() #13
  %463 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %args.i.0.args.i.0.args.0.4710.i = load i32, ptr %args.i, align 4
  %call1037.i = call i32 @altera_set_irstop(ptr noundef %js1438.i, i32 noundef %args.i.0.args.i.0.args.0.4710.i) #11
  br label %sw.epilog.i.thread

sw.bb1038.i:                                      ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_pc() #13
  %464 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %args.i.0.args.i.0.args.0.4711.i = load i32, ptr %args.i, align 4
  %call1041.i = call i32 @altera_set_drstop(ptr noundef %js1438.i, i32 noundef %args.i.0.args.i.0.args.0.4711.i) #11
  br label %sw.epilog.i.thread

sw.bb1042.i:                                      ; preds = %for.end353.i
  %465 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %args.i.0.args.i.0.args.0.4712.i = load i32, ptr %args.i, align 4
  %add1044.i = add i32 %args.i.0.args.i.0.args.0.4712.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %stack_ptr.04665.i, i32 %add1044.i)
  %cmp.i3732.i = icmp slt i32 %stack_ptr.04665.i, %add1044.i
  br i1 %cmp.i3732.i, label %sw.bb1042.i.while.end2143.i_crit_edge, label %if.then1047.i

sw.bb1042.i.while.end2143.i_crit_edge:            ; preds = %sw.bb1042.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then1047.i:                                    ; preds = %sw.bb1042.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub1048.i = sub i32 %stack_ptr.04665.i, %add1044.i
  %arrayidx1049.i = getelementptr i32, ptr %stack2.i, i32 %sub1048.i
  %466 = ptrtoint ptr %arrayidx1049.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %arrayidx1049.i, align 4
  %sub1050.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx1051.i = getelementptr i32, ptr %stack2.i, i32 %sub1050.i
  %468 = ptrtoint ptr %arrayidx1051.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %arrayidx1051.i, align 4
  store i32 %469, ptr %arrayidx1049.i, align 4
  store i32 %467, ptr %arrayidx1051.i, align 4
  br label %sw.epilog.i.thread

sw.bb1057.i:                                      ; preds = %for.end353.i
  %470 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %args.i.0.args.i.0.args.0.4713.i = load i32, ptr %args.i, align 4
  %add1059.i = add i32 %args.i.0.args.i.0.args.0.4713.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %stack_ptr.04665.i, i32 %add1059.i)
  %cmp.i3736.i = icmp slt i32 %stack_ptr.04665.i, %add1059.i
  br i1 %cmp.i3736.i, label %sw.bb1057.i.while.end2143.i_crit_edge, label %if.then1062.i

sw.bb1057.i.while.end2143.i_crit_edge:            ; preds = %sw.bb1057.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then1062.i:                                    ; preds = %sw.bb1057.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub1063.i = sub i32 %stack_ptr.04665.i, %add1059.i
  %arrayidx1064.i = getelementptr i32, ptr %stack2.i, i32 %sub1063.i
  %471 = ptrtoint ptr %arrayidx1064.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %arrayidx1064.i, align 4
  %arrayidx1065.i = getelementptr i32, ptr %stack2.i, i32 %stack_ptr.04665.i
  %473 = ptrtoint ptr %arrayidx1065.i to i32
  call void @__asan_store4_noabort(i32 %473)
  store i32 %472, ptr %arrayidx1065.i, align 4
  %inc1066.i = add nuw nsw i32 %stack_ptr.04665.i, 1
  br label %sw.epilog.i

sw.bb1068.i:                                      ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stack_ptr.04665.i)
  %cmp.i3740.i = icmp eq i32 %stack_ptr.04665.i, 0
  br i1 %cmp.i3740.i, label %sw.bb1068.i.while.end2143.i_crit_edge, label %if.then1071.i

sw.bb1068.i.while.end2143.i_crit_edge:            ; preds = %sw.bb1068.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then1071.i:                                    ; preds = %sw.bb1068.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec1072.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx1073.i = getelementptr i32, ptr %stack2.i, i32 %dec1072.i
  %474 = ptrtoint ptr %arrayidx1073.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %arrayidx1073.i, align 4
  %476 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %args.i.0.args.i.0.args.0.4714.i = load i32, ptr %args.i, align 4
  %arrayidx1075.i = getelementptr i32, ptr %vars.041404501.i, i32 %args.i.0.args.i.0.args.0.4714.i
  %477 = ptrtoint ptr %arrayidx1075.i to i32
  call void @__asan_store4_noabort(i32 %477)
  store i32 %475, ptr %arrayidx1075.i, align 4
  br label %sw.epilog.i.thread

sw.bb1077.i:                                      ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3744.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3744.i, label %sw.bb1077.i.while.end2143.i_crit_edge, label %if.end1081.i

sw.bb1077.i.while.end2143.i_crit_edge:            ; preds = %sw.bb1077.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end1081.i:                                     ; preds = %sw.bb1077.i
  %478 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %args.i.0.args.i.0.args.0.4715.i = load i32, ptr %args.i, align 4
  br i1 %cmp209.not4507.i, label %if.end1081.i.if.end1124.i_crit_edge, label %land.lhs.true1085.i

if.end1081.i.if.end1124.i_crit_edge:              ; preds = %if.end1081.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1124.i

land.lhs.true1085.i:                              ; preds = %if.end1081.i
  %arrayidx1086.i = getelementptr i8, ptr %attrs.141424499.i, i32 %args.i.0.args.i.0.args.0.4715.i
  %479 = ptrtoint ptr %arrayidx1086.i to i32
  call void @__asan_load1_noabort(i32 %479)
  %480 = load i8, ptr %arrayidx1086.i, align 1
  %481 = and i8 %480, -100
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %481)
  %cmp1089.i = icmp eq i8 %481, 28
  br i1 %cmp1089.i, label %if.then1091.i, label %land.lhs.true1085.i.if.end1124.i_crit_edge

land.lhs.true1085.i.if.end1124.i_crit_edge:       ; preds = %land.lhs.true1085.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1124.i

if.then1091.i:                                    ; preds = %land.lhs.true1085.i
  %arrayidx1092.i = getelementptr i32, ptr %var_size.141414500.i, i32 %args.i.0.args.i.0.args.0.4715.i
  %482 = ptrtoint ptr %arrayidx1092.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %arrayidx1092.i, align 4
  %arrayidx1093.i = getelementptr i32, ptr %vars.041404501.i, i32 %args.i.0.args.i.0.args.0.4715.i
  %484 = ptrtoint ptr %arrayidx1093.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %arrayidx1093.i, align 4
  %486 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %483, i32 4) #11
  %487 = extractvalue { i32, i1 } %486, 1
  br i1 %487, label %kcalloc.exit3780.thread.i, label %if.end7.i.i3778.i, !prof !127

kcalloc.exit3780.thread.i:                        ; preds = %if.then1091.i
  call void @__sanitizer_cov_trace_pc() #13
  %488 = ptrtoint ptr %arrayidx1093.i to i32
  call void @__asan_store4_noabort(i32 %488)
  store i32 0, ptr %arrayidx1093.i, align 4
  br label %while.end2143.i

if.end7.i.i3778.i:                                ; preds = %if.then1091.i
  %489 = extractvalue { i32, i1 } %486, 0
  %call8.i.i3777.i = call noalias align 128 ptr @__kmalloc(i32 noundef %489, i32 noundef 3520) #16
  %490 = ptrtoint ptr %call8.i.i3777.i to i32
  %491 = ptrtoint ptr %arrayidx1093.i to i32
  call void @__asan_store4_noabort(i32 %491)
  store i32 %490, ptr %arrayidx1093.i, align 4
  %cmp1097.i = icmp eq ptr %call8.i.i3777.i, null
  br i1 %cmp1097.i, label %if.end7.i.i3778.i.while.end2143.i_crit_edge, label %for.cond1101.preheader.i

if.end7.i.i3778.i.while.end2143.i_crit_edge:      ; preds = %if.end7.i.i3778.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

for.cond1101.preheader.i:                         ; preds = %if.end7.i.i3778.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %483)
  %cmp11024658.not.i = icmp eq i32 %483, 0
  br i1 %cmp11024658.not.i, label %for.cond1101.preheader.i.for.end1111.i_crit_edge, label %for.cond1101.preheader.i.for.body1104.i_crit_edge

for.cond1101.preheader.i.for.body1104.i_crit_edge: ; preds = %for.cond1101.preheader.i
  br label %for.body1104.i

for.cond1101.preheader.i.for.end1111.i_crit_edge: ; preds = %for.cond1101.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end1111.i

for.body1104.i:                                   ; preds = %for.body1104.i.for.body1104.i_crit_edge, %for.cond1101.preheader.i.for.body1104.i_crit_edge
  %i.64660.i = phi i32 [ %inc1110.i, %for.body1104.i.for.body1104.i_crit_edge ], [ 0, %for.cond1101.preheader.i.for.body1104.i_crit_edge ]
  %long_tmp.04659.i = phi i32 [ %add1108.i, %for.body1104.i.for.body1104.i_crit_edge ], [ %485, %for.cond1101.preheader.i.for.body1104.i_crit_edge ]
  %arrayidx1105.i = getelementptr i8, ptr %129, i32 %long_tmp.04659.i
  %492 = ptrtoint ptr %arrayidx1105.i to i32
  call void @__asan_loadN_noabort(i32 %492, i32 4)
  %493 = load i32, ptr %arrayidx1105.i, align 1
  %arrayidx1107.i = getelementptr i32, ptr %call8.i.i3777.i, i32 %i.64660.i
  %494 = ptrtoint ptr %arrayidx1107.i to i32
  call void @__asan_store4_noabort(i32 %494)
  store i32 %493, ptr %arrayidx1107.i, align 4
  %add1108.i = add i32 %long_tmp.04659.i, 4
  %inc1110.i = add nuw i32 %i.64660.i, 1
  %exitcond4701.not.i = icmp eq i32 %inc1110.i, %483
  br i1 %exitcond4701.not.i, label %for.body1104.i.for.end1111.i_crit_edge, label %for.body1104.i.for.body1104.i_crit_edge

for.body1104.i.for.body1104.i_crit_edge:          ; preds = %for.body1104.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body1104.i

for.body1104.i.for.end1111.i_crit_edge:           ; preds = %for.body1104.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end1111.i

for.end1111.i:                                    ; preds = %for.body1104.i.for.end1111.i_crit_edge, %for.cond1101.preheader.i.for.end1111.i_crit_edge
  %495 = ptrtoint ptr %arrayidx1086.i to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %arrayidx1086.i, align 1
  %497 = and i8 %496, 122
  %498 = or i8 %497, -127
  store i8 %498, ptr %arrayidx1086.i, align 1
  br label %if.end1124.i

if.end1124.i:                                     ; preds = %for.end1111.i, %land.lhs.true1085.i.if.end1124.i_crit_edge, %if.end1081.i.if.end1124.i_crit_edge
  %arrayidx1125.i = getelementptr i8, ptr %attrs.141424499.i, i32 %args.i.0.args.i.0.args.0.4715.i
  %499 = ptrtoint ptr %arrayidx1125.i to i32
  call void @__asan_load1_noabort(i32 %499)
  %500 = load i8, ptr %arrayidx1125.i, align 1
  %501 = and i8 %500, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %501)
  %cmp1128.not.i = icmp eq i8 %501, 24
  br i1 %cmp1128.not.i, label %if.else1131.i, label %if.end1124.i.sw.epilog.i_crit_edge

if.end1124.i.sw.epilog.i_crit_edge:               ; preds = %if.end1124.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.else1131.i:                                    ; preds = %if.end1124.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx1132.i = getelementptr i32, ptr %vars.041404501.i, i32 %args.i.0.args.i.0.args.0.4715.i
  %502 = ptrtoint ptr %arrayidx1132.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %arrayidx1132.i, align 4
  %504 = inttoptr i32 %503 to ptr
  %dec1133.i = add i32 %stack_ptr.04665.i, -1
  %arrayidx1134.i = getelementptr i32, ptr %stack2.i, i32 %dec1133.i
  %505 = ptrtoint ptr %arrayidx1134.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load i32, ptr %arrayidx1134.i, align 4
  %dec1135.i = add i32 %stack_ptr.04665.i, -2
  %arrayidx1136.i = getelementptr i32, ptr %stack2.i, i32 %dec1135.i
  %507 = ptrtoint ptr %arrayidx1136.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %arrayidx1136.i, align 4
  %arrayidx1137.i = getelementptr i32, ptr %504, i32 %506
  %509 = ptrtoint ptr %arrayidx1137.i to i32
  call void @__asan_store4_noabort(i32 %509)
  store i32 %508, ptr %arrayidx1137.i, align 4
  br label %sw.epilog.i

sw.bb1139.i:                                      ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %stack_ptr.04665.i)
  %cmp.i3781.i = icmp ult i32 %stack_ptr.04665.i, 3
  br i1 %cmp.i3781.i, label %sw.bb1139.i.while.end2143.i_crit_edge, label %if.end1143.i

sw.bb1139.i.while.end2143.i_crit_edge:            ; preds = %sw.bb1139.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end1143.i:                                     ; preds = %sw.bb1139.i
  %510 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %args.i.0.args.i.0.args.0.4716.i = load i32, ptr %args.i, align 4
  br i1 %cmp209.not4507.i, label %if.end1143.i.if.end1209.i_crit_edge, label %land.lhs.true1147.i

if.end1143.i.if.end1209.i_crit_edge:              ; preds = %if.end1143.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1209.i

land.lhs.true1147.i:                              ; preds = %if.end1143.i
  %arrayidx1148.i = getelementptr i8, ptr %attrs.141424499.i, i32 %args.i.0.args.i.0.args.0.4716.i
  %511 = ptrtoint ptr %arrayidx1148.i to i32
  call void @__asan_load1_noabort(i32 %511)
  %512 = load i8, ptr %arrayidx1148.i, align 1
  %513 = and i8 %512, -100
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %513)
  %cmp1151.i = icmp eq i8 %513, 12
  br i1 %cmp1151.i, label %if.then1153.i, label %land.lhs.true1147.i.if.end1209.i_crit_edge

land.lhs.true1147.i.if.end1209.i_crit_edge:       ; preds = %land.lhs.true1147.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1209.i

if.then1153.i:                                    ; preds = %land.lhs.true1147.i
  %arrayidx1154.i = getelementptr i32, ptr %var_size.141414500.i, i32 %args.i.0.args.i.0.args.0.4716.i
  %514 = ptrtoint ptr %arrayidx1154.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %arrayidx1154.i, align 4
  %add1155.i = add i32 %515, 7
  %shr1156.i = ashr i32 %add1155.i, 3
  %arrayidx1157.i = getelementptr i32, ptr %vars.041404501.i, i32 %args.i.0.args.i.0.args.0.4716.i
  %516 = ptrtoint ptr %arrayidx1157.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %arrayidx1157.i, align 4
  %518 = inttoptr i32 %517 to ptr
  %call9.i.i3810.i = call noalias align 128 ptr @__kmalloc(i32 noundef %shr1156.i, i32 noundef 3520) #16
  %519 = ptrtoint ptr %call9.i.i3810.i to i32
  %520 = ptrtoint ptr %arrayidx1157.i to i32
  call void @__asan_store4_noabort(i32 %520)
  store i32 %519, ptr %arrayidx1157.i, align 4
  %cmp1161.i = icmp eq ptr %call9.i.i3810.i, null
  br i1 %cmp1161.i, label %if.then1153.i.while.end2143.i_crit_edge, label %for.cond1165.preheader.i

if.then1153.i.while.end2143.i_crit_edge:          ; preds = %if.then1153.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

for.cond1165.preheader.i:                         ; preds = %if.then1153.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add1155.i)
  %cmp11664650.i = icmp sgt i32 %add1155.i, 7
  br i1 %cmp11664650.i, label %for.body1168.preheader.i, label %for.cond1165.preheader.i.for.cond1173.preheader.i_crit_edge

for.cond1165.preheader.i.for.cond1173.preheader.i_crit_edge: ; preds = %for.cond1165.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1173.preheader.i

for.body1168.preheader.i:                         ; preds = %for.cond1165.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  %smax4698.i = call i32 @llvm.smax.i32(i32 %shr1156.i, i32 1) #11
  %521 = call ptr @memset(ptr %call9.i.i3810.i, i32 0, i32 %smax4698.i)
  br label %for.cond1173.preheader.i

for.cond1173.preheader.i:                         ; preds = %for.body1168.preheader.i, %for.cond1165.preheader.i.for.cond1173.preheader.i_crit_edge
  %522 = ptrtoint ptr %arrayidx1154.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %arrayidx1154.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %523)
  %cmp11754652.i = icmp sgt i32 %523, 0
  br i1 %cmp11754652.i, label %for.cond1173.preheader.i.for.body1177.i_crit_edge, label %for.cond1173.preheader.i.for.end1196.i_crit_edge

for.cond1173.preheader.i.for.end1196.i_crit_edge: ; preds = %for.cond1173.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end1196.i

for.cond1173.preheader.i.for.body1177.i_crit_edge: ; preds = %for.cond1173.preheader.i
  br label %for.body1177.i

for.body1177.i:                                   ; preds = %for.inc1194.i.for.body1177.i_crit_edge, %for.cond1173.preheader.i.for.body1177.i_crit_edge
  %long_idx.14653.i = phi i32 [ %inc1195.i, %for.inc1194.i.for.body1177.i_crit_edge ], [ 0, %for.cond1173.preheader.i.for.body1177.i_crit_edge ]
  %524 = lshr i32 %long_idx.14653.i, 3
  %arrayidx1179.i = getelementptr i8, ptr %518, i32 %524
  %525 = ptrtoint ptr %arrayidx1179.i to i32
  call void @__asan_load1_noabort(i32 %525)
  %526 = load i8, ptr %arrayidx1179.i, align 1
  %conv1180.i = zext i8 %526 to i32
  %and1181.i = and i32 %long_idx.14653.i, 7
  %shl1182.i = shl nuw nsw i32 1, %and1181.i
  %and1183.i = and i32 %shl1182.i, %conv1180.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1183.i)
  %tobool1184.not.i = icmp eq i32 %and1183.i, 0
  br i1 %tobool1184.not.i, label %for.body1177.i.for.inc1194.i_crit_edge, label %if.then1185.i

for.body1177.i.for.inc1194.i_crit_edge:           ; preds = %for.body1177.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc1194.i

if.then1185.i:                                    ; preds = %for.body1177.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx1189.i = getelementptr i8, ptr %call9.i.i3810.i, i32 %524
  %527 = ptrtoint ptr %arrayidx1189.i to i32
  call void @__asan_load1_noabort(i32 %527)
  %528 = load i8, ptr %arrayidx1189.i, align 1
  %529 = trunc i32 %shl1182.i to i8
  %conv1192.i = or i8 %528, %529
  store i8 %conv1192.i, ptr %arrayidx1189.i, align 1
  br label %for.inc1194.i

for.inc1194.i:                                    ; preds = %if.then1185.i, %for.body1177.i.for.inc1194.i_crit_edge
  %inc1195.i = add nuw nsw i32 %long_idx.14653.i, 1
  %530 = ptrtoint ptr %arrayidx1154.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load i32, ptr %arrayidx1154.i, align 4
  %cmp1175.i = icmp slt i32 %inc1195.i, %531
  br i1 %cmp1175.i, label %for.inc1194.i.for.body1177.i_crit_edge, label %for.inc1194.i.for.end1196.i_crit_edge

for.inc1194.i.for.end1196.i_crit_edge:            ; preds = %for.inc1194.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end1196.i

for.inc1194.i.for.body1177.i_crit_edge:           ; preds = %for.inc1194.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body1177.i

for.end1196.i:                                    ; preds = %for.inc1194.i.for.end1196.i_crit_edge, %for.cond1173.preheader.i.for.end1196.i_crit_edge
  %532 = ptrtoint ptr %arrayidx1148.i to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %arrayidx1148.i, align 1
  %534 = and i8 %533, 122
  %535 = or i8 %534, -127
  store i8 %535, ptr %arrayidx1148.i, align 1
  br label %if.end1209.i

if.end1209.i:                                     ; preds = %for.end1196.i, %land.lhs.true1147.i.if.end1209.i_crit_edge, %if.end1143.i.if.end1209.i_crit_edge
  %arrayidx1210.i = getelementptr i8, ptr %attrs.141424499.i, i32 %args.i.0.args.i.0.args.0.4716.i
  %536 = ptrtoint ptr %arrayidx1210.i to i32
  call void @__asan_load1_noabort(i32 %536)
  %537 = load i8, ptr %arrayidx1210.i, align 1
  %538 = and i8 %537, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %538)
  %cmp1213.not.i = icmp eq i8 %538, 8
  br i1 %cmp1213.not.i, label %if.end1216.i, label %if.end1209.i.sw.epilog.i_crit_edge

if.end1209.i.sw.epilog.i_crit_edge:               ; preds = %if.end1209.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end1216.i:                                     ; preds = %if.end1209.i
  %arrayidx1217.i = getelementptr i32, ptr %vars.041404501.i, i32 %args.i.0.args.i.0.args.0.4716.i
  %539 = ptrtoint ptr %arrayidx1217.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %arrayidx1217.i, align 4
  %541 = inttoptr i32 %540 to ptr
  %dec1218.i = add i32 %stack_ptr.04665.i, -1
  %arrayidx1219.i = getelementptr i32, ptr %stack2.i, i32 %dec1218.i
  %542 = ptrtoint ptr %arrayidx1219.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %arrayidx1219.i, align 4
  %dec1220.i = add i32 %stack_ptr.04665.i, -2
  %arrayidx1221.i = getelementptr i32, ptr %stack2.i, i32 %dec1220.i
  %544 = ptrtoint ptr %arrayidx1221.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %arrayidx1221.i, align 4
  br i1 %cmp209.not4507.i, label %if.end1216.i.if.end1234.i_crit_edge, label %if.then1224.i

if.end1216.i.if.end1234.i_crit_edge:              ; preds = %if.end1216.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1234.i

if.then1224.i:                                    ; preds = %if.end1216.i
  call void @__sanitizer_cov_trace_cmp4(i32 %545, i32 %543)
  %cmp1225.i = icmp sgt i32 %545, %543
  br i1 %cmp1225.i, label %if.then1224.i.sw.epilog.i_crit_edge, label %if.else1230.i

if.then1224.i.sw.epilog.i_crit_edge:              ; preds = %if.then1224.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.else1230.i:                                    ; preds = %if.then1224.i
  call void @__sanitizer_cov_trace_pc() #13
  %add1231.i = add i32 %543, 1
  %sub1232.i = sub i32 %add1231.i, %545
  br label %if.end1234.i

if.end1234.i:                                     ; preds = %if.else1230.i, %if.end1216.i.if.end1234.i_crit_edge
  %long_count.0.i = phi i32 [ %sub1232.i, %if.else1230.i ], [ %543, %if.end1216.i.if.end1234.i_crit_edge ]
  %dec1235.i = add i32 %stack_ptr.04665.i, -3
  %arrayidx1236.i = getelementptr i32, ptr %stack2.i, i32 %dec1235.i
  %546 = ptrtoint ptr %arrayidx1236.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %arrayidx1236.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %long_count.0.i)
  %cmp1237.i = icmp slt i32 %long_count.0.i, 1
  br i1 %cmp1237.i, label %if.end1234.i.sw.epilog.i_crit_edge, label %if.end1234.i.for.body1244.i_crit_edge

if.end1234.i.for.body1244.i_crit_edge:            ; preds = %if.end1234.i
  br label %for.body1244.i

if.end1234.i.sw.epilog.i_crit_edge:               ; preds = %if.end1234.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

for.body1244.i:                                   ; preds = %for.body1244.i.for.body1244.i_crit_edge, %if.end1234.i.for.body1244.i_crit_edge
  %i.74657.i = phi i32 [ %inc1267.i, %for.body1244.i.for.body1244.i_crit_edge ], [ 0, %if.end1234.i.for.body1244.i_crit_edge ]
  %long_idx.24655.i = phi i32 [ %inc1265.i, %for.body1244.i.for.body1244.i_crit_edge ], [ %545, %if.end1234.i.for.body1244.i_crit_edge ]
  %shl1245.i = shl nuw i32 1, %i.74657.i
  %and1246.i = and i32 %shl1245.i, %547
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1246.i)
  %tobool1247.not.i = icmp eq i32 %and1246.i, 0
  %and1257.i = and i32 %long_idx.24655.i, 7
  %shl1258.i = shl nuw nsw i32 1, %and1257.i
  %shr1259.i = ashr i32 %long_idx.24655.i, 3
  %arrayidx1260.i = getelementptr i8, ptr %541, i32 %shr1259.i
  %548 = ptrtoint ptr %arrayidx1260.i to i32
  call void @__asan_load1_noabort(i32 %548)
  %549 = load i8, ptr %arrayidx1260.i, align 1
  %550 = trunc i32 %shl1258.i to i8
  %551 = xor i8 %550, -1
  %conv1263.i = and i8 %549, %551
  %conv1255.i = or i8 %549, %550
  %conv1263.sink.i = select i1 %tobool1247.not.i, i8 %conv1263.i, i8 %conv1255.i
  store i8 %conv1263.sink.i, ptr %arrayidx1260.i, align 1
  %inc1265.i = add i32 %long_idx.24655.i, 1
  %inc1267.i = add nuw nsw i32 %i.74657.i, 1
  %exitcond4699.not.i = icmp eq i32 %inc1267.i, %long_count.0.i
  br i1 %exitcond4699.not.i, label %for.body1244.i.sw.epilog.i_crit_edge, label %for.body1244.i.for.body1244.i_crit_edge

for.body1244.i.for.body1244.i_crit_edge:          ; preds = %for.body1244.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body1244.i

for.body1244.i.sw.epilog.i_crit_edge:             ; preds = %for.body1244.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb1269.i:                                      ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stack_ptr.04665.i)
  %cmp.i3814.i = icmp eq i32 %stack_ptr.04665.i, 0
  br i1 %cmp.i3814.i, label %sw.bb1269.i.while.end2143.i_crit_edge, label %if.then1272.i

sw.bb1269.i.while.end2143.i_crit_edge:            ; preds = %sw.bb1269.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then1272.i:                                    ; preds = %sw.bb1269.i
  %dec1273.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx1274.i = getelementptr i32, ptr %stack2.i, i32 %dec1273.i
  %552 = ptrtoint ptr %arrayidx1274.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %arrayidx1274.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %553)
  %cmp1275.i = icmp eq i32 %553, 0
  br i1 %cmp1275.i, label %if.then1277.i, label %if.then1272.i.sw.epilog.i.thread_crit_edge

if.then1272.i.sw.epilog.i.thread_crit_edge:       ; preds = %if.then1272.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.thread

if.then1277.i:                                    ; preds = %if.then1272.i
  %554 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %args.i.0.args.i.0.args.0.4717.i = load i32, ptr %args.i, align 4
  %add1279.i = add i32 %args.i.0.args.i.0.args.0.4717.i, %152
  call void @__sanitizer_cov_trace_cmp4(i32 %add1279.i, i32 %152)
  %cmp1280.i = icmp uge i32 %add1279.i, %152
  call void @__sanitizer_cov_trace_cmp4(i32 %add1279.i, i32 %154)
  %cmp1283.not.i = icmp ult i32 %add1279.i, %154
  %or.cond3413.i = select i1 %cmp1280.i, i1 %cmp1283.not.i, i1 false
  br i1 %or.cond3413.i, label %if.then1277.i.sw.epilog.i.thread_crit_edge, label %if.then1277.i.while.end2143.i_crit_edge

if.then1277.i.while.end2143.i_crit_edge:          ; preds = %if.then1277.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then1277.i.sw.epilog.i.thread_crit_edge:       ; preds = %if.then1277.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.thread

sw.bb1289.i:                                      ; preds = %for.end353.i.sw.bb1289.i_crit_edge, %for.end353.i.sw.bb1289.i_crit_edge540
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3818.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3818.i, label %sw.bb1289.i.while.end2143.i_crit_edge, label %if.end1293.i

sw.bb1289.i.while.end2143.i_crit_edge:            ; preds = %sw.bb1289.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end1293.i:                                     ; preds = %sw.bb1289.i
  %dec1294.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx1295.i = getelementptr i32, ptr %stack2.i, i32 %dec1294.i
  %555 = ptrtoint ptr %arrayidx1295.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %arrayidx1295.i, align 4
  %dec1296.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx1297.i = getelementptr i32, ptr %stack2.i, i32 %dec1296.i
  %557 = ptrtoint ptr %arrayidx1297.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %arrayidx1297.i, align 4
  br i1 %cmp209.not4507.i, label %if.end1307.thread.i, label %if.end1307.i

if.end1307.thread.i:                              ; preds = %if.end1293.i
  call void @__sanitizer_cov_trace_pc() #13
  %559 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %args.i.0.args.i.0.args.0.4734.i = load i32, ptr %args.i, align 4
  %arrayidx13094377.i = getelementptr i32, ptr %vars.041404501.i, i32 %args.i.0.args.i.0.args.0.4734.i
  %560 = ptrtoint ptr %arrayidx13094377.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load i32, ptr %arrayidx13094377.i, align 4
  %562 = inttoptr i32 %561 to ptr
  br label %if.end1353.i

if.end1307.i:                                     ; preds = %if.end1293.i
  %dec1301.i = add nsw i32 %stack_ptr.04665.i, -3
  %arrayidx1302.i = getelementptr i32, ptr %stack2.i, i32 %dec1301.i
  %563 = ptrtoint ptr %arrayidx1302.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %arrayidx1302.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %556, i32 %558)
  %cmp1303.not.i = icmp sgt i32 %556, %558
  %565 = call i32 @llvm.smin.i32(i32 %556, i32 %558) #11
  %566 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %args.i.0.args.i.0.args.0.4718.i = load i32, ptr %args.i, align 4
  %arrayidx1309.i = getelementptr i32, ptr %vars.041404501.i, i32 %args.i.0.args.i.0.args.0.4718.i
  %567 = ptrtoint ptr %arrayidx1309.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %arrayidx1309.i, align 4
  %569 = inttoptr i32 %568 to ptr
  br i1 %cmp1303.not.i, label %if.end8.i.i3847.i, label %if.end1307.i.if.end1353.i_crit_edge

if.end1307.i.if.end1353.i_crit_edge:              ; preds = %if.end1307.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1353.i

if.end8.i.i3847.i:                                ; preds = %if.end1307.i
  %shr1312.i = ashr i32 %564, 3
  %add1313.i = add nsw i32 %shr1312.i, 1
  %call9.i.i3846.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add1313.i, i32 noundef 3520) #16
  %cmp1315.i = icmp eq ptr %call9.i.i3846.i, null
  br i1 %cmp1315.i, label %if.end8.i.i3847.i.sw.epilog.i_crit_edge, label %if.end1318.i

if.end8.i.i3847.i.sw.epilog.i_crit_edge:          ; preds = %if.end8.i.i3847.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end1318.i:                                     ; preds = %if.end8.i.i3847.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %564)
  %cmp13224646.i = icmp sgt i32 %564, 0
  br i1 %cmp13224646.i, label %while.body1324.preheader.i, label %if.end1318.i.if.end1353.i_crit_edge

if.end1318.i.if.end1353.i_crit_edge:              ; preds = %if.end1318.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1353.i

while.body1324.preheader.i:                       ; preds = %if.end1318.i
  %add1319.i = add i32 %564, %565
  br label %while.body1324.i

while.body1324.i:                                 ; preds = %while.body1324.i.while.body1324.i_crit_edge, %while.body1324.preheader.i
  %long_tmp.14649.in.i = phi i32 [ %long_tmp.14649.i, %while.body1324.i.while.body1324.i_crit_edge ], [ %add1319.i, %while.body1324.preheader.i ]
  %long_idx2.04647.i = phi i32 [ %inc1351.i, %while.body1324.i.while.body1324.i_crit_edge ], [ 0, %while.body1324.preheader.i ]
  %long_tmp.14649.i = add i32 %long_tmp.14649.in.i, -1
  %shr1325.i = ashr i32 %long_tmp.14649.i, 3
  %arrayidx1326.i = getelementptr i8, ptr %569, i32 %shr1325.i
  %570 = ptrtoint ptr %arrayidx1326.i to i32
  call void @__asan_load1_noabort(i32 %570)
  %571 = load i8, ptr %arrayidx1326.i, align 1
  %conv1327.i = zext i8 %571 to i32
  %and1328.i = and i32 %long_tmp.14649.i, 7
  %shl1329.i = shl nuw nsw i32 1, %and1328.i
  %and1330.i = and i32 %shl1329.i, %conv1327.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1330.i)
  %tobool1331.not.i = icmp eq i32 %and1330.i, 0
  %and1341.i = and i32 %long_idx2.04647.i, 7
  %shl1342.i = shl nuw nsw i32 1, %and1341.i
  %572 = lshr i32 %long_idx2.04647.i, 3
  %arrayidx1345.i = getelementptr i8, ptr %call9.i.i3846.i, i32 %572
  %573 = ptrtoint ptr %arrayidx1345.i to i32
  call void @__asan_load1_noabort(i32 %573)
  %574 = load i8, ptr %arrayidx1345.i, align 1
  %575 = trunc i32 %shl1342.i to i8
  %576 = xor i8 %575, -1
  %conv1348.i = and i8 %574, %576
  %conv1339.i = or i8 %574, %575
  %conv1348.sink.i = select i1 %tobool1331.not.i, i8 %conv1348.i, i8 %conv1339.i
  store i8 %conv1348.sink.i, ptr %arrayidx1345.i, align 1
  %inc1351.i = add nuw nsw i32 %long_idx2.04647.i, 1
  %exitcond4697.not.i = icmp eq i32 %inc1351.i, %564
  br i1 %exitcond4697.not.i, label %while.body1324.i.if.end1353.i_crit_edge, label %while.body1324.i.while.body1324.i_crit_edge

while.body1324.i.while.body1324.i_crit_edge:      ; preds = %while.body1324.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body1324.i

while.body1324.i.if.end1353.i_crit_edge:          ; preds = %while.body1324.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1353.i

if.end1353.i:                                     ; preds = %while.body1324.i.if.end1353.i_crit_edge, %if.end1318.i.if.end1353.i_crit_edge, %if.end1307.i.if.end1353.i_crit_edge, %if.end1307.thread.i
  %tobool1310.not4381.i = phi i1 [ true, %if.end1307.i.if.end1353.i_crit_edge ], [ true, %if.end1307.thread.i ], [ false, %if.end1318.i.if.end1353.i_crit_edge ], [ false, %while.body1324.i.if.end1353.i_crit_edge ]
  %long_idx.34380.i = phi i32 [ %565, %if.end1307.i.if.end1353.i_crit_edge ], [ %556, %if.end1307.thread.i ], [ %565, %if.end1318.i.if.end1353.i_crit_edge ], [ %565, %while.body1324.i.if.end1353.i_crit_edge ]
  %long_count.14379.i = phi i32 [ %564, %if.end1307.i.if.end1353.i_crit_edge ], [ %558, %if.end1307.thread.i ], [ %564, %if.end1318.i.if.end1353.i_crit_edge ], [ %564, %while.body1324.i.if.end1353.i_crit_edge ]
  %stack_ptr.54378.i = phi i32 [ %dec1301.i, %if.end1307.i.if.end1353.i_crit_edge ], [ %dec1296.i, %if.end1307.thread.i ], [ %dec1301.i, %if.end1318.i.if.end1353.i_crit_edge ], [ %dec1301.i, %while.body1324.i.if.end1353.i_crit_edge ]
  %charptr_tmp.0.i = phi ptr [ %569, %if.end1307.i.if.end1353.i_crit_edge ], [ %562, %if.end1307.thread.i ], [ %call9.i.i3846.i, %if.end1318.i.if.end1353.i_crit_edge ], [ %call9.i.i3846.i, %while.body1324.i.if.end1353.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 81, i8 %235)
  %cmp1354.i = icmp eq i8 %235, 81
  br i1 %cmp1354.i, label %if.then1356.i, label %if.else1358.i

if.then1356.i:                                    ; preds = %if.end1353.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1357.i = call i32 @altera_drscan(ptr noundef %call7.i.i166, i32 noundef %long_count.14379.i, ptr noundef %charptr_tmp.0.i, i32 noundef %long_idx.34380.i) #11
  br label %if.end1360.i

if.else1358.i:                                    ; preds = %if.end1353.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1359.i = call i32 @altera_irscan(ptr noundef %call7.i.i166, i32 noundef %long_count.14379.i, ptr noundef %charptr_tmp.0.i, i32 noundef %long_idx.34380.i) #11
  br label %if.end1360.i

if.end1360.i:                                     ; preds = %if.else1358.i, %if.then1356.i
  %storemerge.i = phi i32 [ %call1359.i, %if.else1358.i ], [ %call1357.i, %if.then1356.i ]
  br i1 %tobool1310.not4381.i, label %if.end1360.i.sw.epilog.i_crit_edge, label %if.then1362.i

if.end1360.i.sw.epilog.i_crit_edge:               ; preds = %if.end1360.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.then1362.i:                                    ; preds = %if.end1360.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef %charptr_tmp.0.i) #11
  br label %sw.epilog.i

sw.bb1364.i:                                      ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3850.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3850.i, label %sw.bb1364.i.while.end2143.i_crit_edge, label %if.end1368.i

sw.bb1364.i.while.end2143.i_crit_edge:            ; preds = %sw.bb1364.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end1368.i:                                     ; preds = %sw.bb1364.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec1369.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx1370.i = getelementptr i32, ptr %stack2.i, i32 %dec1369.i
  %577 = ptrtoint ptr %arrayidx1370.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load i32, ptr %arrayidx1370.i, align 4
  %dec1371.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx1372.i = getelementptr i32, ptr %stack2.i, i32 %dec1371.i
  %579 = ptrtoint ptr %arrayidx1372.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load i32, ptr %arrayidx1372.i, align 4
  %add1376.i = sub i32 1, %578
  %sub1377.i = select i1 %cmp209.not4507.i, i32 0, i32 %add1376.i
  %count.0.i = add i32 %sub1377.i, %580
  %581 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %args.i.0.args.i.0.args.0.4719.i = load i32, ptr %args.i, align 4
  %arrayidx1380.i = getelementptr i32, ptr %vars.041404501.i, i32 %args.i.0.args.i.0.args.0.4719.i
  %582 = ptrtoint ptr %arrayidx1380.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load i32, ptr %arrayidx1380.i, align 4
  %584 = inttoptr i32 %583 to ptr
  %call1382.i = call i32 @altera_set_dr_pre(ptr noundef %js1438.i, i32 noundef %count.0.i, i32 noundef %578, ptr noundef %584) #11
  br label %sw.epilog.i.thread

sw.bb1383.i:                                      ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3854.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3854.i, label %sw.bb1383.i.while.end2143.i_crit_edge, label %if.end1387.i

sw.bb1383.i.while.end2143.i_crit_edge:            ; preds = %sw.bb1383.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end1387.i:                                     ; preds = %sw.bb1383.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec1388.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx1389.i = getelementptr i32, ptr %stack2.i, i32 %dec1388.i
  %585 = ptrtoint ptr %arrayidx1389.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load i32, ptr %arrayidx1389.i, align 4
  %dec1390.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx1391.i = getelementptr i32, ptr %stack2.i, i32 %dec1390.i
  %587 = ptrtoint ptr %arrayidx1391.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load i32, ptr %arrayidx1391.i, align 4
  %add1395.i = sub i32 1, %586
  %sub1396.i = select i1 %cmp209.not4507.i, i32 0, i32 %add1395.i
  %count.1.i = add i32 %sub1396.i, %588
  %589 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %args.i.0.args.i.0.args.0.4720.i = load i32, ptr %args.i, align 4
  %arrayidx1399.i = getelementptr i32, ptr %vars.041404501.i, i32 %args.i.0.args.i.0.args.0.4720.i
  %590 = ptrtoint ptr %arrayidx1399.i to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load i32, ptr %arrayidx1399.i, align 4
  %592 = inttoptr i32 %591 to ptr
  %call1401.i = call i32 @altera_set_dr_post(ptr noundef %js1438.i, i32 noundef %count.1.i, i32 noundef %586, ptr noundef %592) #11
  br label %sw.epilog.i.thread

sw.bb1402.i:                                      ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3858.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3858.i, label %sw.bb1402.i.while.end2143.i_crit_edge, label %if.end1406.i

sw.bb1402.i.while.end2143.i_crit_edge:            ; preds = %sw.bb1402.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end1406.i:                                     ; preds = %sw.bb1402.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec1407.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx1408.i = getelementptr i32, ptr %stack2.i, i32 %dec1407.i
  %593 = ptrtoint ptr %arrayidx1408.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load i32, ptr %arrayidx1408.i, align 4
  %dec1409.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx1410.i = getelementptr i32, ptr %stack2.i, i32 %dec1409.i
  %595 = ptrtoint ptr %arrayidx1410.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load i32, ptr %arrayidx1410.i, align 4
  %add1414.i = sub i32 1, %594
  %sub1415.i = select i1 %cmp209.not4507.i, i32 0, i32 %add1414.i
  %count.2.i = add i32 %sub1415.i, %596
  %597 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %args.i.0.args.i.0.args.0.4721.i = load i32, ptr %args.i, align 4
  %arrayidx1418.i = getelementptr i32, ptr %vars.041404501.i, i32 %args.i.0.args.i.0.args.0.4721.i
  %598 = ptrtoint ptr %arrayidx1418.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load i32, ptr %arrayidx1418.i, align 4
  %600 = inttoptr i32 %599 to ptr
  %call1420.i = call i32 @altera_set_ir_pre(ptr noundef %js1438.i, i32 noundef %count.2.i, i32 noundef %594, ptr noundef %600) #11
  br label %sw.epilog.i.thread

sw.bb1421.i:                                      ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3862.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3862.i, label %sw.bb1421.i.while.end2143.i_crit_edge, label %if.end1425.i

sw.bb1421.i.while.end2143.i_crit_edge:            ; preds = %sw.bb1421.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end1425.i:                                     ; preds = %sw.bb1421.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec1426.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx1427.i = getelementptr i32, ptr %stack2.i, i32 %dec1426.i
  %601 = ptrtoint ptr %arrayidx1427.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load i32, ptr %arrayidx1427.i, align 4
  %dec1428.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx1429.i = getelementptr i32, ptr %stack2.i, i32 %dec1428.i
  %603 = ptrtoint ptr %arrayidx1429.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load i32, ptr %arrayidx1429.i, align 4
  %add1433.i = sub i32 1, %602
  %sub1434.i = select i1 %cmp209.not4507.i, i32 0, i32 %add1433.i
  %count.3.i = add i32 %sub1434.i, %604
  %605 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %args.i.0.args.i.0.args.0.4722.i = load i32, ptr %args.i, align 4
  %arrayidx1437.i = getelementptr i32, ptr %vars.041404501.i, i32 %args.i.0.args.i.0.args.0.4722.i
  %606 = ptrtoint ptr %arrayidx1437.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load i32, ptr %arrayidx1437.i, align 4
  %608 = inttoptr i32 %607 to ptr
  %call1439.i = call i32 @altera_set_ir_post(ptr noundef %js1438.i, i32 noundef %count.3.i, i32 noundef %602, ptr noundef %608) #11
  br label %sw.epilog.i.thread

sw.bb1440.i:                                      ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stack_ptr.04665.i)
  %cmp.i3866.i = icmp eq i32 %stack_ptr.04665.i, 0
  br i1 %cmp.i3866.i, label %sw.bb1440.i.while.end2143.i_crit_edge, label %if.then1443.i

sw.bb1440.i.while.end2143.i_crit_edge:            ; preds = %sw.bb1440.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then1443.i:                                    ; preds = %sw.bb1440.i
  %dec1447.i = add nsw i32 %stack_ptr.04665.i, -1
  %609 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %609)
  %tobool.not.i.i = icmp eq i32 %609, 0
  br i1 %tobool.not.i.i, label %if.then1443.i.sw.epilog.i.thread_crit_edge, label %do.end.i.i

if.then1443.i.sw.epilog.i.thread_crit_edge:       ; preds = %if.then1443.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.thread

do.end.i.i:                                       ; preds = %if.then1443.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx1448.i = getelementptr i32, ptr %stack2.i, i32 %dec1447.i
  %610 = ptrtoint ptr %arrayidx1448.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load i32, ptr %arrayidx1448.i, align 4
  %612 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %612)
  %args.i.0.args.i.0.args.0.4723.i = load i32, ptr %args.i, align 4
  %add1445.i = add i32 %args.i.0.args.i.0.args.0.4723.i, %146
  %arrayidx1446.i = getelementptr i8, ptr %129, i32 %add1445.i
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %arrayidx1446.i, i32 noundef %611) #15
  br label %sw.epilog.i.thread

sw.bb1450.i:                                      ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stack_ptr.04665.i)
  %cmp.i3870.i = icmp eq i32 %stack_ptr.04665.i, 0
  br i1 %cmp.i3870.i, label %sw.bb1450.i.while.end2143.i_crit_edge, label %if.end1454.i

sw.bb1450.i.while.end2143.i_crit_edge:            ; preds = %sw.bb1450.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end1454.i:                                     ; preds = %sw.bb1450.i
  %613 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %args.i.0.args.i.0.args.0.4724.i = load i32, ptr %args.i, align 4
  %sub1456.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx1457.i = getelementptr i32, ptr %stack2.i, i32 %sub1456.i
  %614 = ptrtoint ptr %arrayidx1457.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load i32, ptr %arrayidx1457.i, align 4
  %arrayidx1458.i = getelementptr i8, ptr %attrs.141424499.i, i32 %args.i.0.args.i.0.args.0.4724.i
  %616 = ptrtoint ptr %arrayidx1458.i to i32
  call void @__asan_load1_noabort(i32 %616)
  %617 = load i8, ptr %arrayidx1458.i, align 1
  %trunc.i = trunc i8 %617 to i5
  %618 = zext i5 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %618, ptr @__sancov_gen_cov_switch_values.68)
  switch i5 %trunc.i, label %if.end1454.i.while.end2143.i_crit_edge [
    i5 -7, label %if.then1463.i
    i5 -4, label %if.then1474.i
  ]

if.end1454.i.while.end2143.i_crit_edge:           ; preds = %if.end1454.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.then1463.i:                                    ; preds = %if.end1454.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx1464.i = getelementptr i32, ptr %vars.041404501.i, i32 %args.i.0.args.i.0.args.0.4724.i
  %619 = ptrtoint ptr %arrayidx1464.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load i32, ptr %arrayidx1464.i, align 4
  %621 = inttoptr i32 %620 to ptr
  %arrayidx1465.i = getelementptr i32, ptr %621, i32 %615
  %622 = ptrtoint ptr %arrayidx1465.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load i32, ptr %arrayidx1465.i, align 4
  %624 = ptrtoint ptr %arrayidx1457.i to i32
  call void @__asan_store4_noabort(i32 %624)
  store i32 %623, ptr %arrayidx1457.i, align 4
  br label %sw.epilog.i.thread

if.then1474.i:                                    ; preds = %if.end1454.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx1475.i = getelementptr i32, ptr %vars.041404501.i, i32 %args.i.0.args.i.0.args.0.4724.i
  %625 = ptrtoint ptr %arrayidx1475.i to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load i32, ptr %arrayidx1475.i, align 4
  %mul1476.i = shl i32 %615, 2
  %add1477.i = add i32 %626, %mul1476.i
  %arrayidx1478.i = getelementptr i8, ptr %129, i32 %add1477.i
  %627 = ptrtoint ptr %arrayidx1478.i to i32
  call void @__asan_loadN_noabort(i32 %627, i32 4)
  %628 = load i32, ptr %arrayidx1478.i, align 1
  %629 = ptrtoint ptr %arrayidx1457.i to i32
  call void @__asan_store4_noabort(i32 %629)
  store i32 %628, ptr %arrayidx1457.i, align 4
  br label %sw.epilog.i.thread

sw.bb1485.i:                                      ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i3874.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i3874.i, label %sw.bb1485.i.while.end2143.i_crit_edge, label %if.end1489.i

sw.bb1485.i.while.end2143.i_crit_edge:            ; preds = %sw.bb1485.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end1489.i:                                     ; preds = %sw.bb1485.i
  %630 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %args.i.0.args.i.0.args.0.4725.i = load i32, ptr %args.i, align 4
  %arrayidx1491.i = getelementptr i8, ptr %attrs.141424499.i, i32 %args.i.0.args.i.0.args.0.4725.i
  %631 = ptrtoint ptr %arrayidx1491.i to i32
  call void @__asan_load1_noabort(i32 %631)
  %632 = load i8, ptr %arrayidx1491.i, align 1
  %633 = and i8 %632, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %633)
  %cmp1494.not.i = icmp eq i8 %633, 8
  br i1 %cmp1494.not.i, label %if.end1497.i, label %if.end1489.i.while.end2143.i_crit_edge

if.end1489.i.while.end2143.i_crit_edge:           ; preds = %if.end1489.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end1497.i:                                     ; preds = %if.end1489.i
  %arrayidx1498.i = getelementptr i32, ptr %vars.041404501.i, i32 %args.i.0.args.i.0.args.0.4725.i
  %634 = ptrtoint ptr %arrayidx1498.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load i32, ptr %arrayidx1498.i, align 4
  %636 = inttoptr i32 %635 to ptr
  %dec1499.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx1500.i = getelementptr i32, ptr %stack2.i, i32 %dec1499.i
  %637 = ptrtoint ptr %arrayidx1500.i to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load i32, ptr %arrayidx1500.i, align 4
  %sub1501.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx1502.i = getelementptr i32, ptr %stack2.i, i32 %sub1501.i
  %639 = ptrtoint ptr %arrayidx1502.i to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load i32, ptr %arrayidx1502.i, align 4
  %add1506.i = add i32 %638, 1
  %sub1507.i = sub i32 %add1506.i, %640
  %count.4.i = select i1 %cmp209.not4507.i, i32 %638, i32 %sub1507.i
  %641 = add i32 %count.4.i, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %641)
  %642 = icmp ult i32 %641, -32
  br i1 %642, label %if.end1497.i.while.end2143.i_crit_edge, label %if.end1497.i.for.body1519.i_crit_edge

if.end1497.i.for.body1519.i_crit_edge:            ; preds = %if.end1497.i
  br label %for.body1519.i

if.end1497.i.while.end2143.i_crit_edge:           ; preds = %if.end1497.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

for.body1519.i:                                   ; preds = %for.body1519.i.for.body1519.i_crit_edge, %if.end1497.i.for.body1519.i_crit_edge
  %i.84643.i = phi i32 [ %inc1534.i, %for.body1519.i.for.body1519.i_crit_edge ], [ 0, %if.end1497.i.for.body1519.i_crit_edge ]
  %long_tmp.24642.i = phi i32 [ %long_tmp.3.i, %for.body1519.i.for.body1519.i_crit_edge ], [ 0, %if.end1497.i.for.body1519.i_crit_edge ]
  %add1520.i = add i32 %i.84643.i, %640
  %shr1521.i = lshr i32 %add1520.i, 3
  %arrayidx1522.i = getelementptr i8, ptr %636, i32 %shr1521.i
  %643 = ptrtoint ptr %arrayidx1522.i to i32
  call void @__asan_load1_noabort(i32 %643)
  %644 = load i8, ptr %arrayidx1522.i, align 1
  %conv1523.i = zext i8 %644 to i32
  %and1525.i = and i32 %add1520.i, 7
  %shl1526.i = shl nuw nsw i32 1, %and1525.i
  %and1527.i = and i32 %shl1526.i, %conv1523.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1527.i)
  %tobool1528.not.i = icmp eq i32 %and1527.i, 0
  %shl1530.i = shl nuw i32 1, %i.84643.i
  %or1531.i = select i1 %tobool1528.not.i, i32 0, i32 %shl1530.i
  %long_tmp.3.i = or i32 %or1531.i, %long_tmp.24642.i
  %inc1534.i = add nuw nsw i32 %i.84643.i, 1
  %exitcond4696.not.i = icmp eq i32 %inc1534.i, %count.4.i
  br i1 %exitcond4696.not.i, label %for.end1535.i, label %for.body1519.i.for.body1519.i_crit_edge

for.body1519.i.for.body1519.i_crit_edge:          ; preds = %for.body1519.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body1519.i

for.end1535.i:                                    ; preds = %for.body1519.i
  call void @__sanitizer_cov_trace_pc() #13
  %645 = ptrtoint ptr %arrayidx1502.i to i32
  call void @__asan_store4_noabort(i32 %645)
  store i32 %long_tmp.3.i, ptr %arrayidx1502.i, align 4
  br label %sw.epilog.i

sw.bb1538.i:                                      ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stack_ptr.04665.i)
  %cmp.i3878.i = icmp eq i32 %stack_ptr.04665.i, 0
  br i1 %cmp.i3878.i, label %sw.bb1538.i.while.end2143.i_crit_edge, label %if.end1542.i

sw.bb1538.i.while.end2143.i_crit_edge:            ; preds = %sw.bb1538.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end1542.i:                                     ; preds = %sw.bb1538.i
  %646 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %args.i.0.args.i.0.args.0.4726.i = load i32, ptr %args.i, align 4
  %dec1544.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx1545.i = getelementptr i32, ptr %stack2.i, i32 %dec1544.i
  %647 = ptrtoint ptr %arrayidx1545.i to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load i32, ptr %arrayidx1545.i, align 4
  %arrayidx1546.i = getelementptr i32, ptr %var_size.141414500.i, i32 %args.i.0.args.i.0.args.0.4726.i
  %649 = ptrtoint ptr %arrayidx1546.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load i32, ptr %arrayidx1546.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %648, i32 %650)
  %cmp1547.i = icmp sgt i32 %648, %650
  br i1 %cmp1547.i, label %if.then1549.i, label %if.end1542.i.sw.epilog.i.thread_crit_edge

if.end1542.i.sw.epilog.i.thread_crit_edge:        ; preds = %if.end1542.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.thread

if.then1549.i:                                    ; preds = %if.end1542.i
  %651 = ptrtoint ptr %arrayidx1546.i to i32
  call void @__asan_store4_noabort(i32 %651)
  store i32 %648, ptr %arrayidx1546.i, align 4
  %arrayidx1551.i = getelementptr i8, ptr %attrs.141424499.i, i32 %args.i.0.args.i.0.args.0.4726.i
  %652 = ptrtoint ptr %arrayidx1551.i to i32
  call void @__asan_load1_noabort(i32 %652)
  %653 = load i8, ptr %arrayidx1551.i, align 1
  %654 = and i8 %653, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %654)
  %tobool1554.not.i = icmp eq i8 %654, 0
  %mul1556.i = shl i32 %648, 2
  %add1558.i = add i32 %648, 7
  %shr1559.i = ashr i32 %add1558.i, 3
  %long_tmp.4.i = select i1 %tobool1554.not.i, i32 %shr1559.i, i32 %mul1556.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %653)
  %tobool1564.not.i = icmp sgt i8 %653, -1
  br i1 %tobool1564.not.i, label %if.then1549.i.if.end8.i.i3908.i_crit_edge, label %if.then1565.i

if.then1549.i.if.end8.i.i3908.i_crit_edge:        ; preds = %if.then1549.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i3908.i

if.then1565.i:                                    ; preds = %if.then1549.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx1566.i = getelementptr i32, ptr %vars.041404501.i, i32 %args.i.0.args.i.0.args.0.4726.i
  %655 = ptrtoint ptr %arrayidx1566.i to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load i32, ptr %arrayidx1566.i, align 4
  %657 = inttoptr i32 %656 to ptr
  call void @kfree(ptr noundef %657) #11
  %658 = ptrtoint ptr %arrayidx1566.i to i32
  call void @__asan_store4_noabort(i32 %658)
  store i32 0, ptr %arrayidx1566.i, align 4
  br label %if.end8.i.i3908.i

if.end8.i.i3908.i:                                ; preds = %if.then1565.i, %if.then1549.i.if.end8.i.i3908.i_crit_edge
  %call9.i.i3907.i = call noalias align 128 ptr @__kmalloc(i32 noundef %long_tmp.4.i, i32 noundef 3520) #16
  %659 = ptrtoint ptr %call9.i.i3907.i to i32
  %arrayidx1570.i = getelementptr i32, ptr %vars.041404501.i, i32 %args.i.0.args.i.0.args.0.4726.i
  %660 = ptrtoint ptr %arrayidx1570.i to i32
  call void @__asan_store4_noabort(i32 %660)
  store i32 %659, ptr %arrayidx1570.i, align 4
  %cmp1572.i = icmp eq ptr %call9.i.i3907.i, null
  br i1 %cmp1572.i, label %if.end8.i.i3908.i.while.end2143.i_crit_edge, label %if.end1575.i

if.end8.i.i3908.i.while.end2143.i_crit_edge:      ; preds = %if.end8.i.i3908.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end1575.i:                                     ; preds = %if.end8.i.i3908.i
  %661 = ptrtoint ptr %arrayidx1551.i to i32
  call void @__asan_load1_noabort(i32 %661)
  %662 = load i8, ptr %arrayidx1551.i, align 1
  %663 = or i8 %662, -128
  store i8 %663, ptr %arrayidx1551.i, align 1
  %664 = ptrtoint ptr %arrayidx1546.i to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load i32, ptr %arrayidx1546.i, align 4
  %add1581.off.i = add i32 %665, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %add1581.off.i)
  %666 = icmp ult i32 %add1581.off.i, 15
  br i1 %666, label %if.end1575.i.sw.epilog.i.thread_crit_edge, label %for.body1587.preheader.i

if.end1575.i.sw.epilog.i.thread_crit_edge:        ; preds = %if.end1575.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.thread

for.body1587.preheader.i:                         ; preds = %if.end1575.i
  call void @__sanitizer_cov_trace_pc() #13
  %667 = ptrtoint ptr %arrayidx1570.i to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load i32, ptr %arrayidx1570.i, align 4
  %669 = inttoptr i32 %668 to ptr
  %add1581.i = add nuw i32 %665, 7
  %div1582.i = sdiv i32 %add1581.i, 8
  %umax4695.i = call i32 @llvm.umax.i32(i32 %div1582.i, i32 1) #11
  %670 = call ptr @memset(ptr %669, i32 0, i32 %umax4695.i)
  br label %sw.epilog.i.thread

sw.bb1593.i:                                      ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %stack_ptr.04665.i)
  %cmp.i3911.i = icmp ult i32 %stack_ptr.04665.i, 3
  %brmerge = or i1 %cmp.i3911.i, %cmp209.not4507.i
  br i1 %brmerge, label %while.end2143.i.loopexit344.split.loop.exit355, label %if.end1601.i

if.end1601.i:                                     ; preds = %sw.bb1593.i
  %671 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %671)
  %args.i.0.args.i.0.args.0.4727.i = load i32, ptr %args.i, align 4
  %add1603.i = add i32 %args.i.0.args.i.0.args.0.4727.i, %146
  %arrayidx1604.i = getelementptr i8, ptr %129, i32 %add1603.i
  %dec1607.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx1608.i = getelementptr i32, ptr %stack2.i, i32 %dec1607.i
  %672 = ptrtoint ptr %arrayidx1608.i to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load i32, ptr %arrayidx1608.i, align 4
  %dec1609.i = add nsw i32 %stack_ptr.04665.i, -3
  %arrayidx1610.i = getelementptr i32, ptr %stack2.i, i32 %dec1609.i
  %674 = ptrtoint ptr %arrayidx1610.i to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load i32, ptr %arrayidx1610.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %673, i32 %675)
  %cmp1611.i = icmp sgt i32 %673, %675
  br i1 %cmp1611.i, label %if.end1601.i.while.end2143.i_crit_edge, label %if.end1614.i

if.end1601.i.while.end2143.i_crit_edge:           ; preds = %if.end1601.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end1614.i:                                     ; preds = %if.end1601.i
  %dec1605.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx1606.i = getelementptr i32, ptr %stack2.i, i32 %dec1605.i
  %676 = ptrtoint ptr %arrayidx1606.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load i32, ptr %arrayidx1606.i, align 4
  %add1615.i = sub i32 1, %673
  %sub1616.i = add i32 %add1615.i, %675
  %arrayidx1617.i = getelementptr i32, ptr %vars.041404501.i, i32 %677
  %678 = ptrtoint ptr %arrayidx1617.i to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load i32, ptr %arrayidx1617.i, align 4
  %680 = inttoptr i32 %679 to ptr
  %and1618.i = and i32 %673, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1618.i)
  %cmp1619.not.i = icmp eq i32 %and1618.i, 0
  br i1 %cmp1619.not.i, label %if.else1662.i, label %if.end8.i.i3941.i

if.end8.i.i3941.i:                                ; preds = %if.end1614.i
  %add1622.i = add i32 %sub1616.i, 7
  %div1623.i = sdiv i32 %add1622.i, 8
  %call9.i.i3940.i = call noalias align 128 ptr @__kmalloc(i32 noundef %div1623.i, i32 noundef 3520) #16
  %cmp1625.i = icmp eq ptr %call9.i.i3940.i, null
  br i1 %cmp1625.i, label %if.end8.i.i3941.i.while.end2143.i_crit_edge, label %for.cond1629.preheader.i

if.end8.i.i3941.i.while.end2143.i_crit_edge:      ; preds = %if.end8.i.i3941.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

for.cond1629.preheader.i:                         ; preds = %if.end8.i.i3941.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1616.i)
  %cmp16304635.not.i = icmp eq i32 %sub1616.i, 0
  br i1 %cmp16304635.not.i, label %if.else50.i.thread.i, label %for.cond1629.preheader.i.for.body1632.i_crit_edge

for.cond1629.preheader.i.for.body1632.i_crit_edge: ; preds = %for.cond1629.preheader.i
  br label %for.body1632.i

if.else50.i.thread.i:                             ; preds = %for.cond1629.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 73, ptr nonnull %string.i.i) #11
  %681 = call ptr @memset(ptr %233, i32 255, i32 72)
  %682 = ptrtoint ptr %string.i.i to i32
  call void @__asan_store1_noabort(i32 %682)
  store i8 0, ptr %string.i.i, align 1
  br label %if.end88.i.i

for.body1632.i:                                   ; preds = %for.body1632.i.for.body1632.i_crit_edge, %for.cond1629.preheader.i.for.body1632.i_crit_edge
  %k.04638.i = phi i32 [ %inc1658.i, %for.body1632.i.for.body1632.i_crit_edge ], [ %673, %for.cond1629.preheader.i.for.body1632.i_crit_edge ]
  %i.94636.i = phi i32 [ %inc1660.i, %for.body1632.i.for.body1632.i_crit_edge ], [ 0, %for.cond1629.preheader.i.for.body1632.i_crit_edge ]
  %shr1633.i = ashr i32 %k.04638.i, 3
  %arrayidx1634.i = getelementptr i8, ptr %680, i32 %shr1633.i
  %683 = ptrtoint ptr %arrayidx1634.i to i32
  call void @__asan_load1_noabort(i32 %683)
  %684 = load i8, ptr %arrayidx1634.i, align 1
  %conv1635.i = zext i8 %684 to i32
  %and1636.i = and i32 %k.04638.i, 7
  %shl1637.i = shl nuw nsw i32 1, %and1636.i
  %and1638.i = and i32 %shl1637.i, %conv1635.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1638.i)
  %tobool1639.not.i = icmp eq i32 %and1638.i, 0
  %and1649.i = and i32 %i.94636.i, 7
  %shl1650.i = shl nuw nsw i32 1, %and1649.i
  %shr1652.i = lshr i32 %i.94636.i, 3
  %arrayidx1653.i = getelementptr i8, ptr %call9.i.i3940.i, i32 %shr1652.i
  %685 = ptrtoint ptr %arrayidx1653.i to i32
  call void @__asan_load1_noabort(i32 %685)
  %686 = load i8, ptr %arrayidx1653.i, align 1
  %687 = trunc i32 %shl1650.i to i8
  %688 = xor i8 %687, -1
  %conv1656.i = and i8 %686, %688
  %conv1647.i = or i8 %686, %687
  %conv1656.sink.i = select i1 %tobool1639.not.i, i8 %conv1656.i, i8 %conv1647.i
  store i8 %conv1656.sink.i, ptr %arrayidx1653.i, align 1
  %inc1658.i = add i32 %k.04638.i, 1
  %inc1660.i = add nuw i32 %i.94636.i, 1
  %exitcond4694.not.i = icmp eq i32 %inc1660.i, %sub1616.i
  br i1 %exitcond4694.not.i, label %for.body1632.i.if.end1669.i_crit_edge, label %for.body1632.i.for.body1632.i_crit_edge

for.body1632.i.for.body1632.i_crit_edge:          ; preds = %for.body1632.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body1632.i

for.body1632.i.if.end1669.i_crit_edge:            ; preds = %for.body1632.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1669.i

if.else1662.i:                                    ; preds = %if.end1614.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %673)
  %cmp1663.not.i = icmp eq i32 %673, 0
  br i1 %cmp1663.not.i, label %if.else1662.i.if.end1669.i_crit_edge, label %if.then1665.i

if.else1662.i.if.end1669.i_crit_edge:             ; preds = %if.else1662.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1669.i

if.then1665.i:                                    ; preds = %if.else1662.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr1666.i = ashr i32 %673, 3
  %arrayidx1667.i = getelementptr i8, ptr %680, i32 %shr1666.i
  br label %if.end1669.i

if.end1669.i:                                     ; preds = %if.then1665.i, %if.else1662.i.if.end1669.i_crit_edge, %for.body1632.i.if.end1669.i_crit_edge
  %charptr_tmp.2.i = phi ptr [ %arrayidx1667.i, %if.then1665.i ], [ %680, %if.else1662.i.if.end1669.i_crit_edge ], [ %call9.i.i3940.i, %for.body1632.i.if.end1669.i_crit_edge ]
  %charptr_tmp2.0.i = phi ptr [ null, %if.then1665.i ], [ null, %if.else1662.i.if.end1669.i_crit_edge ], [ %call9.i.i3940.i, %for.body1632.i.if.end1669.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 73, ptr nonnull %string.i.i) #11
  %689 = call ptr @memset(ptr %string.i.i, i32 255, i32 73)
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %sub1616.i)
  %cmp.i3944.i = icmp sgt i32 %sub1616.i, 288
  br i1 %cmp.i3944.i, label %if.then.i3946.i, label %if.else50.i.i

if.then.i3946.i:                                  ; preds = %if.end1669.i
  %690 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %690)
  %tobool.not.i3945.i = icmp eq i32 %690, 0
  br i1 %tobool.not.i3945.i, label %if.then.i3946.i.for.body.lr.ph.i.i_crit_edge, label %do.end.i3948.i

if.then.i3946.i.for.body.lr.ph.i.i_crit_edge:     ; preds = %if.then.i3946.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph.i.i

do.end.i3948.i:                                   ; preds = %if.then.i3946.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i3947.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %arrayidx1604.i, i32 noundef %sub1616.i) #15
  br label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %do.end.i3948.i, %if.then.i3946.i.for.body.lr.ph.i.i_crit_edge
  %add.i.i = add nuw i32 %sub1616.i, 287
  %div.i.i = sdiv i32 %add.i.i, 288
  %sub.i.i = add nsw i32 %div.i.i, -1
  %mul8.neg.i.i = mul i32 %sub.i.i, -288
  %sub9.i.i = add i32 %mul8.neg.i.i, %sub1616.i
  %add10.i.i = add i32 %sub9.i.i, 3
  %div11140.i.i = lshr i32 %add10.i.i, 2
  %mul.neg.i.i = add nsw i32 %sub1616.i, -288
  %umax.i.i = call i32 @llvm.umax.i32(i32 %div.i.i, i32 1) #11
  %arrayidx.i.i = getelementptr [73 x i8], ptr %string.i.i, i32 0, i32 %div11140.i.i
  %sub13.i.i = add nsw i32 %div11140.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub9.i.i)
  %cmp15147.not.i.i = icmp eq i32 %sub9.i.i, 0
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc47.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %line.0155.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc48.i.i, %for.inc47.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %line.0155.i.i, i32 %sub.i.i)
  %cmp3.i.i = icmp ult i32 %line.0155.i.i, %sub.i.i
  br i1 %cmp3.i.i, label %if.end12.thread.i.i, label %if.end12.i.i

if.end12.thread.i.i:                              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %.neg.i.i = mul i32 %line.0155.i.i, -288
  %sub6.i.i = add i32 %mul.neg.i.i, %.neg.i.i
  %691 = ptrtoint ptr %arrayidx162.i.i to i32
  call void @__asan_store1_noabort(i32 %691)
  store i8 0, ptr %arrayidx162.i.i, align 1
  br label %for.body16.preheader.i.i

if.end12.i.i:                                     ; preds = %for.body.i.i
  %692 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %692)
  store i8 0, ptr %arrayidx.i.i, align 1
  br i1 %cmp15147.not.i.i, label %if.end12.i.i.if.end38.i.i_crit_edge, label %if.end12.i.i.for.body16.preheader.i.i_crit_edge

if.end12.i.i.for.body16.preheader.i.i_crit_edge:  ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body16.preheader.i.i

if.end12.i.i.if.end38.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i.i

for.body16.preheader.i.i:                         ; preds = %if.end12.i.i.for.body16.preheader.i.i_crit_edge, %if.end12.thread.i.i
  %sub13167.i.i = phi i32 [ 71, %if.end12.thread.i.i ], [ %sub13.i.i, %if.end12.i.i.for.body16.preheader.i.i_crit_edge ]
  %offset.0166.i.i = phi i32 [ %sub6.i.i, %if.end12.thread.i.i ], [ 0, %if.end12.i.i.for.body16.preheader.i.i_crit_edge ]
  %linebits.0165.i.i = phi i32 [ 288, %if.end12.thread.i.i ], [ %sub9.i.i, %if.end12.i.i.for.body16.preheader.i.i_crit_edge ]
  br label %for.body16.i.i

for.body16.i.i:                                   ; preds = %for.inc.i.i.for.body16.i.i_crit_edge, %for.body16.preheader.i.i
  %k.0150.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body16.i.i_crit_edge ], [ 0, %for.body16.preheader.i.i ]
  %j.0149.i.i = phi i32 [ %j.1.i.i, %for.inc.i.i.for.body16.i.i_crit_edge ], [ %sub13167.i.i, %for.body16.preheader.i.i ]
  %value.0148.i.i = phi i32 [ %value.2.i.i, %for.inc.i.i.for.body16.i.i_crit_edge ], [ 0, %for.body16.preheader.i.i ]
  %add17.i.i = add i32 %k.0150.i.i, %offset.0166.i.i
  %shr.i.i = ashr i32 %add17.i.i, 3
  %arrayidx18.i.i = getelementptr i8, ptr %charptr_tmp.2.i, i32 %shr.i.i
  %693 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %693)
  %694 = load i8, ptr %arrayidx18.i.i, align 1
  %conv.i.i = zext i8 %694 to i32
  %and.i.i = and i32 %add17.i.i, 7
  %shl.i.i = shl nuw nsw i32 1, %and.i.i
  %and19.i.i = and i32 %shl.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool20.not.i.i = icmp eq i32 %and19.i.i, 0
  %and22.i.i = and i32 %add17.i.i, 3
  %shl23.i.i = shl nuw nsw i32 1, %and22.i.i
  %or.i.i = select i1 %tobool20.not.i.i, i32 0, i32 %shl23.i.i
  %value.1.i.i = or i32 %or.i.i, %value.0148.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and22.i.i)
  %cmp26.i.i = icmp eq i32 %and22.i.i, 3
  br i1 %cmp26.i.i, label %if.then28.i.i, label %for.body16.i.i.for.inc.i.i_crit_edge

for.body16.i.i.for.inc.i.i_crit_edge:             ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then28.i.i:                                    ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx29.i.i = getelementptr [73 x i8], ptr %string.i.i, i32 0, i32 %j.0149.i.i
  %call30.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx29.i.i, ptr noundef nonnull @.str.61, i32 noundef %value.1.i.i) #11
  %dec.i.i = add i32 %j.0149.i.i, -1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then28.i.i, %for.body16.i.i.for.inc.i.i_crit_edge
  %value.2.i.i = phi i32 [ 0, %if.then28.i.i ], [ %value.1.i.i, %for.body16.i.i.for.inc.i.i_crit_edge ]
  %j.1.i.i = phi i32 [ %dec.i.i, %if.then28.i.i ], [ %j.0149.i.i, %for.body16.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add nuw i32 %k.0150.i.i, 1
  %exitcond157.not.i.i = icmp eq i32 %inc.i.i, %linebits.0165.i.i
  br i1 %exitcond157.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body16.i.i_crit_edge

for.inc.i.i.for.body16.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body16.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %and32.i.i = and i32 %linebits.0165.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i.i)
  %cmp33.not.i.i = icmp eq i32 %and32.i.i, 0
  br i1 %cmp33.not.i.i, label %for.end.i.i.if.end38.i.i_crit_edge, label %if.then35.i.i

for.end.i.i.if.end38.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i.i

if.then35.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx36.i.i = getelementptr [73 x i8], ptr %string.i.i, i32 0, i32 %j.1.i.i
  %call37.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx36.i.i, ptr noundef nonnull @.str.61, i32 noundef %value.2.i.i) #11
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.then35.i.i, %for.end.i.i.if.end38.i.i_crit_edge, %if.end12.i.i.if.end38.i.i_crit_edge
  %695 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %695)
  %tobool39.not.i.i = icmp eq i32 %695, 0
  br i1 %tobool39.not.i.i, label %if.end38.i.i.for.inc47.i.i_crit_edge, label %do.end43.i.i

if.end38.i.i.for.inc47.i.i_crit_edge:             ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc47.i.i

do.end43.i.i:                                     ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call45.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull %string.i.i) #15
  br label %for.inc47.i.i

for.inc47.i.i:                                    ; preds = %do.end43.i.i, %if.end38.i.i.for.inc47.i.i_crit_edge
  %inc48.i.i = add nuw i32 %line.0155.i.i, 1
  %exitcond158.not.i.i = icmp eq i32 %inc48.i.i, %umax.i.i
  br i1 %exitcond158.not.i.i, label %for.inc47.i.i.altera_export_bool_array.exit.i_crit_edge, label %for.inc47.i.i.for.body.i.i_crit_edge

for.inc47.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc47.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc47.i.i.altera_export_bool_array.exit.i_crit_edge: ; preds = %for.inc47.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %altera_export_bool_array.exit.i

if.else50.i.i:                                    ; preds = %if.end1669.i
  %add51.i.i = add nsw i32 %sub1616.i, 3
  %div52.i.i = sdiv i32 %add51.i.i, 4
  %arrayidx53.i.i = getelementptr [73 x i8], ptr %string.i.i, i32 0, i32 %div52.i.i
  %696 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_store1_noabort(i32 %696)
  store i8 0, ptr %arrayidx53.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1616.i)
  %cmp56141.i.i = icmp sgt i32 %sub1616.i, 0
  br i1 %cmp56141.i.i, label %for.body58.i.preheader.i, label %if.else50.i.i.if.end88.i.i_crit_edge

if.else50.i.i.if.end88.i.i_crit_edge:             ; preds = %if.else50.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88.i.i

for.body58.i.preheader.i:                         ; preds = %if.else50.i.i
  %sub54.i.i = add nsw i32 %div52.i.i, -1
  br label %for.body58.i.i

for.body58.i.i:                                   ; preds = %for.inc79.i.i.for.body58.i.i_crit_edge, %for.body58.i.preheader.i
  %i.0144.i.i = phi i32 [ %inc80.i.i, %for.inc79.i.i.for.body58.i.i_crit_edge ], [ 0, %for.body58.i.preheader.i ]
  %j.2143.i.i = phi i32 [ %j.3.i.i, %for.inc79.i.i.for.body58.i.i_crit_edge ], [ %sub54.i.i, %for.body58.i.preheader.i ]
  %value.3142.i.i = phi i32 [ %value.5.i.i, %for.inc79.i.i.for.body58.i.i_crit_edge ], [ 0, %for.body58.i.preheader.i ]
  %697 = lshr i32 %i.0144.i.i, 3
  %arrayidx60.i.i = getelementptr i8, ptr %charptr_tmp.2.i, i32 %697
  %698 = ptrtoint ptr %arrayidx60.i.i to i32
  call void @__asan_load1_noabort(i32 %698)
  %699 = load i8, ptr %arrayidx60.i.i, align 1
  %conv61.i.i = zext i8 %699 to i32
  %and62.i.i = and i32 %i.0144.i.i, 7
  %shl63.i.i = shl nuw nsw i32 1, %and62.i.i
  %and64.i.i = and i32 %shl63.i.i, %conv61.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i.i)
  %tobool65.not.i.i = icmp eq i32 %and64.i.i, 0
  %and67.i.i = and i32 %i.0144.i.i, 3
  %shl68.i.i = shl nuw nsw i32 1, %and67.i.i
  %or69.i.i = select i1 %tobool65.not.i.i, i32 0, i32 %shl68.i.i
  %value.4.i.i = or i32 %or69.i.i, %value.3142.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and67.i.i)
  %cmp72.i.i = icmp eq i32 %and67.i.i, 3
  br i1 %cmp72.i.i, label %if.then74.i.i, label %for.body58.i.i.for.inc79.i.i_crit_edge

for.body58.i.i.for.inc79.i.i_crit_edge:           ; preds = %for.body58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc79.i.i

if.then74.i.i:                                    ; preds = %for.body58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx75.i.i = getelementptr [73 x i8], ptr %string.i.i, i32 0, i32 %j.2143.i.i
  %call76.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx75.i.i, ptr noundef nonnull @.str.61, i32 noundef %value.4.i.i) #11
  %dec77.i.i = add i32 %j.2143.i.i, -1
  br label %for.inc79.i.i

for.inc79.i.i:                                    ; preds = %if.then74.i.i, %for.body58.i.i.for.inc79.i.i_crit_edge
  %value.5.i.i = phi i32 [ 0, %if.then74.i.i ], [ %value.4.i.i, %for.body58.i.i.for.inc79.i.i_crit_edge ]
  %j.3.i.i = phi i32 [ %dec77.i.i, %if.then74.i.i ], [ %j.2143.i.i, %for.body58.i.i.for.inc79.i.i_crit_edge ]
  %inc80.i.i = add nuw nsw i32 %i.0144.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc80.i.i, %sub1616.i
  br i1 %exitcond.not.i.i, label %for.end81.i.i, label %for.inc79.i.i.for.body58.i.i_crit_edge

for.inc79.i.i.for.body58.i.i_crit_edge:           ; preds = %for.inc79.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body58.i.i

for.end81.i.i:                                    ; preds = %for.inc79.i.i
  %phi.bo.i.i = and i32 %sub1616.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo.i.i)
  %phi.cmp.i.i = icmp eq i32 %phi.bo.i.i, 0
  br i1 %phi.cmp.i.i, label %for.end81.i.i.if.end88.i.i_crit_edge, label %if.then85.i.i

for.end81.i.i.if.end88.i.i_crit_edge:             ; preds = %for.end81.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88.i.i

if.then85.i.i:                                    ; preds = %for.end81.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx86.i.i = getelementptr [73 x i8], ptr %string.i.i, i32 0, i32 %j.3.i.i
  %call87.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx86.i.i, ptr noundef nonnull @.str.61, i32 noundef %value.5.i.i) #11
  br label %if.end88.i.i

if.end88.i.i:                                     ; preds = %if.then85.i.i, %for.end81.i.i.if.end88.i.i_crit_edge, %if.else50.i.i.if.end88.i.i_crit_edge, %if.else50.i.thread.i
  %charptr_tmp2.048424849.i = phi ptr [ %call9.i.i3940.i, %if.else50.i.thread.i ], [ %charptr_tmp2.0.i, %if.then85.i.i ], [ %charptr_tmp2.0.i, %for.end81.i.i.if.end88.i.i_crit_edge ], [ %charptr_tmp2.0.i, %if.else50.i.i.if.end88.i.i_crit_edge ]
  %700 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %700)
  %tobool89.not.i.i = icmp eq i32 %700, 0
  br i1 %tobool89.not.i.i, label %if.end88.i.i.altera_export_bool_array.exit.i_crit_edge, label %do.end93.i.i

if.end88.i.i.altera_export_bool_array.exit.i_crit_edge: ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %altera_export_bool_array.exit.i

do.end93.i.i:                                     ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call96.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %arrayidx1604.i, i32 noundef %sub1616.i, ptr noundef nonnull %string.i.i) #15
  br label %altera_export_bool_array.exit.i

altera_export_bool_array.exit.i:                  ; preds = %do.end93.i.i, %if.end88.i.i.altera_export_bool_array.exit.i_crit_edge, %for.inc47.i.i.altera_export_bool_array.exit.i_crit_edge
  %charptr_tmp2.04841.i = phi ptr [ %charptr_tmp2.048424849.i, %if.end88.i.i.altera_export_bool_array.exit.i_crit_edge ], [ %charptr_tmp2.048424849.i, %do.end93.i.i ], [ %charptr_tmp2.0.i, %for.inc47.i.i.altera_export_bool_array.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 73, ptr nonnull %string.i.i) #11
  br i1 %cmp1619.not.i, label %altera_export_bool_array.exit.i.sw.epilog.i_crit_edge, label %if.then1673.i

altera_export_bool_array.exit.i.sw.epilog.i_crit_edge: ; preds = %altera_export_bool_array.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.then1673.i:                                    ; preds = %altera_export_bool_array.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef %charptr_tmp2.04841.i) #11
  br label %sw.epilog.i

sw.bb1675.i:                                      ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %stack_ptr.04665.i)
  %cmp.i3949.i = icmp ult i32 %stack_ptr.04665.i, 3
  br i1 %cmp.i3949.i, label %sw.bb1675.i.while.end2143.i_crit_edge, label %if.end1679.i

sw.bb1675.i.while.end2143.i_crit_edge:            ; preds = %sw.bb1675.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end1679.i:                                     ; preds = %sw.bb1675.i
  %dec1680.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx1681.i = getelementptr i32, ptr %stack2.i, i32 %dec1680.i
  %701 = ptrtoint ptr %arrayidx1681.i to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load i32, ptr %arrayidx1681.i, align 4
  %dec1682.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx1683.i = getelementptr i32, ptr %stack2.i, i32 %dec1682.i
  %703 = ptrtoint ptr %arrayidx1683.i to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load i32, ptr %arrayidx1683.i, align 4
  %dec1684.i = add nsw i32 %stack_ptr.04665.i, -3
  %arrayidx1685.i = getelementptr i32, ptr %stack2.i, i32 %dec1684.i
  %705 = ptrtoint ptr %arrayidx1685.i to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load i32, ptr %arrayidx1685.i, align 4
  br i1 %cmp209.not4507.i, label %if.end1679.i.if.end1788.i_crit_edge, label %if.then1688.i

if.end1679.i.if.end1788.i_crit_edge:              ; preds = %if.end1679.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1788.i

if.then1688.i:                                    ; preds = %if.end1679.i
  %dec1689.i = add nsw i32 %stack_ptr.04665.i, -4
  %arrayidx1690.i = getelementptr i32, ptr %stack2.i, i32 %dec1689.i
  %707 = ptrtoint ptr %arrayidx1690.i to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load i32, ptr %arrayidx1690.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %702, i32 %704)
  %cmp1691.i = icmp sgt i32 %702, %704
  %add1694.i = add i32 %702, 1
  %sub1695.i = sub i32 %add1694.i, %704
  %add1697.i = sub i32 1, %702
  %sub1698.i = add i32 %add1697.i, %704
  %709 = call i32 @llvm.smin.i32(i32 %702, i32 %704) #11
  %src_count.0.i = select i1 %cmp1691.i, i32 %sub1695.i, i32 %sub1698.i
  call void @__sanitizer_cov_trace_cmp4(i32 %706, i32 %708)
  %cmp1700.i = icmp sgt i32 %706, %708
  br i1 %cmp1700.i, label %if.then1702.i, label %if.else1707.i

if.then1702.i:                                    ; preds = %if.then1688.i
  call void @__sanitizer_cov_trace_pc() #13
  %710 = xor i1 %cmp1691.i, true
  %add1705.i = add i32 %706, 1
  %sub1706.i = sub i32 %add1705.i, %708
  br label %if.end1710.i

if.else1707.i:                                    ; preds = %if.then1688.i
  call void @__sanitizer_cov_trace_pc() #13
  %add1708.i = sub i32 1, %706
  %sub1709.i = add i32 %add1708.i, %708
  br label %if.end1710.i

if.end1710.i:                                     ; preds = %if.else1707.i, %if.then1702.i
  %reverse.2.in.i = phi i1 [ %710, %if.then1702.i ], [ %cmp1691.i, %if.else1707.i ]
  %copy_index2.0.i = phi i32 [ %708, %if.then1702.i ], [ %706, %if.else1707.i ]
  %dest_count.0.i = phi i32 [ %sub1706.i, %if.then1702.i ], [ %sub1709.i, %if.else1707.i ]
  %711 = call i32 @llvm.smin.i32(i32 %src_count.0.i, i32 %dest_count.0.i) #11
  %brmerge3417.i = select i1 %cmp1691.i, i1 true, i1 %cmp1700.i
  %brmerge3417.not.i = xor i1 %brmerge3417.i, true
  call void @__sanitizer_cov_trace_cmp4(i32 %src_count.0.i, i32 %dest_count.0.i)
  %cmp1718.not.i = icmp eq i32 %src_count.0.i, %dest_count.0.i
  %or.cond3418.i = select i1 %brmerge3417.not.i, i1 true, i1 %cmp1718.not.i
  %spec.select4572.i = select i1 %or.cond3418.i, i32 %status.94662.i, i32 -34
  %712 = ptrtoint ptr %args.i.4.args.i.4.args.4..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %712)
  %args.i.4.args.i.4.args.4.4747.i = load i32, ptr %args.i.4.args.i.4.args.4..sroa_idx, align 4
  %arrayidx1727.i = getelementptr i8, ptr %attrs.141424499.i, i32 %args.i.4.args.i.4.args.4.4747.i
  %713 = ptrtoint ptr %arrayidx1727.i to i32
  call void @__asan_load1_noabort(i32 %713)
  %714 = load i8, ptr %arrayidx1727.i, align 1
  %715 = and i8 %714, -100
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %715)
  %cmp1730.i = icmp eq i8 %715, 12
  br i1 %cmp1730.i, label %if.then1732.i, label %if.end1710.i.if.end1788.i_crit_edge

if.end1710.i.if.end1788.i_crit_edge:              ; preds = %if.end1710.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1788.i

if.then1732.i:                                    ; preds = %if.end1710.i
  %arrayidx1733.i = getelementptr i32, ptr %var_size.141414500.i, i32 %args.i.4.args.i.4.args.4.4747.i
  %716 = ptrtoint ptr %arrayidx1733.i to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load i32, ptr %arrayidx1733.i, align 4
  %add1734.i = add i32 %717, 7
  %shr1735.i = ashr i32 %add1734.i, 3
  %arrayidx1736.i = getelementptr i32, ptr %vars.041404501.i, i32 %args.i.4.args.i.4.args.4.4747.i
  %718 = ptrtoint ptr %arrayidx1736.i to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load i32, ptr %arrayidx1736.i, align 4
  %720 = inttoptr i32 %719 to ptr
  %call9.i.i3978.i = call noalias align 128 ptr @__kmalloc(i32 noundef %shr1735.i, i32 noundef 3520) #16
  %721 = ptrtoint ptr %call9.i.i3978.i to i32
  %722 = ptrtoint ptr %arrayidx1736.i to i32
  call void @__asan_store4_noabort(i32 %722)
  store i32 %721, ptr %arrayidx1736.i, align 4
  %cmp1740.i = icmp eq ptr %call9.i.i3978.i, null
  br i1 %cmp1740.i, label %if.then1732.i.sw.epilog.i_crit_edge, label %for.cond1744.preheader.i

if.then1732.i.sw.epilog.i_crit_edge:              ; preds = %if.then1732.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

for.cond1744.preheader.i:                         ; preds = %if.then1732.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add1734.i)
  %cmp17454627.i = icmp sgt i32 %add1734.i, 7
  br i1 %cmp17454627.i, label %for.body1747.preheader.i, label %for.cond1744.preheader.i.for.cond1752.preheader.i_crit_edge

for.cond1744.preheader.i.for.cond1752.preheader.i_crit_edge: ; preds = %for.cond1744.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1752.preheader.i

for.body1747.preheader.i:                         ; preds = %for.cond1744.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  %smax4692.i = call i32 @llvm.smax.i32(i32 %shr1735.i, i32 1) #11
  %723 = call ptr @memset(ptr %call9.i.i3978.i, i32 0, i32 %smax4692.i)
  br label %for.cond1752.preheader.i

for.cond1752.preheader.i:                         ; preds = %for.body1747.preheader.i, %for.cond1744.preheader.i.for.cond1752.preheader.i_crit_edge
  %724 = ptrtoint ptr %arrayidx1733.i to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load i32, ptr %arrayidx1733.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %725)
  %cmp17544629.i = icmp sgt i32 %725, 0
  br i1 %cmp17544629.i, label %for.cond1752.preheader.i.for.body1756.i_crit_edge, label %for.cond1752.preheader.i.for.end1775.i_crit_edge

for.cond1752.preheader.i.for.end1775.i_crit_edge: ; preds = %for.cond1752.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end1775.i

for.cond1752.preheader.i.for.body1756.i_crit_edge: ; preds = %for.cond1752.preheader.i
  br label %for.body1756.i

for.body1756.i:                                   ; preds = %for.inc1773.i.for.body1756.i_crit_edge, %for.cond1752.preheader.i.for.body1756.i_crit_edge
  %long_idx.54630.i = phi i32 [ %inc1774.i, %for.inc1773.i.for.body1756.i_crit_edge ], [ 0, %for.cond1752.preheader.i.for.body1756.i_crit_edge ]
  %726 = lshr i32 %long_idx.54630.i, 3
  %arrayidx1758.i = getelementptr i8, ptr %720, i32 %726
  %727 = ptrtoint ptr %arrayidx1758.i to i32
  call void @__asan_load1_noabort(i32 %727)
  %728 = load i8, ptr %arrayidx1758.i, align 1
  %conv1759.i = zext i8 %728 to i32
  %and1760.i = and i32 %long_idx.54630.i, 7
  %shl1761.i = shl nuw nsw i32 1, %and1760.i
  %and1762.i = and i32 %shl1761.i, %conv1759.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1762.i)
  %tobool1763.not.i = icmp eq i32 %and1762.i, 0
  br i1 %tobool1763.not.i, label %for.body1756.i.for.inc1773.i_crit_edge, label %if.then1764.i

for.body1756.i.for.inc1773.i_crit_edge:           ; preds = %for.body1756.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc1773.i

if.then1764.i:                                    ; preds = %for.body1756.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx1768.i = getelementptr i8, ptr %call9.i.i3978.i, i32 %726
  %729 = ptrtoint ptr %arrayidx1768.i to i32
  call void @__asan_load1_noabort(i32 %729)
  %730 = load i8, ptr %arrayidx1768.i, align 1
  %731 = trunc i32 %shl1761.i to i8
  %conv1771.i = or i8 %730, %731
  store i8 %conv1771.i, ptr %arrayidx1768.i, align 1
  br label %for.inc1773.i

for.inc1773.i:                                    ; preds = %if.then1764.i, %for.body1756.i.for.inc1773.i_crit_edge
  %inc1774.i = add nuw nsw i32 %long_idx.54630.i, 1
  %732 = ptrtoint ptr %arrayidx1733.i to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load i32, ptr %arrayidx1733.i, align 4
  %cmp1754.i = icmp slt i32 %inc1774.i, %733
  br i1 %cmp1754.i, label %for.inc1773.i.for.body1756.i_crit_edge, label %for.inc1773.i.for.end1775.i_crit_edge

for.inc1773.i.for.end1775.i_crit_edge:            ; preds = %for.inc1773.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end1775.i

for.inc1773.i.for.body1756.i_crit_edge:           ; preds = %for.inc1773.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body1756.i

for.end1775.i:                                    ; preds = %for.inc1773.i.for.end1775.i_crit_edge, %for.cond1752.preheader.i.for.end1775.i_crit_edge
  %734 = ptrtoint ptr %arrayidx1727.i to i32
  call void @__asan_load1_noabort(i32 %734)
  %735 = load i8, ptr %arrayidx1727.i, align 1
  %736 = and i8 %735, 122
  %737 = or i8 %736, -127
  store i8 %737, ptr %arrayidx1727.i, align 1
  br label %if.end1788.i

if.end1788.i:                                     ; preds = %for.end1775.i, %if.end1710.i.if.end1788.i_crit_edge, %if.end1679.i.if.end1788.i_crit_edge
  %copy_index2.14440.i = phi i32 [ %copy_index2.0.i, %for.end1775.i ], [ %copy_index2.0.i, %if.end1710.i.if.end1788.i_crit_edge ], [ %706, %if.end1679.i.if.end1788.i_crit_edge ]
  %copy_index.14438.i = phi i32 [ %709, %for.end1775.i ], [ %709, %if.end1710.i.if.end1788.i_crit_edge ], [ %704, %if.end1679.i.if.end1788.i_crit_edge ]
  %copy_count.04436.i = phi i32 [ %711, %for.end1775.i ], [ %711, %if.end1710.i.if.end1788.i_crit_edge ], [ %702, %if.end1679.i.if.end1788.i_crit_edge ]
  %reverse.34434.shrunk.i = phi i1 [ %reverse.2.in.i, %for.end1775.i ], [ %reverse.2.in.i, %if.end1710.i.if.end1788.i_crit_edge ], [ false, %if.end1679.i.if.end1788.i_crit_edge ]
  %stack_ptr.64432.i = phi i32 [ %dec1689.i, %for.end1775.i ], [ %dec1689.i, %if.end1710.i.if.end1788.i_crit_edge ], [ %dec1684.i, %if.end1679.i.if.end1788.i_crit_edge ]
  %status.754430.i = phi i32 [ %spec.select4572.i, %for.end1775.i ], [ %spec.select4572.i, %if.end1710.i.if.end1788.i_crit_edge ], [ %status.94662.i, %if.end1679.i.if.end1788.i_crit_edge ]
  %738 = ptrtoint ptr %args.i.4.args.i.4.args.4..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %738)
  %args.i.4.args.i.4.args.4..i = load i32, ptr %args.i.4.args.i.4.args.4..sroa_idx, align 4
  %arrayidx1790.i = getelementptr i32, ptr %vars.041404501.i, i32 %args.i.4.args.i.4.args.4..i
  %739 = ptrtoint ptr %arrayidx1790.i to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load i32, ptr %arrayidx1790.i, align 4
  %741 = inttoptr i32 %740 to ptr
  %742 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %742)
  %args.i.0.args.i.0.args.0.4728.i = load i32, ptr %args.i, align 4
  %arrayidx1792.i = getelementptr i32, ptr %vars.041404501.i, i32 %args.i.0.args.i.0.args.0.4728.i
  %743 = ptrtoint ptr %arrayidx1792.i to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load i32, ptr %arrayidx1792.i, align 4
  %745 = inttoptr i32 %744 to ptr
  %arrayidx1794.i = getelementptr i8, ptr %attrs.141424499.i, i32 %args.i.4.args.i.4.args.4..i
  %746 = ptrtoint ptr %arrayidx1794.i to i32
  call void @__asan_load1_noabort(i32 %746)
  %747 = load i8, ptr %arrayidx1794.i, align 1
  %748 = and i8 %747, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %748)
  %cmp1797.not.i = icmp ne i8 %748, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copy_count.04436.i)
  %cmp1801.i = icmp eq i32 %copy_count.04436.i, 0
  %or.cond4573.i = select i1 %cmp1797.not.i, i1 true, i1 %cmp1801.i
  br i1 %or.cond4573.i, label %if.end1788.i.sw.epilog.i_crit_edge, label %for.body1813.lr.ph.i

if.end1788.i.sw.epilog.i_crit_edge:               ; preds = %if.end1788.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

for.body1813.lr.ph.i:                             ; preds = %if.end1788.i
  %sub1807.i = add i32 %copy_count.04436.i, -1
  %add1808.i = select i1 %reverse.34434.shrunk.i, i32 %sub1807.i, i32 0
  %index2.0.i = add i32 %add1808.i, %copy_index2.14440.i
  %index2.2.v.i = select i1 %reverse.34434.shrunk.i, i32 -1, i32 1
  br label %for.body1813.i

for.body1813.i:                                   ; preds = %for.body1813.i.for.body1813.i_crit_edge, %for.body1813.lr.ph.i
  %i.104634.i = phi i32 [ 0, %for.body1813.lr.ph.i ], [ %inc1847.i, %for.body1813.i.for.body1813.i_crit_edge ]
  %index2.14633.i = phi i32 [ %index2.0.i, %for.body1813.lr.ph.i ], [ %index2.2.i, %for.body1813.i.for.body1813.i_crit_edge ]
  %index.14632.i = phi i32 [ %copy_index.14438.i, %for.body1813.lr.ph.i ], [ %inc1839.i, %for.body1813.i.for.body1813.i_crit_edge ]
  %shr1814.i = lshr i32 %index.14632.i, 3
  %arrayidx1815.i = getelementptr i8, ptr %745, i32 %shr1814.i
  %749 = ptrtoint ptr %arrayidx1815.i to i32
  call void @__asan_load1_noabort(i32 %749)
  %750 = load i8, ptr %arrayidx1815.i, align 1
  %conv1816.i = zext i8 %750 to i32
  %and1817.i = and i32 %index.14632.i, 7
  %shl1818.i = shl nuw nsw i32 1, %and1817.i
  %and1819.i = and i32 %shl1818.i, %conv1816.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1819.i)
  %tobool1820.not.i = icmp eq i32 %and1819.i, 0
  %and1830.i = and i32 %index2.14633.i, 7
  %shl1831.i = shl nuw nsw i32 1, %and1830.i
  %shr1833.i = lshr i32 %index2.14633.i, 3
  %arrayidx1834.i = getelementptr i8, ptr %741, i32 %shr1833.i
  %751 = ptrtoint ptr %arrayidx1834.i to i32
  call void @__asan_load1_noabort(i32 %751)
  %752 = load i8, ptr %arrayidx1834.i, align 1
  %753 = trunc i32 %shl1831.i to i8
  %754 = xor i8 %753, -1
  %conv1837.i = and i8 %752, %754
  %conv1828.i = or i8 %752, %753
  %conv1837.sink.i = select i1 %tobool1820.not.i, i8 %conv1837.i, i8 %conv1828.i
  store i8 %conv1837.sink.i, ptr %arrayidx1834.i, align 1
  %inc1839.i = add i32 %index.14632.i, 1
  %index2.2.i = add i32 %index2.14633.i, %index2.2.v.i
  %inc1847.i = add nuw i32 %i.104634.i, 1
  %exitcond4693.not.i = icmp eq i32 %inc1847.i, %copy_count.04436.i
  br i1 %exitcond4693.not.i, label %for.body1813.i.sw.epilog.i_crit_edge, label %for.body1813.i.for.body1813.i_crit_edge

for.body1813.i.for.body1813.i_crit_edge:          ; preds = %for.body1813.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body1813.i

for.body1813.i.sw.epilog.i_crit_edge:             ; preds = %for.body1813.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb1857.i:                                      ; preds = %for.end353.i.sw.bb1857.i_crit_edge, %for.end353.i.sw.bb1857.i_crit_edge541
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %stack_ptr.04665.i)
  %cmp.i3982.i = icmp ult i32 %stack_ptr.04665.i, 3
  br i1 %cmp.i3982.i, label %sw.bb1857.i.while.end2143.i_crit_edge, label %if.end1861.i

sw.bb1857.i.while.end2143.i_crit_edge:            ; preds = %sw.bb1857.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end1861.i:                                     ; preds = %sw.bb1857.i
  %dec1862.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx1863.i = getelementptr i32, ptr %stack2.i, i32 %dec1862.i
  %755 = ptrtoint ptr %arrayidx1863.i to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load i32, ptr %arrayidx1863.i, align 4
  %dec1864.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx1865.i = getelementptr i32, ptr %stack2.i, i32 %dec1864.i
  %757 = ptrtoint ptr %arrayidx1865.i to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load i32, ptr %arrayidx1865.i, align 4
  %dec18784448.i = add nsw i32 %stack_ptr.04665.i, -3
  %arrayidx18794449.i = getelementptr i32, ptr %stack2.i, i32 %dec18784448.i
  %759 = ptrtoint ptr %arrayidx18794449.i to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load i32, ptr %arrayidx18794449.i, align 4
  br i1 %cmp209.not4507.i, label %if.end1945.thread.i, label %land.lhs.true1883.i

if.end1945.thread.i:                              ; preds = %if.end1861.i
  call void @__sanitizer_cov_trace_pc() #13
  %761 = ptrtoint ptr %args.i.4.args.i.4.args.4..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %761)
  %args.i.4.args.i.4.args.4.4749.i = load i32, ptr %args.i.4.args.i.4.args.4..sroa_idx, align 4
  br label %if.end1959.i

land.lhs.true1883.i:                              ; preds = %if.end1861.i
  %dec1871.i = add nsw i32 %stack_ptr.04665.i, -4
  %arrayidx1872.i = getelementptr i32, ptr %stack2.i, i32 %dec1871.i
  %762 = ptrtoint ptr %arrayidx1872.i to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load i32, ptr %arrayidx1872.i, align 4
  %add1873.i = sub i32 1, %756
  %sub1874.i = add i32 %add1873.i, %758
  %add1875.i = sub i32 1, %760
  %sub1876.i = add i32 %add1875.i, %763
  %dec1878.i = add nsw i32 %stack_ptr.04665.i, -5
  %arrayidx1879.i = getelementptr i32, ptr %stack2.i, i32 %dec1878.i
  %764 = ptrtoint ptr %arrayidx1879.i to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load i32, ptr %arrayidx1879.i, align 4
  %766 = ptrtoint ptr %args.i.4.args.i.4.args.4..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %766)
  %args.i.4.args.i.4.args.4.4739.i = load i32, ptr %args.i.4.args.i.4.args.4..sroa_idx, align 4
  %arrayidx1884.i = getelementptr i8, ptr %attrs.141424499.i, i32 %args.i.4.args.i.4.args.4.4739.i
  %767 = ptrtoint ptr %arrayidx1884.i to i32
  call void @__asan_load1_noabort(i32 %767)
  %768 = load i8, ptr %arrayidx1884.i, align 1
  %769 = and i8 %768, -100
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %769)
  %cmp1887.i = icmp eq i8 %769, 12
  br i1 %cmp1887.i, label %if.then1889.i, label %land.lhs.true1883.i.land.lhs.true1952.i_crit_edge

land.lhs.true1883.i.land.lhs.true1952.i_crit_edge: ; preds = %land.lhs.true1883.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true1952.i

if.then1889.i:                                    ; preds = %land.lhs.true1883.i
  %arrayidx1890.i = getelementptr i32, ptr %var_size.141414500.i, i32 %args.i.4.args.i.4.args.4.4739.i
  %770 = ptrtoint ptr %arrayidx1890.i to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load i32, ptr %arrayidx1890.i, align 4
  %add1891.i = add i32 %771, 7
  %shr1892.i = ashr i32 %add1891.i, 3
  %arrayidx1893.i = getelementptr i32, ptr %vars.041404501.i, i32 %args.i.4.args.i.4.args.4.4739.i
  %772 = ptrtoint ptr %arrayidx1893.i to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load i32, ptr %arrayidx1893.i, align 4
  %774 = inttoptr i32 %773 to ptr
  %call9.i.i4011.i = call noalias align 128 ptr @__kmalloc(i32 noundef %shr1892.i, i32 noundef 3520) #16
  %775 = ptrtoint ptr %call9.i.i4011.i to i32
  %776 = ptrtoint ptr %arrayidx1893.i to i32
  call void @__asan_store4_noabort(i32 %776)
  store i32 %775, ptr %arrayidx1893.i, align 4
  %cmp1897.i = icmp eq ptr %call9.i.i4011.i, null
  br i1 %cmp1897.i, label %if.then1889.i.sw.epilog.i_crit_edge, label %for.cond1901.preheader.i

if.then1889.i.sw.epilog.i_crit_edge:              ; preds = %if.then1889.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

for.cond1901.preheader.i:                         ; preds = %if.then1889.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add1891.i)
  %cmp19024623.i = icmp sgt i32 %add1891.i, 7
  br i1 %cmp19024623.i, label %for.body1904.preheader.i, label %for.cond1901.preheader.i.for.cond1909.preheader.i_crit_edge

for.cond1901.preheader.i.for.cond1909.preheader.i_crit_edge: ; preds = %for.cond1901.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1909.preheader.i

for.body1904.preheader.i:                         ; preds = %for.cond1901.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  %smax.i = call i32 @llvm.smax.i32(i32 %shr1892.i, i32 1) #11
  %777 = call ptr @memset(ptr %call9.i.i4011.i, i32 0, i32 %smax.i)
  br label %for.cond1909.preheader.i

for.cond1909.preheader.i:                         ; preds = %for.body1904.preheader.i, %for.cond1901.preheader.i.for.cond1909.preheader.i_crit_edge
  %778 = ptrtoint ptr %arrayidx1890.i to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load i32, ptr %arrayidx1890.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %779)
  %cmp19114625.i = icmp sgt i32 %779, 0
  br i1 %cmp19114625.i, label %for.cond1909.preheader.i.for.body1913.i_crit_edge, label %for.cond1909.preheader.i.if.end1945.i_crit_edge

for.cond1909.preheader.i.if.end1945.i_crit_edge:  ; preds = %for.cond1909.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1945.i

for.cond1909.preheader.i.for.body1913.i_crit_edge: ; preds = %for.cond1909.preheader.i
  br label %for.body1913.i

for.body1913.i:                                   ; preds = %for.inc1930.i.for.body1913.i_crit_edge, %for.cond1909.preheader.i.for.body1913.i_crit_edge
  %long_idx.74626.i = phi i32 [ %inc1931.i, %for.inc1930.i.for.body1913.i_crit_edge ], [ 0, %for.cond1909.preheader.i.for.body1913.i_crit_edge ]
  %780 = lshr i32 %long_idx.74626.i, 3
  %arrayidx1915.i = getelementptr i8, ptr %774, i32 %780
  %781 = ptrtoint ptr %arrayidx1915.i to i32
  call void @__asan_load1_noabort(i32 %781)
  %782 = load i8, ptr %arrayidx1915.i, align 1
  %conv1916.i = zext i8 %782 to i32
  %and1917.i = and i32 %long_idx.74626.i, 7
  %shl1918.i = shl nuw nsw i32 1, %and1917.i
  %and1919.i = and i32 %shl1918.i, %conv1916.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1919.i)
  %tobool1920.not.i = icmp eq i32 %and1919.i, 0
  br i1 %tobool1920.not.i, label %for.body1913.i.for.inc1930.i_crit_edge, label %if.then1921.i

for.body1913.i.for.inc1930.i_crit_edge:           ; preds = %for.body1913.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc1930.i

if.then1921.i:                                    ; preds = %for.body1913.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx1925.i = getelementptr i8, ptr %call9.i.i4011.i, i32 %780
  %783 = ptrtoint ptr %arrayidx1925.i to i32
  call void @__asan_load1_noabort(i32 %783)
  %784 = load i8, ptr %arrayidx1925.i, align 1
  %785 = trunc i32 %shl1918.i to i8
  %conv1928.i = or i8 %784, %785
  store i8 %conv1928.i, ptr %arrayidx1925.i, align 1
  br label %for.inc1930.i

for.inc1930.i:                                    ; preds = %if.then1921.i, %for.body1913.i.for.inc1930.i_crit_edge
  %inc1931.i = add nuw nsw i32 %long_idx.74626.i, 1
  %786 = ptrtoint ptr %arrayidx1890.i to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load i32, ptr %arrayidx1890.i, align 4
  %cmp1911.i = icmp slt i32 %inc1931.i, %787
  br i1 %cmp1911.i, label %for.inc1930.i.for.body1913.i_crit_edge, label %for.inc1930.i.if.end1945.i_crit_edge

for.inc1930.i.if.end1945.i_crit_edge:             ; preds = %for.inc1930.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1945.i

for.inc1930.i.for.body1913.i_crit_edge:           ; preds = %for.inc1930.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body1913.i

if.end1945.i:                                     ; preds = %for.inc1930.i.if.end1945.i_crit_edge, %for.cond1909.preheader.i.if.end1945.i_crit_edge
  %788 = ptrtoint ptr %arrayidx1884.i to i32
  call void @__asan_load1_noabort(i32 %788)
  %789 = load i8, ptr %arrayidx1884.i, align 1
  %790 = and i8 %789, 122
  %791 = or i8 %790, -127
  store i8 %791, ptr %arrayidx1884.i, align 1
  br label %land.lhs.true1952.i

land.lhs.true1952.i:                              ; preds = %if.end1945.i, %land.lhs.true1883.i.land.lhs.true1952.i_crit_edge
  %792 = ptrtoint ptr %args.i.4.args.i.4.args.4..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %792)
  %args.i.4.args.i.4.args.4.4741.i = load i32, ptr %args.i.4.args.i.4.args.4..sroa_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %765, i32 %sub1874.i)
  %cmp1953.i = icmp sgt i32 %765, %sub1874.i
  call void @__sanitizer_cov_trace_cmp4(i32 %765, i32 %sub1876.i)
  %cmp1956.i = icmp sgt i32 %765, %sub1876.i
  %or.cond3419.i = select i1 %cmp1953.i, i1 true, i1 %cmp1956.i
  br i1 %or.cond3419.i, label %land.lhs.true1952.i.sw.epilog.i_crit_edge, label %land.lhs.true1952.i.if.end1959.i_crit_edge

land.lhs.true1952.i.if.end1959.i_crit_edge:       ; preds = %land.lhs.true1952.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1959.i

land.lhs.true1952.i.sw.epilog.i_crit_edge:        ; preds = %land.lhs.true1952.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end1959.i:                                     ; preds = %land.lhs.true1952.i.if.end1959.i_crit_edge, %if.end1945.thread.i
  %793 = phi i32 [ %args.i.4.args.i.4.args.4.4741.i, %land.lhs.true1952.i.if.end1959.i_crit_edge ], [ %args.i.4.args.i.4.args.4.4749.i, %if.end1945.thread.i ]
  %scan_index.044524461.i = phi i32 [ %760, %land.lhs.true1952.i.if.end1959.i_crit_edge ], [ %758, %if.end1945.thread.i ]
  %794 = phi i32 [ %765, %land.lhs.true1952.i.if.end1959.i_crit_edge ], [ %760, %if.end1945.thread.i ]
  %dec18784454.i = phi i32 [ %dec1878.i, %land.lhs.true1952.i.if.end1959.i_crit_edge ], [ %dec18784448.i, %if.end1945.thread.i ]
  %795 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %795)
  %args.i.0.args.i.0.args.0.4736.pn.pn.i = load i32, ptr %args.i, align 4
  %.in.in.i = getelementptr i32, ptr %vars.041404501.i, i32 %args.i.0.args.i.0.args.0.4736.pn.pn.i
  %796 = ptrtoint ptr %.in.in.i to i32
  call void @__asan_load4_noabort(i32 %796)
  %.in.i = load i32, ptr %.in.in.i, align 4
  %797 = inttoptr i32 %.in.i to ptr
  %.in4905.in.i = getelementptr i32, ptr %vars.041404501.i, i32 %793
  %798 = ptrtoint ptr %.in4905.in.i to i32
  call void @__asan_load4_noabort(i32 %798)
  %.in4905.i = load i32, ptr %.in4905.in.i, align 4
  %799 = inttoptr i32 %.in4905.i to ptr
  %arrayidx1961.i = getelementptr i8, ptr %attrs.141424499.i, i32 %793
  %800 = ptrtoint ptr %arrayidx1961.i to i32
  call void @__asan_load1_noabort(i32 %800)
  %801 = load i8, ptr %arrayidx1961.i, align 1
  %802 = and i8 %801, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %802)
  %cmp1964.not.i = icmp eq i8 %802, 8
  br i1 %cmp1964.not.i, label %if.end1967.i, label %if.end1959.i.sw.epilog.i_crit_edge

if.end1959.i.sw.epilog.i_crit_edge:               ; preds = %if.end1959.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end1967.i:                                     ; preds = %if.end1959.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.94662.i)
  %cmp1968.i = icmp eq i32 %status.94662.i, 0
  br i1 %cmp1968.i, label %if.then1970.i, label %if.end1967.i.sw.epilog.i_crit_edge

if.end1967.i.sw.epilog.i_crit_edge:               ; preds = %if.end1967.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.then1970.i:                                    ; preds = %if.end1967.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %235)
  %cmp1971.i = icmp eq i8 %235, -126
  br i1 %cmp1971.i, label %if.then1973.i, label %if.else1975.i

if.then1973.i:                                    ; preds = %if.then1970.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1974.i = call i32 @altera_swap_dr(ptr noundef %call7.i.i166, i32 noundef %794, ptr noundef %797, i32 noundef %scan_index.044524461.i, ptr noundef %799, i32 noundef %756) #11
  br label %sw.epilog.i

if.else1975.i:                                    ; preds = %if.then1970.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1976.i = call i32 @altera_swap_ir(ptr noundef %call7.i.i166, i32 noundef %794, ptr noundef %797, i32 noundef %scan_index.044524461.i, ptr noundef %799, i32 noundef %756) #11
  br label %sw.epilog.i

sw.bb1985.i:                                      ; preds = %for.end353.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %stack_ptr.04665.i)
  %cmp.i4015.i = icmp ult i32 %stack_ptr.04665.i, 2
  br i1 %cmp.i4015.i, label %sw.bb1985.i.while.end2143.i_crit_edge, label %if.end1989.i

sw.bb1985.i.while.end2143.i_crit_edge:            ; preds = %sw.bb1985.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end1989.i:                                     ; preds = %sw.bb1985.i
  %dec1990.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx1991.i = getelementptr i32, ptr %stack2.i, i32 %dec1990.i
  %803 = ptrtoint ptr %arrayidx1991.i to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load i32, ptr %arrayidx1991.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %804)
  %cmp1992.not.i = icmp eq i32 %804, 0
  br i1 %cmp1992.not.i, label %if.end1989.i.if.end1997.i_crit_edge, label %if.then1994.i

if.end1989.i.if.end1997.i_crit_edge:              ; preds = %if.end1989.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1997.i

if.then1994.i:                                    ; preds = %if.end1989.i
  call void @__sanitizer_cov_trace_pc() #13
  %805 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %805)
  %args.i.0.args.i.0.args.0.4730.i = load i32, ptr %args.i, align 4
  %call1996.i = call i32 @altera_wait_cycles(ptr noundef %call7.i.i166, i32 noundef %804, i32 noundef %args.i.0.args.i.0.args.0.4730.i) #11
  br label %if.end1997.i

if.end1997.i:                                     ; preds = %if.then1994.i, %if.end1989.i.if.end1997.i_crit_edge
  %status.78.i = phi i32 [ %status.94662.i, %if.end1989.i.if.end1997.i_crit_edge ], [ %call1996.i, %if.then1994.i ]
  %dec1998.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx1999.i = getelementptr i32, ptr %stack2.i, i32 %dec1998.i
  %806 = ptrtoint ptr %arrayidx1999.i to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load i32, ptr %arrayidx1999.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.78.i)
  %cmp2000.i = icmp ne i32 %status.78.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %807)
  %cmp2003.not.i = icmp eq i32 %807, 0
  %or.cond3420.i = select i1 %cmp2000.i, i1 true, i1 %cmp2003.not.i
  br i1 %or.cond3420.i, label %if.end1997.i.if.end2008.i_crit_edge, label %if.then2005.i

if.end1997.i.if.end2008.i_crit_edge:              ; preds = %if.end1997.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2008.i

if.then2005.i:                                    ; preds = %if.end1997.i
  call void @__sanitizer_cov_trace_pc() #13
  %808 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %808)
  %args.i.0.args.i.0.args.0.4731.i = load i32, ptr %args.i, align 4
  %call2007.i = call i32 @altera_wait_msecs(ptr noundef %call7.i.i166, i32 noundef %807, i32 noundef %args.i.0.args.i.0.args.0.4731.i) #11
  br label %if.end2008.i

if.end2008.i:                                     ; preds = %if.then2005.i, %if.end1997.i.if.end2008.i_crit_edge
  %status.79.i = phi i32 [ %status.78.i, %if.end1997.i.if.end2008.i_crit_edge ], [ %call2007.i, %if.then2005.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.79.i)
  %cmp2009.i = icmp eq i32 %status.79.i, 0
  br i1 %cmp2009.i, label %land.lhs.true2011.i, label %if.end2008.i.if.end2019.i_crit_edge

if.end2008.i.if.end2019.i_crit_edge:              ; preds = %if.end2008.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2019.i

land.lhs.true2011.i:                              ; preds = %if.end2008.i
  %809 = ptrtoint ptr %args.i.4.args.i.4.args.4..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %809)
  %args.i.4.args.i.4.args.4.4743.i = load i32, ptr %args.i.4.args.i.4.args.4..sroa_idx, align 4
  %810 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %810)
  %args.i.0.args.i.0.args.0.4732.i = load i32, ptr %args.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %args.i.4.args.i.4.args.4.4743.i, i32 %args.i.0.args.i.0.args.0.4732.i)
  %cmp2014.not.i = icmp eq i32 %args.i.4.args.i.4.args.4.4743.i, %args.i.0.args.i.0.args.0.4732.i
  br i1 %cmp2014.not.i, label %land.lhs.true2011.i.if.end2019.i_crit_edge, label %if.then2016.i

land.lhs.true2011.i.if.end2019.i_crit_edge:       ; preds = %land.lhs.true2011.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2019.i

if.then2016.i:                                    ; preds = %land.lhs.true2011.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2018.i = call i32 @altera_goto_jstate(ptr noundef %call7.i.i166, i32 noundef %args.i.4.args.i.4.args.4.4743.i) #11
  br label %if.end2019.i

if.end2019.i:                                     ; preds = %if.then2016.i, %land.lhs.true2011.i.if.end2019.i_crit_edge, %if.end2008.i.if.end2019.i_crit_edge
  %status.80.i = phi i32 [ 0, %land.lhs.true2011.i.if.end2019.i_crit_edge ], [ %call2018.i, %if.then2016.i ], [ %status.79.i, %if.end2008.i.if.end2019.i_crit_edge ]
  %dec2024.i = add nsw i32 %stack_ptr.04665.i, -4
  br i1 %cmp209.not4507.i, label %if.end2019.i.sw.epilog.i.thread_crit_edge, label %if.end2019.i.sw.epilog.i_crit_edge

if.end2019.i.sw.epilog.i_crit_edge:               ; preds = %if.end2019.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end2019.i.sw.epilog.i.thread_crit_edge:        ; preds = %if.end2019.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.thread

sw.bb2026.i:                                      ; preds = %for.end353.i
  %811 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %811)
  %args.i.0.args.i.0.args.0.4733.i = load i32, ptr %args.i, align 4
  %arrayidx2030.i = getelementptr i32, ptr %vars.041404501.i, i32 %args.i.0.args.i.0.args.0.4733.i
  %812 = ptrtoint ptr %arrayidx2030.i to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load i32, ptr %arrayidx2030.i, align 4
  %814 = inttoptr i32 %813 to ptr
  %815 = ptrtoint ptr %args.i.4.args.i.4.args.4..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %815)
  %args.i.4.args.i.4.args.4.4745.i = load i32, ptr %args.i.4.args.i.4.args.4..sroa_idx, align 4
  %arrayidx2032.i = getelementptr i32, ptr %vars.041404501.i, i32 %args.i.4.args.i.4.args.4.4745.i
  %816 = ptrtoint ptr %arrayidx2032.i to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load i32, ptr %arrayidx2032.i, align 4
  %818 = inttoptr i32 %817 to ptr
  %819 = ptrtoint ptr %args.i.8.args.i.8.args.8..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %819)
  %args.i.8.args.i.8.args.8..i = load i32, ptr %args.i.8.args.i.8.args.8..sroa_idx, align 4
  %arrayidx2034.i = getelementptr i32, ptr %vars.041404501.i, i32 %args.i.8.args.i.8.args.8..i
  %820 = ptrtoint ptr %arrayidx2034.i to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load i32, ptr %arrayidx2034.i, align 4
  %822 = inttoptr i32 %821 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %stack_ptr.04665.i)
  %cmp.i4019.i = icmp ult i32 %stack_ptr.04665.i, 4
  br i1 %cmp.i4019.i, label %sw.bb2026.i.while.end2143.i_crit_edge, label %if.end2039.i

sw.bb2026.i.while.end2143.i_crit_edge:            ; preds = %sw.bb2026.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

if.end2039.i:                                     ; preds = %sw.bb2026.i
  %dec2040.i = add nsw i32 %stack_ptr.04665.i, -1
  %arrayidx2041.i = getelementptr i32, ptr %stack2.i, i32 %dec2040.i
  %823 = ptrtoint ptr %arrayidx2041.i to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load i32, ptr %arrayidx2041.i, align 4
  %dec2042.i = add nsw i32 %stack_ptr.04665.i, -2
  %arrayidx2043.i = getelementptr i32, ptr %stack2.i, i32 %dec2042.i
  %825 = ptrtoint ptr %arrayidx2043.i to i32
  call void @__asan_load4_noabort(i32 %825)
  %826 = load i32, ptr %arrayidx2043.i, align 4
  %dec2044.i = add nsw i32 %stack_ptr.04665.i, -3
  %arrayidx2045.i = getelementptr i32, ptr %stack2.i, i32 %dec2044.i
  %827 = ptrtoint ptr %arrayidx2045.i to i32
  call void @__asan_load4_noabort(i32 %827)
  %828 = load i32, ptr %arrayidx2045.i, align 4
  %dec2046.i = add nsw i32 %stack_ptr.04665.i, -4
  %arrayidx2047.i = getelementptr i32, ptr %stack2.i, i32 %dec2046.i
  %829 = ptrtoint ptr %arrayidx2047.i to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load i32, ptr %arrayidx2047.i, align 4
  br i1 %cmp209.not4507.i, label %if.end2039.i.if.end2073.i_crit_edge, label %if.then2050.i

if.end2039.i.if.end2073.i_crit_edge:              ; preds = %if.end2039.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2073.i

if.then2050.i:                                    ; preds = %if.end2039.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec2051.i = add nsw i32 %stack_ptr.04665.i, -5
  %arrayidx2052.i = getelementptr i32, ptr %stack2.i, i32 %dec2051.i
  %831 = ptrtoint ptr %arrayidx2052.i to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load i32, ptr %arrayidx2052.i, align 4
  %dec2053.i = add nsw i32 %stack_ptr.04665.i, -6
  %arrayidx2054.i = getelementptr i32, ptr %stack2.i, i32 %dec2053.i
  %833 = ptrtoint ptr %arrayidx2054.i to i32
  call void @__asan_load4_noabort(i32 %833)
  %834 = load i32, ptr %arrayidx2054.i, align 4
  %add2055.i = sub i32 1, %824
  %sub2056.i = add i32 %add2055.i, %826
  %add2057.i = sub i32 1, %828
  %sub2058.i = add i32 %add2057.i, %830
  %835 = call i32 @llvm.smin.i32(i32 %sub2056.i, i32 %sub2058.i) #11
  %add2065.i = sub i32 1, %832
  %sub2066.i = add i32 %add2065.i, %834
  %836 = call i32 @llvm.smin.i32(i32 %835, i32 %sub2066.i) #11
  br label %if.end2073.i

if.end2073.i:                                     ; preds = %if.then2050.i, %if.end2039.i.if.end2073.i_crit_edge
  %stack_ptr.10.i = phi i32 [ %dec2053.i, %if.then2050.i ], [ %dec2046.i, %if.end2039.i.if.end2073.i_crit_edge ]
  %long_count.2.i = phi i32 [ %836, %if.then2050.i ], [ %830, %if.end2039.i.if.end2073.i_crit_edge ]
  %index22035.0.i = phi i32 [ %828, %if.then2050.i ], [ %826, %if.end2039.i.if.end2073.i_crit_edge ]
  %mask_index.0.i = phi i32 [ %832, %if.then2050.i ], [ %828, %if.end2039.i.if.end2073.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %long_count.2.i)
  %cmp2074.i = icmp slt i32 %long_count.2.i, 1
  br i1 %cmp2074.i, label %if.end2073.i.if.end2117.i_crit_edge, label %if.end2073.i.for.body2081.i_crit_edge

if.end2073.i.for.body2081.i_crit_edge:            ; preds = %if.end2073.i
  br label %for.body2081.i

if.end2073.i.if.end2117.i_crit_edge:              ; preds = %if.end2073.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2117.i

for.body2081.i:                                   ; preds = %if.end2110.i.for.body2081.i_crit_edge, %if.end2073.i.for.body2081.i_crit_edge
  %mask_index.14621.i = phi i32 [ %inc2113.i, %if.end2110.i.for.body2081.i_crit_edge ], [ %mask_index.0.i, %if.end2073.i.for.body2081.i_crit_edge ]
  %index22035.14620.i = phi i32 [ %inc2112.i, %if.end2110.i.for.body2081.i_crit_edge ], [ %index22035.0.i, %if.end2073.i.for.body2081.i_crit_edge ]
  %index1.04619.i = phi i32 [ %inc2111.i, %if.end2110.i.for.body2081.i_crit_edge ], [ %824, %if.end2073.i.for.body2081.i_crit_edge ]
  %i.114618.i = phi i32 [ %inc2115.i, %if.end2110.i.for.body2081.i_crit_edge ], [ 0, %if.end2073.i.for.body2081.i_crit_edge ]
  %long_tmp.54617.i = phi i32 [ %long_tmp.6.i, %if.end2110.i.for.body2081.i_crit_edge ], [ 1, %if.end2073.i.for.body2081.i_crit_edge ]
  %shr2082.i = lshr i32 %mask_index.14621.i, 3
  %arrayidx2083.i = getelementptr i8, ptr %822, i32 %shr2082.i
  %837 = ptrtoint ptr %arrayidx2083.i to i32
  call void @__asan_load1_noabort(i32 %837)
  %838 = load i8, ptr %arrayidx2083.i, align 1
  %conv2084.i = zext i8 %838 to i32
  %and2085.i = and i32 %mask_index.14621.i, 7
  %shl2086.i = shl nuw nsw i32 1, %and2085.i
  %and2087.i = and i32 %shl2086.i, %conv2084.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2087.i)
  %tobool2088.not.i = icmp eq i32 %and2087.i, 0
  br i1 %tobool2088.not.i, label %for.body2081.i.if.end2110.i_crit_edge, label %if.then2089.i

for.body2081.i.if.end2110.i_crit_edge:            ; preds = %for.body2081.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2110.i

if.then2089.i:                                    ; preds = %for.body2081.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr2090.i = lshr i32 %index1.04619.i, 3
  %arrayidx2091.i = getelementptr i8, ptr %814, i32 %shr2090.i
  %839 = ptrtoint ptr %arrayidx2091.i to i32
  call void @__asan_load1_noabort(i32 %839)
  %840 = load i8, ptr %arrayidx2091.i, align 1
  %conv2092.i = zext i8 %840 to i32
  %and2093.i = and i32 %index1.04619.i, 7
  %841 = lshr i32 %conv2092.i, %and2093.i
  %shr2098.i = lshr i32 %index22035.14620.i, 3
  %arrayidx2099.i = getelementptr i8, ptr %818, i32 %shr2098.i
  %842 = ptrtoint ptr %arrayidx2099.i to i32
  call void @__asan_load1_noabort(i32 %842)
  %843 = load i8, ptr %arrayidx2099.i, align 1
  %conv2100.i = zext i8 %843 to i32
  %and2101.i = and i32 %index22035.14620.i, 7
  %844 = lshr i32 %conv2100.i, %and2101.i
  %845 = xor i32 %844, %841
  %846 = and i32 %845, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %846)
  %cmp2106.not.i = icmp eq i32 %846, 0
  %spec.select3422.i = select i1 %cmp2106.not.i, i32 %long_tmp.54617.i, i32 0
  br label %if.end2110.i

if.end2110.i:                                     ; preds = %if.then2089.i, %for.body2081.i.if.end2110.i_crit_edge
  %long_tmp.6.i = phi i32 [ %long_tmp.54617.i, %for.body2081.i.if.end2110.i_crit_edge ], [ %spec.select3422.i, %if.then2089.i ]
  %inc2111.i = add i32 %index1.04619.i, 1
  %inc2112.i = add i32 %index22035.14620.i, 1
  %inc2113.i = add i32 %mask_index.14621.i, 1
  %inc2115.i = add nuw nsw i32 %i.114618.i, 1
  %exitcond4691.not.i = icmp eq i32 %inc2115.i, %long_count.2.i
  br i1 %exitcond4691.not.i, label %if.end2110.i.if.end2117.i_crit_edge, label %if.end2110.i.for.body2081.i_crit_edge

if.end2110.i.for.body2081.i_crit_edge:            ; preds = %if.end2110.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body2081.i

if.end2110.i.if.end2117.i_crit_edge:              ; preds = %if.end2110.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2117.i

if.end2117.i:                                     ; preds = %if.end2110.i.if.end2117.i_crit_edge, %if.end2073.i.if.end2117.i_crit_edge
  %status.82.i = phi i32 [ -34, %if.end2073.i.if.end2117.i_crit_edge ], [ %status.94662.i, %if.end2110.i.if.end2117.i_crit_edge ]
  %long_tmp.7.i = phi i32 [ 1, %if.end2073.i.if.end2117.i_crit_edge ], [ %long_tmp.6.i, %if.end2110.i.if.end2117.i_crit_edge ]
  %inc2118.i = add i32 %stack_ptr.10.i, 1
  %arrayidx2119.i = getelementptr i32, ptr %stack2.i, i32 %stack_ptr.10.i
  %847 = ptrtoint ptr %arrayidx2119.i to i32
  call void @__asan_store4_noabort(i32 %847)
  store i32 %long_tmp.7.i, ptr %arrayidx2119.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end2117.i, %if.end2019.i.sw.epilog.i_crit_edge, %if.else1975.i, %if.then1973.i, %if.end1967.i.sw.epilog.i_crit_edge, %if.end1959.i.sw.epilog.i_crit_edge, %land.lhs.true1952.i.sw.epilog.i_crit_edge, %if.then1889.i.sw.epilog.i_crit_edge, %for.body1813.i.sw.epilog.i_crit_edge, %if.end1788.i.sw.epilog.i_crit_edge, %if.then1732.i.sw.epilog.i_crit_edge, %if.then1673.i, %altera_export_bool_array.exit.i.sw.epilog.i_crit_edge, %for.end1535.i, %if.then1362.i, %if.end1360.i.sw.epilog.i_crit_edge, %if.end8.i.i3847.i.sw.epilog.i_crit_edge, %for.body1244.i.sw.epilog.i_crit_edge, %if.end1234.i.sw.epilog.i_crit_edge, %if.then1224.i.sw.epilog.i_crit_edge, %if.end1209.i.sw.epilog.i_crit_edge, %if.else1131.i, %if.end1124.i.sw.epilog.i_crit_edge, %if.then1062.i, %sw.bb966.i, %sw.bb951.i, %sw.bb947.i, %sw.bb944.i, %if.then938.i, %sw.bb825.i, %if.then356.i
  %status.83.i = phi i32 [ %status.82.i, %if.end2117.i ], [ %status.80.i, %if.end2019.i.sw.epilog.i_crit_edge ], [ %call1974.i, %if.then1973.i ], [ %call1976.i, %if.else1975.i ], [ %status.94662.i, %if.end1967.i.sw.epilog.i_crit_edge ], [ %status.94662.i, %altera_export_bool_array.exit.i.sw.epilog.i_crit_edge ], [ %status.94662.i, %if.then1673.i ], [ %status.94662.i, %for.end1535.i ], [ %storemerge.i, %if.end1360.i.sw.epilog.i_crit_edge ], [ %storemerge.i, %if.then1362.i ], [ %status.94662.i, %if.else1131.i ], [ %status.94662.i, %if.then1062.i ], [ %status.94662.i, %sw.bb951.i ], [ %status.94662.i, %sw.bb947.i ], [ %status.94662.i, %sw.bb944.i ], [ %status.52.ph.i, %if.then938.i ], [ %status.94662.i, %if.then356.i ], [ -34, %if.end1124.i.sw.epilog.i_crit_edge ], [ -34, %if.end1209.i.sw.epilog.i_crit_edge ], [ -34, %if.then1224.i.sw.epilog.i_crit_edge ], [ -34, %if.end1234.i.sw.epilog.i_crit_edge ], [ -12, %if.end8.i.i3847.i.sw.epilog.i_crit_edge ], [ -12, %if.then1732.i.sw.epilog.i_crit_edge ], [ -34, %if.end1788.i.sw.epilog.i_crit_edge ], [ -12, %if.then1889.i.sw.epilog.i_crit_edge ], [ -34, %land.lhs.true1952.i.sw.epilog.i_crit_edge ], [ -34, %if.end1959.i.sw.epilog.i_crit_edge ], [ %spec.select4566.i, %sw.bb825.i ], [ %spec.select4569.i, %sw.bb966.i ], [ %status.94662.i, %for.body1244.i.sw.epilog.i_crit_edge ], [ %status.754430.i, %for.body1813.i.sw.epilog.i_crit_edge ]
  %pc.5.i = phi i32 [ %pc.3.lcssa.i, %if.end2117.i ], [ %pc.3.lcssa.i, %if.end2019.i.sw.epilog.i_crit_edge ], [ %pc.3.lcssa.i, %if.then1973.i ], [ %pc.3.lcssa.i, %if.else1975.i ], [ %pc.3.lcssa.i, %if.end1967.i.sw.epilog.i_crit_edge ], [ %pc.3.lcssa.i, %altera_export_bool_array.exit.i.sw.epilog.i_crit_edge ], [ %pc.3.lcssa.i, %if.then1673.i ], [ %pc.3.lcssa.i, %for.end1535.i ], [ %pc.3.lcssa.i, %if.end1360.i.sw.epilog.i_crit_edge ], [ %pc.3.lcssa.i, %if.then1362.i ], [ %pc.3.lcssa.i, %if.else1131.i ], [ %pc.3.lcssa.i, %if.then1062.i ], [ %pc.3.lcssa.i, %sw.bb951.i ], [ %pc.3.lcssa.i, %sw.bb947.i ], [ %pc.3.lcssa.i, %sw.bb944.i ], [ %pc.3.lcssa.i, %if.then938.i ], [ %pc.3.lcssa.i, %if.then356.i ], [ %pc.3.lcssa.i, %if.end1124.i.sw.epilog.i_crit_edge ], [ %pc.3.lcssa.i, %if.end1209.i.sw.epilog.i_crit_edge ], [ %pc.3.lcssa.i, %if.then1224.i.sw.epilog.i_crit_edge ], [ %pc.3.lcssa.i, %if.end1234.i.sw.epilog.i_crit_edge ], [ %pc.3.lcssa.i, %if.end8.i.i3847.i.sw.epilog.i_crit_edge ], [ %pc.3.lcssa.i, %if.then1732.i.sw.epilog.i_crit_edge ], [ %pc.3.lcssa.i, %if.end1788.i.sw.epilog.i_crit_edge ], [ %pc.3.lcssa.i, %if.then1889.i.sw.epilog.i_crit_edge ], [ %pc.3.lcssa.i, %land.lhs.true1952.i.sw.epilog.i_crit_edge ], [ %pc.3.lcssa.i, %if.end1959.i.sw.epilog.i_crit_edge ], [ %pc.3.lcssa.i, %sw.bb825.i ], [ %add970.i, %sw.bb966.i ], [ %pc.3.lcssa.i, %for.body1244.i.sw.epilog.i_crit_edge ], [ %pc.3.lcssa.i, %for.body1813.i.sw.epilog.i_crit_edge ]
  %stack_ptr.12.i = phi i32 [ %inc2118.i, %if.end2117.i ], [ %dec2024.i, %if.end2019.i.sw.epilog.i_crit_edge ], [ %dec18784454.i, %if.then1973.i ], [ %dec18784454.i, %if.else1975.i ], [ %dec18784454.i, %if.end1967.i.sw.epilog.i_crit_edge ], [ %dec1609.i, %altera_export_bool_array.exit.i.sw.epilog.i_crit_edge ], [ %dec1609.i, %if.then1673.i ], [ %dec1499.i, %for.end1535.i ], [ %stack_ptr.54378.i, %if.end1360.i.sw.epilog.i_crit_edge ], [ %stack_ptr.54378.i, %if.then1362.i ], [ %dec1135.i, %if.else1131.i ], [ %inc1066.i, %if.then1062.i ], [ %inc954.i, %sw.bb951.i ], [ %inc949.i, %sw.bb947.i ], [ %inc945.i, %sw.bb944.i ], [ %inc942.i, %if.then938.i ], [ %inc359.i, %if.then356.i ], [ %stack_ptr.04665.i, %if.end1124.i.sw.epilog.i_crit_edge ], [ %stack_ptr.04665.i, %if.end1209.i.sw.epilog.i_crit_edge ], [ %dec1220.i, %if.then1224.i.sw.epilog.i_crit_edge ], [ %dec1235.i, %if.end1234.i.sw.epilog.i_crit_edge ], [ %dec1301.i, %if.end8.i.i3847.i.sw.epilog.i_crit_edge ], [ %dec1689.i, %if.then1732.i.sw.epilog.i_crit_edge ], [ %stack_ptr.64432.i, %if.end1788.i.sw.epilog.i_crit_edge ], [ %dec1878.i, %if.then1889.i.sw.epilog.i_crit_edge ], [ %dec1878.i, %land.lhs.true1952.i.sw.epilog.i_crit_edge ], [ %dec18784454.i, %if.end1959.i.sw.epilog.i_crit_edge ], [ %spec.select4567.i, %sw.bb825.i ], [ %inc967.i, %sw.bb966.i ], [ %dec1235.i, %for.body1244.i.sw.epilog.i_crit_edge ], [ %stack_ptr.64432.i, %for.body1813.i.sw.epilog.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %stack_ptr.12.i)
  %848 = icmp ugt i32 %stack_ptr.12.i, 127
  br i1 %848, label %sw.epilog.i.while.end2143.i_crit_edge, label %sw.epilog.i.sw.epilog.i.thread_crit_edge

sw.epilog.i.sw.epilog.i.thread_crit_edge:         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.thread

sw.epilog.i.while.end2143.i_crit_edge:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

sw.epilog.i.thread:                               ; preds = %sw.epilog.i.sw.epilog.i.thread_crit_edge, %if.end2019.i.sw.epilog.i.thread_crit_edge, %for.body1587.preheader.i, %if.end1575.i.sw.epilog.i.thread_crit_edge, %if.end1542.i.sw.epilog.i.thread_crit_edge, %if.then1474.i, %if.then1463.i, %do.end.i.i, %if.then1443.i.sw.epilog.i.thread_crit_edge, %if.end1425.i, %if.end1406.i, %if.end1387.i, %if.end1368.i, %if.then1277.i.sw.epilog.i.thread_crit_edge, %if.then1272.i.sw.epilog.i.thread_crit_edge, %if.then1071.i, %if.then1047.i, %sw.bb1038.i, %sw.bb1034.i, %sw.bb1031.i, %sw.bb1028.i, %sw.bb1020.i, %if.else1006.i.sw.epilog.i.thread_crit_edge, %if.end1002.i.sw.epilog.i.thread_crit_edge, %if.then992.i.sw.epilog.i.thread_crit_edge, %sw.bb956.i.sw.epilog.i.thread_crit_edge, %if.then840.i, %if.end835.i.sw.epilog.i.thread_crit_edge, %if.end815.i, %if.then786.i, %if.end774.i, %if.then764.i, %if.then751.i, %if.then742.i, %if.end730.i, %if.then720.i, %if.end708.i, %if.end700.i, %if.end683.i, %if.end671.i, %if.end654.i, %if.end642.i, %if.end636.i, %if.end620.i, %if.else603.i, %if.then572.i.sw.epilog.i.thread_crit_edge, %if.else554.i.sw.epilog.i.thread_crit_edge, %if.end506.i, %if.end492.i, %if.end482.i, %if.then471.i, %if.then461.i, %if.then451.i, %if.then444.i, %if.then434.i, %if.then425.i, %if.then416.i, %if.then406.i, %if.then396.i, %if.then386.i, %if.then377.i, %if.then364.i, %for.end353.i.sw.epilog.i.thread_crit_edge
  %current_proc.6.i269 = phi i32 [ %current_proc.54674.i, %sw.epilog.i.sw.epilog.i.thread_crit_edge ], [ %current_proc.54674.i, %for.body1587.preheader.i ], [ %current_proc.54674.i, %if.end1575.i.sw.epilog.i.thread_crit_edge ], [ %current_proc.54674.i, %do.end.i.i ], [ %current_proc.54674.i, %if.then1443.i.sw.epilog.i.thread_crit_edge ], [ %current_proc.54674.i, %if.then992.i.sw.epilog.i.thread_crit_edge ], [ %current_proc.54674.i, %for.end353.i.sw.epilog.i.thread_crit_edge ], [ %current_proc.54674.i, %if.then364.i ], [ %current_proc.54674.i, %if.then377.i ], [ %current_proc.54674.i, %if.then386.i ], [ %current_proc.54674.i, %if.then396.i ], [ %current_proc.54674.i, %if.then406.i ], [ %current_proc.54674.i, %if.then416.i ], [ %current_proc.54674.i, %if.then425.i ], [ %current_proc.54674.i, %if.then434.i ], [ %current_proc.54674.i, %if.then444.i ], [ %current_proc.54674.i, %if.then451.i ], [ %current_proc.54674.i, %if.then461.i ], [ %current_proc.54674.i, %if.then471.i ], [ %current_proc.54674.i, %if.end482.i ], [ %current_proc.54674.i, %if.end492.i ], [ %current_proc.54674.i, %if.end506.i ], [ %current_proc.54674.i, %if.else603.i ], [ %current_proc.54674.i, %if.end620.i ], [ %current_proc.54674.i, %if.end636.i ], [ %current_proc.54674.i, %if.end642.i ], [ %current_proc.54674.i, %if.end654.i ], [ %current_proc.54674.i, %if.end671.i ], [ %current_proc.54674.i, %if.end683.i ], [ %current_proc.54674.i, %if.end700.i ], [ %current_proc.54674.i, %if.end708.i ], [ %current_proc.54674.i, %if.then720.i ], [ %current_proc.54674.i, %if.end730.i ], [ %current_proc.54674.i, %if.then742.i ], [ %current_proc.54674.i, %if.then751.i ], [ %current_proc.54674.i, %if.then764.i ], [ %current_proc.54674.i, %if.end774.i ], [ %current_proc.54674.i, %if.then786.i ], [ %current_proc.54674.i, %if.end815.i ], [ %current_proc.54674.i, %if.end835.i.sw.epilog.i.thread_crit_edge ], [ %current_proc.54674.i, %if.then840.i ], [ %current_proc.54674.i, %if.end1002.i.sw.epilog.i.thread_crit_edge ], [ %current_proc.54674.i, %sw.bb1020.i ], [ %current_proc.54674.i, %sw.bb1028.i ], [ %current_proc.54674.i, %sw.bb1031.i ], [ %current_proc.54674.i, %sw.bb1034.i ], [ %current_proc.54674.i, %sw.bb1038.i ], [ %current_proc.54674.i, %if.then1047.i ], [ %current_proc.54674.i, %if.then1071.i ], [ %current_proc.54674.i, %if.then1272.i.sw.epilog.i.thread_crit_edge ], [ %current_proc.54674.i, %if.end1368.i ], [ %current_proc.54674.i, %if.end1387.i ], [ %current_proc.54674.i, %if.end1406.i ], [ %current_proc.54674.i, %if.end1425.i ], [ %current_proc.54674.i, %if.then1463.i ], [ %current_proc.54674.i, %if.then1474.i ], [ %current_proc.54674.i, %if.end1542.i.sw.epilog.i.thread_crit_edge ], [ %current_proc.54674.i, %if.end2019.i.sw.epilog.i.thread_crit_edge ], [ %current_proc.54674.i, %if.then1277.i.sw.epilog.i.thread_crit_edge ], [ %current_proc.54674.i, %if.else1006.i.sw.epilog.i.thread_crit_edge ], [ %current_proc.54674.i, %sw.bb956.i.sw.epilog.i.thread_crit_edge ], [ %current_proc.54674.i, %if.then572.i.sw.epilog.i.thread_crit_edge ], [ %i.5.i, %if.else554.i.sw.epilog.i.thread_crit_edge ]
  %stack_ptr.12.i267 = phi i32 [ %stack_ptr.12.i, %sw.epilog.i.sw.epilog.i.thread_crit_edge ], [ %dec1544.i, %for.body1587.preheader.i ], [ %dec1544.i, %if.end1575.i.sw.epilog.i.thread_crit_edge ], [ %dec1447.i, %do.end.i.i ], [ %dec1447.i, %if.then1443.i.sw.epilog.i.thread_crit_edge ], [ %sub986.i, %if.then992.i.sw.epilog.i.thread_crit_edge ], [ %stack_ptr.04665.i, %for.end353.i.sw.epilog.i.thread_crit_edge ], [ %stack_ptr.04665.i, %if.then364.i ], [ %dec.i, %if.then377.i ], [ %dec387.i, %if.then386.i ], [ %dec397.i, %if.then396.i ], [ %dec407.i, %if.then406.i ], [ %dec417.i, %if.then416.i ], [ %dec426.i, %if.then425.i ], [ %dec435.i, %if.then434.i ], [ %stack_ptr.04665.i, %if.then444.i ], [ %dec452.i, %if.then451.i ], [ %dec462.i, %if.then461.i ], [ %dec472.i, %if.then471.i ], [ %stack_ptr.04665.i, %if.end482.i ], [ %dec493.i, %if.end492.i ], [ %dec507.i, %if.end506.i ], [ %dec593.i, %if.else603.i ], [ %dec623.i, %if.end620.i ], [ %stack_ptr.04665.i, %if.end636.i ], [ %dec645.i, %if.end642.i ], [ %dec655.i, %if.end654.i ], [ %dec674.i, %if.end671.i ], [ %dec684.i, %if.end683.i ], [ %dec701.i, %if.end700.i ], [ %dec711.i, %if.end708.i ], [ %dec721.i, %if.then720.i ], [ %dec733.i, %if.end730.i ], [ %dec743.i, %if.then742.i ], [ %dec754.i, %if.then751.i ], [ %dec765.i, %if.then764.i ], [ %dec777.i, %if.end774.i ], [ %dec788.i, %if.then786.i ], [ %dec816.i, %if.end815.i ], [ %stack_ptr.04665.i, %if.end835.i.sw.epilog.i.thread_crit_edge ], [ %stack_ptr.04665.i, %if.then840.i ], [ %sub986.i, %if.end1002.i.sw.epilog.i.thread_crit_edge ], [ %stack_ptr.04665.i, %sw.bb1020.i ], [ %stack_ptr.04665.i, %sw.bb1028.i ], [ %stack_ptr.04665.i, %sw.bb1031.i ], [ %stack_ptr.04665.i, %sw.bb1034.i ], [ %stack_ptr.04665.i, %sw.bb1038.i ], [ %stack_ptr.04665.i, %if.then1047.i ], [ %dec1072.i, %if.then1071.i ], [ %dec1273.i, %if.then1272.i.sw.epilog.i.thread_crit_edge ], [ %dec1371.i, %if.end1368.i ], [ %dec1390.i, %if.end1387.i ], [ %dec1409.i, %if.end1406.i ], [ %dec1428.i, %if.end1425.i ], [ %stack_ptr.04665.i, %if.then1463.i ], [ %stack_ptr.04665.i, %if.then1474.i ], [ %dec1544.i, %if.end1542.i.sw.epilog.i.thread_crit_edge ], [ %dec1998.i, %if.end2019.i.sw.epilog.i.thread_crit_edge ], [ %dec1273.i, %if.then1277.i.sw.epilog.i.thread_crit_edge ], [ %stack_ptr.04665.i, %if.else1006.i.sw.epilog.i.thread_crit_edge ], [ %stack_ptr.04665.i, %sw.bb956.i.sw.epilog.i.thread_crit_edge ], [ %dec573.i, %if.then572.i.sw.epilog.i.thread_crit_edge ], [ 0, %if.else554.i.sw.epilog.i.thread_crit_edge ]
  %pc.5.i266 = phi i32 [ %pc.5.i, %sw.epilog.i.sw.epilog.i.thread_crit_edge ], [ %pc.3.lcssa.i, %for.body1587.preheader.i ], [ %pc.3.lcssa.i, %if.end1575.i.sw.epilog.i.thread_crit_edge ], [ %pc.3.lcssa.i, %do.end.i.i ], [ %pc.3.lcssa.i, %if.then1443.i.sw.epilog.i.thread_crit_edge ], [ %pc.3.lcssa.i, %if.then992.i.sw.epilog.i.thread_crit_edge ], [ %pc.3.lcssa.i, %for.end353.i.sw.epilog.i.thread_crit_edge ], [ %pc.3.lcssa.i, %if.then364.i ], [ %pc.3.lcssa.i, %if.then377.i ], [ %pc.3.lcssa.i, %if.then386.i ], [ %pc.3.lcssa.i, %if.then396.i ], [ %pc.3.lcssa.i, %if.then406.i ], [ %pc.3.lcssa.i, %if.then416.i ], [ %pc.3.lcssa.i, %if.then425.i ], [ %pc.3.lcssa.i, %if.then434.i ], [ %pc.3.lcssa.i, %if.then444.i ], [ %pc.3.lcssa.i, %if.then451.i ], [ %pc.3.lcssa.i, %if.then461.i ], [ %pc.3.lcssa.i, %if.then471.i ], [ %pc.3.lcssa.i, %if.end482.i ], [ %pc.3.lcssa.i, %if.end492.i ], [ %pc.3.lcssa.i, %if.end506.i ], [ %pc.3.lcssa.i, %if.else603.i ], [ %pc.3.lcssa.i, %if.end620.i ], [ %pc.3.lcssa.i, %if.end636.i ], [ %pc.3.lcssa.i, %if.end642.i ], [ %pc.3.lcssa.i, %if.end654.i ], [ %pc.3.lcssa.i, %if.end671.i ], [ %pc.3.lcssa.i, %if.end683.i ], [ %pc.3.lcssa.i, %if.end700.i ], [ %pc.3.lcssa.i, %if.end708.i ], [ %pc.3.lcssa.i, %if.then720.i ], [ %pc.3.lcssa.i, %if.end730.i ], [ %pc.3.lcssa.i, %if.then742.i ], [ %pc.3.lcssa.i, %if.then751.i ], [ %pc.3.lcssa.i, %if.then764.i ], [ %pc.3.lcssa.i, %if.end774.i ], [ %pc.3.lcssa.i, %if.then786.i ], [ %pc.3.lcssa.i, %if.end815.i ], [ %pc.3.lcssa.i, %if.end835.i.sw.epilog.i.thread_crit_edge ], [ %pc.3.lcssa.i, %if.then840.i ], [ %pc.3.lcssa.i, %if.end1002.i.sw.epilog.i.thread_crit_edge ], [ %pc.3.lcssa.i, %sw.bb1020.i ], [ %pc.3.lcssa.i, %sw.bb1028.i ], [ %pc.3.lcssa.i, %sw.bb1031.i ], [ %pc.3.lcssa.i, %sw.bb1034.i ], [ %pc.3.lcssa.i, %sw.bb1038.i ], [ %pc.3.lcssa.i, %if.then1047.i ], [ %pc.3.lcssa.i, %if.then1071.i ], [ %pc.3.lcssa.i, %if.then1272.i.sw.epilog.i.thread_crit_edge ], [ %pc.3.lcssa.i, %if.end1368.i ], [ %pc.3.lcssa.i, %if.end1387.i ], [ %pc.3.lcssa.i, %if.end1406.i ], [ %pc.3.lcssa.i, %if.end1425.i ], [ %pc.3.lcssa.i, %if.then1463.i ], [ %pc.3.lcssa.i, %if.then1474.i ], [ %pc.3.lcssa.i, %if.end1542.i.sw.epilog.i.thread_crit_edge ], [ %pc.3.lcssa.i, %if.end2019.i.sw.epilog.i.thread_crit_edge ], [ %add1279.i, %if.then1277.i.sw.epilog.i.thread_crit_edge ], [ %add1010.i, %if.else1006.i.sw.epilog.i.thread_crit_edge ], [ %add958.i, %sw.bb956.i.sw.epilog.i.thread_crit_edge ], [ %add575.i, %if.then572.i.sw.epilog.i.thread_crit_edge ], [ %add560.i, %if.else554.i.sw.epilog.i.thread_crit_edge ]
  %status.83.i265 = phi i32 [ %status.83.i, %sw.epilog.i.sw.epilog.i.thread_crit_edge ], [ %status.94662.i, %for.body1587.preheader.i ], [ %status.94662.i, %if.end1575.i.sw.epilog.i.thread_crit_edge ], [ %status.94662.i, %do.end.i.i ], [ %status.94662.i, %if.then1443.i.sw.epilog.i.thread_crit_edge ], [ %status.94662.i, %if.then992.i.sw.epilog.i.thread_crit_edge ], [ %status.94662.i, %for.end353.i.sw.epilog.i.thread_crit_edge ], [ %status.94662.i, %if.then364.i ], [ %status.94662.i, %if.then377.i ], [ %status.94662.i, %if.then386.i ], [ %status.94662.i, %if.then396.i ], [ %status.94662.i, %if.then406.i ], [ %status.94662.i, %if.then416.i ], [ %status.94662.i, %if.then425.i ], [ %status.94662.i, %if.then434.i ], [ %status.94662.i, %if.then444.i ], [ %status.94662.i, %if.then451.i ], [ %status.94662.i, %if.then461.i ], [ %status.94662.i, %if.then471.i ], [ %status.94662.i, %if.end482.i ], [ %status.94662.i, %if.end492.i ], [ %status.94662.i, %if.end506.i ], [ %status.94662.i, %if.else603.i ], [ %status.94662.i, %if.end620.i ], [ %status.94662.i, %if.end636.i ], [ %call649.i, %if.end642.i ], [ %call662.i, %if.end654.i ], [ %call678.i, %if.end671.i ], [ %call691.i, %if.end683.i ], [ %call703.i, %if.end700.i ], [ %call716.i, %if.end708.i ], [ %call724.i, %if.then720.i ], [ %call738.i, %if.end730.i ], [ %call746.i, %if.then742.i ], [ %call759.i, %if.then751.i ], [ %call768.i, %if.then764.i ], [ %call782.i, %if.end774.i ], [ %status.94662.i, %if.then786.i ], [ %status.94662.i, %if.end815.i ], [ %status.94662.i, %if.end835.i.sw.epilog.i.thread_crit_edge ], [ %status.94662.i, %if.then840.i ], [ %status.94662.i, %if.end1002.i.sw.epilog.i.thread_crit_edge ], [ %status.94662.i, %sw.bb1020.i ], [ %call1030.i, %sw.bb1028.i ], [ %call1033.i, %sw.bb1031.i ], [ %call1037.i, %sw.bb1034.i ], [ %call1041.i, %sw.bb1038.i ], [ %status.94662.i, %if.then1047.i ], [ %status.94662.i, %if.then1071.i ], [ %status.94662.i, %if.then1272.i.sw.epilog.i.thread_crit_edge ], [ %call1382.i, %if.end1368.i ], [ %call1401.i, %if.end1387.i ], [ %call1420.i, %if.end1406.i ], [ %call1439.i, %if.end1425.i ], [ %status.94662.i, %if.then1463.i ], [ %status.94662.i, %if.then1474.i ], [ %status.94662.i, %if.end1542.i.sw.epilog.i.thread_crit_edge ], [ %status.80.i, %if.end2019.i.sw.epilog.i.thread_crit_edge ], [ %status.94662.i, %if.then1277.i.sw.epilog.i.thread_crit_edge ], [ %status.94662.i, %if.else1006.i.sw.epilog.i.thread_crit_edge ], [ %status.94662.i, %sw.bb956.i.sw.epilog.i.thread_crit_edge ], [ %status.94662.i, %if.then572.i.sw.epilog.i.thread_crit_edge ], [ %status.94662.i, %if.else554.i.sw.epilog.i.thread_crit_edge ]
  %cmp2138.not.i.not = icmp eq i32 %status.83.i265, 0
  br i1 %cmp2138.not.i.not, label %sw.epilog.i.thread.while.body328.i_crit_edge, label %sw.epilog.i.thread.while.end2143.i_crit_edge

sw.epilog.i.thread.while.end2143.i_crit_edge:     ; preds = %sw.epilog.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end2143.i

sw.epilog.i.thread.while.body328.i_crit_edge:     ; preds = %sw.epilog.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body328.i

while.end2143.i.loopexit344.split.loop.exit355:   ; preds = %sw.bb1593.i
  call void @__sanitizer_cov_trace_pc() #13
  %.mux.le = select i1 %cmp.i3911.i, i32 -75, i32 -38
  br label %while.end2143.i

while.end2143.i:                                  ; preds = %while.end2143.i.loopexit344.split.loop.exit355, %sw.epilog.i.thread.while.end2143.i_crit_edge, %sw.epilog.i.while.end2143.i_crit_edge, %sw.bb2026.i.while.end2143.i_crit_edge, %sw.bb1985.i.while.end2143.i_crit_edge, %sw.bb1857.i.while.end2143.i_crit_edge, %sw.bb1675.i.while.end2143.i_crit_edge, %if.end8.i.i3941.i.while.end2143.i_crit_edge, %if.end1601.i.while.end2143.i_crit_edge, %if.end8.i.i3908.i.while.end2143.i_crit_edge, %sw.bb1538.i.while.end2143.i_crit_edge, %if.end1497.i.while.end2143.i_crit_edge, %if.end1489.i.while.end2143.i_crit_edge, %sw.bb1485.i.while.end2143.i_crit_edge, %if.end1454.i.while.end2143.i_crit_edge, %sw.bb1450.i.while.end2143.i_crit_edge, %sw.bb1440.i.while.end2143.i_crit_edge, %sw.bb1421.i.while.end2143.i_crit_edge, %sw.bb1402.i.while.end2143.i_crit_edge, %sw.bb1383.i.while.end2143.i_crit_edge, %sw.bb1364.i.while.end2143.i_crit_edge, %sw.bb1289.i.while.end2143.i_crit_edge, %if.then1277.i.while.end2143.i_crit_edge, %sw.bb1269.i.while.end2143.i_crit_edge, %if.then1153.i.while.end2143.i_crit_edge, %sw.bb1139.i.while.end2143.i_crit_edge, %if.end7.i.i3778.i.while.end2143.i_crit_edge, %kcalloc.exit3780.thread.i, %sw.bb1077.i.while.end2143.i_crit_edge, %sw.bb1068.i.while.end2143.i_crit_edge, %sw.bb1057.i.while.end2143.i_crit_edge, %sw.bb1042.i.while.end2143.i_crit_edge, %if.else1006.i.while.end2143.i_crit_edge, %sw.bb978.i.while.end2143.i_crit_edge, %sw.bb956.i.while.end2143.i_crit_edge, %if.end927.i.while.end2143.i_crit_edge, %sw.bb847.i.while.end2143.i_crit_edge, %sw.bb831.i.while.end2143.i_crit_edge, %sw.bb811.i.while.end2143.i_crit_edge, %if.then807.i, %sw.bb804.i.while.end2143.i_crit_edge, %sw.bb783.i.while.end2143.i_crit_edge, %sw.bb770.i.while.end2143.i_crit_edge, %sw.bb761.i.while.end2143.i_crit_edge, %sw.bb748.i.while.end2143.i_crit_edge, %sw.bb739.i.while.end2143.i_crit_edge, %sw.bb726.i.while.end2143.i_crit_edge, %sw.bb717.i.while.end2143.i_crit_edge, %sw.bb704.i.while.end2143.i_crit_edge, %sw.bb696.i.while.end2143.i_crit_edge, %sw.bb679.i.while.end2143.i_crit_edge, %sw.bb667.i.while.end2143.i_crit_edge, %sw.bb650.i.while.end2143.i_crit_edge, %sw.bb638.i.while.end2143.i_crit_edge, %sw.bb616.i.while.end2143.i_crit_edge, %if.then588.i.while.end2143.i_crit_edge, %sw.bb585.i.while.end2143.i_crit_edge, %if.then572.i.while.end2143.i_crit_edge, %if.else569.i.while.end2143.i_crit_edge, %if.else554.i.while.end2143.i_crit_edge, %while.cond528.i.while.end2143.i_crit_edge, %sw.bb502.i.while.end2143.i_crit_edge, %sw.bb488.i.while.end2143.i_crit_edge, %sw.bb478.i.while.end2143.i_crit_edge, %sw.bb468.i.while.end2143.i_crit_edge, %sw.bb458.i.while.end2143.i_crit_edge, %sw.bb448.i.while.end2143.i_crit_edge, %sw.bb441.i.while.end2143.i_crit_edge, %sw.bb431.i.while.end2143.i_crit_edge, %sw.bb422.i.while.end2143.i_crit_edge, %sw.bb413.i.while.end2143.i_crit_edge, %sw.bb403.i.while.end2143.i_crit_edge, %sw.bb393.i.while.end2143.i_crit_edge, %sw.bb383.i.while.end2143.i_crit_edge, %sw.bb374.i.while.end2143.i_crit_edge, %sw.bb361.i.while.end2143.i_crit_edge, %sw.bb.i.while.end2143.i_crit_edge, %for.end353.i.while.end2143.i_crit_edge, %if.end323.i.while.end2143.i_crit_edge, %if.end323.thread.i
  %exit_code.3 = phi i32 [ 0, %if.end323.i.while.end2143.i_crit_edge ], [ 0, %if.end323.thread.i ], [ 0, %kcalloc.exit3780.thread.i ], [ 0, %sw.bb804.i.while.end2143.i_crit_edge ], [ %399, %if.then807.i ], [ 0, %while.end2143.i.loopexit344.split.loop.exit355 ], [ 0, %while.cond528.i.while.end2143.i_crit_edge ], [ 0, %if.then588.i.while.end2143.i_crit_edge ], [ 0, %if.end7.i.i3778.i.while.end2143.i_crit_edge ], [ 0, %if.then1153.i.while.end2143.i_crit_edge ], [ 0, %if.end1454.i.while.end2143.i_crit_edge ], [ 0, %if.end1489.i.while.end2143.i_crit_edge ], [ 0, %if.end1497.i.while.end2143.i_crit_edge ], [ 0, %if.end8.i.i3908.i.while.end2143.i_crit_edge ], [ 0, %if.end1601.i.while.end2143.i_crit_edge ], [ 0, %if.end8.i.i3941.i.while.end2143.i_crit_edge ], [ 0, %sw.bb.i.while.end2143.i_crit_edge ], [ 0, %sw.bb361.i.while.end2143.i_crit_edge ], [ 0, %sw.bb374.i.while.end2143.i_crit_edge ], [ 0, %sw.bb383.i.while.end2143.i_crit_edge ], [ 0, %sw.bb393.i.while.end2143.i_crit_edge ], [ 0, %sw.bb403.i.while.end2143.i_crit_edge ], [ 0, %sw.bb413.i.while.end2143.i_crit_edge ], [ 0, %sw.bb422.i.while.end2143.i_crit_edge ], [ 0, %sw.bb431.i.while.end2143.i_crit_edge ], [ 0, %sw.bb441.i.while.end2143.i_crit_edge ], [ 0, %sw.bb448.i.while.end2143.i_crit_edge ], [ 0, %sw.bb458.i.while.end2143.i_crit_edge ], [ 0, %sw.bb468.i.while.end2143.i_crit_edge ], [ 0, %sw.bb478.i.while.end2143.i_crit_edge ], [ 0, %sw.bb488.i.while.end2143.i_crit_edge ], [ 0, %sw.bb502.i.while.end2143.i_crit_edge ], [ 0, %if.else569.i.while.end2143.i_crit_edge ], [ 0, %sw.bb585.i.while.end2143.i_crit_edge ], [ 0, %sw.bb616.i.while.end2143.i_crit_edge ], [ 0, %sw.bb638.i.while.end2143.i_crit_edge ], [ 0, %sw.bb650.i.while.end2143.i_crit_edge ], [ 0, %sw.bb667.i.while.end2143.i_crit_edge ], [ 0, %sw.bb679.i.while.end2143.i_crit_edge ], [ 0, %sw.bb696.i.while.end2143.i_crit_edge ], [ 0, %sw.bb704.i.while.end2143.i_crit_edge ], [ 0, %sw.bb717.i.while.end2143.i_crit_edge ], [ 0, %sw.bb726.i.while.end2143.i_crit_edge ], [ 0, %sw.bb739.i.while.end2143.i_crit_edge ], [ 0, %sw.bb748.i.while.end2143.i_crit_edge ], [ 0, %sw.bb761.i.while.end2143.i_crit_edge ], [ 0, %sw.bb770.i.while.end2143.i_crit_edge ], [ 0, %sw.bb783.i.while.end2143.i_crit_edge ], [ 0, %sw.bb811.i.while.end2143.i_crit_edge ], [ 0, %sw.bb831.i.while.end2143.i_crit_edge ], [ 0, %if.end927.i.while.end2143.i_crit_edge ], [ 0, %sw.bb978.i.while.end2143.i_crit_edge ], [ 0, %sw.bb1042.i.while.end2143.i_crit_edge ], [ 0, %sw.bb1057.i.while.end2143.i_crit_edge ], [ 0, %sw.bb1068.i.while.end2143.i_crit_edge ], [ 0, %sw.bb1077.i.while.end2143.i_crit_edge ], [ 0, %sw.bb1139.i.while.end2143.i_crit_edge ], [ 0, %sw.bb1269.i.while.end2143.i_crit_edge ], [ 0, %sw.bb1289.i.while.end2143.i_crit_edge ], [ 0, %sw.bb1364.i.while.end2143.i_crit_edge ], [ 0, %sw.bb1383.i.while.end2143.i_crit_edge ], [ 0, %sw.bb1402.i.while.end2143.i_crit_edge ], [ 0, %sw.bb1421.i.while.end2143.i_crit_edge ], [ 0, %sw.bb1440.i.while.end2143.i_crit_edge ], [ 0, %sw.bb1450.i.while.end2143.i_crit_edge ], [ 0, %sw.bb1485.i.while.end2143.i_crit_edge ], [ 0, %sw.bb1538.i.while.end2143.i_crit_edge ], [ 0, %sw.bb1675.i.while.end2143.i_crit_edge ], [ 0, %sw.bb1857.i.while.end2143.i_crit_edge ], [ 0, %sw.bb1985.i.while.end2143.i_crit_edge ], [ 0, %sw.bb2026.i.while.end2143.i_crit_edge ], [ 0, %sw.bb847.i.while.end2143.i_crit_edge ], [ 0, %if.else554.i.while.end2143.i_crit_edge ], [ 0, %if.then572.i.while.end2143.i_crit_edge ], [ 0, %sw.bb956.i.while.end2143.i_crit_edge ], [ 0, %if.else1006.i.while.end2143.i_crit_edge ], [ 0, %if.then1277.i.while.end2143.i_crit_edge ], [ 0, %for.end353.i.while.end2143.i_crit_edge ], [ 0, %sw.epilog.i.while.end2143.i_crit_edge ], [ 0, %sw.epilog.i.thread.while.end2143.i_crit_edge ]
  %format_version.3 = phi i32 [ %add.i196, %if.end323.i.while.end2143.i_crit_edge ], [ %format_version.2, %if.end323.thread.i ], [ %add.i196, %kcalloc.exit3780.thread.i ], [ %add.i196, %sw.bb804.i.while.end2143.i_crit_edge ], [ %add.i196, %if.then807.i ], [ %add.i196, %while.end2143.i.loopexit344.split.loop.exit355 ], [ %add.i196, %while.cond528.i.while.end2143.i_crit_edge ], [ %add.i196, %if.then588.i.while.end2143.i_crit_edge ], [ %add.i196, %if.end7.i.i3778.i.while.end2143.i_crit_edge ], [ %add.i196, %if.then1153.i.while.end2143.i_crit_edge ], [ %add.i196, %if.end1454.i.while.end2143.i_crit_edge ], [ %add.i196, %if.end1489.i.while.end2143.i_crit_edge ], [ %add.i196, %if.end1497.i.while.end2143.i_crit_edge ], [ %add.i196, %if.end8.i.i3908.i.while.end2143.i_crit_edge ], [ %add.i196, %if.end1601.i.while.end2143.i_crit_edge ], [ %add.i196, %if.end8.i.i3941.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb361.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb374.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb383.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb393.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb403.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb413.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb422.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb431.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb441.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb448.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb458.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb468.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb478.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb488.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb502.i.while.end2143.i_crit_edge ], [ %add.i196, %if.else569.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb585.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb616.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb638.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb650.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb667.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb679.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb696.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb704.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb717.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb726.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb739.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb748.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb761.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb770.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb783.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb811.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb831.i.while.end2143.i_crit_edge ], [ %add.i196, %if.end927.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb978.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb1042.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb1057.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb1068.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb1077.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb1139.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb1269.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb1289.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb1364.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb1383.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb1402.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb1421.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb1440.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb1450.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb1485.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb1538.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb1675.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb1857.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb1985.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb2026.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb847.i.while.end2143.i_crit_edge ], [ %add.i196, %if.else554.i.while.end2143.i_crit_edge ], [ %add.i196, %if.then572.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.bb956.i.while.end2143.i_crit_edge ], [ %add.i196, %if.else1006.i.while.end2143.i_crit_edge ], [ %add.i196, %if.then1277.i.while.end2143.i_crit_edge ], [ %add.i196, %for.end353.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.epilog.i.while.end2143.i_crit_edge ], [ %add.i196, %sw.epilog.i.thread.while.end2143.i_crit_edge ]
  %proc_attributes.141444816.i = phi ptr [ %proc_attributes.14144.i, %if.end323.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.ph.i, %if.end323.thread.i ], [ %proc_attributes.14144.i, %kcalloc.exit3780.thread.i ], [ %proc_attributes.14144.i, %sw.bb804.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %if.then807.i ], [ %proc_attributes.14144.i, %while.end2143.i.loopexit344.split.loop.exit355 ], [ %proc_attributes.14144.i, %while.cond528.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %if.then588.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %if.end7.i.i3778.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %if.then1153.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %if.end1454.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %if.end1489.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %if.end1497.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %if.end8.i.i3908.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %if.end1601.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %if.end8.i.i3941.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb361.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb374.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb383.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb393.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb403.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb413.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb422.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb431.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb441.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb448.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb458.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb468.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb478.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb488.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb502.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %if.else569.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb585.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb616.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb638.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb650.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb667.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb679.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb696.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb704.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb717.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb726.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb739.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb748.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb761.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb770.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb783.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb811.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb831.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %if.end927.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb978.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb1042.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb1057.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb1068.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb1077.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb1139.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb1269.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb1289.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb1364.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb1383.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb1402.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb1421.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb1440.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb1450.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb1485.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb1538.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb1675.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb1857.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb1985.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb2026.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb847.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %if.else554.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %if.then572.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.bb956.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %if.else1006.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %if.then1277.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %for.end353.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.epilog.i.while.end2143.i_crit_edge ], [ %proc_attributes.14144.i, %sw.epilog.i.thread.while.end2143.i_crit_edge ]
  %attrs.1414244994815.i = phi ptr [ %attrs.141424499.i, %if.end323.i.while.end2143.i_crit_edge ], [ %attrs.141424499.ph.i, %if.end323.thread.i ], [ %attrs.141424499.i, %kcalloc.exit3780.thread.i ], [ %attrs.141424499.i, %sw.bb804.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %if.then807.i ], [ %attrs.141424499.i, %while.end2143.i.loopexit344.split.loop.exit355 ], [ %attrs.141424499.i, %while.cond528.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %if.then588.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %if.end7.i.i3778.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %if.then1153.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %if.end1454.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %if.end1489.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %if.end1497.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %if.end8.i.i3908.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %if.end1601.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %if.end8.i.i3941.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb361.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb374.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb383.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb393.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb403.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb413.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb422.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb431.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb441.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb448.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb458.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb468.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb478.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb488.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb502.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %if.else569.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb585.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb616.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb638.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb650.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb667.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb679.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb696.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb704.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb717.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb726.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb739.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb748.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb761.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb770.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb783.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb811.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb831.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %if.end927.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb978.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb1042.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb1057.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb1068.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb1077.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb1139.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb1269.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb1289.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb1364.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb1383.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb1402.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb1421.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb1440.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb1450.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb1485.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb1538.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb1675.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb1857.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb1985.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb2026.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb847.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %if.else554.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %if.then572.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.bb956.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %if.else1006.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %if.then1277.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %for.end353.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.epilog.i.while.end2143.i_crit_edge ], [ %attrs.141424499.i, %sw.epilog.i.thread.while.end2143.i_crit_edge ]
  %var_size.1414145004814.i = phi ptr [ %var_size.141414500.i, %if.end323.i.while.end2143.i_crit_edge ], [ %var_size.141414500.ph.i, %if.end323.thread.i ], [ %var_size.141414500.i, %kcalloc.exit3780.thread.i ], [ %var_size.141414500.i, %sw.bb804.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %if.then807.i ], [ %var_size.141414500.i, %while.end2143.i.loopexit344.split.loop.exit355 ], [ %var_size.141414500.i, %while.cond528.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %if.then588.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %if.end7.i.i3778.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %if.then1153.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %if.end1454.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %if.end1489.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %if.end1497.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %if.end8.i.i3908.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %if.end1601.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %if.end8.i.i3941.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb361.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb374.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb383.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb393.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb403.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb413.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb422.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb431.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb441.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb448.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb458.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb468.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb478.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb488.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb502.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %if.else569.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb585.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb616.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb638.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb650.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb667.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb679.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb696.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb704.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb717.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb726.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb739.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb748.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb761.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb770.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb783.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb811.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb831.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %if.end927.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb978.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb1042.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb1057.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb1068.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb1077.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb1139.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb1269.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb1289.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb1364.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb1383.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb1402.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb1421.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb1440.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb1450.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb1485.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb1538.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb1675.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb1857.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb1985.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb2026.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb847.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %if.else554.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %if.then572.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.bb956.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %if.else1006.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %if.then1277.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %for.end353.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.epilog.i.while.end2143.i_crit_edge ], [ %var_size.141414500.i, %sw.epilog.i.thread.while.end2143.i_crit_edge ]
  %vars.0414045014813.i = phi ptr [ %vars.041404501.i, %if.end323.i.while.end2143.i_crit_edge ], [ %vars.041404501.ph.i, %if.end323.thread.i ], [ %vars.041404501.i, %kcalloc.exit3780.thread.i ], [ %vars.041404501.i, %sw.bb804.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %if.then807.i ], [ %vars.041404501.i, %while.end2143.i.loopexit344.split.loop.exit355 ], [ %vars.041404501.i, %while.cond528.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %if.then588.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %if.end7.i.i3778.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %if.then1153.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %if.end1454.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %if.end1489.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %if.end1497.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %if.end8.i.i3908.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %if.end1601.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %if.end8.i.i3941.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb361.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb374.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb383.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb393.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb403.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb413.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb422.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb431.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb441.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb448.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb458.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb468.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb478.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb488.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb502.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %if.else569.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb585.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb616.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb638.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb650.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb667.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb679.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb696.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb704.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb717.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb726.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb739.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb748.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb761.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb770.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb783.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb811.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb831.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %if.end927.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb978.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb1042.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb1057.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb1068.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb1077.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb1139.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb1269.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb1289.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb1364.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb1383.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb1402.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb1421.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb1440.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb1450.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb1485.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb1538.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb1675.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb1857.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb1985.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb2026.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb847.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %if.else554.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %if.then572.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.bb956.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %if.else1006.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %if.then1277.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %for.end353.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.epilog.i.while.end2143.i_crit_edge ], [ %vars.041404501.i, %sw.epilog.i.thread.while.end2143.i_crit_edge ]
  %sym_count.04064413245064812.i = phi i32 [ %160, %if.end323.i.while.end2143.i_crit_edge ], [ %sym_count.0406441324506.ph.i, %if.end323.thread.i ], [ %160, %kcalloc.exit3780.thread.i ], [ %160, %sw.bb804.i.while.end2143.i_crit_edge ], [ %160, %if.then807.i ], [ %160, %while.end2143.i.loopexit344.split.loop.exit355 ], [ %160, %while.cond528.i.while.end2143.i_crit_edge ], [ %160, %if.then588.i.while.end2143.i_crit_edge ], [ %160, %if.end7.i.i3778.i.while.end2143.i_crit_edge ], [ %160, %if.then1153.i.while.end2143.i_crit_edge ], [ %160, %if.end1454.i.while.end2143.i_crit_edge ], [ %160, %if.end1489.i.while.end2143.i_crit_edge ], [ %160, %if.end1497.i.while.end2143.i_crit_edge ], [ %160, %if.end8.i.i3908.i.while.end2143.i_crit_edge ], [ %160, %if.end1601.i.while.end2143.i_crit_edge ], [ %160, %if.end8.i.i3941.i.while.end2143.i_crit_edge ], [ %160, %sw.bb.i.while.end2143.i_crit_edge ], [ %160, %sw.bb361.i.while.end2143.i_crit_edge ], [ %160, %sw.bb374.i.while.end2143.i_crit_edge ], [ %160, %sw.bb383.i.while.end2143.i_crit_edge ], [ %160, %sw.bb393.i.while.end2143.i_crit_edge ], [ %160, %sw.bb403.i.while.end2143.i_crit_edge ], [ %160, %sw.bb413.i.while.end2143.i_crit_edge ], [ %160, %sw.bb422.i.while.end2143.i_crit_edge ], [ %160, %sw.bb431.i.while.end2143.i_crit_edge ], [ %160, %sw.bb441.i.while.end2143.i_crit_edge ], [ %160, %sw.bb448.i.while.end2143.i_crit_edge ], [ %160, %sw.bb458.i.while.end2143.i_crit_edge ], [ %160, %sw.bb468.i.while.end2143.i_crit_edge ], [ %160, %sw.bb478.i.while.end2143.i_crit_edge ], [ %160, %sw.bb488.i.while.end2143.i_crit_edge ], [ %160, %sw.bb502.i.while.end2143.i_crit_edge ], [ %160, %if.else569.i.while.end2143.i_crit_edge ], [ %160, %sw.bb585.i.while.end2143.i_crit_edge ], [ %160, %sw.bb616.i.while.end2143.i_crit_edge ], [ %160, %sw.bb638.i.while.end2143.i_crit_edge ], [ %160, %sw.bb650.i.while.end2143.i_crit_edge ], [ %160, %sw.bb667.i.while.end2143.i_crit_edge ], [ %160, %sw.bb679.i.while.end2143.i_crit_edge ], [ %160, %sw.bb696.i.while.end2143.i_crit_edge ], [ %160, %sw.bb704.i.while.end2143.i_crit_edge ], [ %160, %sw.bb717.i.while.end2143.i_crit_edge ], [ %160, %sw.bb726.i.while.end2143.i_crit_edge ], [ %160, %sw.bb739.i.while.end2143.i_crit_edge ], [ %160, %sw.bb748.i.while.end2143.i_crit_edge ], [ %160, %sw.bb761.i.while.end2143.i_crit_edge ], [ %160, %sw.bb770.i.while.end2143.i_crit_edge ], [ %160, %sw.bb783.i.while.end2143.i_crit_edge ], [ %160, %sw.bb811.i.while.end2143.i_crit_edge ], [ %160, %sw.bb831.i.while.end2143.i_crit_edge ], [ %160, %if.end927.i.while.end2143.i_crit_edge ], [ %160, %sw.bb978.i.while.end2143.i_crit_edge ], [ %160, %sw.bb1042.i.while.end2143.i_crit_edge ], [ %160, %sw.bb1057.i.while.end2143.i_crit_edge ], [ %160, %sw.bb1068.i.while.end2143.i_crit_edge ], [ %160, %sw.bb1077.i.while.end2143.i_crit_edge ], [ %160, %sw.bb1139.i.while.end2143.i_crit_edge ], [ %160, %sw.bb1269.i.while.end2143.i_crit_edge ], [ %160, %sw.bb1289.i.while.end2143.i_crit_edge ], [ %160, %sw.bb1364.i.while.end2143.i_crit_edge ], [ %160, %sw.bb1383.i.while.end2143.i_crit_edge ], [ %160, %sw.bb1402.i.while.end2143.i_crit_edge ], [ %160, %sw.bb1421.i.while.end2143.i_crit_edge ], [ %160, %sw.bb1440.i.while.end2143.i_crit_edge ], [ %160, %sw.bb1450.i.while.end2143.i_crit_edge ], [ %160, %sw.bb1485.i.while.end2143.i_crit_edge ], [ %160, %sw.bb1538.i.while.end2143.i_crit_edge ], [ %160, %sw.bb1675.i.while.end2143.i_crit_edge ], [ %160, %sw.bb1857.i.while.end2143.i_crit_edge ], [ %160, %sw.bb1985.i.while.end2143.i_crit_edge ], [ %160, %sw.bb2026.i.while.end2143.i_crit_edge ], [ %160, %sw.bb847.i.while.end2143.i_crit_edge ], [ %160, %if.else554.i.while.end2143.i_crit_edge ], [ %160, %if.then572.i.while.end2143.i_crit_edge ], [ %160, %sw.bb956.i.while.end2143.i_crit_edge ], [ %160, %if.else1006.i.while.end2143.i_crit_edge ], [ %160, %if.then1277.i.while.end2143.i_crit_edge ], [ %160, %for.end353.i.while.end2143.i_crit_edge ], [ %160, %sw.epilog.i.while.end2143.i_crit_edge ], [ %160, %sw.epilog.i.thread.while.end2143.i_crit_edge ]
  %status.9.lcssa.i = phi i32 [ %status.8.i, %if.end323.i.while.end2143.i_crit_edge ], [ %status.8.ph.i, %if.end323.thread.i ], [ -12, %kcalloc.exit3780.thread.i ], [ -75, %sw.bb804.i.while.end2143.i_crit_edge ], [ %status.94662.i, %if.then807.i ], [ %.mux.le, %while.end2143.i.loopexit344.split.loop.exit355 ], [ %status.94662.i, %while.cond528.i.while.end2143.i_crit_edge ], [ %status.83.i265, %sw.epilog.i.thread.while.end2143.i_crit_edge ], [ -75, %sw.epilog.i.while.end2143.i_crit_edge ], [ -38, %for.end353.i.while.end2143.i_crit_edge ], [ -34, %if.then1277.i.while.end2143.i_crit_edge ], [ -34, %if.else1006.i.while.end2143.i_crit_edge ], [ -34, %sw.bb956.i.while.end2143.i_crit_edge ], [ -34, %if.then572.i.while.end2143.i_crit_edge ], [ -34, %if.else554.i.while.end2143.i_crit_edge ], [ -75, %sw.bb847.i.while.end2143.i_crit_edge ], [ -75, %sw.bb2026.i.while.end2143.i_crit_edge ], [ -75, %sw.bb1985.i.while.end2143.i_crit_edge ], [ -75, %sw.bb1857.i.while.end2143.i_crit_edge ], [ -75, %sw.bb1675.i.while.end2143.i_crit_edge ], [ -75, %sw.bb1538.i.while.end2143.i_crit_edge ], [ -75, %sw.bb1485.i.while.end2143.i_crit_edge ], [ -75, %sw.bb1450.i.while.end2143.i_crit_edge ], [ -75, %sw.bb1440.i.while.end2143.i_crit_edge ], [ -75, %sw.bb1421.i.while.end2143.i_crit_edge ], [ -75, %sw.bb1402.i.while.end2143.i_crit_edge ], [ -75, %sw.bb1383.i.while.end2143.i_crit_edge ], [ -75, %sw.bb1364.i.while.end2143.i_crit_edge ], [ -75, %sw.bb1289.i.while.end2143.i_crit_edge ], [ -75, %sw.bb1269.i.while.end2143.i_crit_edge ], [ -75, %sw.bb1139.i.while.end2143.i_crit_edge ], [ -75, %sw.bb1077.i.while.end2143.i_crit_edge ], [ -75, %sw.bb1068.i.while.end2143.i_crit_edge ], [ -75, %sw.bb1057.i.while.end2143.i_crit_edge ], [ -75, %sw.bb1042.i.while.end2143.i_crit_edge ], [ -75, %sw.bb978.i.while.end2143.i_crit_edge ], [ -75, %if.end927.i.while.end2143.i_crit_edge ], [ -75, %sw.bb831.i.while.end2143.i_crit_edge ], [ -75, %sw.bb811.i.while.end2143.i_crit_edge ], [ -75, %sw.bb783.i.while.end2143.i_crit_edge ], [ -75, %sw.bb770.i.while.end2143.i_crit_edge ], [ -75, %sw.bb761.i.while.end2143.i_crit_edge ], [ -75, %sw.bb748.i.while.end2143.i_crit_edge ], [ -75, %sw.bb739.i.while.end2143.i_crit_edge ], [ -75, %sw.bb726.i.while.end2143.i_crit_edge ], [ -75, %sw.bb717.i.while.end2143.i_crit_edge ], [ -75, %sw.bb704.i.while.end2143.i_crit_edge ], [ -75, %sw.bb696.i.while.end2143.i_crit_edge ], [ -75, %sw.bb679.i.while.end2143.i_crit_edge ], [ -75, %sw.bb667.i.while.end2143.i_crit_edge ], [ -75, %sw.bb650.i.while.end2143.i_crit_edge ], [ -75, %sw.bb638.i.while.end2143.i_crit_edge ], [ -75, %sw.bb616.i.while.end2143.i_crit_edge ], [ -75, %sw.bb585.i.while.end2143.i_crit_edge ], [ -75, %if.else569.i.while.end2143.i_crit_edge ], [ -75, %sw.bb502.i.while.end2143.i_crit_edge ], [ -75, %sw.bb488.i.while.end2143.i_crit_edge ], [ -75, %sw.bb478.i.while.end2143.i_crit_edge ], [ -75, %sw.bb468.i.while.end2143.i_crit_edge ], [ -75, %sw.bb458.i.while.end2143.i_crit_edge ], [ -75, %sw.bb448.i.while.end2143.i_crit_edge ], [ -75, %sw.bb441.i.while.end2143.i_crit_edge ], [ -75, %sw.bb431.i.while.end2143.i_crit_edge ], [ -75, %sw.bb422.i.while.end2143.i_crit_edge ], [ -75, %sw.bb413.i.while.end2143.i_crit_edge ], [ -75, %sw.bb403.i.while.end2143.i_crit_edge ], [ -75, %sw.bb393.i.while.end2143.i_crit_edge ], [ -75, %sw.bb383.i.while.end2143.i_crit_edge ], [ -75, %sw.bb374.i.while.end2143.i_crit_edge ], [ -75, %sw.bb361.i.while.end2143.i_crit_edge ], [ -75, %sw.bb.i.while.end2143.i_crit_edge ], [ -12, %if.end8.i.i3941.i.while.end2143.i_crit_edge ], [ -34, %if.end1601.i.while.end2143.i_crit_edge ], [ -12, %if.end8.i.i3908.i.while.end2143.i_crit_edge ], [ -34, %if.end1497.i.while.end2143.i_crit_edge ], [ -34, %if.end1489.i.while.end2143.i_crit_edge ], [ -34, %if.end1454.i.while.end2143.i_crit_edge ], [ -12, %if.then1153.i.while.end2143.i_crit_edge ], [ -12, %if.end7.i.i3778.i.while.end2143.i_crit_edge ], [ -34, %if.then588.i.while.end2143.i_crit_edge ]
  call void @altera_free_buffers(ptr noundef %call7.i.i166) #11
  %cmp2144.not.i = icmp ne ptr %attrs.1414244994815.i, null
  %cmp2147.not.i = icmp ne ptr %vars.0414045014813.i, null
  %or.cond3424.i = select i1 %cmp2144.not.i, i1 %cmp2147.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sym_count.04064413245064812.i)
  %cmp21514679.i = icmp ne i32 %sym_count.04064413245064812.i, 0
  %or.cond.i212 = select i1 %or.cond3424.i, i1 %cmp21514679.i, i1 false
  br i1 %or.cond.i212, label %while.end2143.i.for.body2153.i_crit_edge, label %while.end2143.i.altera_execute.exit_crit_edge

while.end2143.i.altera_execute.exit_crit_edge:    ; preds = %while.end2143.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %altera_execute.exit

while.end2143.i.for.body2153.i_crit_edge:         ; preds = %while.end2143.i
  br label %for.body2153.i

for.body2153.i:                                   ; preds = %for.inc2161.i.for.body2153.i_crit_edge, %while.end2143.i.for.body2153.i_crit_edge
  %i.124680.i = phi i32 [ %inc2162.i, %for.inc2161.i.for.body2153.i_crit_edge ], [ 0, %while.end2143.i.for.body2153.i_crit_edge ]
  %arrayidx2154.i = getelementptr i8, ptr %attrs.1414244994815.i, i32 %i.124680.i
  %849 = ptrtoint ptr %arrayidx2154.i to i32
  call void @__asan_load1_noabort(i32 %849)
  %850 = load i8, ptr %arrayidx2154.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %850)
  %tobool2157.not.i = icmp sgt i8 %850, -1
  br i1 %tobool2157.not.i, label %for.body2153.i.for.inc2161.i_crit_edge, label %if.then2158.i

for.body2153.i.for.inc2161.i_crit_edge:           ; preds = %for.body2153.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc2161.i

if.then2158.i:                                    ; preds = %for.body2153.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx2159.i = getelementptr i32, ptr %vars.0414045014813.i, i32 %i.124680.i
  %851 = ptrtoint ptr %arrayidx2159.i to i32
  call void @__asan_load4_noabort(i32 %851)
  %852 = load i32, ptr %arrayidx2159.i, align 4
  %853 = inttoptr i32 %852 to ptr
  call void @kfree(ptr noundef %853) #11
  br label %for.inc2161.i

for.inc2161.i:                                    ; preds = %if.then2158.i, %for.body2153.i.for.inc2161.i_crit_edge
  %inc2162.i = add nuw i32 %i.124680.i, 1
  %exitcond4702.not.i = icmp eq i32 %inc2162.i, %sym_count.04064413245064812.i
  br i1 %exitcond4702.not.i, label %for.inc2161.i.altera_execute.exit_crit_edge, label %for.inc2161.i.for.body2153.i_crit_edge

for.inc2161.i.for.body2153.i_crit_edge:           ; preds = %for.inc2161.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body2153.i

for.inc2161.i.altera_execute.exit_crit_edge:      ; preds = %for.inc2161.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %altera_execute.exit

altera_execute.exit:                              ; preds = %for.inc2161.i.altera_execute.exit_crit_edge, %while.end2143.i.altera_execute.exit_crit_edge
  call void @kfree(ptr noundef %vars.0414045014813.i) #11
  call void @kfree(ptr noundef %var_size.1414145004814.i) #11
  call void @kfree(ptr noundef %attrs.1414244994815.i) #11
  call void @kfree(ptr noundef %proc_attributes.141444816.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %charbuf.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %exit_code.3)
  %tobool96.not = icmp eq i32 %exit_code.3, 0
  %spec.store.select = select i1 %tobool96.not, i32 %status.9.lcssa.i, i32 -121
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %format_version.3)
  %cmp99 = icmp eq i32 %format_version.3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %spec.store.select)
  %cmp102 = icmp eq i32 %spec.store.select, -22
  %or.cond = select i1 %cmp99, i1 %cmp102, i1 false
  br i1 %or.cond, label %if.then104, label %if.else123

if.then104:                                       ; preds = %altera_execute.exit
  %854 = ptrtoint ptr %call7.i.i166 to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load ptr, ptr %call7.i.i166, align 8
  %action = getelementptr inbounds %struct.altera_config, ptr %855, i32 0, i32 1
  %856 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %856)
  %857 = load ptr, ptr %action, align 4
  %cmp106 = icmp eq ptr %857, null
  br i1 %cmp106, label %do.end111, label %do.end117

do.end111:                                        ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #13
  %call113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1) #15
  br label %if.end132

do.end117:                                        ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #13
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, ptr noundef nonnull %857) #15
  br label %if.end132

if.else123:                                       ; preds = %altera_execute.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %tobool124.not = icmp eq i32 %spec.store.select, 0
  br i1 %tobool124.not, label %if.else123.if.end132_crit_edge, label %do.end128

if.else123.if.end132_crit_edge:                   ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end132

do.end128:                                        ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #13
  %call130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef %spec.store.select) #15
  br label %if.end132

if.end132:                                        ; preds = %do.end128, %if.else123.if.end132_crit_edge, %do.end117, %do.end111
  call void @kfree(ptr noundef nonnull %call7.i.i166) #11
  br label %free_value

free_value:                                       ; preds = %if.end132, %if.end5.free_value_crit_edge
  %retval1.0 = phi i32 [ 0, %if.end132 ], [ -12, %if.end5.free_value_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i165) #11
  br label %free_key

free_key:                                         ; preds = %free_value, %if.end.free_key_crit_edge
  %retval1.1 = phi i32 [ %retval1.0, %free_value ], [ -12, %if.end.free_key_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %out

out:                                              ; preds = %free_key, %entry.out_crit_edge
  %retval1.2 = phi i32 [ %retval1.1, %free_key ], [ -12, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proc_list)
  ret i32 %retval1.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netup_jtag_io_lpt(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @altera_shrink(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @altera_jinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @altera_drscan(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @altera_swap_dr(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @altera_irscan(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @altera_swap_ir(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @altera_set_dr_pre(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @altera_set_dr_post(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @altera_set_ir_pre(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @altera_set_ir_post(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @altera_goto_jstate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @altera_set_irstop(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @altera_set_drstop(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @altera_wait_cycles(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @altera_wait_msecs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @altera_free_buffers(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !113, !114, !116, !117}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/misc/altera-stapl/altera.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype173, !1, !"__UNIQUE_ID_debugtype173", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug174, !4, !"__UNIQUE_ID_debug174", i1 false, i1 false}
!4 = !{!"../drivers/misc/altera-stapl/altera.c", i32 24, i32 1}
!5 = !{ptr @__UNIQUE_ID_description175, !6, !"__UNIQUE_ID_description175", i1 false, i1 false}
!6 = !{!"../drivers/misc/altera-stapl/altera.c", i32 26, i32 1}
!7 = !{ptr @__UNIQUE_ID_author176, !8, !"__UNIQUE_ID_author176", i1 false, i1 false}
!8 = !{!"../drivers/misc/altera-stapl/altera.c", i32 27, i32 1}
!9 = !{ptr @__UNIQUE_ID_file177, !10, !"__UNIQUE_ID_file177", i1 false, i1 false}
!10 = !{!"../drivers/misc/altera-stapl/altera.c", i32 28, i32 1}
!11 = !{ptr @__UNIQUE_ID_license178, !10, !"__UNIQUE_ID_license178", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/misc/altera-stapl/altera.c", i32 2434, i32 3}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @altera_init._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @altera_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/misc/altera-stapl/altera.c", i32 2443, i32 3}
!20 = !{ptr @altera_init._entry.3, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @altera_init._entry_ptr.5, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/misc/altera-stapl/altera.c", i32 2448, i32 4}
!26 = !{ptr @altera_init._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @altera_init._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/misc/altera-stapl/altera.c", i32 2453, i32 3}
!30 = !{ptr @altera_init._entry.11, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @altera_init._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/misc/altera-stapl/altera.c", i32 2461, i32 5}
!34 = !{ptr @altera_init._entry.14, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @altera_init._entry_ptr.16, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/misc/altera-stapl/altera.c", i32 2465, i32 5}
!38 = !{ptr @altera_init._entry.17, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @altera_init._entry_ptr.19, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/misc/altera-stapl/altera.c", i32 2473, i32 6}
!42 = !{ptr @altera_init._entry.20, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @altera_init._entry_ptr.22, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/misc/altera-stapl/altera.c", i32 2485, i32 3}
!48 = !{ptr @altera_init._entry.25, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @altera_init._entry_ptr.27, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/misc/altera-stapl/altera.c", i32 2496, i32 4}
!52 = !{ptr @altera_init._entry.28, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @altera_init._entry_ptr.30, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/misc/altera-stapl/altera.c", i32 2500, i32 4}
!56 = !{ptr @altera_init._entry.31, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @altera_init._entry_ptr.33, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.35, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/misc/altera-stapl/altera.c", i32 2507, i32 3}
!60 = !{ptr @altera_init._entry.34, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @altera_init._entry_ptr.36, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @__ksymtab_altera_init, !63, !"__ksymtab_altera_init", i1 false, i1 false}
!63 = !{!"../drivers/misc/altera-stapl/altera.c", i32 2517, i32 1}
!64 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!65 = !{ptr @debug, !66, !"debug", i1 false, i1 false}
!66 = !{!"../drivers/misc/altera-stapl/altera.c", i32 22, i32 12}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/misc/altera-stapl/altera.c", i32 2260, i32 4}
!69 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @altera_check_crc._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @altera_check_crc._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/misc/altera-stapl/altera.c", i32 2264, i32 4}
!74 = !{ptr @altera_check_crc._entry.39, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @altera_check_crc._entry_ptr.41, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/misc/altera-stapl/altera.c", i32 2269, i32 4}
!78 = !{ptr @altera_check_crc._entry.42, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @altera_check_crc._entry_ptr.44, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.46, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/misc/altera-stapl/altera.c", i32 2273, i32 4}
!82 = !{ptr @altera_check_crc._entry.45, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @altera_check_crc._entry_ptr.47, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.48, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/misc/altera-stapl/altera.c", i32 263, i32 2}
!86 = !{ptr @.str.49, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @altera_execute._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @altera_execute._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/misc/altera-stapl/altera.c", i32 515, i32 4}
!91 = !{ptr @altera_execute._entry.50, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @altera_execute._entry_ptr.52, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.53, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/misc/altera-stapl/altera.c", i32 701, i32 6}
!95 = !{ptr @altera_execute._entry.54, !96, !"_entry", i1 false, i1 false}
!96 = !{!"../drivers/misc/altera-stapl/altera.c", i32 706, i32 5}
!97 = !{ptr @altera_execute._entry_ptr.55, !96, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.56, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.57, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/misc/altera-stapl/altera.c", i32 132, i32 2}
!101 = !{ptr @.str.58, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @altera_export_int._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @altera_export_int._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.59, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/misc/altera-stapl/altera.c", i32 145, i32 3}
!106 = !{ptr @.str.60, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @altera_export_bool_array._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @altera_export_bool_array._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.61, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/misc/altera-stapl/altera.c", i32 170, i32 26}
!111 = !{ptr @altera_export_bool_array._entry.62, !112, !"_entry", i1 false, i1 false}
!112 = !{!"../drivers/misc/altera-stapl/altera.c", i32 178, i32 4}
!113 = !{ptr @altera_export_bool_array._entry_ptr.63, !112, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.65, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/misc/altera-stapl/altera.c", i32 199, i32 3}
!116 = !{ptr @altera_export_bool_array._entry.64, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @altera_export_bool_array._entry_ptr.66, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{!"branch_weights", i32 1, i32 2000}
