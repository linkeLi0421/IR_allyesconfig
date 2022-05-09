; ModuleID = '/llk/IR_all_yes/drivers/scsi/scsi_common.c_pt.bc'
source_filename = "../drivers/scsi/scsi_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+scsi_command_size_tbl\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_command_size_tbl\09\09\09\09"
module asm "\09.long\09__crc_scsi_command_size_tbl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_command_size_tbl:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_command_size_tbl\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_command_size_tbl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_device_type\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_device_type\09\09\09\09"
module asm "\09.long\09__crc_scsi_device_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_device_type:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_device_type\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_device_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsilun_to_int\22, \22a\22\09"
module asm "\09.weak\09__crc_scsilun_to_int\09\09\09\09"
module asm "\09.long\09__crc_scsilun_to_int\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsilun_to_int:\09\09\09\09\09"
module asm "\09.asciz \09\22scsilun_to_int\22\09\09\09\09\09"
module asm "__kstrtabns_scsilun_to_int:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+int_to_scsilun\22, \22a\22\09"
module asm "\09.weak\09__crc_int_to_scsilun\09\09\09\09"
module asm "\09.long\09__crc_int_to_scsilun\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_int_to_scsilun:\09\09\09\09\09"
module asm "\09.asciz \09\22int_to_scsilun\22\09\09\09\09\09"
module asm "__kstrtabns_int_to_scsilun:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_normalize_sense\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_normalize_sense\09\09\09\09"
module asm "\09.long\09__crc_scsi_normalize_sense\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_normalize_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_normalize_sense\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_normalize_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_sense_desc_find\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_sense_desc_find\09\09\09\09"
module asm "\09.long\09__crc_scsi_sense_desc_find\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_sense_desc_find:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_sense_desc_find\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_sense_desc_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_build_sense_buffer\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_build_sense_buffer\09\09\09\09"
module asm "\09.long\09__crc_scsi_build_sense_buffer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_build_sense_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_build_sense_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_build_sense_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_set_sense_information\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_set_sense_information\09\09\09\09"
module asm "\09.long\09__crc_scsi_set_sense_information\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_set_sense_information:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_set_sense_information\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_set_sense_information:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+scsi_set_sense_field_pointer\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_set_sense_field_pointer\09\09\09\09"
module asm "\09.long\09__crc_scsi_set_sense_field_pointer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_set_sense_field_pointer:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_set_sense_field_pointer\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_set_sense_field_pointer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }

