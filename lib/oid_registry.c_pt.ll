; ModuleID = '/llk/IR_all_yes/lib/oid_registry.c_pt.bc'
source_filename = "../lib/oid_registry.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+look_up_OID\22, \22a\22\09"
module asm "\09.weak\09__crc_look_up_OID\09\09\09\09"
module asm "\09.long\09__crc_look_up_OID\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_look_up_OID:\09\09\09\09\09"
module asm "\09.asciz \09\22look_up_OID\22\09\09\09\09\09"
module asm "__kstrtabns_look_up_OID:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+parse_OID\22, \22a\22\09"
module asm "\09.weak\09__crc_parse_OID\09\09\09\09"
module asm "\09.long\09__crc_parse_OID\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_parse_OID:\09\09\09\09\09"
module asm "\09.asciz \09\22parse_OID\22\09\09\09\09\09"
module asm "__kstrtabns_parse_OID:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sprint_oid\22, \22a\22\09"
module asm "\09.weak\09__crc_sprint_oid\09\09\09\09"
module asm "\09.long\09__crc_sprint_oid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sprint_oid:\09\09\09\09\09"
module asm "\09.asciz \09\22sprint_oid\22\09\09\09\09\09"
module asm "__kstrtabns_sprint_oid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sprint_OID\22, \22a\22\09"
module asm "\09.weak\09__crc_sprint_OID\09\09\09\09"
module asm "\09.long\09__crc_sprint_OID\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sprint_OID:\09\09\09\09\09"
module asm "\09.asciz \09\22sprint_OID\22\09\09\09\09\09"
module asm "__kstrtabns_sprint_OID:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.anon = type { i8, i8, [2 x i8] }
%struct.kernel_symbol = type { i32, ptr, ptr }

