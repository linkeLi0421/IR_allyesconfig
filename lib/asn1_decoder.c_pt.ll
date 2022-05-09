; ModuleID = '/llk/IR_all_yes/lib/asn1_decoder.c_pt.bc'
source_filename = "../lib/asn1_decoder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+asn1_ber_decoder\22, \22a\22\09"
module asm "\09.weak\09__crc_asn1_ber_decoder\09\09\09\09"
module asm "\09.long\09__crc_asn1_ber_decoder\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_asn1_ber_decoder:\09\09\09\09\09"
module asm "\09.asciz \09\22asn1_ber_decoder\22\09\09\09\09\09"
module asm "__kstrtabns_asn1_ber_decoder:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.asn1_decoder = type { ptr, i32, ptr }

@asn1_ber_decoder.__UNIQUE_ID_ddebug106 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"asn1_decoder\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"asn1_ber_decoder\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lib/asn1_decoder.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"next_op: pc=\1B[32m%zu\1B[m/%zu dp=\1B[33m%zu\1B[m/%zu C=%d J=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@asn1_op_lengths = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\02\02\03\03\03\03\00\00\01\01\02\02\00\00\00\00\00\02\00\03\00\03\00\00\01\01\02\02\01\01\02\02\01\01\02\02\02\02\03\03\01", [55 x i8] zeroinitializer }, align 32
@asn1_ber_decoder.__UNIQUE_ID_ddebug107 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"- any %02x\0A\00", [20 x i8] zeroinitializer }, align 32
@asn1_ber_decoder.__UNIQUE_ID_ddebug108 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"- match? %02x %02x %02x\0A\00", [39 x i8] zeroinitializer }, align 32
@asn1_ber_decoder.__UNIQUE_ID_ddebug109 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"- TAG: %02x %zu%s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" CONS\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@asn1_ber_decoder.__UNIQUE_ID_ddebug110 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"- LEAF: %zu\0A\00", [19 x i8] zeroinitializer }, align 32
@asn1_ber_decoder.__UNIQUE_ID_ddebug111 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"- MATCH_JUMP\0A\00", [18 x i8] zeroinitializer }, align 32
@asn1_ber_decoder._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013ASN.1 decoder error: Stacks not empty at completion (%u, %u)\0A\00", [32 x i8] zeroinitializer }, align 32
@asn1_ber_decoder._entry_ptr = internal global ptr @asn1_ber_decoder._entry, section ".printk_index", align 4
@asn1_ber_decoder.__UNIQUE_ID_ddebug112 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.12, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"- end cons t=%zu dp=%zu l=%zu/%zu\0A\00", [61 x i8] zeroinitializer }, align 32
@asn1_ber_decoder.__UNIQUE_ID_ddebug113 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 0, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"- continue\0A\00", [20 x i8] zeroinitializer }, align 32
@asn1_ber_decoder.__UNIQUE_ID_ddebug114 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 0, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@asn1_ber_decoder.__UNIQUE_ID_ddebug115 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.14, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"- cons len l=%zu d=%zu\0A\00", [40 x i8] zeroinitializer }, align 32
@asn1_ber_decoder._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013ASN.1 decoder error: Found reserved opcode (%u) pc=%zu\0A\00", [38 x i8] zeroinitializer }, align 32
@asn1_ber_decoder._entry_ptr.17 = internal global ptr @asn1_ber_decoder._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Data overrun error\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Machine overrun error\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Jump stack underflow\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Jump stack overflow\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Cons stack underflow\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Cons stack overflow\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cons length error\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Missing EOC in indefinite len cons\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid length EOC\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unsupported length\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Indefinite len primitive not permitted\00", [57 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Unexpected tag\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Long tag not supported\00", [41 x i8] zeroinitializer }, align 32
@asn1_ber_decoder.__UNIQUE_ID_ddebug116 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.31, i8 0, i8 -127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\0AASN1: %s [m=%zu d=%zu ot=%02x t=%02x l=%zu]\0A\00", [50 x i8] zeroinitializer }, align 32
@__kstrtab_asn1_ber_decoder = external dso_local constant [0 x i8], align 1
@__kstrtabns_asn1_ber_decoder = external dso_local constant [0 x i8], align 1
@__ksymtab_asn1_ber_decoder = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @asn1_ber_decoder to i32), ptr @__kstrtab_asn1_ber_decoder, ptr @__kstrtabns_asn1_ber_decoder }, section "___ksymtab_gpl+asn1_ber_decoder", align 4
@__UNIQUE_ID_file117 = internal constant [35 x i8] c"asn1_decoder.file=lib/asn1_decoder\00", section ".modinfo", align 1
@__UNIQUE_ID_license118 = internal constant [25 x i8] c"asn1_decoder.license=GPL\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.32 = internal global [32 x i64] [i64 30, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 8, i64 9, i64 10, i64 11, i64 17, i64 19, i64 21, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 201, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"asn1_op_lengths\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 15, i32 28 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 234, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 247, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 305, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 336, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 359, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 374, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 399, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 411, i32 6 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 430, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 472, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 477, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 480, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 483, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 486, i32 11 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 489, i32 11 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 492, i32 11 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 495, i32 11 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 498, i32 11 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 501, i32 11 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 504, i32 11 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 507, i32 11 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 510, i32 11 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 513, i32 11 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [22 x i8] c"../lib/asn1_decoder.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 515, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_file117, ptr @__UNIQUE_ID_license118, ptr @__ksymtab_asn1_ber_decoder, ptr @asn1_ber_decoder._entry, ptr @asn1_ber_decoder._entry.15, ptr @asn1_ber_decoder._entry_ptr, ptr @asn1_ber_decoder._entry_ptr.17, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @asn1_op_lengths, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asn1_op_lengths to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asn1_ber_decoder._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asn1_ber_decoder._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asn1_ber_decoder(ptr nocapture noundef readonly %decoder, ptr noundef %context, ptr noundef %data, i32 noundef %datalen) #0 align 64 {
entry:
  %cons_dp_stack = alloca [10 x i16], align 2
  %cons_datalen_stack = alloca [10 x i16], align 2
  %cons_hdrlen_stack = alloca [10 x i8], align 1
  %jump_stack = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %decoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %decoder, align 4
  %actions2 = getelementptr inbounds %struct.asn1_decoder, ptr %decoder, i32 0, i32 2
  %2 = ptrtoint ptr %actions2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %actions2, align 4
  %machlen3 = getelementptr inbounds %struct.asn1_decoder, ptr %decoder, i32 0, i32 1
  %4 = ptrtoint ptr %machlen3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %machlen3, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cons_dp_stack) #6
  %6 = call ptr @memset(ptr %cons_dp_stack, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cons_datalen_stack) #6
  %7 = call ptr @memset(ptr %cons_datalen_stack, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cons_hdrlen_stack) #6
  %8 = call ptr @memset(ptr %cons_hdrlen_stack, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %jump_stack) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %datalen)
  %cmp = icmp ugt i32 %datalen, 65535
  %9 = call ptr @memset(ptr %jump_stack, i32 255, i32 10)
  br i1 %cmp, label %entry.cleanup699_crit_edge, label %entry.next_op_crit_edge

entry.next_op_crit_edge:                          ; preds = %entry
  br label %next_op

entry.cleanup699_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup699