@__UNIQUE_ID_file106 = internal constant [42 x i8] c"scsi_common.file=drivers/scsi/scsi_common\00", section ".modinfo", align 1
@__UNIQUE_ID_license107 = internal constant [27 x i8] c"scsi_common.license=GPL v2\00", section ".modinfo", align 1
@scsi_command_size_tbl = dso_local constant { [8 x i8], [24 x i8] } { [8 x i8] c"\06\0A\0A\0C\10\0C\0A\0A", [24 x i8] zeroinitializer }, align 32
@__kstrtab_scsi_command_size_tbl = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_command_size_tbl = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_command_size_tbl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_command_size_tbl to i32), ptr @__kstrtab_scsi_command_size_tbl, ptr @__kstrtabns_scsi_command_size_tbl }, section "___ksymtab+scsi_command_size_tbl", align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Well-known LUN   \00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No Device        \00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unknown          \00", [46 x i8] zeroinitializer }, align 32
@scsi_device_types = internal constant { [21 x ptr], [44 x i8] } { [21 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], [44 x i8] zeroinitializer }, align 32
@__kstrtab_scsi_device_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_device_type = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_device_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_device_type to i32), ptr @__kstrtab_scsi_device_type, ptr @__kstrtabns_scsi_device_type }, section "___ksymtab+scsi_device_type", align 4
@__kstrtab_scsilun_to_int = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsilun_to_int = external dso_local constant [0 x i8], align 1
@__ksymtab_scsilun_to_int = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsilun_to_int to i32), ptr @__kstrtab_scsilun_to_int, ptr @__kstrtabns_scsilun_to_int }, section "___ksymtab+scsilun_to_int", align 4
@__kstrtab_int_to_scsilun = external dso_local constant [0 x i8], align 1
@__kstrtabns_int_to_scsilun = external dso_local constant [0 x i8], align 1
@__ksymtab_int_to_scsilun = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @int_to_scsilun to i32), ptr @__kstrtab_int_to_scsilun, ptr @__kstrtabns_int_to_scsilun }, section "___ksymtab+int_to_scsilun", align 4
@__kstrtab_scsi_normalize_sense = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_normalize_sense = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_normalize_sense = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_normalize_sense to i32), ptr @__kstrtab_scsi_normalize_sense, ptr @__kstrtabns_scsi_normalize_sense }, section "___ksymtab+scsi_normalize_sense", align 4
@__kstrtab_scsi_sense_desc_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_sense_desc_find = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_sense_desc_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_sense_desc_find to i32), ptr @__kstrtab_scsi_sense_desc_find, ptr @__kstrtabns_scsi_sense_desc_find }, section "___ksymtab+scsi_sense_desc_find", align 4
@__kstrtab_scsi_build_sense_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_build_sense_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_build_sense_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_build_sense_buffer to i32), ptr @__kstrtab_scsi_build_sense_buffer, ptr @__kstrtabns_scsi_build_sense_buffer }, section "___ksymtab+scsi_build_sense_buffer", align 4
@__kstrtab_scsi_set_sense_information = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_set_sense_information = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_set_sense_information = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_set_sense_information to i32), ptr @__kstrtab_scsi_set_sense_information, ptr @__kstrtabns_scsi_set_sense_information }, section "___ksymtab+scsi_set_sense_information", align 4
@__kstrtab_scsi_set_sense_field_pointer = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_set_sense_field_pointer = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_set_sense_field_pointer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_set_sense_field_pointer to i32), ptr @__kstrtab_scsi_set_sense_field_pointer, ptr @__kstrtabns_scsi_set_sense_field_pointer }, section "___ksymtab+scsi_set_sense_field_pointer", align 4
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Direct-Access    \00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Sequential-Access\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Printer          \00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Processor        \00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WORM             \00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CD-ROM           \00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Scanner          \00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Optical Device   \00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Medium Changer   \00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Communications   \00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ASC IT8          \00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RAID             \00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Enclosure        \00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Direct-Access-RBC\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Optical card     \00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Bridge controller\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Object storage   \00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Automation/Drive \00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Security Manager \00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Direct-Access-ZBC\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 30, i64 31]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 7, i64 112, i64 114]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 7, i64 112, i64 114]
@___asan_gen_.25 = private unnamed_addr constant [22 x i8] c"scsi_command_size_tbl\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 17, i32 21 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 57, i32 10 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 59, i32 10 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 61, i32 10 }
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"scsi_device_types\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 26, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 27, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 28, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 29, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 30, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 31, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 32, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 33, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 34, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 35, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 36, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 37, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 39, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 40, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 41, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 42, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 43, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 44, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 45, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 46, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [30 x i8] c"../drivers/scsi/scsi_common.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 47, i32 2 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_file106, ptr @__UNIQUE_ID_license107, ptr @__ksymtab_int_to_scsilun, ptr @__ksymtab_scsi_build_sense_buffer, ptr @__ksymtab_scsi_command_size_tbl, ptr @__ksymtab_scsi_device_type, ptr @__ksymtab_scsi_normalize_sense, ptr @__ksymtab_scsi_sense_desc_find, ptr @__ksymtab_scsi_set_sense_field_pointer, ptr @__ksymtab_scsi_set_sense_information, ptr @__ksymtab_scsilun_to_int, ptr @scsi_command_size_tbl, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @scsi_device_types, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_command_size_tbl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_device_types to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @scsi_device_type(i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.end3 [
    i32 30, label %entry.return_crit_edge
    i32 31, label %if.then2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %type)
  %cmp4 = icmp ugt i32 %type, 20
  br i1 %cmp4, label %if.end3.return_crit_edge, label %if.end6

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [21 x ptr], ptr @scsi_device_types, i32 0, i32 %type
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.end3.return_crit_edge, %if.then2, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str.1, %if.then2 ], [ %2, %if.end6 ], [ @.str, %entry.return_crit_edge ], [ @.str.2, %if.end3.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i64 @scsilun_to_int(ptr nocapture noundef readonly %scsilun) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %scsilun to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %scsilun, align 1
  %conv = zext i8 %1 to i64
  %shl = shl nuw nsw i64 %conv, 8
  %arrayidx3 = getelementptr [8 x i8], ptr %scsilun, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %3 to i64
  %or8 = or i64 %shl, %conv4
  %arrayidx.1 = getelementptr [8 x i8], ptr %scsilun, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %5 to i64
  %shl.1 = shl nuw nsw i64 %conv.1, 24
  %arrayidx3.1 = getelementptr [8 x i8], ptr %scsilun, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3.1, align 1
  %conv4.1 = zext i8 %7 to i64
  %shl7.1 = shl nuw nsw i64 %conv4.1, 16
  %or.1 = or i64 %shl.1, %or8
  %or8.1 = or i64 %or.1, %shl7.1
  %arrayidx.2 = getelementptr [8 x i8], ptr %scsilun, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %9 to i64
  %shl.2 = shl nuw nsw i64 %conv.2, 40
  %arrayidx3.2 = getelementptr [8 x i8], ptr %scsilun, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx3.2, align 1
  %conv4.2 = zext i8 %11 to i64
  %shl7.2 = shl nuw nsw i64 %conv4.2, 32
  %or.2 = or i64 %shl.2, %or8.1
  %or8.2 = or i64 %or.2, %shl7.2
  %arrayidx.3 = getelementptr [8 x i8], ptr %scsilun, i32 0, i32 6
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %13 to i64
  %shl.3 = shl nuw i64 %conv.3, 56
  %arrayidx3.3 = getelementptr [8 x i8], ptr %scsilun, i32 0, i32 7
  %14 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx3.3, align 1
  %conv4.3 = zext i8 %15 to i64
  %shl7.3 = shl nuw nsw i64 %conv4.3, 48
  %or.3 = or i64 %shl.3, %or8.2
  %or8.3 = or i64 %or.3, %shl7.3
  ret i64 %or8.3
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @int_to_scsilun(i64 noundef %lun, ptr nocapture noundef writeonly %scsilun) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i64 %lun, 8
  %conv = trunc i64 %shr to i8
  %0 = ptrtoint ptr %scsilun to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %scsilun, align 1
  %conv3 = trunc i64 %lun to i8
  %arrayidx5 = getelementptr [8 x i8], ptr %scsilun, i32 0, i32 1
  %1 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv3, ptr %arrayidx5, align 1
  %shr6 = lshr i64 %lun, 16
  %shr.1 = lshr i64 %lun, 24
  %conv.1 = trunc i64 %shr.1 to i8
  %arrayidx.1 = getelementptr [8 x i8], ptr %scsilun, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv.1, ptr %arrayidx.1, align 1
  %conv3.1 = trunc i64 %shr6 to i8
  %arrayidx5.1 = getelementptr [8 x i8], ptr %scsilun, i32 0, i32 3
  %3 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3.1, ptr %arrayidx5.1, align 1
  %shr6.1 = lshr i64 %lun, 32
  %shr.2 = lshr i64 %lun, 40
  %conv.2 = trunc i64 %shr.2 to i8
  %arrayidx.2 = getelementptr [8 x i8], ptr %scsilun, i32 0, i32 4
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.2, ptr %arrayidx.2, align 1
  %conv3.2 = trunc i64 %shr6.1 to i8
  %arrayidx5.2 = getelementptr [8 x i8], ptr %scsilun, i32 0, i32 5
  %5 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv3.2, ptr %arrayidx5.2, align 1
  %shr6.2 = lshr i64 %lun, 48
  %shr.3 = lshr i64 %lun, 56
  %conv.3 = trunc i64 %shr.3 to i8
  %arrayidx.3 = getelementptr [8 x i8], ptr %scsilun, i32 0, i32 6
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.3, ptr %arrayidx.3, align 1
  %conv3.3 = trunc i64 %shr6.2 to i8
  %arrayidx5.3 = getelementptr [8 x i8], ptr %scsilun, i32 0, i32 7
  %7 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3.3, ptr %arrayidx5.3, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @scsi_normalize_sense(ptr noundef readonly %sense_buffer, i32 noundef %sb_len, ptr noundef %sshdr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sshdr to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %sshdr, align 1
  %tobool.not = icmp eq ptr %sense_buffer, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sb_len)
  %tobool1.not = icmp eq i32 %sb_len, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sense_buffer, align 1
  %3 = and i8 %2, 127
  %4 = ptrtoint ptr %sshdr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %sshdr, align 1
  %tobool.not.i = icmp ne ptr %sshdr, null
  %5 = and i8 %2, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %5)
  %cmp.i = icmp eq i8 %5, 112
  %or.cond101 = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond101, label %if.end4, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 113, i8 %3)
  %cmp = icmp ugt i8 %3, 113
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sb_len)
  %cmp9 = icmp sgt i32 %sb_len, 1
  br i1 %cmp9, label %if.end16, label %if.then8.return_crit_edge