@__UNIQUE_ID_description106 = internal constant [38 x i8] c"oid_registry.description=OID Registry\00", section ".modinfo", align 1
@__UNIQUE_ID_author107 = internal constant [34 x i8] c"oid_registry.author=Red Hat, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file108 = internal constant [35 x i8] c"oid_registry.file=lib/oid_registry\00", section ".modinfo", align 1
@__UNIQUE_ID_license109 = internal constant [25 x i8] c"oid_registry.license=GPL\00", section ".modinfo", align 1
@oid_search_table = internal constant { [98 x %struct.anon], [120 x i8] } { [98 x %struct.anon] [%struct.anon { i8 10, i8 58, [2 x i8] undef }, %struct.anon { i8 11, i8 40, [2 x i8] undef }, %struct.anon { i8 11, i8 41, [2 x i8] undef }, %struct.anon { i8 13, i8 46, [2 x i8] undef }, %struct.anon { i8 19, i8 90, [2 x i8] undef }, %struct.anon { i8 19, i8 87, [2 x i8] undef }, %struct.anon { i8 23, i8 67, [2 x i8] undef }, %struct.anon { i8 23, i8 62, [2 x i8] undef }, %struct.anon { i8 29, i8 11, [2 x i8] undef }, %struct.anon { i8 30, i8 27, [2 x i8] undef }, %struct.anon { i8 32, i8 0, [2 x i8] undef }, %struct.anon { i8 35, i8 22, [2 x i8] undef }, %struct.anon { i8 35, i8 15, [2 x i8] undef }, %struct.anon { i8 36, i8 71, [2 x i8] undef }, %struct.anon { i8 37, i8 59, [2 x i8] undef }, %struct.anon { i8 43, i8 1, [2 x i8] undef }, %struct.anon { i8 44, i8 42, [2 x i8] undef }, %struct.anon { i8 44, i8 32, [2 x i8] undef }, %struct.anon { i8 49, i8 6, [2 x i8] undef }, %struct.anon { i8 51, i8 37, [2 x i8] undef }, %struct.anon { i8 52, i8 93, [2 x i8] undef }, %struct.anon { i8 54, i8 68, [2 x i8] undef }, %struct.anon { i8 54, i8 63, [2 x i8] undef }, %struct.anon { i8 60, i8 75, [2 x i8] undef }, %struct.anon { i8 60, i8 12, [2 x i8] undef }, %struct.anon { i8 64, i8 95, [2 x i8] undef }, %struct.anon { i8 64, i8 31, [2 x i8] undef }, %struct.anon { i8 64, i8 20, [2 x i8] undef }, %struct.anon { i8 76, i8 3, [2 x i8] undef }, %struct.anon { i8 77, i8 53, [2 x i8] undef }, %struct.anon { i8 77, i8 5, [2 x i8] undef }, %struct.anon { i8 83, i8 47, [2 x i8] undef }, %struct.anon { i8 84, i8 91, [2 x i8] undef }, %struct.anon { i8 85, i8 25, [2 x i8] undef }, %struct.anon { i8 87, i8 45, [2 x i8] undef }, %struct.anon { i8 93, i8 76, [2 x i8] undef }, %struct.anon { i8 97, i8 21, [2 x i8] undef }, %struct.anon { i8 106, i8 72, [2 x i8] undef }, %struct.anon { i8 106, i8 36, [2 x i8] undef }, %struct.anon { i8 110, i8 54, [2 x i8] undef }, %struct.anon { i8 124, i8 78, [2 x i8] undef }, %struct.anon { i8 126, i8 77, [2 x i8] undef }, %struct.anon { i8 126, i8 10, [2 x i8] undef }, %struct.anon { i8 -126, i8 97, [2 x i8] undef }, %struct.anon { i8 -124, i8 26, [2 x i8] undef }, %struct.anon { i8 -122, i8 43, [2 x i8] undef }, %struct.anon { i8 -114, i8 2, [2 x i8] undef }, %struct.anon { i8 -114, i8 18, [2 x i8] undef }, %struct.anon { i8 -113, i8 55, [2 x i8] undef }, %struct.anon { i8 -111, i8 94, [2 x i8] undef }, %struct.anon { i8 -110, i8 64, [2 x i8] undef }, %struct.anon { i8 -106, i8 9, [2 x i8] undef }, %struct.anon { i8 -106, i8 4, [2 x i8] undef }, %struct.anon { i8 -99, i8 79, [2 x i8] undef }, %struct.anon { i8 -99, i8 49, [2 x i8] undef }, %struct.anon { i8 -96, i8 19, [2 x i8] undef }, %struct.anon { i8 -95, i8 69, [2 x i8] undef }, %struct.anon { i8 -95, i8 96, [2 x i8] undef }, %struct.anon { i8 -83, i8 38, [2 x i8] undef }, %struct.anon { i8 -78, i8 48, [2 x i8] undef }, %struct.anon { i8 -77, i8 65, [2 x i8] undef }, %struct.anon { i8 -77, i8 73, [2 x i8] undef }, %struct.anon { i8 -66, i8 80, [2 x i8] undef }, %struct.anon { i8 -65, i8 84, [2 x i8] undef }, %struct.anon { i8 -61, i8 30, [2 x i8] undef }, %struct.anon { i8 -61, i8 13, [2 x i8] undef }, %struct.anon { i8 -58, i8 70, [2 x i8] undef }, %struct.anon { i8 -56, i8 35, [2 x i8] undef }, %struct.anon { i8 -55, i8 56, [2 x i8] undef }, %struct.anon { i8 -52, i8 23, [2 x i8] undef }, %struct.anon { i8 -52, i8 16, [2 x i8] undef }, %struct.anon { i8 -48, i8 7, [2 x i8] undef }, %struct.anon { i8 -48, i8 88, [2 x i8] undef }, %struct.anon { i8 -48, i8 85, [2 x i8] undef }, %struct.anon { i8 -44, i8 60, [2 x i8] undef }, %struct.anon { i8 -43, i8 51, [2 x i8] undef }, %struct.anon { i8 -43, i8 92, [2 x i8] undef }, %struct.anon { i8 -36, i8 28, [2 x i8] undef }, %struct.anon { i8 -33, i8 82, [2 x i8] undef }, %struct.anon { i8 -33, i8 81, [2 x i8] undef }, %struct.anon { i8 -30, i8 14, [2 x i8] undef }, %struct.anon { i8 -29, i8 29, [2 x i8] undef }, %struct.anon { i8 -28, i8 44, [2 x i8] undef }, %struct.anon { i8 -25, i8 39, [2 x i8] undef }, %struct.anon { i8 -25, i8 34, [2 x i8] undef }, %struct.anon { i8 -22, i8 57, [2 x i8] undef }, %struct.anon { i8 -20, i8 74, [2 x i8] undef }, %struct.anon { i8 -19, i8 24, [2 x i8] undef }, %struct.anon { i8 -19, i8 17, [2 x i8] undef }, %struct.anon { i8 -16, i8 83, [2 x i8] undef }, %struct.anon { i8 -15, i8 89, [2 x i8] undef }, %struct.anon { i8 -15, i8 86, [2 x i8] undef }, %struct.anon { i8 -12, i8 52, [2 x i8] undef }, %struct.anon { i8 -11, i8 66, [2 x i8] undef }, %struct.anon { i8 -11, i8 61, [2 x i8] undef }, %struct.anon { i8 -9, i8 8, [2 x i8] undef }, %struct.anon { i8 -4, i8 50, [2 x i8] undef }, %struct.anon { i8 -1, i8 33, [2 x i8] undef }], [120 x i8] zeroinitializer }, align 32
@oid_index = internal constant { [99 x i16], [58 x i8] } { [99 x i16] [i16 0, i16 7, i16 14, i16 21, i16 29, i16 37, i16 44, i16 52, i16 60, i16 68, i16 76, i16 85, i16 94, i16 103, i16 112, i16 121, i16 130, i16 139, i16 148, i16 157, i16 166, i16 175, i16 184, i16 193, i16 202, i16 211, i16 220, i16 231, i16 239, i16 247, i16 255, i16 264, i16 273, i16 283, i16 293, i16 303, i16 313, i16 323, i16 333, i16 342, i16 352, i16 358, i16 364, i16 370, i16 376, i16 384, i16 389, i16 394, i16 403, i16 412, i16 421, i16 430, i16 433, i16 436, i16 439, i16 442, i16 445, i16 448, i16 451, i16 454, i16 457, i16 460, i16 463, i16 466, i16 469, i16 472, i16 475, i16 478, i16 481, i16 484, i16 487, i16 490, i16 493, i16 496, i16 502, i16 508, i16 515, i16 522, i16 529, i16 537, i16 545, i16 553, i16 561, i16 569, i16 577, i16 586, i16 595, i16 604, i16 613, i16 622, i16 631, i16 640, i16 648, i16 656, i16 664, i16 672, i16 678, i16 684, i16 690], [58 x i8] zeroinitializer }, align 32
@oid_data = internal constant { [690 x i8], [174 x i8] } { [690 x i8] c"*\86H\CE.\04\03*\86H\CE8\04\01*\86H\CE=\02\01*\86H\CE=\03\01\01*\86H\CE=\03\01\07*\86H\CE=\04\01*\86H\CE=\04\03\01*\86H\CE=\04\03\02*\86H\CE=\04\03\03*\86H\CE=\04\03\04*\86H\86\F7\0D\01\01\01*\86H\86\F7\0D\01\01\02*\86H\86\F7\0D\01\01\03*\86H\86\F7\0D\01\01\04*\86H\86\F7\0D\01\01\05*\86H\86\F7\0D\01\01\0B*\86H\86\F7\0D\01\01\0C*\86H\86\F7\0D\01\01\0D*\86H\86\F7\0D\01\01\0E*\86H\86\F7\0D\01\07\01*\86H\86\F7\0D\01\07\02*\86H\86\F7\0D\01\09\01*\86H\86\F7\0D\01\09\03*\86H\86\F7\0D\01\09\04*\86H\86\F7\0D\01\09\05*\86H\86\F7\0D\01\09\0F*\86H\86\F7\0D\01\09\10\02\0B*\86H\86\F7\0D\02\02*\86H\86\F7\0D\02\04*\86H\86\F7\0D\02\05*\86H\82\F7\12\01\02\02*\86H\86\F7\12\01\02\02*\86H\86\F7\12\01\02\02\03+\06\01\04\01\827\02\01\04+\06\01\04\01\827\02\01\0B+\06\01\04\01\827\02\01\0C+\06\01\04\01\827\02\01\0F+\06\01\04\01\827\02\01\15+\06\01\04\01\827\10\04+\06\01\04\01\827\02\02\0A+\06\01\05\05\02+\06\01\05\02\05+\05\01\05\02\07+\06\01\05\05\0E+\06\01\05\05\07\01\01+\0E\03\02\1A+\81\04\00\22`\86H\01e\03\04\02\01`\86H\01e\03\04\02\02`\86H\01e\03\04\02\03`\86H\01e\03\04\02\04U\04\03U\04\04U\04\06U\04\07U\04\08U\04\0AU\04\0BU\04\0CU\04\0DU\04)U\04*U\04+U\04,U\1D\0EU\1D\0FU\1D\11U\1D\12U\1D\13U\1D\1FU\1D U\1D#U\1D%*\85p+\0E\02*\85p+\0E\03*\85\03\02\02#\01*\85\03\02\02#\02*\85\03\02\02#\03*\85\03\07\01\01\01\01*\85\03\07\01\01\01\02*\85\03\07\01\01\02\02*\85\03\07\01\01\02\03*\85\03\07\01\01\03\02*\85\03\07\01\01\03\03*\85\03\07\01\02\01\01\01*\85\03\07\01\02\01\01\02*\85\03\07\01\02\01\01\03*\85\03\07\01\02\01\01\04*\85\03\07\01\02\01\02\01*\85\03\07\01\02\01\02\02*\85\03\07\01\02\01\02\03*\81\1C\CFU\01\82-*\81\1C\CFU\01\83\11*\81\1C\CFU\01\83u*\81\1C\CFU\01\83xg\81\05\0A\01\03g\81\05\0A\01\04g\81\05\0A\01\05", [174 x i8] zeroinitializer }, align 32
@__kstrtab_look_up_OID = external dso_local constant [0 x i8], align 1
@__kstrtabns_look_up_OID = external dso_local constant [0 x i8], align 1
@__ksymtab_look_up_OID = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @look_up_OID to i32), ptr @__kstrtab_look_up_OID, ptr @__kstrtabns_look_up_OID }, section "___ksymtab_gpl+look_up_OID", align 4
@__kstrtab_parse_OID = external dso_local constant [0 x i8], align 1
@__kstrtabns_parse_OID = external dso_local constant [0 x i8], align 1
@__ksymtab_parse_OID = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @parse_OID to i32), ptr @__kstrtab_parse_OID, ptr @__kstrtabns_parse_OID }, section "___ksymtab_gpl+parse_OID", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%u.%u\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c".%lu\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"(bad)\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_sprint_oid = external dso_local constant [0 x i8], align 1
@__kstrtabns_sprint_oid = external dso_local constant [0 x i8], align 1
@__ksymtab_sprint_oid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sprint_oid to i32), ptr @__kstrtab_sprint_oid, ptr @__kstrtabns_sprint_oid }, section "___ksymtab_gpl+sprint_oid", align 4
@__kstrtab_sprint_OID = external dso_local constant [0 x i8], align 1
@__kstrtabns_sprint_OID = external dso_local constant [0 x i8], align 1
@__ksymtab_sprint_OID = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sprint_OID to i32), ptr @__kstrtab_sprint_OID, ptr @__kstrtabns_sprint_OID }, section "___ksymtab_gpl+sprint_OID", align 4
@___asan_gen_.3 = private unnamed_addr constant [17 x i8] c"oid_search_table\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 211, i32 3 }
@___asan_gen_.6 = private unnamed_addr constant [10 x i8] c"oid_index\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 5, i32 29 }
@___asan_gen_.9 = private unnamed_addr constant [9 x i8] c"oid_data\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [26 x i8] c"./lib/oid_registry_data.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 107, i32 28 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 142, i32 42 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 163, i32 44 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private constant [22 x i8] c"../lib/oid_registry.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 173, i32 28 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author107, ptr @__UNIQUE_ID_description106, ptr @__UNIQUE_ID_file108, ptr @__UNIQUE_ID_license109, ptr @__ksymtab_look_up_OID, ptr @__ksymtab_parse_OID, ptr @__ksymtab_sprint_OID, ptr @__ksymtab_sprint_oid, ptr @oid_search_table, ptr @oid_index, ptr @oid_data, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oid_search_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oid_index to i32), i32 198, i32 256, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oid_data to i32), i32 690, i32 864, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @look_up_OID(ptr nocapture noundef readonly %data, i32 noundef %datasize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %datasize)
  %cmp107.not = icmp eq i32 %datasize, 0
  br i1 %cmp107.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %sub = add i32 %datasize, -1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %hash.0109 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ %sub, %for.body.preheader ]
  %i.0108 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i8, ptr %data, i32 %i.0108
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %mul = mul nuw nsw i32 %conv, 33
  %add = add i32 %mul, %hash.0109
  %inc = add nuw i32 %i.0108, 1
  %exitcond.not = icmp eq i32 %inc, %datasize
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %hash.0.lcssa = phi i32 [ -1, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %shr = lshr i32 %hash.0.lcssa, 24
  %shr1 = lshr i32 %hash.0.lcssa, 16
  %shr2 = lshr i32 %hash.0.lcssa, 8
  %xor = xor i32 %shr1, %hash.0.lcssa
  %xor3 = xor i32 %xor, %shr
  %xor4 = xor i32 %xor3, %shr2
  %and = and i32 %xor4, 255
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.outer.backedge.while.body.lr.ph_crit_edge, %for.end
  %k.0.ph113 = phi i32 [ 98, %for.end ], [ %k.0.ph.be, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  %i.1.ph112 = phi i32 [ 0, %for.end ], [ %i.1.ph.be, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %k.0111 = phi i32 [ %k.0.ph113, %while.body.lr.ph ], [ %div101, %while.cond.backedge.while.body_crit_edge ]
  %add7 = add i32 %k.0111, %i.1.ph112
  %div101 = lshr i32 %add7, 1
  %arrayidx8 = getelementptr [98 x %struct.anon], ptr @oid_search_table, i32 0, i32 %div101
  %2 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx8, align 4
  %conv10 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv10)
  %cmp11 = icmp ult i32 %and, %conv10
  br i1 %cmp11, label %while.body.while.cond.backedge_crit_edge, label %if.end

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end18.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %cmp5 = icmp ult i32 %i.1.ph112, %div101
  br i1 %cmp5, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.cleanup60_crit_edge

while.cond.backedge.cleanup60_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup60

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv10)
  %cmp14 = icmp ugt i32 %and, %conv10
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %add17 = add nuw i32 %div101, 1
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %while.body39.while.cond.outer.backedge_crit_edge, %if.end30.while.cond.outer.backedge_crit_edge, %if.then16
  %i.1.ph.be = phi i32 [ %add17, %if.then16 ], [ %add34, %if.end30.while.cond.outer.backedge_crit_edge ], [ %i.3, %while.body39.while.cond.outer.backedge_crit_edge ]
  %k.0.ph.be = phi i32 [ %k.0111, %if.then16 ], [ %k.0111, %if.end30.while.cond.outer.backedge_crit_edge ], [ %k.2, %while.body39.while.cond.outer.backedge_crit_edge ]
  %cmp5110 = icmp ult i32 %i.1.ph.be, %k.0.ph.be
  br i1 %cmp5110, label %while.cond.outer.backedge.while.body.lr.ph_crit_edge, label %while.cond.outer.backedge.cleanup60_crit_edge

while.cond.outer.backedge.cleanup60_crit_edge:    ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup60

while.cond.outer.backedge.while.body.lr.ph_crit_edge: ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.lr.ph

if.end18:                                         ; preds = %if.end
  %oid20 = getelementptr [98 x %struct.anon], ptr @oid_search_table, i32 0, i32 %div101, i32 1
  %4 = ptrtoint ptr %oid20 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %oid20, align 1
  %bf.cast = zext i8 %bf.load to i32
  %add21 = add nuw nsw i32 %bf.cast, 1
  %arrayidx22 = getelementptr [99 x i16], ptr @oid_index, i32 0, i32 %add21
  %5 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx22, align 2
  %conv23 = zext i16 %6 to i32
  %arrayidx24 = getelementptr [99 x i16], ptr @oid_index, i32 0, i32 %bf.cast
  %7 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx24, align 2
  %conv25 = zext i16 %8 to i32
  %sub26 = sub nsw i32 %conv23, %conv25
  call void @__sanitizer_cov_trace_cmp4(i32 %sub26, i32 %datasize)
  %cmp27 = icmp ugt i32 %sub26, %datasize
  br i1 %cmp27, label %if.end18.while.cond.backedge_crit_edge, label %if.end30

if.end18.while.cond.backedge_crit_edge:           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

if.end30:                                         ; preds = %if.end18
  %conv25.le = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub26, i32 %datasize)
  %cmp31 = icmp ult i32 %sub26, %datasize
  %add34 = add nuw i32 %div101, 1
  br i1 %cmp31, label %if.end30.while.cond.outer.backedge_crit_edge, label %if.end30.while.cond36_crit_edge