next_op:                                          ; preds = %if.end668, %if.end653, %if.then637, %if.end629, %if.then576, %if.then559, %if.then538, %if.then520, %if.end421, %if.end397, %if.end360, %if.then132.next_op_crit_edge, %if.then45, %entry.next_op_crit_edge
  %len.0 = phi i32 [ %len.5, %if.end668 ], [ %len.5, %if.end653 ], [ %len.5, %if.then637 ], [ %len.9, %if.end629 ], [ %len.5, %if.end421 ], [ %len.5, %if.end397 ], [ %len.8, %if.end360 ], [ %datalen.addr.4, %if.then520 ], [ %datalen.addr.4, %if.then538 ], [ %datalen.addr.4, %if.then559 ], [ %datalen.addr.4, %if.then576 ], [ %len.0, %if.then45 ], [ %len.0, %if.then132.next_op_crit_edge ], [ 0, %entry.next_op_crit_edge ]
  %flags.0 = phi i8 [ %82, %if.end668 ], [ %flags.4, %if.end653 ], [ %flags.4, %if.then637 ], [ %flags.4, %if.end629 ], [ %flags.4, %if.end421 ], [ %flags.4, %if.end397 ], [ %flags.4, %if.end360 ], [ %flags.4, %if.then520 ], [ %flags.4, %if.then538 ], [ %flags.4, %if.then559 ], [ %flags.4, %if.then576 ], [ %15, %if.then45 ], [ %conv101, %if.then132.next_op_crit_edge ], [ 0, %entry.next_op_crit_edge ]
  %tdp.0 = phi i32 [ %tdp.2, %if.end668 ], [ %tdp.2, %if.end653 ], [ %tdp.2, %if.then637 ], [ %conv476, %if.end629 ], [ %tdp.2, %if.end421 ], [ %tdp.2, %if.end397 ], [ %tdp.2, %if.end360 ], [ %conv476, %if.then520 ], [ %conv476, %if.then538 ], [ %conv476, %if.then559 ], [ %conv476, %if.then576 ], [ %tdp.0, %if.then45 ], [ %tdp.0, %if.then132.next_op_crit_edge ], [ 0, %entry.next_op_crit_edge ]
  %dp.0 = phi i32 [ %dp.5, %if.end668 ], [ %dp.5, %if.end653 ], [ %dp.5, %if.then637 ], [ %dp.7, %if.end629 ], [ %dp.5, %if.end421 ], [ %dp.5, %if.end397 ], [ %spec.select1089, %if.end360 ], [ %dp.5, %if.then520 ], [ %dp.5, %if.then538 ], [ %dp.5, %if.then559 ], [ %dp.5, %if.then576 ], [ %dp.0, %if.then45 ], [ %dp.0, %if.then132.next_op_crit_edge ], [ 0, %entry.next_op_crit_edge ]
  %pc.0 = phi i32 [ %conv672, %if.end668 ], [ %add656, %if.end653 ], [ %add640, %if.then637 ], [ %add632, %if.end629 ], [ %add424, %if.end421 ], [ %conv407, %if.end397 ], [ %add369, %if.end360 ], [ %conv525, %if.then520 ], [ %conv525, %if.then538 ], [ %conv563, %if.then559 ], [ %conv563, %if.then576 ], [ %add, %if.then45 ], [ %add, %if.then132.next_op_crit_edge ], [ 0, %entry.next_op_crit_edge ]
  %hdr.0 = phi i8 [ %hdr.4, %if.end668 ], [ %hdr.4, %if.end653 ], [ %hdr.4, %if.then637 ], [ %61, %if.end629 ], [ %hdr.4, %if.end421 ], [ %hdr.4, %if.end397 ], [ %hdr.4, %if.end360 ], [ %61, %if.then520 ], [ %61, %if.then538 ], [ %61, %if.then559 ], [ %61, %if.then576 ], [ %hdr.0, %if.then45 ], [ 2, %if.then132.next_op_crit_edge ], [ 0, %entry.next_op_crit_edge ]
  %optag.0 = phi i8 [ %optag.3, %if.end668 ], [ %optag.3, %if.end653 ], [ %optag.3, %if.then637 ], [ %optag.3, %if.end629 ], [ %optag.3, %if.end421 ], [ %optag.3, %if.end397 ], [ %optag.3, %if.end360 ], [ %optag.3, %if.then520 ], [ %optag.3, %if.then538 ], [ %optag.3, %if.then559 ], [ %optag.3, %if.then576 ], [ %optag.0, %if.then45 ], [ %19, %if.then132.next_op_crit_edge ], [ 0, %entry.next_op_crit_edge ]
  %jsp.0 = phi i8 [ %dec669, %if.end668 ], [ %jsp.0, %if.end653 ], [ %jsp.0, %if.then637 ], [ %jsp.0, %if.end629 ], [ %jsp.0, %if.end421 ], [ %inc402, %if.end397 ], [ %jsp.0, %if.end360 ], [ %jsp.0, %if.then520 ], [ %jsp.0, %if.then538 ], [ %jsp.0, %if.then559 ], [ %jsp.0, %if.then576 ], [ %jsp.0, %if.then45 ], [ %jsp.0, %if.then132.next_op_crit_edge ], [ 0, %entry.next_op_crit_edge ]
  %csp.0 = phi i8 [ %csp.3, %if.end668 ], [ %csp.3, %if.end653 ], [ %csp.3, %if.then637 ], [ %dec473, %if.end629 ], [ %csp.3, %if.end421 ], [ %csp.3, %if.end397 ], [ %csp.3, %if.end360 ], [ %csp.3, %if.then520 ], [ %csp.3, %if.then538 ], [ %csp.3, %if.then559 ], [ %csp.3, %if.then576 ], [ %csp.0, %if.then45 ], [ %csp.0, %if.then132.next_op_crit_edge ], [ 0, %entry.next_op_crit_edge ]
  %tag.0 = phi i8 [ %tag.2, %if.end668 ], [ %tag.2, %if.end653 ], [ %tag.2, %if.then637 ], [ %tag.2, %if.end629 ], [ %tag.2, %if.end421 ], [ %tag.2, %if.end397 ], [ %tag.2, %if.end360 ], [ %tag.2, %if.then520 ], [ %tag.2, %if.then538 ], [ %tag.2, %if.then559 ], [ %tag.2, %if.then576 ], [ %tag.0, %if.then45 ], [ %17, %if.then132.next_op_crit_edge ], [ 0, %entry.next_op_crit_edge ]
  %datalen.addr.0 = phi i32 [ %datalen.addr.4, %if.end668 ], [ %datalen.addr.4, %if.end653 ], [ %datalen.addr.4, %if.then637 ], [ %datalen.addr.5, %if.end629 ], [ %datalen.addr.4, %if.end421 ], [ %datalen.addr.4, %if.end397 ], [ %datalen.addr.4, %if.end360 ], [ %datalen.addr.4, %if.then520 ], [ %datalen.addr.4, %if.then538 ], [ %datalen.addr.4, %if.then559 ], [ %datalen.addr.4, %if.then576 ], [ %datalen.addr.0, %if.then45 ], [ %datalen.addr.0, %if.then132.next_op_crit_edge ], [ %datalen, %entry.next_op_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asn1_ber_decoder.__UNIQUE_ID_ddebug106, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asn1_ber_decoder, %if.then6)) #6
          to label %do.end [label %if.then6], !srcloc !86

if.then6:                                         ; preds = %next_op
  call void @__sanitizer_cov_trace_pc() #5
  %conv = zext i8 %csp.0 to i32
  %conv7 = zext i8 %jsp.0 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @asn1_ber_decoder.__UNIQUE_ID_ddebug106, ptr noundef nonnull @.str.3, i32 noundef %pc.0, i32 noundef %5, i32 noundef %dp.0, i32 noundef %datalen.addr.0, i32 noundef %conv, i32 noundef %conv7) #6
  br label %do.end

do.end:                                           ; preds = %if.then6, %next_op
  call void @__sanitizer_cov_trace_cmp4(i32 %pc.0, i32 %5)
  %cmp9.not = icmp ult i32 %pc.0, %5
  br i1 %cmp9.not, label %if.end18, label %do.end.do.body681_crit_edge, !prof !87

do.end.do.body681_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body681

if.end18:                                         ; preds = %do.end
  %arrayidx = getelementptr i8, ptr %1, i32 %pc.0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv19 = zext i8 %11 to i32
  %arrayidx20 = getelementptr [41 x i8], ptr @asn1_op_lengths, i32 0, i32 %conv19
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %13 to i32
  %add = add i32 %pc.0, %conv21
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp22 = icmp ugt i32 %add, %5
  br i1 %cmp22, label %if.end18.do.body681_crit_edge, label %if.end31, !prof !88

if.end18.do.body681_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body681

if.end31:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %11)
  %cmp32 = icmp ult i8 %11, 28
  br i1 %cmp32, label %if.then34, label %if.end31.if.end301_crit_edge

if.end31.if.end301_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end301

if.then34:                                        ; preds = %if.end31
  %and = and i32 %conv19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  %14 = and i8 %flags.0, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool39.not = icmp eq i8 %14, 0
  %or.cond = select i1 %tobool36.not, i1 true, i1 %tobool39.not
  br i1 %or.cond, label %lor.lhs.false, label %if.then34.if.then45_crit_edge

if.then34.if.then45_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then45

lor.lhs.false:                                    ; preds = %if.then34
  %and40 = and i32 %conv19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %tobool41.not.not = xor i1 %tobool41.not, true
  call void @__sanitizer_cov_trace_cmp4(i32 %datalen.addr.0, i32 %dp.0)
  %cmp43 = icmp eq i32 %datalen.addr.0, %dp.0
  %or.cond904 = select i1 %tobool41.not.not, i1 %cmp43, i1 false
  br i1 %or.cond904, label %lor.lhs.false.if.then45_crit_edge, label %if.end52

lor.lhs.false.if.then45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false.if.then45_crit_edge, %if.then34.if.then45_crit_edge
  %15 = and i8 %flags.0, -5
  br label %next_op

if.end52:                                         ; preds = %lor.lhs.false
  %sub = sub i32 %datalen.addr.0, %dp.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp53 = icmp ult i32 %sub, 2
  br i1 %cmp53, label %if.end52.do.body681_crit_edge, label %if.end62, !prof !88

if.end52.do.body681_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body681

if.end62:                                         ; preds = %if.end52
  %inc = add i32 %dp.0, 1
  %arrayidx63 = getelementptr i8, ptr %data, i32 %dp.0
  %16 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %17 to i32
  %and65 = and i32 %conv64, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and65)
  %cmp66 = icmp eq i32 %and65, 31
  br i1 %cmp66, label %if.end62.do.body681_crit_edge, label %if.end75, !prof !88

if.end62.do.body681_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body681

if.end75:                                         ; preds = %if.end62
  %and76 = and i32 %conv19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.else, label %do.body79

do.body79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asn1_ber_decoder.__UNIQUE_ID_ddebug107, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asn1_ber_decoder, %if.then91)) #6
          to label %if.end141 [label %if.then91], !srcloc !86

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @asn1_ber_decoder.__UNIQUE_ID_ddebug107, ptr noundef nonnull @.str.4, i32 noundef %conv64) #6
  br label %if.end141

if.else:                                          ; preds = %if.end75
  %add96 = add nuw i32 %pc.0, 1
  %arrayidx97 = getelementptr i8, ptr %1, i32 %add96
  %18 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx97, align 1
  %conv98 = zext i8 %19 to i32
  %and99 = and i32 %conv98, 32
  %conv101 = trunc i32 %and99 to i8
  %xor903 = xor i8 %19, %17
  %20 = xor i8 %conv101, -1
  %conv109 = and i8 %xor903, %20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asn1_ber_decoder.__UNIQUE_ID_ddebug108, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asn1_ber_decoder, %if.then122)) #6
          to label %do.end128 [label %if.then122], !srcloc !86

if.then122:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %conv125 = zext i8 %conv109 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @asn1_ber_decoder.__UNIQUE_ID_ddebug108, ptr noundef nonnull @.str.5, i32 noundef %conv64, i32 noundef %conv98, i32 noundef %conv125) #6
  br label %do.end128

do.end128:                                        ; preds = %if.then122, %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv109)
  %cmp130.not = icmp eq i8 %conv109, 0
  br i1 %cmp130.not, label %do.end128.if.end141_crit_edge, label %if.then132

do.end128.if.end141_crit_edge:                    ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end141

if.then132:                                       ; preds = %do.end128
  br i1 %tobool41.not, label %if.then132.do.body681_crit_edge, label %if.then132.next_op_crit_edge

if.then132.next_op_crit_edge:                     ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #5
  br label %next_op

if.then132.do.body681_crit_edge:                  ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body681

if.end141:                                        ; preds = %do.end128.if.end141_crit_edge, %if.then91, %do.body79
  %flags.1 = phi i32 [ 0, %if.then91 ], [ %and99, %do.end128.if.end141_crit_edge ], [ 0, %do.body79 ]
  %optag.1 = phi i8 [ %optag.0, %if.then91 ], [ %19, %do.end128.if.end141_crit_edge ], [ %optag.0, %do.body79 ]
  %21 = trunc i32 %flags.1 to i8
  %conv144 = or i8 %21, 2
  %inc145 = add i32 %dp.0, 2
  %arrayidx146 = getelementptr i8, ptr %data, i32 %inc
  %22 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx146, align 1
  %conv147 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp148 = icmp slt i8 %23, 0
  br i1 %cmp148, label %if.then150, label %if.else232

if.then150:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %23)
  %cmp151 = icmp eq i8 %23, -128
  br i1 %cmp151, label %if.then159, label %if.else187, !prof !88

if.then159:                                       ; preds = %if.then150
  %and161 = and i32 %conv64, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %if.then159.do.body681_crit_edge, label %if.end172, !prof !88