if.then8.return_crit_edge:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end16:                                         ; preds = %if.then8
  %arrayidx12 = getelementptr i8, ptr %sense_buffer, i32 1
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx12, align 1
  %8 = and i8 %7, 15
  %sense_key = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1
  %9 = ptrtoint ptr %sense_key to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %sense_key, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sb_len)
  %cmp17.not = icmp eq i32 %sb_len, 2
  br i1 %cmp17.not, label %if.end16.return_crit_edge, label %if.end21

if.end16.return_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end21:                                         ; preds = %if.end16
  %arrayidx20 = getelementptr i8, ptr %sense_buffer, i32 2
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx20, align 1
  %asc = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2
  %12 = ptrtoint ptr %asc to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %asc, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sb_len)
  %cmp22 = icmp ugt i32 %sb_len, 3
  br i1 %cmp22, label %if.end26, label %if.end21.return_crit_edge

if.end21.return_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end26:                                         ; preds = %if.end21
  %arrayidx25 = getelementptr i8, ptr %sense_buffer, i32 3
  %13 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx25, align 1
  %ascq = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 3
  %15 = ptrtoint ptr %ascq to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %ascq, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sb_len)
  %cmp27 = icmp ugt i32 %sb_len, 7
  br i1 %cmp27, label %if.then29, label %if.end26.return_crit_edge