if.end30.while.cond36_crit_edge:                  ; preds = %if.end30
  br label %while.cond36

if.end30.while.cond.outer.backedge_crit_edge:     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.outer.backedge

while.cond36:                                     ; preds = %while.body39.while.cond36_crit_edge, %if.end30.while.cond36_crit_edge
  %i.2 = phi i32 [ %i.3, %while.body39.while.cond36_crit_edge ], [ %i.1.ph112, %if.end30.while.cond36_crit_edge ]
  %k.1 = phi i32 [ %k.2, %while.body39.while.cond36_crit_edge ], [ %k.0111, %if.end30.while.cond36_crit_edge ]
  %len.0 = phi i32 [ %dec, %while.body39.while.cond36_crit_edge ], [ %sub26, %if.end30.while.cond36_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %cmp37.not = icmp eq i32 %len.0, 0
  br i1 %cmp37.not, label %cleanup60.loopexit, label %while.body39

while.body39:                                     ; preds = %while.cond36
  %dec = add i32 %len.0, -1
  %add42 = add i32 %dec, %conv25.le
  %arrayidx43 = getelementptr [690 x i8], ptr @oid_data, i32 0, i32 %add42
  %9 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx43, align 1
  %arrayidx44 = getelementptr i8, ptr %data, i32 %dec
  %11 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx44, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp47 = icmp ugt i8 %10, %12
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp53 = icmp ult i8 %10, %12
  %spec.select = select i1 %cmp53, i32 %add34, i32 %i.2
  %i.3 = select i1 %cmp47, i32 %i.2, i32 %spec.select
  %k.2 = select i1 %cmp47, i32 %div101, i32 %k.1
  %.not = icmp eq i8 %10, %12
  br i1 %.not, label %while.body39.while.cond36_crit_edge, label %while.body39.while.cond.outer.backedge_crit_edge

while.body39.while.cond.outer.backedge_crit_edge: ; preds = %while.body39
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.outer.backedge

while.body39.while.cond36_crit_edge:              ; preds = %while.body39
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond36

cleanup60.loopexit:                               ; preds = %while.cond36
  call void @__sanitizer_cov_trace_pc() #6
  %bf.cast.le.le = zext i8 %bf.load to i32
  br label %cleanup60

cleanup60:                                        ; preds = %cleanup60.loopexit, %while.cond.outer.backedge.cleanup60_crit_edge, %while.cond.backedge.cleanup60_crit_edge
  %retval.0 = phi i32 [ %bf.cast.le.le, %cleanup60.loopexit ], [ 98, %while.cond.backedge.cleanup60_crit_edge ], [ 98, %while.cond.outer.backedge.cleanup60_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @parse_OID(ptr nocapture noundef readonly %data, i32 noundef %datasize, ptr nocapture noundef writeonly %oid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %datasize)
  %cmp = icmp ult i32 %datasize, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %1)
  %cmp1.not = icmp eq i8 %1, 6
  br i1 %cmp1.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr i8, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %3 to i32
  %sub = add i32 %datasize, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv5)
  %cmp6.not = icmp eq i32 %sub, %conv5
  br i1 %cmp6.not, label %if.end, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %data, i32 2
  %call = tail call i32 @look_up_OID(ptr noundef %add.ptr, i32 noundef %conv5)
  %4 = ptrtoint ptr %oid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %oid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -74, %lor.lhs.false3.cleanup_crit_edge ], [ -74, %lor.lhs.false.cleanup_crit_edge ], [ -74, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sprint_oid(ptr noundef readonly %data, i32 noundef %datasize, ptr nocapture noundef writeonly %buffer, i32 noundef %bufsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %data, i32 %datasize
  %cmp.not = icmp ugt ptr %add.ptr, %data
  br i1 %cmp.not, label %if.end, label %entry.bad_crit_edge

entry.bad_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %bad

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %.frozen = freeze i8 %1
  %div71 = udiv i8 %.frozen, 40
  %div.zext = zext i8 %div71 to i32
  %2 = mul i8 %div71, 40
  %rem72.decomposed = sub i8 %.frozen, %2
  %rem.zext = zext i8 %rem72.decomposed to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buffer, i32 noundef %bufsize, ptr noundef nonnull @.str, i32 noundef %div.zext, i32 noundef %rem.zext)
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %bufsize)
  %cmp2.not = icmp ult i32 %call, %bufsize
  br i1 %cmp2.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %incdec.ptr = getelementptr i8, ptr %data, i32 1
  %cmp775 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp775, label %while.body.preheader, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.preheader:                             ; preds = %if.end5
  %sub = sub i32 %bufsize, %call
  %add.ptr6 = getelementptr i8, ptr %buffer, i32 %call
  br label %while.body