if.then159.do.body681_crit_edge:                  ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body681

if.end172:                                        ; preds = %if.then159
  %24 = or i8 %21, 3
  %sub176 = sub i32 %datalen.addr.0, %inc145
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub176)
  %cmp177 = icmp ult i32 %sub176, 2
  br i1 %cmp177, label %if.end172.do.body681_crit_edge, label %if.end172.if.end244_crit_edge, !prof !88

if.end172.if.end244_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end244

if.end172.do.body681_crit_edge:                   ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body681

if.else187:                                       ; preds = %if.then150
  %sub188 = add nsw i32 %conv147, -128
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %23)
  %cmp189 = icmp ugt i8 %23, -126
  br i1 %cmp189, label %do.body681.loopexit1478.split.loop.exit1576, label %if.end198, !prof !88

if.end198:                                        ; preds = %if.else187
  %sub199 = sub i32 %datalen.addr.0, %inc145
  call void @__sanitizer_cov_trace_cmp4(i32 %sub188, i32 %sub199)
  %cmp200 = icmp ugt i32 %sub188, %sub199
  br i1 %cmp200, label %do.body681.loopexit1478.split.loop.exit1569, label %for.body.preheader, !prof !88

for.body.preheader:                               ; preds = %if.end198
  %add211 = add i8 %23, -126
  %25 = add i32 %dp.0, -126
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %dp.11186 = phi i32 [ %inc215, %for.body.for.body_crit_edge ], [ %inc145, %for.body.preheader ]
  %n.01185 = phi i32 [ %dec219, %for.body.for.body_crit_edge ], [ %sub188, %for.body.preheader ]
  %len.11184 = phi i32 [ %or218, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %shl = shl i32 %len.11184, 8
  %inc215 = add i32 %dp.11186, 1
  %arrayidx216 = getelementptr i8, ptr %data, i32 %dp.11186
  %26 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx216, align 1
  %conv217 = zext i8 %27 to i32
  %or218 = or i32 %shl, %conv217
  %dec219 = add nsw i32 %n.01185, -1
  %cmp213 = icmp sgt i32 %n.01185, 1
  br i1 %cmp213, label %for.body.for.body_crit_edge, label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

cleanup:                                          ; preds = %for.body
  %28 = add i32 %25, %conv147
  %.pre = sub i32 %datalen.addr.0, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %or218, i32 %.pre)
  %cmp221 = icmp ugt i32 %or218, %.pre
  br i1 %cmp221, label %cleanup.cleanup298_crit_edge, label %cleanup.if.end244_crit_edge

cleanup.if.end244_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end244

cleanup.cleanup298_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup298

if.else232:                                       ; preds = %if.end141
  %sub233 = sub i32 %datalen.addr.0, %inc145
  call void @__sanitizer_cov_trace_cmp4(i32 %sub233, i32 %conv147)
  %cmp234 = icmp ult i32 %sub233, %conv147
  br i1 %cmp234, label %do.body681.loopexit1478.split.loop.exit, label %if.else232.if.end244_crit_edge, !prof !88

if.else232.if.end244_crit_edge:                   ; preds = %if.else232
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end244

if.end244:                                        ; preds = %if.else232.if.end244_crit_edge, %cleanup.if.end244_crit_edge, %if.end172.if.end244_crit_edge
  %len.3 = phi i32 [ 128, %if.end172.if.end244_crit_edge ], [ %or218, %cleanup.if.end244_crit_edge ], [ %conv147, %if.else232.if.end244_crit_edge ]
  %flags.2 = phi i8 [ %24, %if.end172.if.end244_crit_edge ], [ %conv144, %cleanup.if.end244_crit_edge ], [ %conv144, %if.else232.if.end244_crit_edge ]
  %dp.3 = phi i32 [ %inc145, %if.end172.if.end244_crit_edge ], [ %28, %cleanup.if.end244_crit_edge ], [ %inc145, %if.else232.if.end244_crit_edge ]
  %hdr.2 = phi i8 [ 2, %if.end172.if.end244_crit_edge ], [ %add211, %cleanup.if.end244_crit_edge ], [ 2, %if.else232.if.end244_crit_edge ]
  %conv245 = zext i8 %flags.2 to i32
  %and246 = and i32 %conv245, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and246)
  %tobool247.not = icmp eq i32 %and246, 0
  br i1 %tobool247.not, label %if.end244.do.body278_crit_edge, label %if.then248

if.end244.do.body278_crit_edge:                   ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body278

if.then248:                                       ; preds = %if.end244
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %csp.0)
  %cmp250 = icmp ugt i8 %csp.0, 9
  br i1 %cmp250, label %if.then248.do.body681_crit_edge, label %if.end259, !prof !88

if.then248.do.body681_crit_edge:                  ; preds = %if.then248
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body681

if.end259:                                        ; preds = %if.then248
  call void @__sanitizer_cov_trace_pc() #5
  %conv249 = zext i8 %csp.0 to i32
  %conv260 = trunc i32 %dp.3 to i16
  %arrayidx261 = getelementptr [10 x i16], ptr %cons_dp_stack, i32 0, i32 %conv249
  %29 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv260, ptr %arrayidx261, align 2
  %arrayidx263 = getelementptr [10 x i8], ptr %cons_hdrlen_stack, i32 0, i32 %conv249
  %30 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %hdr.2, ptr %arrayidx263, align 1
  %and265 = and i32 %conv245, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and265)
  %tobool266.not = icmp eq i32 %and265, 0
  %conv268 = trunc i32 %datalen.addr.0 to i16
  %add271 = add i32 %dp.3, %len.3
  %.sink = select i1 %tobool266.not, i16 %conv268, i16 0
  %datalen.addr.1 = select i1 %tobool266.not, i32 %add271, i32 %datalen.addr.0
  %31 = getelementptr [10 x i16], ptr %cons_datalen_stack, i32 0, i32 %conv249
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %.sink, ptr %31, align 2
  %inc276 = add nuw nsw i8 %csp.0, 1
  br label %do.body278

do.body278:                                       ; preds = %if.end259, %if.end244.do.body278_crit_edge
  %csp.1 = phi i8 [ %inc276, %if.end259 ], [ %csp.0, %if.end244.do.body278_crit_edge ]
  %datalen.addr.2 = phi i32 [ %datalen.addr.1, %if.end259 ], [ %datalen.addr.0, %if.end244.do.body278_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asn1_ber_decoder.__UNIQUE_ID_ddebug109, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asn1_ber_decoder, %cleanup298.thread973)) #6
          to label %cleanup298 [label %cleanup298.thread973], !srcloc !86

cleanup298.thread973:                             ; preds = %do.body278
  call void @__sanitizer_cov_trace_pc() #5
  %cond = select i1 %tobool247.not, ptr @.str.8, ptr @.str.7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @asn1_ber_decoder.__UNIQUE_ID_ddebug109, ptr noundef nonnull @.str.6, i32 noundef %conv64, i32 noundef %len.3, ptr noundef nonnull %cond) #6
  br label %if.end301

cleanup298:                                       ; preds = %do.body278, %cleanup.cleanup298_crit_edge
  %len.4 = phi i32 [ %or218, %cleanup.cleanup298_crit_edge ], [ %len.3, %do.body278 ]
  %cleanup.dest.slot.1 = phi i32 [ 6, %cleanup.cleanup298_crit_edge ], [ 0, %do.body278 ]
  %flags.3 = phi i8 [ %conv144, %cleanup.cleanup298_crit_edge ], [ %flags.2, %do.body278 ]
  %tdp.1 = phi i32 [ %tdp.0, %cleanup.cleanup298_crit_edge ], [ %dp.3, %do.body278 ]
  %dp.4 = phi i32 [ %28, %cleanup.cleanup298_crit_edge ], [ %dp.3, %do.body278 ]
  %hdr.3 = phi i8 [ %add211, %cleanup.cleanup298_crit_edge ], [ %hdr.2, %do.body278 ]
  %csp.2 = phi i8 [ %csp.0, %cleanup.cleanup298_crit_edge ], [ %csp.1, %do.body278 ]
  %datalen.addr.3 = phi i32 [ %datalen.addr.0, %cleanup.cleanup298_crit_edge ], [ %datalen.addr.2, %do.body278 ]
  %33 = zext i32 %cleanup.dest.slot.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cleanup.dest.slot.1, label %cleanup298.cleanup699_crit_edge [
    i32 0, label %cleanup298.if.end301_crit_edge
    i32 6, label %cleanup298.do.body681_crit_edge
  ]

cleanup298.do.body681_crit_edge:                  ; preds = %cleanup298
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body681

cleanup298.if.end301_crit_edge:                   ; preds = %cleanup298
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end301

cleanup298.cleanup699_crit_edge:                  ; preds = %cleanup298
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup699