if.end26.return_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx30 = getelementptr i8, ptr %sense_buffer, i32 7
  %16 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx30, align 1
  %additional_length = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 7
  %18 = ptrtoint ptr %additional_length to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %additional_length, align 1
  br label %return

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sb_len)
  %cmp32 = icmp sgt i32 %sb_len, 2
  br i1 %cmp32, label %if.end40, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end40:                                         ; preds = %if.else
  %arrayidx35 = getelementptr i8, ptr %sense_buffer, i32 2
  %19 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx35, align 1
  %21 = and i8 %20, 15
  %sense_key39 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1
  %22 = ptrtoint ptr %sense_key39 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %sense_key39, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sb_len)
  %cmp41 = icmp ugt i32 %sb_len, 7
  br i1 %cmp41, label %if.then43, label %if.end40.return_crit_edge

if.end40.return_crit_edge:                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then43:                                        ; preds = %if.end40
  %arrayidx44 = getelementptr i8, ptr %sense_buffer, i32 7
  %23 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %24 to i32
  %add = add nuw nsw i32 %conv45, 8
  %25 = tail call i32 @llvm.umin.i32(i32 %add, i32 %sb_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %25)
  %cmp51 = icmp ugt i32 %25, 12
  br i1 %cmp51, label %if.end56, label %if.then43.return_crit_edge

if.then43.return_crit_edge:                       ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end56:                                         ; preds = %if.then43
  %arrayidx54 = getelementptr i8, ptr %sense_buffer, i32 12
  %26 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx54, align 1
  %asc55 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2
  %28 = ptrtoint ptr %asc55 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %asc55, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %25)
  %cmp57.not = icmp eq i32 %25, 13
  br i1 %cmp57.not, label %if.end56.return_crit_edge, label %if.then59

if.end56.return_crit_edge:                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx60 = getelementptr i8, ptr %sense_buffer, i32 13
  %29 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx60, align 1
  %ascq61 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 3
  %31 = ptrtoint ptr %ascq61 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %ascq61, align 1
  br label %return

return:                                           ; preds = %if.then59, %if.end56.return_crit_edge, %if.then43.return_crit_edge, %if.end40.return_crit_edge, %if.else.return_crit_edge, %if.then29, %if.end26.return_crit_edge, %if.end21.return_crit_edge, %if.end16.return_crit_edge, %if.then8.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ true, %if.end40.return_crit_edge ], [ true, %if.then59 ], [ true, %if.end56.return_crit_edge ], [ true, %if.end26.return_crit_edge ], [ true, %if.then29 ], [ false, %if.end.return_crit_edge ], [ true, %if.end21.return_crit_edge ], [ true, %if.end16.return_crit_edge ], [ true, %if.then8.return_crit_edge ], [ true, %if.else.return_crit_edge ], [ true, %if.then43.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @scsi_sense_desc_find(ptr noundef readonly %sense_buffer, i32 noundef %sb_len, i32 noundef %desc_type) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sb_len)
  %cmp = icmp slt i32 %sb_len, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr i8, ptr %sense_buffer, i32 7
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp1 = icmp eq i8 %1, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sense_buffer, align 1
  %4 = add i8 %3, -116
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %4)
  %5 = icmp ult i8 %4, -2
  br i1 %5, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %sub = add nsw i32 %sb_len, -8
  %6 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1868.not = icmp eq i32 %6, 0
  br i1 %cmp1868.not, label %if.end13.cleanup_crit_edge, label %for.body.lr.ph

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end13
  %arrayidx17 = getelementptr i8, ptr %sense_buffer, i32 8
  %sub20 = add nsw i32 %6, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %descp.071 = phi ptr [ %arrayidx17, %for.body.lr.ph ], [ %add.ptr, %for.inc.for.body_crit_edge ]
  %k.070 = phi i32 [ 0, %for.body.lr.ph ], [ %add39, %for.inc.for.body_crit_edge ]
  %desc_len.069 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %descp.071, i32 %desc_len.069
  call void @__sanitizer_cov_trace_cmp4(i32 %k.070, i32 %sub20)
  %cmp21 = icmp slt i32 %k.070, %sub20
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr, align 1
  %conv30 = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv30, i32 %desc_type)
  %cmp31 = icmp eq i32 %conv30, %desc_type
  br i1 %cmp21, label %cond.end27, label %cond.end27.thread