while.body:                                       ; preds = %if.end30.while.body_crit_edge, %while.body.preheader
  %ret.081 = phi i32 [ %add, %if.end30.while.body_crit_edge ], [ %call, %while.body.preheader ]
  %v.080 = phi ptr [ %v.2, %if.end30.while.body_crit_edge ], [ %incdec.ptr, %while.body.preheader ]
  %bufsize.addr.078 = phi i32 [ %sub32, %if.end30.while.body_crit_edge ], [ %sub, %while.body.preheader ]
  %buffer.addr.076 = phi ptr [ %add.ptr31, %if.end30.while.body_crit_edge ], [ %add.ptr6, %while.body.preheader ]
  %incdec.ptr9 = getelementptr i8, ptr %v.080, i32 1
  %3 = ptrtoint ptr %v.080 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %v.080, align 1
  %conv10 = zext i8 %4 to i32
  %and = and i32 %conv10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.if.end25_crit_edge, label %if.else

while.body.if.end25_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.else:                                          ; preds = %while.body
  %and14 = and i32 %conv10, 127
  br label %do.body

do.body:                                          ; preds = %if.end18.do.body_crit_edge, %if.else
  %v.1 = phi ptr [ %incdec.ptr9, %if.else ], [ %incdec.ptr19, %if.end18.do.body_crit_edge ]
  %num.0 = phi i32 [ %and14, %if.else ], [ %or, %if.end18.do.body_crit_edge ]
  %cmp15.not = icmp ult ptr %v.1, %add.ptr
  br i1 %cmp15.not, label %if.end18, label %do.body.bad_crit_edge