if.end301:                                        ; preds = %cleanup298.if.end301_crit_edge, %cleanup298.thread973, %if.end31.if.end301_crit_edge
  %len.5 = phi i32 [ %len.4, %cleanup298.if.end301_crit_edge ], [ %len.0, %if.end31.if.end301_crit_edge ], [ %len.3, %cleanup298.thread973 ]
  %flags.4 = phi i8 [ %flags.3, %cleanup298.if.end301_crit_edge ], [ %flags.0, %if.end31.if.end301_crit_edge ], [ %flags.2, %cleanup298.thread973 ]
  %tdp.2 = phi i32 [ %tdp.1, %cleanup298.if.end301_crit_edge ], [ %tdp.0, %if.end31.if.end301_crit_edge ], [ %dp.3, %cleanup298.thread973 ]
  %dp.5 = phi i32 [ %dp.4, %cleanup298.if.end301_crit_edge ], [ %dp.0, %if.end31.if.end301_crit_edge ], [ %dp.3, %cleanup298.thread973 ]
  %hdr.4 = phi i8 [ %hdr.3, %cleanup298.if.end301_crit_edge ], [ %hdr.0, %if.end31.if.end301_crit_edge ], [ %hdr.2, %cleanup298.thread973 ]
  %optag.3 = phi i8 [ %optag.1, %cleanup298.if.end301_crit_edge ], [ %optag.0, %if.end31.if.end301_crit_edge ], [ %optag.1, %cleanup298.thread973 ]
  %csp.3 = phi i8 [ %csp.2, %cleanup298.if.end301_crit_edge ], [ %csp.0, %if.end31.if.end301_crit_edge ], [ %csp.1, %cleanup298.thread973 ]
  %tag.2 = phi i8 [ %17, %cleanup298.if.end301_crit_edge ], [ %tag.0, %if.end31.if.end301_crit_edge ], [ %17, %cleanup298.thread973 ]
  %datalen.addr.4 = phi i32 [ %datalen.addr.3, %cleanup298.if.end301_crit_edge ], [ %datalen.addr.0, %if.end31.if.end301_crit_edge ], [ %datalen.addr.2, %cleanup298.thread973 ]
  %34 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %11, label %do.end678 [
    i8 0, label %if.end301.sw.bb_crit_edge
    i8 1, label %if.end301.sw.bb_crit_edge2052
    i8 2, label %if.end301.sw.bb_crit_edge2053
    i8 3, label %if.end301.sw.bb_crit_edge2054
    i8 8, label %if.end301.sw.bb_crit_edge2055
    i8 9, label %if.end301.sw.bb_crit_edge2056
    i8 10, label %if.end301.sw.bb_crit_edge2057
    i8 11, label %if.end301.sw.bb_crit_edge2058
    i8 17, label %if.end301.sw.bb_crit_edge2059
    i8 19, label %if.end301.sw.bb_crit_edge2060
    i8 24, label %if.end301.sw.bb_crit_edge2061
    i8 25, label %if.end301.sw.bb_crit_edge2062
    i8 26, label %if.end301.sw.bb_crit_edge2063
    i8 27, label %if.end301.sw.bb_crit_edge2064
    i8 4, label %if.end301.do.body371_crit_edge
    i8 5, label %if.end301.do.body371_crit_edge2065
    i8 21, label %if.end301.do.body371_crit_edge2066
    i8 28, label %sw.bb408
    i8 29, label %sw.bb425
    i8 33, label %if.end301.sw.bb447_crit_edge
    i8 37, label %if.end301.sw.bb447_crit_edge2067
    i8 32, label %if.end301.sw.bb461_crit_edge
    i8 35, label %if.end301.sw.bb461_crit_edge2068
    i8 34, label %if.end301.sw.bb461_crit_edge2069
    i8 36, label %if.end301.sw.bb461_crit_edge2070
    i8 39, label %if.end301.sw.bb461_crit_edge2071
    i8 38, label %if.end301.sw.bb461_crit_edge2072
    i8 31, label %sw.bb633
    i8 30, label %if.end301.sw.bb642_crit_edge
    i8 40, label %sw.bb657
  ]

if.end301.sw.bb642_crit_edge:                     ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb642

if.end301.sw.bb461_crit_edge2072:                 ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb461

if.end301.sw.bb461_crit_edge2071:                 ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb461

if.end301.sw.bb461_crit_edge2070:                 ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb461

if.end301.sw.bb461_crit_edge2069:                 ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb461

if.end301.sw.bb461_crit_edge2068:                 ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb461

if.end301.sw.bb461_crit_edge:                     ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb461

if.end301.sw.bb447_crit_edge2067:                 ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb447

if.end301.sw.bb447_crit_edge:                     ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb447

if.end301.do.body371_crit_edge2066:               ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body371

if.end301.do.body371_crit_edge2065:               ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body371

if.end301.do.body371_crit_edge:                   ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body371

if.end301.sw.bb_crit_edge2064:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.end301.sw.bb_crit_edge2063:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.end301.sw.bb_crit_edge2062:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.end301.sw.bb_crit_edge2061:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.end301.sw.bb_crit_edge2060:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.end301.sw.bb_crit_edge2059:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.end301.sw.bb_crit_edge2058:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.end301.sw.bb_crit_edge2057:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.end301.sw.bb_crit_edge2056:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.end301.sw.bb_crit_edge2055:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.end301.sw.bb_crit_edge2054:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.end301.sw.bb_crit_edge2053:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.end301.sw.bb_crit_edge2052:                    ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

if.end301.sw.bb_crit_edge:                        ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

sw.bb:                                            ; preds = %if.end301.sw.bb_crit_edge, %if.end301.sw.bb_crit_edge2052, %if.end301.sw.bb_crit_edge2053, %if.end301.sw.bb_crit_edge2054, %if.end301.sw.bb_crit_edge2055, %if.end301.sw.bb_crit_edge2056, %if.end301.sw.bb_crit_edge2057, %if.end301.sw.bb_crit_edge2058, %if.end301.sw.bb_crit_edge2059, %if.end301.sw.bb_crit_edge2060, %if.end301.sw.bb_crit_edge2061, %if.end301.sw.bb_crit_edge2062, %if.end301.sw.bb_crit_edge2063, %if.end301.sw.bb_crit_edge2064
  %conv302 = zext i8 %flags.4 to i32
  %and303 = and i32 %conv302, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and303)
  %tobool304.not = icmp eq i32 %and303, 0
  br i1 %tobool304.not, label %if.then305, label %sw.bb.if.end336_crit_edge

sw.bb.if.end336_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end336

if.then305:                                       ; preds = %sw.bb
  %and307 = and i32 %conv302, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and307)
  %tobool308.not = icmp eq i32 %and307, 0
  br i1 %tobool308.not, label %if.then305.do.body320_crit_edge, label %if.then309

if.then305.do.body320_crit_edge:                  ; preds = %if.then305
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body320

if.then309:                                       ; preds = %if.then305
  %sub179184.i = sub i32 %datalen.addr.4, %dp.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub179184.i)
  %cmp180185.i = icmp ult i32 %sub179184.i, 2
  br i1 %cmp180185.i, label %if.then309.if.then.i_crit_edge, label %if.then309.if.end4.lr.ph.i_crit_edge, !prof !88

if.then309.if.end4.lr.ph.i_crit_edge:             ; preds = %if.then309
  br label %if.end4.lr.ph.i

if.then309.if.then.i_crit_edge:                   ; preds = %if.then309
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

if.end4.lr.ph.i:                                  ; preds = %next_tag.outer.backedge.i.if.end4.lr.ph.i_crit_edge, %if.then309.if.end4.lr.ph.i_crit_edge
  %indef_level.0.ph187.i = phi i32 [ %indef_level.0.ph.be.i, %next_tag.outer.backedge.i.if.end4.lr.ph.i_crit_edge ], [ 1, %if.then309.if.end4.lr.ph.i_crit_edge ]
  %dp.0.ph186.i = phi i32 [ %dp.0.ph.be.i, %next_tag.outer.backedge.i.if.end4.lr.ph.i_crit_edge ], [ %dp.5, %if.then309.if.end4.lr.ph.i_crit_edge ]
  br label %if.end4.i

next_tag.i:                                       ; preds = %check_length.i.next_tag.i_crit_edge, %for.cond.preheader.i.next_tag.i_crit_edge
  %len.1216.i = phi i32 [ %len.1.i, %check_length.i.next_tag.i_crit_edge ], [ 0, %for.cond.preheader.i.next_tag.i_crit_edge ]
  %dp.4215.i = phi i32 [ %dp.4.i, %check_length.i.next_tag.i_crit_edge ], [ %inc48.i, %for.cond.preheader.i.next_tag.i_crit_edge ]
  %add.i = add i32 %dp.4215.i, %len.1216.i
  %sub.i = sub i32 %datalen.addr.4, %add.i
  %cmp.i = icmp ult i32 %sub.i, 2
  br i1 %cmp.i, label %next_tag.i.if.then.i_crit_edge, label %next_tag.i.if.end4.i_crit_edge, !prof !88

next_tag.i.if.end4.i_crit_edge:                   ; preds = %next_tag.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4.i

next_tag.i.if.then.i_crit_edge:                   ; preds = %next_tag.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

if.then.i:                                        ; preds = %next_tag.outer.backedge.i.if.then.i_crit_edge, %next_tag.i.if.then.i_crit_edge, %if.then309.if.then.i_crit_edge
  %dp.0.lcssa.i = phi i32 [ %add.i, %next_tag.i.if.then.i_crit_edge ], [ %dp.0.ph.be.i, %next_tag.outer.backedge.i.if.then.i_crit_edge ], [ %dp.5, %if.then309.if.then.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %dp.0.lcssa.i, i32 %datalen.addr.4)
  %cmp2.i = icmp eq i32 %dp.0.lcssa.i, %datalen.addr.4
  %spec.select1088 = select i1 %cmp2.i, ptr @.str.25, ptr @.str.18
  br label %do.body681

if.end4.i:                                        ; preds = %next_tag.i.if.end4.i_crit_edge, %if.end4.lr.ph.i
  %dp.0181.i = phi i32 [ %dp.0.ph186.i, %if.end4.lr.ph.i ], [ %add.i, %next_tag.i.if.end4.i_crit_edge ]
  %inc.i = add i32 %dp.0181.i, 1
  %arrayidx.i = getelementptr i8, ptr %data, i32 %dp.0181.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp5.i = icmp eq i8 %36, 0
  br i1 %cmp5.i, label %if.then7.i, label %if.end20.i

if.then7.i:                                       ; preds = %if.end4.i
  %arrayidx9.i = getelementptr i8, ptr %data, i32 %inc.i
  %37 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp11.not.i = icmp eq i8 %38, 0
  br i1 %cmp11.not.i, label %if.end14.i, label %if.then7.i.do.body681_crit_edge

if.then7.i.do.body681_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body681

if.end14.i:                                       ; preds = %if.then7.i
  %inc8.i = add i32 %dp.0181.i, 2
  %dec.i = add i32 %indef_level.0.ph187.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp15.i = icmp slt i32 %dec.i, 1
  br i1 %cmp15.i, label %asn1_find_indefinite_length.exit, label %if.end14.i.next_tag.outer.backedge.i_crit_edge

if.end14.i.next_tag.outer.backedge.i_crit_edge:   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %next_tag.outer.backedge.i

next_tag.outer.backedge.i:                        ; preds = %if.end75.i, %if.end14.i.next_tag.outer.backedge.i_crit_edge
  %dp.0.ph.be.i = phi i32 [ %inc48.i, %if.end75.i ], [ %inc8.i, %if.end14.i.next_tag.outer.backedge.i_crit_edge ]
  %indef_level.0.ph.be.i = phi i32 [ %inc76.i, %if.end75.i ], [ %dec.i, %if.end14.i.next_tag.outer.backedge.i_crit_edge ]
  %sub179.i = sub i32 %datalen.addr.4, %dp.0.ph.be.i
  %cmp180.i = icmp ult i32 %sub179.i, 2
  br i1 %cmp180.i, label %next_tag.outer.backedge.i.if.then.i_crit_edge, label %next_tag.outer.backedge.i.if.end4.lr.ph.i_crit_edge, !prof !88

next_tag.outer.backedge.i.if.end4.lr.ph.i_crit_edge: ; preds = %next_tag.outer.backedge.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4.lr.ph.i