cond.end27:                                       ; preds = %for.body
  br i1 %cmp31, label %cond.end27.cleanup_crit_edge, label %for.inc

cond.end27.cleanup_crit_edge:                     ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.end27.thread:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %spec.select = select i1 %cmp31, ptr %add.ptr, ptr null
  br label %cleanup

for.inc:                                          ; preds = %cond.end27
  %arrayidx24 = getelementptr i8, ptr %add.ptr, i32 1
  %9 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %10 to i32
  %add = add nuw nsw i32 %conv25, 2
  %add39 = add i32 %add, %k.070
  %cmp18 = icmp slt i32 %add39, %6
  br i1 %cmp18, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %cond.end27.thread, %cond.end27.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %spec.select, %cond.end27.thread ], [ null, %if.end13.cleanup_crit_edge ], [ %add.ptr, %cond.end27.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @scsi_build_sense_buffer(i32 noundef %desc, ptr nocapture noundef writeonly %buf, i8 noundef zeroext %key, i8 noundef zeroext %asc, i8 noundef zeroext %ascq) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %desc)
  %tobool.not = icmp eq i32 %desc, 0
  %. = select i1 %tobool.not, i8 112, i8 114
  %.26 = select i1 %tobool.not, i32 12, i32 1
  %asc.key = select i1 %tobool.not, i8 %asc, i8 %key
  %.27 = select i1 %tobool.not, i32 13, i32 3
  %key.asc = select i1 %tobool.not, i8 %key, i8 %asc
  %.28 = select i1 %tobool.not, i8 10, i8 0
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %., ptr %buf, align 1
  %arrayidx8 = getelementptr i8, ptr %buf, i32 %.26
  %1 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %asc.key, ptr %arrayidx8, align 1
  %arrayidx9 = getelementptr i8, ptr %buf, i32 %.27
  %2 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %ascq, ptr %arrayidx9, align 1
  %3 = getelementptr i8, ptr %buf, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %key.asc, ptr %3, align 1
  %5 = getelementptr i8, ptr %buf, i32 7
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.28, ptr %5, align 1
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_set_sense_information(ptr noundef %buf, i32 noundef %buf_len, i64 noundef %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  %trunc = trunc i8 %1 to i7
  %2 = zext i7 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i7 %trunc, label %entry.return_crit_edge [
    i7 -14, label %if.then
    i7 -16, label %if.then28
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %entry
  %arrayidx2 = getelementptr i8, ptr %buf, i32 7
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp1.i = icmp eq i8 %4, 0
  %5 = add i8 %1, -116
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %5)
  %6 = icmp ult i8 %5, -2
  %or.cond = select i1 %cmp1.i, i1 true, i1 %6
  br i1 %or.cond, label %if.then.if.then4_crit_edge, label %for.body.lr.ph.i

if.then.if.then4_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

for.body.lr.ph.i:                                 ; preds = %if.then
  %arrayidx17.i = getelementptr i8, ptr %buf, i32 8
  %sub20.i = add nsw i32 %conv3, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %descp.071.i = phi ptr [ %arrayidx17.i, %for.body.lr.ph.i ], [ %add.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %k.070.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add39.i, %for.inc.i.for.body.i_crit_edge ]
  %desc_len.069.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %descp.071.i, i32 %desc_len.069.i
  call void @__sanitizer_cov_trace_cmp4(i32 %k.070.i, i32 %sub20.i)
  %cmp21.i = icmp slt i32 %k.070.i, %sub20.i
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr.i, align 1
  br i1 %cmp21.i, label %cond.end27.i, label %cond.end27.thread.i

cond.end27.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp31.i = icmp eq i8 %8, 0
  br i1 %cmp31.i, label %scsi_sense_desc_find.exit, label %for.inc.i

cond.end27.thread.i:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp3162.i = icmp ne i8 %8, 0
  %tobool.not = icmp eq ptr %add.ptr.i, null
  %or.cond67 = or i1 %cmp3162.i, %tobool.not
  br i1 %or.cond67, label %cond.end27.thread.i.if.then4_crit_edge, label %cond.end27.thread.i.if.end_crit_edge

cond.end27.thread.i.if.end_crit_edge:             ; preds = %cond.end27.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cond.end27.thread.i.if.then4_crit_edge:           ; preds = %cond.end27.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

for.inc.i:                                        ; preds = %cond.end27.i
  %arrayidx24.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %9 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx24.i, align 1
  %conv25.i = zext i8 %10 to i32
  %add.i = add nuw nsw i32 %conv25.i, 2
  %add39.i = add i32 %add.i, %k.070.i
  %cmp18.i = icmp slt i32 %add39.i, %conv3
  br i1 %cmp18.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.then4_crit_edge

for.inc.i.if.then4_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

scsi_sense_desc_find.exit:                        ; preds = %cond.end27.i
  %tobool.not.old = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.old, label %scsi_sense_desc_find.exit.if.then4_crit_edge, label %scsi_sense_desc_find.exit.if.end_crit_edge

scsi_sense_desc_find.exit.if.end_crit_edge:       ; preds = %scsi_sense_desc_find.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

scsi_sense_desc_find.exit.if.then4_crit_edge:     ; preds = %scsi_sense_desc_find.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4:                                         ; preds = %scsi_sense_desc_find.exit.if.then4_crit_edge, %for.inc.i.if.then4_crit_edge, %cond.end27.thread.i.if.then4_crit_edge, %if.then.if.then4_crit_edge
  %add6 = add i8 %4, 12
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %add6, ptr %arrayidx2, align 1
  %add.ptr = getelementptr i8, ptr %buf, i32 8
  %add.ptr10 = getelementptr i8, ptr %add.ptr, i32 %conv3
  br label %if.end

if.end:                                           ; preds = %if.then4, %scsi_sense_desc_find.exit.if.end_crit_edge, %cond.end27.thread.i.if.end_crit_edge
  %ucp.0 = phi ptr [ %add.ptr.i, %scsi_sense_desc_find.exit.if.end_crit_edge ], [ %add.ptr10, %if.then4 ], [ %add.ptr.i, %cond.end27.thread.i.if.end_crit_edge ]
  %add12 = add nuw nsw i32 %conv3, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add12, i32 %buf_len)
  %cmp13 = icmp sgt i32 %add12, %buf_len
  br i1 %cmp13, label %if.end.return_crit_edge, label %cleanup.thread

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