do.body.bad_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %bad

if.end18:                                         ; preds = %do.body
  %incdec.ptr19 = getelementptr i8, ptr %v.1, i32 1
  %5 = ptrtoint ptr %v.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %v.1, align 1
  %shl = shl i32 %num.0, 7
  %conv20 = zext i8 %6 to i32
  %and21 = and i32 %conv20, 127
  %or = or i32 %and21, %shl
  %and23 = and i32 %conv20, 128
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end18.if.end25_crit_edge, label %if.end18.do.body_crit_edge

if.end18.do.body_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.end25:                                         ; preds = %if.end18.if.end25_crit_edge, %while.body.if.end25_crit_edge
  %v.2 = phi ptr [ %incdec.ptr9, %while.body.if.end25_crit_edge ], [ %incdec.ptr19, %if.end18.if.end25_crit_edge ]
  %num.1 = phi i32 [ %conv10, %while.body.if.end25_crit_edge ], [ %or, %if.end18.if.end25_crit_edge ]
  %call26 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buffer.addr.076, i32 noundef %bufsize.addr.078, ptr noundef nonnull @.str.1, i32 noundef %num.1)
  call void @__sanitizer_cov_trace_cmp4(i32 %bufsize.addr.078, i32 %call26)
  %cmp27.not = icmp ugt i32 %bufsize.addr.078, %call26
  br i1 %cmp27.not, label %if.end30, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %add = add i32 %call26, %ret.081
  %add.ptr31 = getelementptr i8, ptr %buffer.addr.076, i32 %call26
  %sub32 = sub i32 %bufsize.addr.078, %call26
  %cmp7 = icmp ult ptr %v.2, %add.ptr
  br i1 %cmp7, label %if.end30.while.body_crit_edge, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