next_tag.outer.backedge.i.if.then.i_crit_edge:    ; preds = %next_tag.outer.backedge.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

if.end20.i:                                       ; preds = %if.end4.i
  %39 = and i8 %36, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %39)
  %cmp22.i = icmp eq i8 %39, 31
  br i1 %cmp22.i, label %if.end20.i.do.body.i_crit_edge, label %if.end20.i.if.end47.i_crit_edge, !prof !88

if.end20.i.if.end47.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47.i

if.end20.i.do.body.i_crit_edge:                   ; preds = %if.end20.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.end41.i.do.body.i_crit_edge, %if.end20.i.do.body.i_crit_edge
  %dp.1.i = phi i32 [ %inc42.i, %if.end41.i.do.body.i_crit_edge ], [ %inc.i, %if.end20.i.do.body.i_crit_edge ]
  %sub31.i = sub i32 %datalen.addr.4, %dp.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub31.i)
  %cmp32.i = icmp ult i32 %sub31.i, 2
  br i1 %cmp32.i, label %do.body.i.do.body681_crit_edge, label %if.end41.i, !prof !88

do.body.i.do.body681_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body681

if.end41.i:                                       ; preds = %do.body.i
  %inc42.i = add i32 %dp.1.i, 1
  %arrayidx43.i = getelementptr i8, ptr %data, i32 %dp.1.i
  %40 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx43.i, align 1
  %tobool46.not.i = icmp sgt i8 %41, -1
  br i1 %tobool46.not.i, label %if.end41.i.if.end47.i_crit_edge, label %if.end41.i.do.body.i_crit_edge

if.end41.i.do.body.i_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

if.end41.i.if.end47.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.end41.i.if.end47.i_crit_edge, %if.end20.i.if.end47.i_crit_edge
  %dp.2.i = phi i32 [ %inc.i, %if.end20.i.if.end47.i_crit_edge ], [ %inc42.i, %if.end41.i.if.end47.i_crit_edge ]
  %inc48.i = add i32 %dp.2.i, 1
  %arrayidx49.i = getelementptr i8, ptr %data, i32 %dp.2.i
  %42 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx49.i, align 1
  %conv50.i = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %43)
  %cmp51.i = icmp sgt i8 %43, -1
  br i1 %cmp51.i, label %if.end47.i.check_length.i_crit_edge, label %if.end54.i

if.end47.i.check_length.i_crit_edge:              ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %check_length.i

if.end54.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %43)
  %cmp55.i = icmp eq i8 %43, -128
  br i1 %cmp55.i, label %if.then63.i, label %if.end77.i, !prof !88

if.then63.i:                                      ; preds = %if.end54.i
  %44 = and i8 %36, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp66.i = icmp eq i8 %44, 0
  br i1 %cmp66.i, label %if.then63.i.do.body681_crit_edge, label %if.end75.i, !prof !88

if.then63.i.do.body681_crit_edge:                 ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body681

if.end75.i:                                       ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #5
  %inc76.i = add i32 %indef_level.0.ph187.i, 1
  br label %next_tag.outer.backedge.i

if.end77.i:                                       ; preds = %if.end54.i
  %sub78.i = add nsw i32 %conv50.i, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub78.i)
  %cmp79.i = icmp ugt i32 %sub78.i, 3
  br i1 %cmp79.i, label %if.end77.i.do.body681_crit_edge, label %if.end88.i, !prof !88

if.end77.i.do.body681_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body681

if.end88.i:                                       ; preds = %if.end77.i
  %sub89.i = sub i32 %datalen.addr.4, %inc48.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub78.i, i32 %sub89.i)
  %cmp90.i = icmp ugt i32 %sub78.i, %sub89.i
  br i1 %cmp90.i, label %if.end88.i.do.body681_crit_edge, label %for.cond.preheader.i, !prof !88

if.end88.i.do.body681_crit_edge:                  ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body681

for.cond.preheader.i:                             ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub78.i)
  %cmp100.not174.i = icmp eq i32 %sub78.i, 0
  br i1 %cmp100.not174.i, label %for.cond.preheader.i.next_tag.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.next_tag.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %next_tag.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %n.0177.i = phi i32 [ %dec105.i, %for.body.i.for.body.i_crit_edge ], [ %sub78.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %len.0176.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %dp.3175.i = phi i32 [ %inc102.i, %for.body.i.for.body.i_crit_edge ], [ %inc48.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %shl.i = shl i32 %len.0176.i, 8
  %inc102.i = add i32 %dp.3175.i, 1
  %arrayidx103.i = getelementptr i8, ptr %data, i32 %dp.3175.i
  %45 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx103.i, align 1
  %conv104.i = zext i8 %46 to i32
  %or.i = or i32 %shl.i, %conv104.i
  %dec105.i = add i32 %n.0177.i, -1
  %cmp100.not.i = icmp eq i32 %dec105.i, 0
  br i1 %cmp100.not.i, label %check_length.loopexit.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

check_length.loopexit.i:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %47 = add i32 %dp.2.i, -127
  %48 = add i32 %47, %conv50.i
  br label %check_length.i

check_length.i:                                   ; preds = %check_length.loopexit.i, %if.end47.i.check_length.i_crit_edge
  %dp.4.i = phi i32 [ %inc48.i, %if.end47.i.check_length.i_crit_edge ], [ %48, %check_length.loopexit.i ]
  %len.1.i = phi i32 [ %conv50.i, %if.end47.i.check_length.i_crit_edge ], [ %or.i, %check_length.loopexit.i ]
  %sub106.i = sub i32 %datalen.addr.4, %dp.4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %len.1.i, i32 %sub106.i)
  %cmp107.i = icmp ugt i32 %len.1.i, %sub106.i
  br i1 %cmp107.i, label %check_length.i.do.body681_crit_edge, label %check_length.i.next_tag.i_crit_edge

check_length.i.next_tag.i_crit_edge:              ; preds = %check_length.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %next_tag.i

check_length.i.do.body681_crit_edge:              ; preds = %check_length.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body681

asn1_find_indefinite_length.exit:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub18.i = sub i32 %inc8.i, %dp.5
  br label %do.body320

do.body320:                                       ; preds = %asn1_find_indefinite_length.exit, %if.then305.do.body320_crit_edge
  %len.7 = phi i32 [ %len.5, %if.then305.do.body320_crit_edge ], [ %sub18.i, %asn1_find_indefinite_length.exit ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asn1_ber_decoder.__UNIQUE_ID_ddebug110, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asn1_ber_decoder, %if.then332)) #6
          to label %if.end336 [label %if.then332], !srcloc !86

if.then332:                                       ; preds = %do.body320
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @asn1_ber_decoder.__UNIQUE_ID_ddebug110, ptr noundef nonnull @.str.9, i32 noundef %len.7) #6
  br label %if.end336

if.end336:                                        ; preds = %if.then332, %do.body320, %sw.bb.if.end336_crit_edge
  %add365 = phi i32 [ %len.7, %do.body320 ], [ %len.7, %if.then332 ], [ 0, %sw.bb.if.end336_crit_edge ]
  %len.8 = phi i32 [ %len.7, %do.body320 ], [ %len.7, %if.then332 ], [ %len.5, %sw.bb.if.end336_crit_edge ]
  %and337 = and i32 %conv19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and337)
  %tobool338.not = icmp eq i32 %and337, 0
  br i1 %tobool338.not, label %if.end336.if.end360_crit_edge, label %if.then339

if.end336.if.end360_crit_edge:                    ; preds = %if.end336
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end360

if.then339:                                       ; preds = %if.end336
  %and340 = and i32 %conv19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and340)
  %tobool341.not = icmp eq i32 %and340, 0
  %add343.pn.v = select i1 %tobool341.not, i32 2, i32 1
  %add343.pn = add i32 %pc.0, %add343.pn.v
  %act.0.in = getelementptr i8, ptr %1, i32 %add343.pn
  %49 = ptrtoint ptr %act.0.in to i32
  call void @__asan_load1_noabort(i32 %49)
  %act.0 = load i8, ptr %act.0.in, align 1
  %idxprom349 = zext i8 %act.0 to i32
  %arrayidx350 = getelementptr ptr, ptr %3, i32 %idxprom349
  %50 = ptrtoint ptr %arrayidx350 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx350, align 4
  %conv351 = zext i8 %hdr.4 to i32
  %add.ptr = getelementptr i8, ptr %data, i32 %dp.5
  %call352 = tail call i32 %51(ptr noundef %context, i32 noundef %conv351, i8 noundef zeroext %tag.2, ptr noundef %add.ptr, i32 noundef %len.8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call352)
  %cmp353 = icmp slt i32 %call352, 0
  br i1 %cmp353, label %if.then339.cleanup699_crit_edge, label %if.then339.if.end360_crit_edge

if.then339.if.end360_crit_edge:                   ; preds = %if.then339
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end360

if.then339.cleanup699_crit_edge:                  ; preds = %if.then339
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup699

if.end360:                                        ; preds = %if.then339.if.end360_crit_edge, %if.end336.if.end360_crit_edge
  %spec.select1089 = add i32 %add365, %dp.5
  %add369 = add i32 %pc.0, %conv21
  br label %next_op

do.body371:                                       ; preds = %if.end301.do.body371_crit_edge, %if.end301.do.body371_crit_edge2065, %if.end301.do.body371_crit_edge2066
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asn1_ber_decoder.__UNIQUE_ID_ddebug111, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asn1_ber_decoder, %if.then383)) #6
          to label %do.end386 [label %if.then383], !srcloc !86

if.then383:                                       ; preds = %do.body371
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @asn1_ber_decoder.__UNIQUE_ID_ddebug111, ptr noundef nonnull @.str.10) #6
  br label %do.end386

do.end386:                                        ; preds = %if.then383, %do.body371
  %cmp388 = icmp eq i8 %jsp.0, 10
  br i1 %cmp388, label %do.end386.do.body681_crit_edge, label %if.end397, !prof !88

do.end386.do.body681_crit_edge:                   ; preds = %do.end386
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body681

if.end397:                                        ; preds = %do.end386
  call void @__sanitizer_cov_trace_pc() #5
  %conv387 = zext i8 %jsp.0 to i32
  %52 = trunc i32 %pc.0 to i8
  %conv401 = add i8 %13, %52
  %inc402 = add i8 %jsp.0, 1
  %arrayidx404 = getelementptr [10 x i8], ptr %jump_stack, i32 0, i32 %conv387
  %53 = ptrtoint ptr %arrayidx404 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv401, ptr %arrayidx404, align 1
  %add405 = add i32 %pc.0, 2
  %arrayidx406 = getelementptr i8, ptr %1, i32 %add405
  %54 = ptrtoint ptr %arrayidx406 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx406, align 1
  %conv407 = zext i8 %55 to i32
  br label %next_op