cleanup.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %ucp.0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %ucp.0, align 1
  %arrayidx18 = getelementptr i8, ptr %ucp.0, i32 1
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 10, ptr %arrayidx18, align 1
  %arrayidx19 = getelementptr i8, ptr %ucp.0, i32 2
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -128, ptr %arrayidx19, align 1
  %arrayidx20 = getelementptr i8, ptr %ucp.0, i32 3
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx20, align 1
  %arrayidx21 = getelementptr i8, ptr %ucp.0, i32 4
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %info, ptr %arrayidx21, align 1
  br label %return

if.then28:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %info)
  %cmp29 = icmp ult i64 %info, 4294967296
  %or = or i8 %1, -128
  %storemerge = select i1 %cmp29, i8 %or, i8 112
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %storemerge, ptr %buf, align 1
  %conv41 = trunc i64 %info to i32
  %arrayidx42 = getelementptr i8, ptr %buf, i32 3
  %18 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %conv41, ptr %arrayidx42, align 1
  br label %return

return:                                           ; preds = %if.then28, %cleanup.thread, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ -22, %if.end.return_crit_edge ], [ 0, %cleanup.thread ], [ 0, %entry.return_crit_edge ], [ 0, %if.then28 ]
  ret i32 %retval.1
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_set_sense_field_pointer(ptr noundef %buf, i32 noundef %buf_len, i16 noundef zeroext %fp, i8 noundef zeroext %bp, i1 noundef zeroext %cd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  %trunc = trunc i8 %1 to i7
  %2 = zext i7 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.24)
  switch i7 %trunc, label %entry.cleanup_crit_edge [
    i7 -14, label %if.then
    i7 -16, label %if.then43
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %arrayidx2 = getelementptr i8, ptr %buf, i32 7
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %4 to i32
  %add = add nuw nsw i32 %conv3, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp1.i = icmp eq i8 %4, 0
  %5 = add i8 %1, -116
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %5)
  %6 = icmp ult i8 %5, -2
  %or.cond = select i1 %cmp1.i, i1 true, i1 %6
  br i1 %or.cond, label %if.then.if.then4_crit_edge, label %for.body.lr.ph.i

if.then.if.then4_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