bad:                                              ; preds = %do.body.bad_crit_edge, %entry.bad_crit_edge
  %buffer.addr.1 = phi ptr [ %buffer, %entry.bad_crit_edge ], [ %buffer.addr.076, %do.body.bad_crit_edge ]
  %bufsize.addr.1 = phi i32 [ %bufsize, %entry.bad_crit_edge ], [ %bufsize.addr.078, %do.body.bad_crit_edge ]
  %call33 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buffer.addr.1, i32 noundef %bufsize.addr.1, ptr noundef nonnull @.str.2)
  br label %cleanup

cleanup:                                          ; preds = %bad, %if.end30.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -74, %bad ], [ -105, %if.end.cleanup_crit_edge ], [ %call, %if.end5.cleanup_crit_edge ], [ -105, %if.end25.cleanup_crit_edge ], [ %add, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sprint_OID(i32 noundef %oid, ptr nocapture noundef writeonly %buffer, i32 noundef %bufsize) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 97, i32 %oid)
  %cmp = icmp ugt i32 %oid, 97
  br i1 %cmp, label %do.body2, label %do.end7, !prof !35

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/oid_registry.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 191, 0\0A.popsection", ""() #7, !srcloc !36
  unreachable

do.end7:                                          ; preds = %entry
  %arrayidx = getelementptr [99 x i16], ptr @oid_index, i32 0, i32 %oid
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %1 to i32
  %add.ptr = getelementptr i8, ptr @oid_data, i32 %conv
  %add = add nuw nsw i32 %oid, 1
  %arrayidx8 = getelementptr [99 x i16], ptr @oid_index, i32 0, i32 %add
  %2 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx8, align 2
  %conv9 = zext i16 %3 to i32
  %sub = sub nsw i32 %conv9, %conv
  %call = tail call i32 @sprint_oid(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef %buffer, i32 noundef %bufsize)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %call)
  %cmp13 = icmp eq i32 %call, -74
  br i1 %cmp13, label %do.body22, label %do.end30, !prof !35