sw.bb408:                                         ; preds = %if.end301
  %56 = and i8 %flags.4, 2
  %tobool411.not = icmp eq i8 %56, 0
  br i1 %tobool411.not, label %sw.bb408.do.body681_crit_edge, label %if.end421, !prof !88

sw.bb408.do.body681_crit_edge:                    ; preds = %sw.bb408
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body681

if.end421:                                        ; preds = %sw.bb408
  call void @__sanitizer_cov_trace_pc() #5
  %add424 = add i32 %pc.0, %conv21
  br label %next_op

sw.bb425:                                         ; preds = %if.end301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %jsp.0)
  %cmp427.not = icmp ne i8 %jsp.0, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %csp.3)
  %cmp430 = icmp ne i8 %csp.3, 0
  %spec.select = select i1 %cmp427.not, i1 true, i1 %cmp430
  br i1 %spec.select, label %do.end441, label %sw.bb425.cleanup699_crit_edge, !prof !88

sw.bb425.cleanup699_crit_edge:                    ; preds = %sw.bb425
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup699

do.end441:                                        ; preds = %sw.bb425
  call void @__sanitizer_cov_trace_pc() #5
  %conv426 = zext i8 %jsp.0 to i32
  %conv444 = zext i8 %csp.3 to i32
  %call445 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv426, i32 noundef %conv444) #7
  br label %cleanup699

sw.bb447:                                         ; preds = %if.end301.sw.bb447_crit_edge, %if.end301.sw.bb447_crit_edge2067
  %57 = and i8 %flags.4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool450.not = icmp eq i8 %57, 0
  br i1 %tobool450.not, label %sw.bb447.do.body681_crit_edge, label %sw.bb447.sw.bb461_crit_edge, !prof !88

sw.bb447.sw.bb461_crit_edge:                      ; preds = %sw.bb447
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb461

sw.bb447.do.body681_crit_edge:                    ; preds = %sw.bb447
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body681

sw.bb461:                                         ; preds = %sw.bb447.sw.bb461_crit_edge, %if.end301.sw.bb461_crit_edge, %if.end301.sw.bb461_crit_edge2068, %if.end301.sw.bb461_crit_edge2069, %if.end301.sw.bb461_crit_edge2070, %if.end301.sw.bb461_crit_edge2071, %if.end301.sw.bb461_crit_edge2072
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %csp.3)
  %cmp463 = icmp eq i8 %csp.3, 0
  br i1 %cmp463, label %sw.bb461.do.body681_crit_edge, label %if.end472, !prof !88

sw.bb461.do.body681_crit_edge:                    ; preds = %sw.bb461
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body681

if.end472:                                        ; preds = %sw.bb461
  %dec473 = add i8 %csp.3, -1
  %idxprom474 = zext i8 %dec473 to i32
  %arrayidx475 = getelementptr [10 x i16], ptr %cons_dp_stack, i32 0, i32 %idxprom474
  %58 = ptrtoint ptr %arrayidx475 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx475, align 2
  %conv476 = zext i16 %59 to i32
  %arrayidx478 = getelementptr [10 x i8], ptr %cons_hdrlen_stack, i32 0, i32 %idxprom474
  %60 = ptrtoint ptr %arrayidx478 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx478, align 1
  %arrayidx480 = getelementptr [10 x i16], ptr %cons_datalen_stack, i32 0, i32 %idxprom474
  %62 = ptrtoint ptr %arrayidx480 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx480, align 2
  %conv481 = zext i16 %63 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asn1_ber_decoder.__UNIQUE_ID_ddebug112, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asn1_ber_decoder, %if.then494)) #6
          to label %do.end497 [label %if.then494], !srcloc !86

if.then494:                                       ; preds = %if.end472
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @asn1_ber_decoder.__UNIQUE_ID_ddebug112, ptr noundef nonnull @.str.12, i32 noundef %conv476, i32 noundef %dp.5, i32 noundef %datalen.addr.4, i32 noundef %conv481) #6
  br label %do.end497

do.end497:                                        ; preds = %if.then494, %if.end472
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp498 = icmp eq i16 %63, 0
  br i1 %cmp498, label %if.then500, label %if.else553

if.then500:                                       ; preds = %do.end497
  %sub501 = sub i32 %datalen.addr.4, %dp.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub501)
  %cmp502 = icmp ult i32 %sub501, 2
  br i1 %cmp502, label %if.then500.do.body681_crit_edge, label %if.end511, !prof !88

if.then500.do.body681_crit_edge:                  ; preds = %if.then500
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body681

if.end511:                                        ; preds = %if.then500
  %inc512 = add i32 %dp.5, 1
  %arrayidx513 = getelementptr i8, ptr %data, i32 %dp.5
  %64 = ptrtoint ptr %arrayidx513 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx513, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp515.not = icmp eq i8 %65, 0
  br i1 %cmp515.not, label %if.end543, label %if.then517

if.then517:                                       ; preds = %if.end511
  %and518 = and i32 %conv19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and518)
  %tobool519.not = icmp eq i32 %and518, 0
  br i1 %tobool519.not, label %if.then517.do.body681_crit_edge, label %if.then520

if.then517.do.body681_crit_edge:                  ; preds = %if.then517
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body681

if.then520:                                       ; preds = %if.then517
  call void @__sanitizer_cov_trace_pc() #5
  %add523 = add i32 %pc.0, 1
  %arrayidx524 = getelementptr i8, ptr %1, i32 %add523
  %66 = ptrtoint ptr %arrayidx524 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx524, align 1
  %conv525 = zext i8 %67 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asn1_ber_decoder.__UNIQUE_ID_ddebug113, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asn1_ber_decoder, %if.then538)) #6
          to label %next_op [label %if.then538], !srcloc !86

if.then538:                                       ; preds = %if.then520
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @asn1_ber_decoder.__UNIQUE_ID_ddebug113, ptr noundef nonnull @.str.13) #6
  br label %next_op

if.end543:                                        ; preds = %if.end511
  %inc544 = add i32 %dp.5, 2
  %arrayidx545 = getelementptr i8, ptr %data, i32 %inc512
  %68 = ptrtoint ptr %arrayidx545 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx545, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp547.not = icmp eq i8 %69, 0
  br i1 %cmp547.not, label %if.end550, label %if.end543.do.body681_crit_edge

if.end543.do.body681_crit_edge:                   ; preds = %if.end543
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body681

if.end550:                                        ; preds = %if.end543
  call void @__sanitizer_cov_trace_pc() #5
  %sub552 = sub i32 %dp.5, %conv476
  br label %if.end603

if.else553:                                       ; preds = %do.end497
  call void @__sanitizer_cov_trace_cmp4(i32 %datalen.addr.4, i32 %dp.5)
  %cmp554 = icmp ule i32 %datalen.addr.4, %dp.5
  %and557 = and i32 %conv19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and557)
  %tobool558.not = icmp eq i32 %and557, 0
  %or.cond907 = select i1 %cmp554, i1 true, i1 %tobool558.not
  br i1 %or.cond907, label %if.end580, label %if.then559

if.then559:                                       ; preds = %if.else553
  call void @__sanitizer_cov_trace_pc() #5
  %add561 = add i32 %pc.0, 1
  %arrayidx562 = getelementptr i8, ptr %1, i32 %add561
  %70 = ptrtoint ptr %arrayidx562 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx562, align 1
  %conv563 = zext i8 %71 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asn1_ber_decoder.__UNIQUE_ID_ddebug114, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asn1_ber_decoder, %if.then576)) #6
          to label %next_op [label %if.then576], !srcloc !86

if.then576:                                       ; preds = %if.then559
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @asn1_ber_decoder.__UNIQUE_ID_ddebug114, ptr noundef nonnull @.str.13) #6
  br label %next_op

if.end580:                                        ; preds = %if.else553
  call void @__sanitizer_cov_trace_cmp4(i32 %datalen.addr.4, i32 %dp.5)
  %cmp581.not = icmp eq i32 %datalen.addr.4, %dp.5
  br i1 %cmp581.not, label %if.end584, label %if.end580.do.body681_crit_edge

if.end580.do.body681_crit_edge:                   ; preds = %if.end580
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body681

if.end584:                                        ; preds = %if.end580
  call void @__sanitizer_cov_trace_pc() #5
  %sub585 = sub i32 %dp.5, %conv476
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asn1_ber_decoder.__UNIQUE_ID_ddebug115, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asn1_ber_decoder, %if.then598)) #6
          to label %if.end603 [label %if.then598], !srcloc !86

if.then598:                                       ; preds = %if.end584
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @asn1_ber_decoder.__UNIQUE_ID_ddebug115, ptr noundef nonnull @.str.14, i32 noundef %sub585, i32 noundef %sub585) #6
  br label %if.end603

if.end603:                                        ; preds = %if.then598, %if.end584, %if.end550
  %len.9 = phi i32 [ %sub552, %if.end550 ], [ %sub585, %if.then598 ], [ %sub585, %if.end584 ]
  %dp.7 = phi i32 [ %inc544, %if.end550 ], [ %dp.5, %if.then598 ], [ %dp.5, %if.end584 ]
  %datalen.addr.5 = phi i32 [ %datalen.addr.4, %if.end550 ], [ %conv481, %if.then598 ], [ %conv481, %if.end584 ]
  %and604 = and i32 %conv19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and604)
  %tobool605.not = icmp eq i32 %and604, 0
  br i1 %tobool605.not, label %if.end603.if.end629_crit_edge, label %if.then606

if.end603.if.end629_crit_edge:                    ; preds = %if.end603
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end629

if.then606:                                       ; preds = %if.end603
  %and608 = and i32 %conv19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and608)
  %tobool609.not = icmp eq i32 %and608, 0
  %add611.pn.v = select i1 %tobool609.not, i32 1, i32 2
  %add611.pn = add i32 %pc.0, %add611.pn.v
  %act607.0.in = getelementptr i8, ptr %1, i32 %add611.pn
  %72 = ptrtoint ptr %act607.0.in to i32
  call void @__asan_load1_noabort(i32 %72)
  %act607.0 = load i8, ptr %act607.0.in, align 1
  %idxprom617 = zext i8 %act607.0 to i32
  %arrayidx618 = getelementptr ptr, ptr %3, i32 %idxprom617
  %73 = ptrtoint ptr %arrayidx618 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx618, align 4
  %conv619 = zext i8 %61 to i32
  %add.ptr620 = getelementptr i8, ptr %data, i32 %conv476
  %call621 = tail call i32 %74(ptr noundef %context, i32 noundef %conv619, i8 noundef zeroext 0, ptr noundef %add.ptr620, i32 noundef %len.9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call621)
  %cmp622 = icmp slt i32 %call621, 0
  br i1 %cmp622, label %if.then606.cleanup699_crit_edge, label %if.then606.if.end629_crit_edge