for.body.lr.ph.i:                                 ; preds = %if.then
  %arrayidx17.i = getelementptr i8, ptr %buf, i32 8
  %sub20.i = add nsw i32 %conv3, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %descp.071.i = phi ptr [ %arrayidx17.i, %for.body.lr.ph.i ], [ %add.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %k.070.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add39.i, %for.inc.i.for.body.i_crit_edge ]
  %desc_len.069.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %descp.071.i, i32 %desc_len.069.i
  call void @__sanitizer_cov_trace_cmp4(i32 %k.070.i, i32 %sub20.i)
  %cmp21.i = icmp slt i32 %k.070.i, %sub20.i
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr.i, align 1
  br i1 %cmp21.i, label %cond.end27.i, label %cond.end27.thread.i

cond.end27.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp31.i = icmp eq i8 %8, 2
  br i1 %cmp31.i, label %scsi_sense_desc_find.exit, label %for.inc.i

cond.end27.thread.i:                              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp3162.i = icmp ne i8 %8, 2
  %tobool.not = icmp eq ptr %add.ptr.i, null
  %or.cond107 = or i1 %cmp3162.i, %tobool.not
  br i1 %or.cond107, label %cond.end27.thread.i.if.then4_crit_edge, label %cond.end27.thread.i.if.end_crit_edge

cond.end27.thread.i.if.end_crit_edge:             ; preds = %cond.end27.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cond.end27.thread.i.if.then4_crit_edge:           ; preds = %cond.end27.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

for.inc.i:                                        ; preds = %cond.end27.i
  %arrayidx24.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %9 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx24.i, align 1
  %conv25.i = zext i8 %10 to i32
  %add.i = add nuw nsw i32 %conv25.i, 2
  %add39.i = add i32 %add.i, %k.070.i
  %cmp18.i = icmp slt i32 %add39.i, %conv3
  br i1 %cmp18.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.then4_crit_edge

for.inc.i.if.then4_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

scsi_sense_desc_find.exit:                        ; preds = %cond.end27.i
  %tobool.not.old = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.old, label %scsi_sense_desc_find.exit.if.then4_crit_edge, label %scsi_sense_desc_find.exit.if.end_crit_edge

scsi_sense_desc_find.exit.if.end_crit_edge:       ; preds = %scsi_sense_desc_find.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

scsi_sense_desc_find.exit.if.then4_crit_edge:     ; preds = %scsi_sense_desc_find.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4:                                         ; preds = %scsi_sense_desc_find.exit.if.then4_crit_edge, %for.inc.i.if.then4_crit_edge, %cond.end27.thread.i.if.then4_crit_edge, %if.then.if.then4_crit_edge
  %conv7 = trunc i32 %add to i8
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv7, ptr %arrayidx2, align 1
  %add.ptr = getelementptr i8, ptr %buf, i32 8
  %add.ptr10 = getelementptr i8, ptr %add.ptr, i32 %conv3
  br label %if.end

if.end:                                           ; preds = %if.then4, %scsi_sense_desc_find.exit.if.end_crit_edge, %cond.end27.thread.i.if.end_crit_edge
  %ucp.0 = phi ptr [ %add.ptr.i, %scsi_sense_desc_find.exit.if.end_crit_edge ], [ %add.ptr10, %if.then4 ], [ %add.ptr.i, %cond.end27.thread.i.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %buf_len)
  %cmp13 = icmp sgt i32 %add, %buf_len
  br i1 %cmp13, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %ucp.0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %ucp.0, align 1
  %arrayidx18 = getelementptr i8, ptr %ucp.0, i32 1
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 6, ptr %arrayidx18, align 1
  %arrayidx19 = getelementptr i8, ptr %ucp.0, i32 4
  %spec.select = select i1 %cd, i8 -64, i8 -128
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %bp)
  %cmp27 = icmp ult i8 %bp, 8
  %14 = or i8 %spec.select, %bp
  %or34101 = or i8 %14, 8
  %storemerge108 = select i1 %cmp27, i8 %or34101, i8 %spec.select
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %storemerge108, ptr %arrayidx19, align 1
  %arrayidx37 = getelementptr i8, ptr %ucp.0, i32 5
  br label %cleanup.sink.split

if.then43:                                        ; preds = %entry
  %arrayidx44 = getelementptr i8, ptr %buf, i32 7
  %16 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %17)
  %cmp46 = icmp ult i8 %17, 18
  br i1 %cmp46, label %if.then48, label %if.then43.if.end50_crit_edge