do.body22:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/oid_registry.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 196, 0\0A.popsection", ""() #7, !srcloc !37
  unreachable

do.end30:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  ret i32 %call
}

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind uwtable(sync) }
attributes #6 = { nomerge }
attributes #7 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__UNIQUE_ID_description106, !1, !"__UNIQUE_ID_description106", i1 false, i1 false}
!1 = !{!"../lib/oid_registry.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_author107, !3, !"__UNIQUE_ID_author107", i1 false, i1 false}
!3 = !{!"../lib/oid_registry.c", i32 18, i32 1}
!4 = !{ptr @__UNIQUE_ID_file108, !5, !"__UNIQUE_ID_file108", i1 false, i1 false}
!5 = !{!"../lib/oid_registry.c", i32 19, i32 1}
!6 = !{ptr @__UNIQUE_ID_license109, !5, !"__UNIQUE_ID_license109", i1 false, i1 false}
!7 = !{ptr @__ksymtab_look_up_OID, !8, !"__ksymtab_look_up_OID", i1 false, i1 false}
!8 = !{!"../lib/oid_registry.c", i32 94, i32 1}
!9 = !{ptr @__ksymtab_parse_OID, !10, !"__ksymtab_parse_OID", i1 false, i1 false}
!10 = !{!"../lib/oid_registry.c", i32 117, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../lib/oid_registry.c", i32 142, i32 42}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../lib/oid_registry.c", i32 163, i32 44}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../lib/oid_registry.c", i32 173, i32 28}
!17 = !{ptr @__ksymtab_sprint_oid, !18, !"__ksymtab_sprint_oid", i1 false, i1 false}
!18 = !{!"../lib/oid_registry.c", i32 176, i32 1}
!19 = !{ptr @__ksymtab_sprint_OID, !20, !"__ksymtab_sprint_OID", i1 false, i1 false}
!20 = !{!"../lib/oid_registry.c", i32 199, i32 1}
!21 = !{ptr @oid_search_table, !22, !"oid_search_table", i1 false, i1 false}
!22 = !{!"./lib/oid_registry_data.c", i32 211, i32 3}
!23 = !{ptr @oid_index, !24, !"oid_index", i1 false, i1 false}
!24 = !{!"./lib/oid_registry_data.c", i32 5, i32 29}
!25 = !{ptr @oid_data, !26, !"oid_data", i1 false, i1 false}
!26 = !{!"./lib/oid_registry_data.c", i32 107, i32 28}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i64 2151543137, i64 2151543620, i64 2151543174, i64 2151543230, i64 2151543264, i64 2151543288, i64 2151543329, i64 2151543350, i64 2151543378, i64 2151543412}
!37 = !{i64 2151544715, i64 2151545198, i64 2151544752, i64 2151544808, i64 2151544842, i64 2151544866, i64 2151544907, i64 2151544928, i64 2151544956, i64 2151544990}