if.then606.if.end629_crit_edge:                   ; preds = %if.then606
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end629

if.then606.cleanup699_crit_edge:                  ; preds = %if.then606
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup699

if.end629:                                        ; preds = %if.then606.if.end629_crit_edge, %if.end603.if.end629_crit_edge
  %add632 = add i32 %pc.0, %conv21
  br label %next_op

sw.bb633:                                         ; preds = %if.end301
  %75 = and i8 %flags.4, 4
  %tobool636.not = icmp eq i8 %75, 0
  br i1 %tobool636.not, label %if.then637, label %sw.bb633.sw.bb642_crit_edge

sw.bb633.sw.bb642_crit_edge:                      ; preds = %sw.bb633
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb642

if.then637:                                       ; preds = %sw.bb633
  call void @__sanitizer_cov_trace_pc() #5
  %add640 = add i32 %pc.0, %conv21
  br label %next_op

sw.bb642:                                         ; preds = %sw.bb633.sw.bb642_crit_edge, %if.end301.sw.bb642_crit_edge
  %add643 = add i32 %pc.0, 1
  %arrayidx644 = getelementptr i8, ptr %1, i32 %add643
  %76 = ptrtoint ptr %arrayidx644 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx644, align 1
  %idxprom645 = zext i8 %77 to i32
  %arrayidx646 = getelementptr ptr, ptr %3, i32 %idxprom645
  %78 = ptrtoint ptr %arrayidx646 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx646, align 4
  %conv647 = zext i8 %hdr.4 to i32
  %add.ptr648 = getelementptr i8, ptr %data, i32 %tdp.2
  %call649 = tail call i32 %79(ptr noundef %context, i32 noundef %conv647, i8 noundef zeroext %tag.2, ptr noundef %add.ptr648, i32 noundef %len.5) #6
  %cmp650 = icmp slt i32 %call649, 0
  br i1 %cmp650, label %sw.bb642.cleanup699_crit_edge, label %if.end653

sw.bb642.cleanup699_crit_edge:                    ; preds = %sw.bb642
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup699

if.end653:                                        ; preds = %sw.bb642
  call void @__sanitizer_cov_trace_pc() #5
  %add656 = add i32 %pc.0, %conv21
  br label %next_op

sw.bb657:                                         ; preds = %if.end301
  %cmp659 = icmp eq i8 %jsp.0, 0
  br i1 %cmp659, label %sw.bb657.do.body681_crit_edge, label %if.end668, !prof !88

sw.bb657.do.body681_crit_edge:                    ; preds = %sw.bb657
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body681

if.end668:                                        ; preds = %sw.bb657
  call void @__sanitizer_cov_trace_pc() #5
  %dec669 = add i8 %jsp.0, -1
  %idxprom670 = zext i8 %dec669 to i32
  %arrayidx671 = getelementptr [10 x i8], ptr %jump_stack, i32 0, i32 %idxprom670
  %80 = ptrtoint ptr %arrayidx671 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx671, align 1
  %conv672 = zext i8 %81 to i32
  %82 = or i8 %flags.4, 6
  br label %next_op

do.end678:                                        ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #5
  %conv19.le = zext i8 %11 to i32
  %call680 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv19.le, i32 noundef %pc.0) #7
  br label %cleanup699

do.body681.loopexit1478.split.loop.exit:          ; preds = %if.else232
  call void @__sanitizer_cov_trace_pc() #5
  %conv147.le1711 = zext i8 %23 to i32
  br label %do.body681

do.body681.loopexit1478.split.loop.exit1569:      ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #5
  %conv147.le1709 = zext i8 %23 to i32
  br label %do.body681

do.body681.loopexit1478.split.loop.exit1576:      ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #5
  %conv147.le = zext i8 %23 to i32
  br label %do.body681

do.body681:                                       ; preds = %do.body681.loopexit1478.split.loop.exit1576, %do.body681.loopexit1478.split.loop.exit1569, %do.body681.loopexit1478.split.loop.exit, %sw.bb657.do.body681_crit_edge, %if.end580.do.body681_crit_edge, %if.end543.do.body681_crit_edge, %if.then517.do.body681_crit_edge, %if.then500.do.body681_crit_edge, %sw.bb461.do.body681_crit_edge, %sw.bb447.do.body681_crit_edge, %sw.bb408.do.body681_crit_edge, %do.end386.do.body681_crit_edge, %check_length.i.do.body681_crit_edge, %if.end88.i.do.body681_crit_edge, %if.end77.i.do.body681_crit_edge, %if.then63.i.do.body681_crit_edge, %do.body.i.do.body681_crit_edge, %if.then7.i.do.body681_crit_edge, %if.then.i, %cleanup298.do.body681_crit_edge, %if.then248.do.body681_crit_edge, %if.end172.do.body681_crit_edge, %if.then159.do.body681_crit_edge, %if.then132.do.body681_crit_edge, %if.end62.do.body681_crit_edge, %if.end52.do.body681_crit_edge, %if.end18.do.body681_crit_edge, %do.end.do.body681_crit_edge
  %errmsg.4 = phi ptr [ %spec.select1088, %if.then.i ], [ @.str.18, %do.body681.loopexit1478.split.loop.exit ], [ @.str.18, %do.body681.loopexit1478.split.loop.exit1569 ], [ @.str.27, %do.body681.loopexit1478.split.loop.exit1576 ], [ @.str.18, %do.body.i.do.body681_crit_edge ], [ @.str.27, %if.end77.i.do.body681_crit_edge ], [ @.str.18, %check_length.i.do.body681_crit_edge ], [ @.str.18, %if.end88.i.do.body681_crit_edge ], [ @.str.28, %if.then63.i.do.body681_crit_edge ], [ @.str.26, %if.then7.i.do.body681_crit_edge ], [ @.str.28, %if.then159.do.body681_crit_edge ], [ @.str.30, %if.end62.do.body681_crit_edge ], [ @.str.29, %sw.bb408.do.body681_crit_edge ], [ @.str.29, %sw.bb447.do.body681_crit_edge ], [ @.str.29, %if.then132.do.body681_crit_edge ], [ @.str.23, %if.then248.do.body681_crit_edge ], [ @.str.18, %if.end172.do.body681_crit_edge ], [ @.str.18, %if.end52.do.body681_crit_edge ], [ @.str.26, %if.end543.do.body681_crit_edge ], [ @.str.25, %if.then517.do.body681_crit_edge ], [ @.str.24, %if.end580.do.body681_crit_edge ], [ @.str.22, %sw.bb461.do.body681_crit_edge ], [ @.str.21, %do.end386.do.body681_crit_edge ], [ @.str.20, %sw.bb657.do.body681_crit_edge ], [ @.str.19, %do.end.do.body681_crit_edge ], [ @.str.19, %if.end18.do.body681_crit_edge ], [ @.str.18, %if.then500.do.body681_crit_edge ], [ @.str.18, %cleanup298.do.body681_crit_edge ]
  %len.12 = phi i32 [ %len.5, %if.then.i ], [ %conv147.le1711, %do.body681.loopexit1478.split.loop.exit ], [ %conv147.le1709, %do.body681.loopexit1478.split.loop.exit1569 ], [ %conv147.le, %do.body681.loopexit1478.split.loop.exit1576 ], [ %len.5, %do.body.i.do.body681_crit_edge ], [ %len.5, %if.end77.i.do.body681_crit_edge ], [ %len.5, %check_length.i.do.body681_crit_edge ], [ %len.5, %if.end88.i.do.body681_crit_edge ], [ %len.5, %if.then63.i.do.body681_crit_edge ], [ %len.5, %if.then7.i.do.body681_crit_edge ], [ 128, %if.then159.do.body681_crit_edge ], [ %len.0, %if.end62.do.body681_crit_edge ], [ %len.5, %sw.bb408.do.body681_crit_edge ], [ %len.5, %sw.bb447.do.body681_crit_edge ], [ %len.0, %if.then132.do.body681_crit_edge ], [ %len.3, %if.then248.do.body681_crit_edge ], [ 128, %if.end172.do.body681_crit_edge ], [ %len.0, %if.end52.do.body681_crit_edge ], [ %datalen.addr.4, %if.end543.do.body681_crit_edge ], [ %datalen.addr.4, %if.then517.do.body681_crit_edge ], [ %datalen.addr.4, %if.end580.do.body681_crit_edge ], [ %len.5, %sw.bb461.do.body681_crit_edge ], [ %len.5, %do.end386.do.body681_crit_edge ], [ %len.5, %sw.bb657.do.body681_crit_edge ], [ %len.0, %do.end.do.body681_crit_edge ], [ %len.0, %if.end18.do.body681_crit_edge ], [ %datalen.addr.4, %if.then500.do.body681_crit_edge ], [ %len.4, %cleanup298.do.body681_crit_edge ]
  %dp.10 = phi i32 [ %dp.5, %if.then.i ], [ %inc145, %do.body681.loopexit1478.split.loop.exit ], [ %inc145, %do.body681.loopexit1478.split.loop.exit1569 ], [ %inc145, %do.body681.loopexit1478.split.loop.exit1576 ], [ %dp.5, %do.body.i.do.body681_crit_edge ], [ %dp.5, %if.end77.i.do.body681_crit_edge ], [ %dp.5, %check_length.i.do.body681_crit_edge ], [ %dp.5, %if.end88.i.do.body681_crit_edge ], [ %dp.5, %if.then63.i.do.body681_crit_edge ], [ %dp.5, %if.then7.i.do.body681_crit_edge ], [ %inc145, %if.then159.do.body681_crit_edge ], [ %inc, %if.end62.do.body681_crit_edge ], [ %dp.5, %sw.bb408.do.body681_crit_edge ], [ %dp.5, %sw.bb447.do.body681_crit_edge ], [ %inc, %if.then132.do.body681_crit_edge ], [ %dp.3, %if.then248.do.body681_crit_edge ], [ %inc145, %if.end172.do.body681_crit_edge ], [ %dp.0, %if.end52.do.body681_crit_edge ], [ %inc544, %if.end543.do.body681_crit_edge ], [ %inc512, %if.then517.do.body681_crit_edge ], [ %dp.5, %if.end580.do.body681_crit_edge ], [ %dp.5, %sw.bb461.do.body681_crit_edge ], [ %dp.5, %do.end386.do.body681_crit_edge ], [ %dp.5, %sw.bb657.do.body681_crit_edge ], [ %dp.0, %do.end.do.body681_crit_edge ], [ %dp.0, %if.end18.do.body681_crit_edge ], [ %dp.5, %if.then500.do.body681_crit_edge ], [ %dp.4, %cleanup298.do.body681_crit_edge ]
  %optag.6 = phi i8 [ %optag.3, %if.then.i ], [ %optag.1, %do.body681.loopexit1478.split.loop.exit ], [ %optag.1, %do.body681.loopexit1478.split.loop.exit1569 ], [ %optag.1, %do.body681.loopexit1478.split.loop.exit1576 ], [ %optag.3, %do.body.i.do.body681_crit_edge ], [ %optag.3, %if.end77.i.do.body681_crit_edge ], [ %optag.3, %check_length.i.do.body681_crit_edge ], [ %optag.3, %if.end88.i.do.body681_crit_edge ], [ %optag.3, %if.then63.i.do.body681_crit_edge ], [ %optag.3, %if.then7.i.do.body681_crit_edge ], [ %optag.1, %if.then159.do.body681_crit_edge ], [ %optag.0, %if.end62.do.body681_crit_edge ], [ %optag.3, %sw.bb408.do.body681_crit_edge ], [ %optag.3, %sw.bb447.do.body681_crit_edge ], [ %19, %if.then132.do.body681_crit_edge ], [ %optag.1, %if.then248.do.body681_crit_edge ], [ %optag.1, %if.end172.do.body681_crit_edge ], [ %optag.0, %if.end52.do.body681_crit_edge ], [ %optag.3, %if.end543.do.body681_crit_edge ], [ %optag.3, %if.then517.do.body681_crit_edge ], [ %optag.3, %if.end580.do.body681_crit_edge ], [ %optag.3, %sw.bb461.do.body681_crit_edge ], [ %optag.3, %do.end386.do.body681_crit_edge ], [ %optag.3, %sw.bb657.do.body681_crit_edge ], [ %optag.0, %do.end.do.body681_crit_edge ], [ %optag.0, %if.end18.do.body681_crit_edge ], [ %optag.3, %if.then500.do.body681_crit_edge ], [ %optag.1, %cleanup298.do.body681_crit_edge ]
  %tag.5 = phi i8 [ %tag.2, %if.then.i ], [ %17, %do.body681.loopexit1478.split.loop.exit ], [ %17, %do.body681.loopexit1478.split.loop.exit1569 ], [ %17, %do.body681.loopexit1478.split.loop.exit1576 ], [ %tag.2, %do.body.i.do.body681_crit_edge ], [ %tag.2, %if.end77.i.do.body681_crit_edge ], [ %tag.2, %check_length.i.do.body681_crit_edge ], [ %tag.2, %if.end88.i.do.body681_crit_edge ], [ %tag.2, %if.then63.i.do.body681_crit_edge ], [ %tag.2, %if.then7.i.do.body681_crit_edge ], [ %17, %if.then159.do.body681_crit_edge ], [ %17, %if.end62.do.body681_crit_edge ], [ %tag.2, %sw.bb408.do.body681_crit_edge ], [ %tag.2, %sw.bb447.do.body681_crit_edge ], [ %17, %if.then132.do.body681_crit_edge ], [ %17, %if.then248.do.body681_crit_edge ], [ %17, %if.end172.do.body681_crit_edge ], [ %tag.0, %if.end52.do.body681_crit_edge ], [ %tag.2, %if.end543.do.body681_crit_edge ], [ %tag.2, %if.then517.do.body681_crit_edge ], [ %tag.2, %if.end580.do.body681_crit_edge ], [ %tag.2, %sw.bb461.do.body681_crit_edge ], [ %tag.2, %do.end386.do.body681_crit_edge ], [ %tag.2, %sw.bb657.do.body681_crit_edge ], [ %tag.0, %do.end.do.body681_crit_edge ], [ %tag.0, %if.end18.do.body681_crit_edge ], [ %tag.2, %if.then500.do.body681_crit_edge ], [ %17, %cleanup298.do.body681_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @asn1_ber_decoder.__UNIQUE_ID_ddebug116, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@asn1_ber_decoder, %if.then693)) #6
          to label %cleanup699 [label %if.then693], !srcloc !86