if.then43.if.end50_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then48:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 18, ptr %arrayidx44, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.then43.if.end50_crit_edge
  %arrayidx51 = getelementptr i8, ptr %buf, i32 15
  %spec.select103 = select i1 %cd, i8 -64, i8 -128
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %bp)
  %cmp60 = icmp ult i8 %bp, 8
  %19 = or i8 %spec.select103, %bp
  %or67100 = or i8 %19, 8
  %storemerge = select i1 %cmp60, i8 %or67100, i8 %spec.select103
  %20 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %storemerge, ptr %arrayidx51, align 1
  %arrayidx70 = getelementptr i8, ptr %buf, i32 16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end50, %if.end16
  %arrayidx37.sink = phi ptr [ %arrayidx37, %if.end16 ], [ %arrayidx70, %if.end50 ]
  %21 = ptrtoint ptr %arrayidx37.sink to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %fp, ptr %arrayidx37.sink, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__UNIQUE_ID_file106, !1, !"__UNIQUE_ID_file106", i1 false, i1 false}
!1 = !{!"../drivers/scsi/scsi_common.c", i32 14, i32 1}
!2 = !{ptr @__UNIQUE_ID_license107, !1, !"__UNIQUE_ID_license107", i1 false, i1 false}
!3 = !{ptr @scsi_command_size_tbl, !4, !"scsi_command_size_tbl", i1 false, i1 false}
!4 = !{!"../drivers/scsi/scsi_common.c", i32 17, i32 21}
!5 = !{ptr @__ksymtab_scsi_command_size_tbl, !6, !"__ksymtab_scsi_command_size_tbl", i1 false, i1 false}
!6 = !{!"../drivers/scsi/scsi_common.c", i32 20, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/scsi/scsi_common.c", i32 57, i32 10}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/scsi/scsi_common.c", i32 59, i32 10}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/scsi/scsi_common.c", i32 61, i32 10}
!13 = !{ptr @__ksymtab_scsi_device_type, !14, !"__ksymtab_scsi_device_type", i1 false, i1 false}
!14 = !{!"../drivers/scsi/scsi_common.c", i32 64, i32 1}
!15 = !{ptr @__ksymtab_scsilun_to_int, !16, !"__ksymtab_scsilun_to_int", i1 false, i1 false}
!16 = !{!"../drivers/scsi/scsi_common.c", i32 97, i32 1}
!17 = !{ptr @__ksymtab_int_to_scsilun, !18, !"__ksymtab_int_to_scsilun", i1 false, i1 false}
!18 = !{!"../drivers/scsi/scsi_common.c", i32 126, i32 1}
!19 = !{ptr @__ksymtab_scsi_normalize_sense, !20, !"__ksymtab_scsi_normalize_sense", i1 false, i1 false}
!20 = !{!"../drivers/scsi/scsi_common.c", i32 190, i32 1}
!21 = !{ptr @__ksymtab_scsi_sense_desc_find, !22, !"__ksymtab_scsi_sense_desc_find", i1 false, i1 false}
!22 = !{!"../drivers/scsi/scsi_common.c", i32 229, i32 1}
!23 = !{ptr @__ksymtab_scsi_build_sense_buffer, !24, !"__ksymtab_scsi_build_sense_buffer", i1 false, i1 false}
!24 = !{!"../drivers/scsi/scsi_common.c", i32 257, i32 1}
!25 = !{ptr @__ksymtab_scsi_set_sense_information, !26, !"__ksymtab_scsi_set_sense_information", i1 false, i1 false}
!26 = !{!"../drivers/scsi/scsi_common.c", i32 305, i32 1}
!27 = !{ptr @__ksymtab_scsi_set_sense_field_pointer, !28, !"__ksymtab_scsi_set_sense_field_pointer", i1 false, i1 false}
!28 = !{!"../drivers/scsi/scsi_common.c", i32 358, i32 1}
!29 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/scsi_common.c", i32 27, i32 2}
!31 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/scsi_common.c", i32 28, i32 2}
!33 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/scsi_common.c", i32 29, i32 2}
!35 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/scsi_common.c", i32 30, i32 2}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/scsi_common.c", i32 31, i32 2}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/scsi_common.c", i32 32, i32 2}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/scsi_common.c", i32 33, i32 2}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/scsi_common.c", i32 34, i32 2}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/scsi_common.c", i32 35, i32 2}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/scsi_common.c", i32 36, i32 2}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/scsi_common.c", i32 37, i32 2}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/scsi_common.c", i32 39, i32 2}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/scsi_common.c", i32 40, i32 2}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/scsi_common.c", i32 41, i32 2}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/scsi_common.c", i32 42, i32 2}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/scsi_common.c", i32 43, i32 2}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/scsi_common.c", i32 44, i32 2}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/scsi_common.c", i32 45, i32 2}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/scsi_common.c", i32 46, i32 2}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/scsi_common.c", i32 47, i32 2}
!69 = !{ptr @scsi_device_types, !70, !"scsi_device_types", i1 false, i1 false}
!70 = !{!"../drivers/scsi/scsi_common.c", i32 26, i32 26}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