if.then693:                                       ; preds = %do.body681
  call void @__sanitizer_cov_trace_pc() #5
  %conv694 = zext i8 %optag.6 to i32
  %conv695 = zext i8 %tag.5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @asn1_ber_decoder.__UNIQUE_ID_ddebug116, ptr noundef nonnull @.str.31, ptr noundef nonnull %errmsg.4, i32 noundef %pc.0, i32 noundef %dp.10, i32 noundef %conv694, i32 noundef %conv695, i32 noundef %len.12) #6
  br label %cleanup699

cleanup699:                                       ; preds = %if.then693, %do.body681, %do.end678, %sw.bb642.cleanup699_crit_edge, %if.then606.cleanup699_crit_edge, %do.end441, %sw.bb425.cleanup699_crit_edge, %if.then339.cleanup699_crit_edge, %cleanup298.cleanup699_crit_edge, %entry.cleanup699_crit_edge
  %retval.5 = phi i32 [ -74, %do.end678 ], [ -74, %do.end441 ], [ -90, %entry.cleanup699_crit_edge ], [ 0, %sw.bb425.cleanup699_crit_edge ], [ -74, %if.then693 ], [ -74, %do.body681 ], [ %call649, %sw.bb642.cleanup699_crit_edge ], [ %call352, %if.then339.cleanup699_crit_edge ], [ %call621, %if.then606.cleanup699_crit_edge ], [ undef, %cleanup298.cleanup699_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %jump_stack) #6
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cons_hdrlen_stack) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cons_datalen_stack) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cons_dp_stack) #6
  ret i32 %retval.5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !16, !17, !19, !20, !22, !23, !25, !26, !27, !29, !30, !32, !33, !35, !37, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !73, !75, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/asn1_decoder.c", i32 201, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @asn1_ber_decoder.__UNIQUE_ID_ddebug106, !1, !"__UNIQUE_ID_ddebug106", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../lib/asn1_decoder.c", i32 234, i32 4}
!8 = !{ptr @asn1_ber_decoder.__UNIQUE_ID_ddebug107, !7, !"__UNIQUE_ID_ddebug107", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../lib/asn1_decoder.c", i32 247, i32 4}
!11 = !{ptr @asn1_ber_decoder.__UNIQUE_ID_ddebug108, !10, !"__UNIQUE_ID_ddebug108", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/asn1_decoder.c", i32 305, i32 3}
!14 = !{ptr @asn1_ber_decoder.__UNIQUE_ID_ddebug109, !13, !"__UNIQUE_ID_ddebug109", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../lib/asn1_decoder.c", i32 336, i32 4}
!19 = !{ptr @asn1_ber_decoder.__UNIQUE_ID_ddebug110, !18, !"__UNIQUE_ID_ddebug110", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../lib/asn1_decoder.c", i32 359, i32 3}
!22 = !{ptr @asn1_ber_decoder.__UNIQUE_ID_ddebug111, !21, !"__UNIQUE_ID_ddebug111", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../lib/asn1_decoder.c", i32 374, i32 4}
!25 = !{ptr @asn1_ber_decoder._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @asn1_ber_decoder._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../lib/asn1_decoder.c", i32 399, i32 3}
!29 = !{ptr @asn1_ber_decoder.__UNIQUE_ID_ddebug112, !28, !"__UNIQUE_ID_ddebug112", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../lib/asn1_decoder.c", i32 411, i32 6}
!32 = !{ptr @asn1_ber_decoder.__UNIQUE_ID_ddebug113, !31, !"__UNIQUE_ID_ddebug113", i1 false, i1 false}
!33 = !{ptr @asn1_ber_decoder.__UNIQUE_ID_ddebug114, !34, !"__UNIQUE_ID_ddebug114", i1 false, i1 false}
!34 = !{!"../lib/asn1_decoder.c", i32 424, i32 5}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../lib/asn1_decoder.c", i32 430, i32 4}
!37 = !{ptr @asn1_ber_decoder.__UNIQUE_ID_ddebug115, !36, !"__UNIQUE_ID_ddebug115", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../lib/asn1_decoder.c", i32 472, i32 2}
!40 = !{ptr @asn1_ber_decoder._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @asn1_ber_decoder._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../lib/asn1_decoder.c", i32 477, i32 11}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../lib/asn1_decoder.c", i32 480, i32 11}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../lib/asn1_decoder.c", i32 483, i32 11}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../lib/asn1_decoder.c", i32 486, i32 11}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../lib/asn1_decoder.c", i32 489, i32 11}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../lib/asn1_decoder.c", i32 492, i32 11}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../lib/asn1_decoder.c", i32 495, i32 11}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../lib/asn1_decoder.c", i32 498, i32 11}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../lib/asn1_decoder.c", i32 501, i32 11}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../lib/asn1_decoder.c", i32 504, i32 11}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../lib/asn1_decoder.c", i32 507, i32 11}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../lib/asn1_decoder.c", i32 510, i32 11}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../lib/asn1_decoder.c", i32 513, i32 11}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../lib/asn1_decoder.c", i32 515, i32 2}
!70 = !{ptr @asn1_ber_decoder.__UNIQUE_ID_ddebug116, !69, !"__UNIQUE_ID_ddebug116", i1 false, i1 false}
!71 = !{ptr @__ksymtab_asn1_ber_decoder, !72, !"__ksymtab_asn1_ber_decoder", i1 false, i1 false}
!72 = !{!"../lib/asn1_decoder.c", i32 519, i32 1}
!73 = !{ptr @__UNIQUE_ID_file117, !74, !"__UNIQUE_ID_file117", i1 false, i1 false}
!74 = !{!"../lib/asn1_decoder.c", i32 521, i32 1}
!75 = !{ptr @__UNIQUE_ID_license118, !74, !"__UNIQUE_ID_license118", i1 false, i1 false}
!76 = !{ptr @asn1_op_lengths, !77, !"asn1_op_lengths", i1 false, i1 false}
!77 = !{!"../lib/asn1_decoder.c", i32 15, i32 28}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i64 2148703106, i64 2148703111, i64 2148703124, i64 2148703168, i64 2148703202, i64 2148703223}
!87 = !{!"branch_weights", i32 2000, i32 1}
!88 = !{!"branch_weights", i32 1, i32 2000}
