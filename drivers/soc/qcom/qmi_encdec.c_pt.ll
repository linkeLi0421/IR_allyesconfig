; ModuleID = '/llk/IR_all_yes/drivers/soc/qcom/qmi_encdec.c_pt.bc'
source_filename = "../drivers/soc/qcom/qmi_encdec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+qmi_encode_message\22, \22a\22\09"
module asm "\09.weak\09__crc_qmi_encode_message\09\09\09\09"
module asm "\09.long\09__crc_qmi_encode_message\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qmi_encode_message:\09\09\09\09\09"
module asm "\09.asciz \09\22qmi_encode_message\22\09\09\09\09\09"
module asm "__kstrtabns_qmi_encode_message:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+qmi_decode_message\22, \22a\22\09"
module asm "\09.weak\09__crc_qmi_decode_message\09\09\09\09"
module asm "\09.long\09__crc_qmi_decode_message\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qmi_decode_message:\09\09\09\09\09"
module asm "\09.asciz \09\22qmi_decode_message\22\09\09\09\09\09"
module asm "__kstrtabns_qmi_decode_message:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+qmi_response_type_v01_ei\22, \22a\22\09"
module asm "\09.weak\09__crc_qmi_response_type_v01_ei\09\09\09\09"
module asm "\09.long\09__crc_qmi_response_type_v01_ei\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qmi_response_type_v01_ei:\09\09\09\09\09"
module asm "\09.asciz \09\22qmi_response_type_v01_ei\22\09\09\09\09\09"
module asm "__kstrtabns_qmi_response_type_v01_ei:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.qmi_elem_info = type { i32, i32, i32, i32, i8, i32, ptr }
%struct.qmi_header = type <{ i8, i16, i16, i16 }>

@qmi_encode_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: Calc. len %d != 0, but NULL c_struct\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qmi_encode_message\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/soc/qcom/qmi_encdec.c\00", [34 x i8] zeroinitializer }, align 32
@qmi_encode_message._entry_ptr = internal global ptr @qmi_encode_message._entry, section ".printk_index", align 4
@__kstrtab_qmi_encode_message = external dso_local constant [0 x i8], align 1
@__kstrtabns_qmi_encode_message = external dso_local constant [0 x i8], align 1
@__ksymtab_qmi_encode_message = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qmi_encode_message to i32), ptr @__kstrtab_qmi_encode_message, ptr @__kstrtabns_qmi_encode_message }, section "___ksymtab+qmi_encode_message", align 4
@__kstrtab_qmi_decode_message = external dso_local constant [0 x i8], align 1
@__kstrtabns_qmi_decode_message = external dso_local constant [0 x i8], align 1
@__ksymtab_qmi_decode_message = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qmi_decode_message to i32), ptr @__kstrtab_qmi_decode_message, ptr @__kstrtabns_qmi_decode_message }, section "___ksymtab+qmi_decode_message", align 4
@qmi_response_type_v01_ei = dso_local global { [3 x %struct.qmi_elem_info], [44 x i8] } { [3 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 7, i32 1, i32 2, i32 0, i8 0, i32 0, ptr null }, %struct.qmi_elem_info { i32 7, i32 1, i32 2, i32 0, i8 0, i32 2, ptr null }, %struct.qmi_elem_info zeroinitializer], [44 x i8] zeroinitializer }, align 32
@__kstrtab_qmi_response_type_v01_ei = external dso_local constant [0 x i8], align 1
@__kstrtabns_qmi_response_type_v01_ei = external dso_local constant [0 x i8], align 1
@__ksymtab_qmi_response_type_v01_ei = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qmi_response_type_v01_ei to i32), ptr @__kstrtab_qmi_response_type_v01_ei, ptr @__kstrtabns_qmi_response_type_v01_ei }, section "___ksymtab+qmi_response_type_v01_ei", align 4
@__UNIQUE_ID_description179 = internal constant [51 x i8] c"qmi_helpers.description=QMI encoder/decoder helper\00", section ".modinfo", align 1
@__UNIQUE_ID_file180 = internal constant [46 x i8] c"qmi_helpers.file=drivers/soc/qcom/qmi_helpers\00", section ".modinfo", align 1
@__UNIQUE_ID_license181 = internal constant [27 x i8] c"qmi_helpers.license=GPL v2\00", section ".modinfo", align 1
@qmi_encode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: Invalid data length\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qmi_encode\00", [21 x i8] zeroinitializer }, align 32
@qmi_encode._entry_ptr = internal global ptr @qmi_encode._entry, section ".printk_index", align 4
@qmi_encode._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Too Small Buffer @DATA_LEN\0A\00", [62 x i8] zeroinitializer }, align 32
@qmi_encode._entry_ptr.7 = internal global ptr @qmi_encode._entry.5, section ".printk_index", align 4
@qmi_encode._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Too Small Buffer @data_type:%d\0A\00", [58 x i8] zeroinitializer }, align 32
@qmi_encode._entry_ptr.10 = internal global ptr @qmi_encode._entry.8, section ".printk_index", align 4
@qmi_encode._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: Unrecognized data type\0A\00", [34 x i8] zeroinitializer }, align 32
@qmi_encode._entry_ptr.13 = internal global ptr @qmi_encode._entry.11, section ".printk_index", align 4
@qmi_encode_struct_elem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: STRUCT Encode failure\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qmi_encode_struct_elem\00", [41 x i8] zeroinitializer }, align 32
@qmi_encode_struct_elem._entry_ptr = internal global ptr @qmi_encode_struct_elem._entry, section ".printk_index", align 4
@qmi_encode_string_elem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: String to be encoded is longer - %d > %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qmi_encode_string_elem\00", [41 x i8] zeroinitializer }, align 32
@qmi_encode_string_elem._entry_ptr = internal global ptr @qmi_encode_string_elem._entry, section ".printk_index", align 4
@qmi_encode_string_elem._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Output len %d > Out Buf len %d\0A\00", [58 x i8] zeroinitializer }, align 32
@qmi_encode_string_elem._entry_ptr.20 = internal global ptr @qmi_encode_string_elem._entry.18, section ".printk_index", align 4
@qmi_encode_string_elem._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qmi_encode_string_elem._entry_ptr.22 = internal global ptr @qmi_encode_string_elem._entry.21, section ".printk_index", align 4
@qmi_decode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: Inval element info\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qmi_decode\00", [21 x i8] zeroinitializer }, align 32
@qmi_decode._entry_ptr = internal global ptr @qmi_decode._entry, section ".printk_index", align 4
@qmi_decode._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Data len %d > max spec %d\0A\00", [63 x i8] zeroinitializer }, align 32
@qmi_decode._entry_ptr.27 = internal global ptr @qmi_decode._entry.25, section ".printk_index", align 4
@qmi_decode._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.24, ptr @.str.2, i32 695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qmi_decode._entry_ptr.29 = internal global ptr @qmi_decode._entry.28, section ".printk_index", align 4
@qmi_decode_struct_elem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013%s: Fault in decoding: dl(%d), db(%d), tl(%d), i(%d), el(%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qmi_decode_struct_elem\00", [41 x i8] zeroinitializer }, align 32
@qmi_decode_struct_elem._entry_ptr = internal global ptr @qmi_decode_struct_elem._entry, section ".printk_index", align 4
@qmi_decode_string_elem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: String len %d > Max Len %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qmi_decode_string_elem\00", [41 x i8] zeroinitializer }, align 32
@qmi_decode_string_elem._entry_ptr = internal global ptr @qmi_decode_string_elem._entry, section ".printk_index", align 4
@qmi_decode_string_elem._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: String len %d > Input Buffer Len %d\0A\00", [53 x i8] zeroinitializer }, align 32
@qmi_decode_string_elem._entry_ptr.36 = internal global ptr @qmi_decode_string_elem._entry.34, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 9, i64 10]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.38 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.40 = internal global [10 x i64] [i64 8, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 728, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant [25 x i8] c"qmi_response_type_v01_ei\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 784, i32 22 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 326, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 347, i32 5 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 372, i32 5 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 407, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 209, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 250, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 258, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 264, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 620, i32 5 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 659, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 695, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 491, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 538, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private constant [33 x i8] c"../drivers/soc/qcom/qmi_encdec.c\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 542, i32 3 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_description179, ptr @__UNIQUE_ID_file180, ptr @__UNIQUE_ID_license181, ptr @__ksymtab_qmi_decode_message, ptr @__ksymtab_qmi_encode_message, ptr @__ksymtab_qmi_response_type_v01_ei, ptr @qmi_decode._entry, ptr @qmi_decode._entry.25, ptr @qmi_decode._entry.28, ptr @qmi_decode._entry_ptr, ptr @qmi_decode._entry_ptr.27, ptr @qmi_decode._entry_ptr.29, ptr @qmi_decode_string_elem._entry, ptr @qmi_decode_string_elem._entry.34, ptr @qmi_decode_string_elem._entry_ptr, ptr @qmi_decode_string_elem._entry_ptr.36, ptr @qmi_decode_struct_elem._entry, ptr @qmi_decode_struct_elem._entry_ptr, ptr @qmi_encode._entry, ptr @qmi_encode._entry.11, ptr @qmi_encode._entry.5, ptr @qmi_encode._entry.8, ptr @qmi_encode._entry_ptr, ptr @qmi_encode._entry_ptr.10, ptr @qmi_encode._entry_ptr.13, ptr @qmi_encode._entry_ptr.7, ptr @qmi_encode_message._entry, ptr @qmi_encode_message._entry_ptr, ptr @qmi_encode_string_elem._entry, ptr @qmi_encode_string_elem._entry.18, ptr @qmi_encode_string_elem._entry.21, ptr @qmi_encode_string_elem._entry_ptr, ptr @qmi_encode_string_elem._entry_ptr.20, ptr @qmi_encode_string_elem._entry_ptr.22, ptr @qmi_encode_struct_elem._entry, ptr @qmi_encode_struct_elem._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @qmi_response_type_v01_ei, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_encode_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_response_type_v01_ei to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_encode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_encode._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_encode._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_encode._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_encode_struct_elem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_encode_string_elem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_encode_string_elem._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_encode_string_elem._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_decode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_decode._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_decode._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_decode_struct_elem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_decode_string_elem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_decode_string_elem._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qmi_encode_message(i32 noundef %type, i32 noundef %msg_id, ptr nocapture noundef %len, i32 noundef %txn_id, ptr noundef %ei, ptr noundef readonly %c_struct) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %c_struct, null
  br i1 %tobool.not, label %if.then, label %entry.if.end8.i.i_crit_edge

entry.if.end8.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @qmi_calc_min_msg_len(ptr noundef %ei, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end8.i.i_crit_edge, label %do.end

if.then.if.end8.i.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call) #10
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.then.if.end8.i.i_crit_edge, %entry.if.end8.i.i_crit_edge
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %add = add i32 %1, 7
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #11
  %tobool7.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool7.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end10

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end8.i.i
  br i1 %tobool.not, label %if.end10.if.end17_crit_edge, label %if.then12

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then12:                                        ; preds = %if.end10
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 7
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %call13 = tail call fastcc i32 @qmi_encode(ptr noundef %ei, ptr noundef %add.ptr, ptr noundef nonnull %c_struct, i32 noundef %3, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.then14, label %if.then12.if.end17_crit_edge

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #7
  %4 = inttoptr i32 %call13 to ptr
  br label %cleanup

if.end17:                                         ; preds = %if.then12.if.end17_crit_edge, %if.end10.if.end17_crit_edge
  %msglen.0 = phi i32 [ %call13, %if.then12.if.end17_crit_edge ], [ 0, %if.end10.if.end17_crit_edge ]
  %conv = trunc i32 %type to i8
  %5 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %call9.i.i, align 128
  %conv19 = trunc i32 %txn_id to i16
  %txn_id20 = getelementptr inbounds %struct.qmi_header, ptr %call9.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %txn_id20 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %conv19, ptr %txn_id20, align 1
  %conv21 = trunc i32 %msg_id to i16
  %msg_id22 = getelementptr inbounds %struct.qmi_header, ptr %call9.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %msg_id22 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %conv21, ptr %msg_id22, align 1
  %conv23 = trunc i32 %msglen.0 to i16
  %msg_len = getelementptr inbounds %struct.qmi_header, ptr %call9.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %msg_len to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %conv23, ptr %msg_len, align 1
  %add24 = add nuw i32 %msglen.0, 7
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add24, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then14, %if.end8.i.i.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %4, %if.then14 ], [ %call9.i.i, %if.end17 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qmi_calc_min_msg_len(ptr noundef readonly %ei_array, i32 noundef %level) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ei_array, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %level)
  %cmp.i = icmp sgt i32 %level, 1
  %add13 = add i32 %level, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %level)
  %cmp40 = icmp eq i32 %level, 1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %while.cond.preheader
  %min_msg_len.0.ph = phi i32 [ 0, %while.cond.preheader ], [ %min_msg_len.0.ph.be, %while.cond.outer.backedge ]
  %temp_ei.0.ph = phi ptr [ %ei_array, %while.cond.preheader ], [ %temp_ei.0.ph.be, %while.cond.outer.backedge ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.outer
  %temp_ei.0 = phi ptr [ %temp_ei.0.ph, %while.cond.outer ], [ %temp_ei.0.be, %while.cond.backedge ]
  %0 = ptrtoint ptr %temp_ei.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %temp_ei.0, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.else31 [
    i32 0, label %while.cond.cleanup_crit_edge
    i32 1, label %if.then3
    i32 2, label %if.then7
    i32 9, label %if.then11
    i32 10, label %if.then20
  ]

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %while.cond
  br i1 %cmp.i, label %if.then.i, label %if.then3.do.body.i_crit_edge

if.then3.do.body.i_crit_edge:                     ; preds = %if.then3
  br label %do.body.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr %struct.qmi_elem_info, ptr %temp_ei.0, i32 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.body.i.while.cond.backedge_crit_edge, %if.then.i
  %temp_ei.0.be = phi ptr [ %add.ptr.i, %if.then.i ], [ %add.ptr2.i, %do.body.i.while.cond.backedge_crit_edge ]
  br label %while.cond

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then3.do.body.i_crit_edge
  %temp_ei.0.i = phi ptr [ %add.ptr2.i, %do.body.i.do.body.i_crit_edge ], [ %temp_ei.0, %if.then3.do.body.i_crit_edge ]
  %tlv_type1.i = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.0.i, i32 0, i32 4
  %3 = ptrtoint ptr %tlv_type1.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tlv_type1.i, align 4
  %add.ptr2.i = getelementptr %struct.qmi_elem_info, ptr %temp_ei.0.i, i32 1
  %tlv_type3.i = getelementptr %struct.qmi_elem_info, ptr %temp_ei.0.i, i32 1, i32 4
  %5 = ptrtoint ptr %tlv_type3.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tlv_type3.i, align 4
  %cmp5.i = icmp eq i8 %4, %6
  br i1 %cmp5.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.while.cond.backedge_crit_edge

do.body.i.while.cond.backedge_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.then7:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %elem_size = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.0, i32 0, i32 2
  %7 = ptrtoint ptr %elem_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %elem_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp8 = icmp eq i32 %8, 1
  %cond = select i1 %cmp8, i32 1, i32 2
  %add = add i32 %cond, %min_msg_len.0.ph
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.end39, %if.then7
  %min_msg_len.0.ph.be = phi i32 [ %spec.select, %if.end39 ], [ %add, %if.then7 ]
  %temp_ei.0.ph.be = getelementptr %struct.qmi_elem_info, ptr %temp_ei.0, i32 1
  br label %while.cond.outer

if.then11:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %ei_array12 = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.0, i32 0, i32 6
  %9 = ptrtoint ptr %ei_array12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ei_array12, align 4
  %call14 = tail call fastcc i32 @qmi_calc_min_msg_len(ptr noundef %10, i32 noundef %add13)
  %add15 = add i32 %call14, %min_msg_len.0.ph
  br label %if.end39

if.then20:                                        ; preds = %while.cond
  br i1 %cmp.i, label %if.then22, label %if.then20.if.end26_crit_edge

if.then20.if.end26_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then22:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %elem_len = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.0, i32 0, i32 1
  %11 = ptrtoint ptr %elem_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %elem_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %12)
  %cmp23 = icmp ult i32 %12, 256
  %cond24 = select i1 %cmp23, i32 1, i32 2
  %add25 = add i32 %cond24, %min_msg_len.0.ph
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.then20.if.end26_crit_edge
  %min_msg_len.1 = phi i32 [ %add25, %if.then22 ], [ %min_msg_len.0.ph, %if.then20.if.end26_crit_edge ]
  %elem_len27 = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.0, i32 0, i32 1
  %13 = ptrtoint ptr %elem_len27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %elem_len27, align 4
  %elem_size28 = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.0, i32 0, i32 2
  %15 = ptrtoint ptr %elem_size28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %elem_size28, align 4
  %mul = mul i32 %16, %14
  %add29 = add i32 %mul, %min_msg_len.1
  br label %if.end39

if.else31:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %elem_len32 = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.0, i32 0, i32 1
  %17 = ptrtoint ptr %elem_len32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %elem_len32, align 4
  %elem_size33 = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.0, i32 0, i32 2
  %19 = ptrtoint ptr %elem_size33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %elem_size33, align 4
  %mul34 = mul i32 %20, %18
  %add35 = add i32 %mul34, %min_msg_len.0.ph
  br label %if.end39

if.end39:                                         ; preds = %if.else31, %if.end26, %if.then11
  %min_msg_len.2 = phi i32 [ %add15, %if.then11 ], [ %add29, %if.end26 ], [ %add35, %if.else31 ]
  %add42 = add i32 %min_msg_len.2, 3
  %spec.select = select i1 %cmp40, i32 %add42, i32 %min_msg_len.2
  br label %while.cond.outer.backedge

cleanup:                                          ; preds = %while.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %min_msg_len.0.ph, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qmi_encode(ptr noundef readonly %ei_array, ptr nocapture noundef writeonly %out_buf, ptr nocapture noundef readonly %in_c_struct, i32 noundef %out_buf_len, i32 noundef %enc_level) unnamed_addr #0 align 64 {
entry:
  %string_len.i = alloca i32, align 4
  %data_len_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_len_value)
  %0 = ptrtoint ptr %data_len_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %data_len_value, align 4
  %tobool.not = icmp eq ptr %ei_array, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %enc_level)
  %cmp = icmp eq i32 %enc_level, 1
  %1 = ptrtoint ptr %ei_array to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ei_array, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp3.not295 = icmp eq i32 %2, 0
  br i1 %cmp3.not295, label %if.end.cleanup_crit_edge, label %while.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %spec.select.idx = select i1 %cmp, i32 3, i32 0
  %spec.select = getelementptr i8, ptr %out_buf, i32 %spec.select.idx
  %add77 = add i32 %enc_level, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %enc_level)
  %cmp.i221 = icmp sgt i32 %enc_level, 1
  br label %while.body

while.body:                                       ; preds = %if.end120.while.body_crit_edge, %while.body.lr.ph
  %temp_ei.0306 = phi ptr [ %ei_array, %while.body.lr.ph ], [ %temp_ei.1268, %if.end120.while.body_crit_edge ]
  %buf_dst.1302 = phi ptr [ %spec.select, %while.body.lr.ph ], [ %buf_dst.3, %if.end120.while.body_crit_edge ]
  %encode_tlv.0301 = phi i32 [ 0, %while.body.lr.ph ], [ %encode_tlv.2, %if.end120.while.body_crit_edge ]
  %encoded_bytes.0299 = phi i32 [ 0, %while.body.lr.ph ], [ %encoded_bytes.2, %if.end120.while.body_crit_edge ]
  %tlv_len.0298 = phi i32 [ 0, %while.body.lr.ph ], [ %tlv_len.2, %if.end120.while.body_crit_edge ]
  %tlv_pointer.0296 = phi ptr [ %out_buf, %while.body.lr.ph ], [ %tlv_pointer.1, %if.end120.while.body_crit_edge ]
  %offset = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.0306, i32 0, i32 5
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset, align 4
  %add.ptr4 = getelementptr i8, ptr %in_c_struct, i32 %4
  %tlv_type5 = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.0306, i32 0, i32 4
  %5 = ptrtoint ptr %tlv_type5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tlv_type5, align 4
  %array_type = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.0306, i32 0, i32 3
  %7 = ptrtoint ptr %array_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %array_type, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %8, label %if.else11 [
    i32 0, label %if.then7
    i32 1, label %if.then10
  ]

if.then7:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %data_len_value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %data_len_value, align 4
  br label %if.end18

if.then10:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %elem_len = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.0306, i32 0, i32 1
  %11 = ptrtoint ptr %elem_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %elem_len, align 4
  %13 = ptrtoint ptr %data_len_value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %data_len_value, align 4
  br label %if.end18

if.else11:                                        ; preds = %while.body
  %14 = ptrtoint ptr %data_len_value to i32
  call void @__asan_load4_noabort(i32 %14)
  %data_len_value.0.data_len_value.0.data_len_value.0. = load i32, ptr %data_len_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len_value.0.data_len_value.0.data_len_value.0.)
  %cmp12 = icmp eq i32 %data_len_value.0.data_len_value.0.data_len_value.0., 0
  br i1 %cmp12, label %if.else11.do.end_crit_edge, label %lor.lhs.false

if.else11.do.end_crit_edge:                       ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %if.else11
  %elem_len13 = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.0306, i32 0, i32 1
  %15 = ptrtoint ptr %elem_len13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %elem_len13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %data_len_value.0.data_len_value.0.data_len_value.0.)
  %cmp14 = icmp ult i32 %16, %data_len_value.0.data_len_value.0.data_len_value.0.
  br i1 %cmp14, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false.if.end18_crit_edge

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.else11.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false.if.end18_crit_edge, %if.then10, %if.then7
  %17 = ptrtoint ptr %temp_ei.0306 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %temp_ei.0306, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %18, label %do.end104 [
    i32 1, label %do.body.i.preheader
    i32 2, label %sw.bb27
    i32 3, label %if.end18.sw.bb53_crit_edge
    i32 4, label %if.end18.sw.bb53_crit_edge438
    i32 5, label %if.end18.sw.bb53_crit_edge439
    i32 6, label %if.end18.sw.bb53_crit_edge440
    i32 7, label %if.end18.sw.bb53_crit_edge441
    i32 8, label %if.end18.sw.bb53_crit_edge442
    i32 9, label %sw.bb76
    i32 10, label %sw.bb89
  ]

if.end18.sw.bb53_crit_edge442:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb53

if.end18.sw.bb53_crit_edge441:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb53

if.end18.sw.bb53_crit_edge440:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb53

if.end18.sw.bb53_crit_edge439:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb53

if.end18.sw.bb53_crit_edge438:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb53

if.end18.sw.bb53_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb53

do.body.i.preheader:                              ; preds = %if.end18
  %20 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool21.not = icmp eq i8 %21, 0
  br i1 %tobool21.not, label %if.else24, label %if.then22

if.then22:                                        ; preds = %do.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr23 = getelementptr %struct.qmi_elem_info, ptr %temp_ei.0306, i32 1
  br label %sw.epilog

if.else24:                                        ; preds = %do.body.i.preheader
  br i1 %cmp.i221, label %if.then.i, label %if.else24.do.body.i211_crit_edge

if.else24.do.body.i211_crit_edge:                 ; preds = %if.else24
  br label %do.body.i211

if.then.i:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i210 = getelementptr %struct.qmi_elem_info, ptr %temp_ei.0306, i32 1
  br label %sw.epilog

do.body.i211:                                     ; preds = %do.body.i211.do.body.i211_crit_edge, %if.else24.do.body.i211_crit_edge
  %temp_ei.0.i = phi ptr [ %add.ptr2.i, %do.body.i211.do.body.i211_crit_edge ], [ %temp_ei.0306, %if.else24.do.body.i211_crit_edge ]
  %tlv_type1.i = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.0.i, i32 0, i32 4
  %22 = ptrtoint ptr %tlv_type1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tlv_type1.i, align 4
  %add.ptr2.i = getelementptr %struct.qmi_elem_info, ptr %temp_ei.0.i, i32 1
  %tlv_type3.i = getelementptr %struct.qmi_elem_info, ptr %temp_ei.0.i, i32 1, i32 4
  %24 = ptrtoint ptr %tlv_type3.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tlv_type3.i, align 4
  %cmp5.i = icmp eq i8 %23, %25
  br i1 %cmp5.i, label %do.body.i211.do.body.i211_crit_edge, label %do.body.i211.sw.epilog_crit_edge

do.body.i211.sw.epilog_crit_edge:                 ; preds = %do.body.i211
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body.i211.do.body.i211_crit_edge:              ; preds = %do.body.i211
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i211

sw.bb27:                                          ; preds = %if.end18
  %elem_size = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.0306, i32 0, i32 2
  %26 = ptrtoint ptr %elem_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %elem_size, align 4
  %28 = call ptr @memcpy(ptr %data_len_value, ptr %add.ptr4, i32 %27)
  %29 = load i32, ptr %elem_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp29 = icmp eq i32 %29, 1
  %cond = select i1 %cmp29, i32 1, i32 2
  %add = add i32 %cond, %encoded_bytes.0299
  %add31 = add i32 %add, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add31, i32 %out_buf_len)
  %cmp32 = icmp ugt i32 %add31, %out_buf_len
  br i1 %cmp32, label %do.end36, label %do.body.i219.preheader

do.body.i219.preheader:                           ; preds = %sw.bb27
  %30 = call ptr @memcpy(ptr %buf_dst.1302, ptr %data_len_value, i32 %cond)
  %add.ptr42 = getelementptr i8, ptr %buf_dst.1302, i32 %cond
  %add44 = add i32 %cond, %tlv_len.0298
  %add.ptr45 = getelementptr %struct.qmi_elem_info, ptr %temp_ei.0306, i32 1
  %31 = ptrtoint ptr %data_len_value to i32
  call void @__asan_load4_noabort(i32 %31)
  %data_len_value.0.data_len_value.0.data_len_value.0.326 = load i32, ptr %data_len_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len_value.0.data_len_value.0.data_len_value.0.326)
  %tobool48.not = icmp eq i32 %data_len_value.0.data_len_value.0.data_len_value.0.326, 0
  br i1 %tobool48.not, label %if.then49, label %do.body.i219.preheader.if.end120_crit_edge

do.body.i219.preheader.if.end120_crit_edge:       ; preds = %do.body.i219.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

do.end36:                                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.then49:                                        ; preds = %do.body.i219.preheader
  br i1 %cmp.i221, label %if.then.i223, label %if.then49.do.body.i229_crit_edge

if.then49.do.body.i229_crit_edge:                 ; preds = %if.then49
  br label %do.body.i229

if.then.i223:                                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i222 = getelementptr %struct.qmi_elem_info, ptr %temp_ei.0306, i32 2
  br label %land.lhs.true

do.body.i229:                                     ; preds = %do.body.i229.do.body.i229_crit_edge, %if.then49.do.body.i229_crit_edge
  %temp_ei.0.i224 = phi ptr [ %add.ptr2.i226, %do.body.i229.do.body.i229_crit_edge ], [ %add.ptr45, %if.then49.do.body.i229_crit_edge ]
  %tlv_type1.i225 = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.0.i224, i32 0, i32 4
  %32 = ptrtoint ptr %tlv_type1.i225 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %tlv_type1.i225, align 4
  %add.ptr2.i226 = getelementptr %struct.qmi_elem_info, ptr %temp_ei.0.i224, i32 1
  %tlv_type3.i227 = getelementptr %struct.qmi_elem_info, ptr %temp_ei.0.i224, i32 1, i32 4
  %34 = ptrtoint ptr %tlv_type3.i227 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tlv_type3.i227, align 4
  %cmp5.i228 = icmp eq i8 %33, %35
  br i1 %cmp5.i228, label %do.body.i229.do.body.i229_crit_edge, label %do.body.i229.land.lhs.true_crit_edge

do.body.i229.land.lhs.true_crit_edge:             ; preds = %do.body.i229
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

do.body.i229.do.body.i229_crit_edge:              ; preds = %do.body.i229
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i229

sw.bb53:                                          ; preds = %if.end18.sw.bb53_crit_edge, %if.end18.sw.bb53_crit_edge438, %if.end18.sw.bb53_crit_edge439, %if.end18.sw.bb53_crit_edge440, %if.end18.sw.bb53_crit_edge441, %if.end18.sw.bb53_crit_edge442
  %36 = ptrtoint ptr %data_len_value to i32
  call void @__asan_load4_noabort(i32 %36)
  %data_len_value.0.data_len_value.0.data_len_value.0.327 = load i32, ptr %data_len_value, align 4
  %elem_size54 = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.0306, i32 0, i32 2
  %37 = ptrtoint ptr %elem_size54 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %elem_size54, align 4
  %mul = mul i32 %38, %data_len_value.0.data_len_value.0.data_len_value.0.327
  %add55 = add i32 %encoded_bytes.0299, 3
  %add57 = add i32 %add55, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %add57, i32 %out_buf_len)
  %cmp58 = icmp ugt i32 %add57, %out_buf_len
  br i1 %cmp58, label %do.end62, label %if.end66

do.end62:                                         ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #9
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, i32 noundef %18) #10
  br label %cleanup

if.end66:                                         ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len_value.0.data_len_value.0.data_len_value.0.327)
  %cmp9.not.i = icmp eq i32 %data_len_value.0.data_len_value.0.data_len_value.0.327, 0
  br i1 %cmp9.not.i, label %if.end66.qmi_encode_basic_elem.exit240_crit_edge, label %if.end66.do.body.i239_crit_edge

if.end66.do.body.i239_crit_edge:                  ; preds = %if.end66
  br label %do.body.i239

if.end66.qmi_encode_basic_elem.exit240_crit_edge: ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %qmi_encode_basic_elem.exit240

do.body.i239:                                     ; preds = %do.body.i239.do.body.i239_crit_edge, %if.end66.do.body.i239_crit_edge
  %i.012.i232 = phi i32 [ %inc.i237, %do.body.i239.do.body.i239_crit_edge ], [ 0, %if.end66.do.body.i239_crit_edge ]
  %buf_dst.addr.011.i233 = phi ptr [ %add.ptr.i235, %do.body.i239.do.body.i239_crit_edge ], [ %buf_dst.1302, %if.end66.do.body.i239_crit_edge ]
  %buf_src.addr.010.i234 = phi ptr [ %add.ptr1.i236, %do.body.i239.do.body.i239_crit_edge ], [ %add.ptr4, %if.end66.do.body.i239_crit_edge ]
  %39 = call ptr @memcpy(ptr %buf_dst.addr.011.i233, ptr %buf_src.addr.010.i234, i32 %38)
  %add.ptr.i235 = getelementptr i8, ptr %buf_dst.addr.011.i233, i32 %38
  %add.ptr1.i236 = getelementptr i8, ptr %buf_src.addr.010.i234, i32 %38
  %inc.i237 = add nuw i32 %i.012.i232, 1
  %exitcond.not.i238 = icmp eq i32 %inc.i237, %data_len_value.0.data_len_value.0.data_len_value.0.327
  br i1 %exitcond.not.i238, label %do.body.i239.qmi_encode_basic_elem.exit240_crit_edge, label %do.body.i239.do.body.i239_crit_edge

do.body.i239.do.body.i239_crit_edge:              ; preds = %do.body.i239
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i239

do.body.i239.qmi_encode_basic_elem.exit240_crit_edge: ; preds = %do.body.i239
  call void @__sanitizer_cov_trace_pc() #9
  br label %qmi_encode_basic_elem.exit240

qmi_encode_basic_elem.exit240:                    ; preds = %do.body.i239.qmi_encode_basic_elem.exit240_crit_edge, %if.end66.qmi_encode_basic_elem.exit240_crit_edge
  %rc.0.lcssa.i = phi i32 [ 0, %if.end66.qmi_encode_basic_elem.exit240_crit_edge ], [ %mul, %do.body.i239.qmi_encode_basic_elem.exit240_crit_edge ]
  %add.ptr70 = getelementptr i8, ptr %buf_dst.1302, i32 %rc.0.lcssa.i
  %add71 = add i32 %rc.0.lcssa.i, %encoded_bytes.0299
  %add72 = add i32 %rc.0.lcssa.i, %tlv_len.0298
  %add.ptr73 = getelementptr %struct.qmi_elem_info, ptr %temp_ei.0306, i32 1
  br label %land.lhs.true

sw.bb76:                                          ; preds = %if.end18
  %40 = ptrtoint ptr %data_len_value to i32
  call void @__asan_load4_noabort(i32 %40)
  %data_len_value.0.data_len_value.0.data_len_value.0.328 = load i32, ptr %data_len_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len_value.0.data_len_value.0.data_len_value.0.328)
  %cmp.i241290.not = icmp eq i32 %data_len_value.0.data_len_value.0.data_len_value.0.328, 0
  br i1 %cmp.i241290.not, label %sw.bb76.do.body82_crit_edge, label %for.body.i.lr.ph

sw.bb76.do.body82_crit_edge:                      ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body82

for.body.i.lr.ph:                                 ; preds = %sw.bb76
  %ei_array1.i = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.0306, i32 0, i32 6
  %elem_size.i = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.0306, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.i.lr.ph
  %encoded_bytes.0.i294 = phi i32 [ 0, %for.body.i.lr.ph ], [ %add.i, %if.end.i.for.body.i_crit_edge ]
  %i.0.i293 = phi i32 [ 0, %for.body.i.lr.ph ], [ %inc.i243, %if.end.i.for.body.i_crit_edge ]
  %buf_dst.addr.0.i292 = phi ptr [ %buf_dst.1302, %for.body.i.lr.ph ], [ %add.ptr.i242, %if.end.i.for.body.i_crit_edge ]
  %buf_src.addr.0.i291 = phi ptr [ %add.ptr4, %for.body.i.lr.ph ], [ %add.ptr4.i, %if.end.i.for.body.i_crit_edge ]
  %41 = ptrtoint ptr %ei_array1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ei_array1.i, align 4
  %43 = add i32 %encoded_bytes.0299, %encoded_bytes.0.i294
  %sub.i = sub i32 %out_buf_len, %43
  %call.i = tail call fastcc i32 @qmi_encode(ptr noundef %42, ptr noundef %buf_dst.addr.0.i292, ptr noundef %buf_src.addr.0.i291, i32 noundef %sub.i, i32 noundef %add77) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %qmi_encode_struct_elem.exit.thread, label %if.end.i

qmi_encode_struct_elem.exit.thread:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  %add.ptr.i242 = getelementptr i8, ptr %buf_dst.addr.0.i292, i32 %call.i
  %44 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %elem_size.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %buf_src.addr.0.i291, i32 %45
  %add.i = add i32 %call.i, %encoded_bytes.0.i294
  %inc.i243 = add nuw i32 %i.0.i293, 1
  %exitcond.not = icmp eq i32 %inc.i243, %data_len_value.0.data_len_value.0.data_len_value.0.328
  br i1 %exitcond.not, label %qmi_encode_struct_elem.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

qmi_encode_struct_elem.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp79 = icmp slt i32 %add.i, 0
  br i1 %cmp79, label %qmi_encode_struct_elem.exit.cleanup_crit_edge, label %qmi_encode_struct_elem.exit.do.body82_crit_edge

qmi_encode_struct_elem.exit.do.body82_crit_edge:  ; preds = %qmi_encode_struct_elem.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body82

qmi_encode_struct_elem.exit.cleanup_crit_edge:    ; preds = %qmi_encode_struct_elem.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body82:                                        ; preds = %qmi_encode_struct_elem.exit.do.body82_crit_edge, %sw.bb76.do.body82_crit_edge
  %encoded_bytes.0.i.lcssa332 = phi i32 [ %add.i, %qmi_encode_struct_elem.exit.do.body82_crit_edge ], [ 0, %sw.bb76.do.body82_crit_edge ]
  %add.ptr83 = getelementptr i8, ptr %buf_dst.1302, i32 %encoded_bytes.0.i.lcssa332
  %add84 = add i32 %encoded_bytes.0.i.lcssa332, %encoded_bytes.0299
  %add85 = add i32 %encoded_bytes.0.i.lcssa332, %tlv_len.0298
  %add.ptr86 = getelementptr %struct.qmi_elem_info, ptr %temp_ei.0306, i32 1
  br label %land.lhs.true

sw.bb89:                                          ; preds = %if.end18
  %sub90 = sub i32 %out_buf_len, %encoded_bytes.0299
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %string_len.i)
  %call.i244 = tail call i32 @strlen(ptr noundef %add.ptr4) #12
  %46 = ptrtoint ptr %string_len.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call.i244, ptr %string_len.i, align 4
  %elem_len.i = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.0306, i32 0, i32 1
  %47 = ptrtoint ptr %elem_len.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %elem_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %48)
  %cmp.i245 = icmp ult i32 %48, 256
  %cond.i = select i1 %cmp.i245, i32 1, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i244, i32 %48)
  %cmp2.i246 = icmp ugt i32 %call.i244, %48
  br i1 %cmp2.i246, label %do.end.i247, label %if.end.i249

do.end.i247:                                      ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %call.i244, i32 noundef %48) #10
  br label %qmi_encode_string_elem.exit.thread

if.end.i249:                                      ; preds = %sw.bb89
  br i1 %cmp, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end.i249
  %add7.i = add i32 %call.i244, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i, i32 %sub90)
  %cmp8.i = icmp ugt i32 %add7.i, %sub90
  br i1 %cmp8.i, label %do.end12.i, label %if.then6.i.if.end27.i_crit_edge

if.then6.i.if.end27.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

do.end12.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call.i244, i32 noundef %sub90) #10
  br label %qmi_encode_string_elem.exit.thread

if.else.i:                                        ; preds = %if.end.i249
  %add16.i = add i32 %cond.i, %call.i244
  call void @__sanitizer_cov_trace_cmp4(i32 %add16.i, i32 %sub90)
  %cmp17.i = icmp ugt i32 %add16.i, %sub90
  br i1 %cmp17.i, label %do.end21.i, label %do.body.i.preheader.i

do.body.i.preheader.i:                            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = call ptr @memcpy(ptr %buf_dst.1302, ptr %string_len.i, i32 %cond.i)
  br label %if.end27.i

do.end21.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %call.i244, i32 noundef %sub90) #10
  br label %qmi_encode_string_elem.exit.thread

if.end27.i:                                       ; preds = %do.body.i.preheader.i, %if.then6.i.if.end27.i_crit_edge
  %encoded_bytes.0.i250 = phi i32 [ 0, %if.then6.i.if.end27.i_crit_edge ], [ %cond.i, %do.body.i.preheader.i ]
  %elem_size.i251 = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.0306, i32 0, i32 2
  %50 = ptrtoint ptr %elem_size.i251 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %elem_size.i251, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i244)
  %cmp9.not.i.i = icmp eq i32 %call.i244, 0
  br i1 %cmp9.not.i.i, label %if.end27.i.qmi_encode_string_elem.exit_crit_edge, label %do.body.i54.preheader.i

if.end27.i.qmi_encode_string_elem.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qmi_encode_string_elem.exit

do.body.i54.preheader.i:                          ; preds = %if.end27.i
  %add.ptr.i252 = getelementptr i8, ptr %buf_dst.1302, i32 %encoded_bytes.0.i250
  br label %do.body.i54.i

do.body.i54.i:                                    ; preds = %do.body.i54.i.do.body.i54.i_crit_edge, %do.body.i54.preheader.i
  %i.012.i47.i = phi i32 [ %inc.i52.i, %do.body.i54.i.do.body.i54.i_crit_edge ], [ 0, %do.body.i54.preheader.i ]
  %buf_dst.addr.011.i48.i = phi ptr [ %add.ptr.i50.i, %do.body.i54.i.do.body.i54.i_crit_edge ], [ %add.ptr.i252, %do.body.i54.preheader.i ]
  %buf_src.addr.010.i49.i = phi ptr [ %add.ptr1.i51.i, %do.body.i54.i.do.body.i54.i_crit_edge ], [ %add.ptr4, %do.body.i54.preheader.i ]
  %52 = call ptr @memcpy(ptr %buf_dst.addr.011.i48.i, ptr %buf_src.addr.010.i49.i, i32 %51)
  %add.ptr.i50.i = getelementptr i8, ptr %buf_dst.addr.011.i48.i, i32 %51
  %add.ptr1.i51.i = getelementptr i8, ptr %buf_src.addr.010.i49.i, i32 %51
  %inc.i52.i = add nuw i32 %i.012.i47.i, 1
  %exitcond.not.i53.i = icmp eq i32 %inc.i52.i, %call.i244
  br i1 %exitcond.not.i53.i, label %for.end.loopexit.i.i, label %do.body.i54.i.do.body.i54.i_crit_edge

do.body.i54.i.do.body.i54.i_crit_edge:            ; preds = %do.body.i54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i54.i

for.end.loopexit.i.i:                             ; preds = %do.body.i54.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = mul i32 %51, %call.i244
  br label %qmi_encode_string_elem.exit

qmi_encode_string_elem.exit.thread:               ; preds = %do.end21.i, %do.end12.i, %do.end.i247
  %retval.0.i253.ph = phi i32 [ -525, %do.end21.i ], [ -525, %do.end12.i ], [ -22, %do.end.i247 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %string_len.i)
  br label %cleanup

qmi_encode_string_elem.exit:                      ; preds = %for.end.loopexit.i.i, %if.end27.i.qmi_encode_string_elem.exit_crit_edge
  %rc.0.lcssa.i.i = phi i32 [ 0, %if.end27.i.qmi_encode_string_elem.exit_crit_edge ], [ %53, %for.end.loopexit.i.i ]
  %add29.i = add i32 %rc.0.lcssa.i.i, %encoded_bytes.0.i250
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %string_len.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add29.i)
  %cmp92 = icmp slt i32 %add29.i, 0
  br i1 %cmp92, label %qmi_encode_string_elem.exit.cleanup_crit_edge, label %do.body95

qmi_encode_string_elem.exit.cleanup_crit_edge:    ; preds = %qmi_encode_string_elem.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body95:                                        ; preds = %qmi_encode_string_elem.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr96 = getelementptr i8, ptr %buf_dst.1302, i32 %add29.i
  %add97 = add i32 %add29.i, %encoded_bytes.0299
  %add98 = add i32 %add29.i, %tlv_len.0298
  %add.ptr99 = getelementptr %struct.qmi_elem_info, ptr %temp_ei.0306, i32 1
  br label %land.lhs.true

do.end104:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.4) #10
  br label %cleanup

sw.epilog:                                        ; preds = %do.body.i211.sw.epilog_crit_edge, %if.then.i, %if.then22
  %temp_ei.1 = phi ptr [ %add.ptr23, %if.then22 ], [ %add.ptr.i210, %if.then.i ], [ %add.ptr2.i, %do.body.i211.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %encode_tlv.0301)
  %tobool107.not = icmp eq i32 %encode_tlv.0301, 0
  br i1 %tobool107.not, label %sw.epilog.if.end120_crit_edge, label %sw.epilog.land.lhs.true_crit_edge

sw.epilog.land.lhs.true_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

sw.epilog.if.end120_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

land.lhs.true:                                    ; preds = %sw.epilog.land.lhs.true_crit_edge, %do.body95, %do.body82, %qmi_encode_basic_elem.exit240, %do.body.i229.land.lhs.true_crit_edge, %if.then.i223
  %temp_ei.1267 = phi ptr [ %temp_ei.1, %sw.epilog.land.lhs.true_crit_edge ], [ %add.ptr.i222, %if.then.i223 ], [ %add.ptr73, %qmi_encode_basic_elem.exit240 ], [ %add.ptr86, %do.body82 ], [ %add.ptr99, %do.body95 ], [ %add.ptr2.i226, %do.body.i229.land.lhs.true_crit_edge ]
  %buf_dst.2266 = phi ptr [ %buf_dst.1302, %sw.epilog.land.lhs.true_crit_edge ], [ %add.ptr42, %if.then.i223 ], [ %add.ptr70, %qmi_encode_basic_elem.exit240 ], [ %add.ptr83, %do.body82 ], [ %add.ptr96, %do.body95 ], [ %add.ptr42, %do.body.i229.land.lhs.true_crit_edge ]
  %encoded_bytes.1265 = phi i32 [ %encoded_bytes.0299, %sw.epilog.land.lhs.true_crit_edge ], [ %add, %if.then.i223 ], [ %add71, %qmi_encode_basic_elem.exit240 ], [ %add84, %do.body82 ], [ %add97, %do.body95 ], [ %add, %do.body.i229.land.lhs.true_crit_edge ]
  %tlv_len.1264 = phi i32 [ %tlv_len.0298, %sw.epilog.land.lhs.true_crit_edge ], [ %add44, %if.then.i223 ], [ %add72, %qmi_encode_basic_elem.exit240 ], [ %add85, %do.body82 ], [ %add98, %do.body95 ], [ %add44, %do.body.i229.land.lhs.true_crit_edge ]
  br i1 %cmp, label %do.body110, label %land.lhs.true.if.end120_crit_edge

land.lhs.true.if.end120_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

do.body110:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr = getelementptr i8, ptr %tlv_pointer.0296, i32 1
  %54 = ptrtoint ptr %tlv_pointer.0296 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %6, ptr %tlv_pointer.0296, align 1
  %conv = trunc i32 %tlv_len.1264 to i8
  %incdec.ptr111 = getelementptr i8, ptr %tlv_pointer.0296, i32 2
  %55 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv, ptr %incdec.ptr, align 1
  %shr = lshr i32 %tlv_len.1264, 8
  %conv113 = trunc i32 %shr to i8
  %56 = ptrtoint ptr %incdec.ptr111 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv113, ptr %incdec.ptr111, align 1
  %add117 = add i32 %encoded_bytes.1265, 3
  %add.ptr119 = getelementptr i8, ptr %buf_dst.2266, i32 3
  br label %if.end120

if.end120:                                        ; preds = %do.body110, %land.lhs.true.if.end120_crit_edge, %sw.epilog.if.end120_crit_edge, %do.body.i219.preheader.if.end120_crit_edge
  %temp_ei.1268 = phi ptr [ %temp_ei.1267, %do.body110 ], [ %temp_ei.1267, %land.lhs.true.if.end120_crit_edge ], [ %temp_ei.1, %sw.epilog.if.end120_crit_edge ], [ %add.ptr45, %do.body.i219.preheader.if.end120_crit_edge ]
  %tlv_pointer.1 = phi ptr [ %buf_dst.2266, %do.body110 ], [ %tlv_pointer.0296, %land.lhs.true.if.end120_crit_edge ], [ %tlv_pointer.0296, %sw.epilog.if.end120_crit_edge ], [ %tlv_pointer.0296, %do.body.i219.preheader.if.end120_crit_edge ]
  %tlv_len.2 = phi i32 [ 0, %do.body110 ], [ %tlv_len.1264, %land.lhs.true.if.end120_crit_edge ], [ %tlv_len.0298, %sw.epilog.if.end120_crit_edge ], [ %add44, %do.body.i219.preheader.if.end120_crit_edge ]
  %encoded_bytes.2 = phi i32 [ %add117, %do.body110 ], [ %encoded_bytes.1265, %land.lhs.true.if.end120_crit_edge ], [ %encoded_bytes.0299, %sw.epilog.if.end120_crit_edge ], [ %add, %do.body.i219.preheader.if.end120_crit_edge ]
  %encode_tlv.2 = phi i32 [ 0, %do.body110 ], [ 1, %land.lhs.true.if.end120_crit_edge ], [ 0, %sw.epilog.if.end120_crit_edge ], [ 0, %do.body.i219.preheader.if.end120_crit_edge ]
  %buf_dst.3 = phi ptr [ %add.ptr119, %do.body110 ], [ %buf_dst.2266, %land.lhs.true.if.end120_crit_edge ], [ %buf_dst.1302, %sw.epilog.if.end120_crit_edge ], [ %add.ptr42, %do.body.i219.preheader.if.end120_crit_edge ]
  %57 = ptrtoint ptr %temp_ei.1268 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %temp_ei.1268, align 4
  %cmp3.not = icmp eq i32 %58, 0
  br i1 %cmp3.not, label %if.end120.cleanup_crit_edge, label %if.end120.while.body_crit_edge

if.end120.while.body_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end120.cleanup_crit_edge, %do.end104, %qmi_encode_string_elem.exit.cleanup_crit_edge, %qmi_encode_string_elem.exit.thread, %qmi_encode_struct_elem.exit.cleanup_crit_edge, %qmi_encode_struct_elem.exit.thread, %do.end62, %do.end36, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end104 ], [ -525, %do.end62 ], [ -525, %do.end36 ], [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %qmi_encode_struct_elem.exit.thread ], [ %retval.0.i253.ph, %qmi_encode_string_elem.exit.thread ], [ 0, %if.end.cleanup_crit_edge ], [ %encoded_bytes.2, %if.end120.cleanup_crit_edge ], [ %add29.i, %qmi_encode_string_elem.exit.cleanup_crit_edge ], [ %add.i, %qmi_encode_struct_elem.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_len_value)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qmi_decode_message(ptr noundef readonly %buf, i32 noundef %len, ptr noundef %ei, ptr noundef writeonly %c_struct) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ei, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %c_struct, null
  %tobool2.not = icmp eq ptr %buf, null
  %or.cond = or i1 %tobool2.not, %tobool1.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool4.not = icmp eq i32 %len, 0
  %or.cond11 = or i1 %tobool4.not, %or.cond
  br i1 %or.cond11, label %if.end.return_crit_edge, label %if.end6

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %buf, i32 7
  %sub = add i32 %len, -7
  %call = tail call fastcc i32 @qmi_decode(ptr noundef nonnull %ei, ptr noundef nonnull %c_struct, ptr noundef %add.ptr, i32 noundef %sub, i32 noundef 1)
  br label %return

return:                                           ; preds = %if.end6, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end6 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qmi_decode(ptr noundef readonly %ei_array, ptr nocapture noundef writeonly %out_c_struct, ptr nocapture noundef readonly %in_buf, i32 noundef %in_buf_len, i32 noundef %dec_level) unnamed_addr #0 align 64 {
entry:
  %string_len.i = alloca i32, align 4
  %data_len_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_len_value)
  %0 = ptrtoint ptr %data_len_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %data_len_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_buf_len)
  %cmp253.not = icmp eq i32 %in_buf_len, 0
  br i1 %cmp253.not, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec_level)
  %cmp1 = icmp sgt i32 %dec_level, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec_level)
  %cmp3 = icmp eq i32 %dec_level, 1
  %add84 = add i32 %dec_level, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add84)
  %cmp5.i = icmp sgt i32 %add84, 2
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %temp_ei.0258 = phi ptr [ %ei_array, %while.body.lr.ph ], [ %temp_ei.0.be, %while.cond.backedge.while.body_crit_edge ]
  %buf_src.0256 = phi ptr [ %in_buf, %while.body.lr.ph ], [ %buf_src.0.be, %while.cond.backedge.while.body_crit_edge ]
  %decoded_bytes.0254 = phi i32 [ 0, %while.body.lr.ph ], [ %decoded_bytes.0.be, %while.cond.backedge.while.body_crit_edge ]
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %1 = ptrtoint ptr %temp_ei.0258 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %temp_ei.0258, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.else25_crit_edge

land.lhs.true.if.else25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else25

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %while.body
  br i1 %cmp3, label %if.then4, label %if.end.if.else25_crit_edge

if.end.if.else25_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else25

if.then4:                                         ; preds = %if.end
  %incdec.ptr = getelementptr i8, ptr %buf_src.0256, i32 1
  %3 = ptrtoint ptr %buf_src.0256 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buf_src.0256, align 1
  %incdec.ptr5 = getelementptr i8, ptr %buf_src.0256, i32 2
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %incdec.ptr, align 1
  %conv6 = zext i8 %6 to i32
  %7 = ptrtoint ptr %incdec.ptr5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr5, align 1
  %conv7 = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv7, 8
  %or = or i32 %shl, %conv6
  %add.ptr = getelementptr i8, ptr %buf_src.0256, i32 3
  %add = add i32 %decoded_bytes.0254, 3
  %9 = ptrtoint ptr %ei_array to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ei_array, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not8.i = icmp eq i32 %10, 0
  br i1 %cmp.not8.i, label %if.then4.find_ei.exit_crit_edge, label %if.then4.while.body.i_crit_edge

if.then4.while.body.i_crit_edge:                  ; preds = %if.then4
  br label %while.body.i

if.then4.find_ei.exit_crit_edge:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_ei.exit

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then4.while.body.i_crit_edge
  %temp_ei.09.i = phi ptr [ %add.ptr.i, %if.end.i.while.body.i_crit_edge ], [ %ei_array, %if.then4.while.body.i_crit_edge ]
  %tlv_type.i = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.09.i, i32 0, i32 4
  %11 = ptrtoint ptr %tlv_type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tlv_type.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %4)
  %cmp3.i = icmp eq i8 %12, %4
  br i1 %cmp3.i, label %while.body.i.find_ei.exit_crit_edge, label %if.end.i

while.body.i.find_ei.exit_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_ei.exit

if.end.i:                                         ; preds = %while.body.i
  %add.ptr.i = getelementptr %struct.qmi_elem_info, ptr %temp_ei.09.i, i32 1
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 4
  %cmp.not.i = icmp eq i32 %14, 0
  br i1 %cmp.not.i, label %if.end.i.find_ei.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end.i.find_ei.exit_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_ei.exit

find_ei.exit:                                     ; preds = %if.end.i.find_ei.exit_crit_edge, %while.body.i.find_ei.exit_crit_edge, %if.then4.find_ei.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.then4.find_ei.exit_crit_edge ], [ null, %if.end.i.find_ei.exit_crit_edge ], [ %temp_ei.09.i, %while.body.i.find_ei.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %4)
  %cmp9 = icmp ult i8 %4, 16
  %or.cond = select i1 %tobool.not, i1 %cmp9, i1 false
  br i1 %or.cond, label %do.end14, label %if.else

do.end14:                                         ; preds = %find_ei.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #10
  br label %cleanup

if.else:                                          ; preds = %find_ei.exit
  br i1 %tobool.not, label %do.body18, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.body18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr19 = getelementptr i8, ptr %add.ptr, i32 %or
  %add20 = add i32 %or, %add
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.epilog, %do.body18
  %decoded_bytes.0.be = phi i32 [ %decoded_bytes.3, %sw.epilog ], [ %add20, %do.body18 ]
  %buf_src.0.be = phi ptr [ %add.ptr102, %sw.epilog ], [ %add.ptr19, %do.body18 ]
  %temp_ei.0.be = phi ptr [ %add.ptr111, %sw.epilog ], [ null, %do.body18 ]
  %cmp = icmp ult i32 %decoded_bytes.0.be, %in_buf_len
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.cleanup_crit_edge

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.else25:                                        ; preds = %if.end.if.else25_crit_edge, %land.lhs.true.if.else25_crit_edge
  %sub = sub i32 %in_buf_len, %decoded_bytes.0254
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %if.else.if.end26_crit_edge
  %cmp3220 = phi i1 [ true, %if.else.if.end26_crit_edge ], [ false, %if.else25 ]
  %tlv_len.0 = phi i32 [ %or, %if.else.if.end26_crit_edge ], [ %sub, %if.else25 ]
  %decoded_bytes.1 = phi i32 [ %add, %if.else.if.end26_crit_edge ], [ %decoded_bytes.0254, %if.else25 ]
  %buf_src.1 = phi ptr [ %add.ptr, %if.else.if.end26_crit_edge ], [ %buf_src.0256, %if.else25 ]
  %temp_ei.1 = phi ptr [ %retval.0.i, %if.else.if.end26_crit_edge ], [ %temp_ei.0258, %if.else25 ]
  %offset = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.1, i32 0, i32 5
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset, align 4
  %add.ptr27 = getelementptr i8, ptr %out_c_struct, i32 %16
  %17 = ptrtoint ptr %temp_ei.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %temp_ei.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp29 = icmp eq i32 %18, 1
  br i1 %cmp29, label %if.then31, label %if.end26.if.end35_crit_edge

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %add.ptr27, align 1
  %add.ptr32 = getelementptr %struct.qmi_elem_info, ptr %temp_ei.1, i32 1
  %offset33 = getelementptr %struct.qmi_elem_info, ptr %temp_ei.1, i32 1, i32 5
  %20 = ptrtoint ptr %offset33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset33, align 4
  %add.ptr34 = getelementptr i8, ptr %out_c_struct, i32 %21
  %22 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %add.ptr32, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end26.if.end35_crit_edge
  %23 = phi i32 [ %.pr, %if.then31 ], [ %18, %if.end26.if.end35_crit_edge ]
  %buf_dst.0 = phi ptr [ %add.ptr34, %if.then31 ], [ %add.ptr27, %if.end26.if.end35_crit_edge ]
  %temp_ei.2 = phi ptr [ %add.ptr32, %if.then31 ], [ %temp_ei.1, %if.end26.if.end35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp37 = icmp eq i32 %23, 2
  br i1 %cmp37, label %if.then39, label %if.end35.if.end52_crit_edge

if.end35.if.end52_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %elem_size = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.2, i32 0, i32 2
  %24 = ptrtoint ptr %elem_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %elem_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp40 = icmp eq i32 %25, 1
  %cond = select i1 %cmp40, i32 1, i32 2
  %26 = call ptr @memcpy(ptr %data_len_value, ptr %buf_src.1, i32 %cond)
  %add.ptr1.i = getelementptr i8, ptr %buf_src.1, i32 %cond
  %27 = ptrtoint ptr %data_len_value to i32
  call void @__asan_load4_noabort(i32 %27)
  %data_len_value.0.data_len_value.0.data_len_value.0.281 = load i32, ptr %data_len_value, align 4
  %28 = ptrtoint ptr %buf_dst.0 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %data_len_value.0.data_len_value.0.data_len_value.0.281, ptr %buf_dst.0, align 1
  %add.ptr43 = getelementptr %struct.qmi_elem_info, ptr %temp_ei.2, i32 1
  %offset44 = getelementptr %struct.qmi_elem_info, ptr %temp_ei.2, i32 1, i32 5
  %29 = ptrtoint ptr %offset44 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset44, align 4
  %add.ptr45 = getelementptr i8, ptr %out_c_struct, i32 %30
  %sub46 = sub i32 %tlv_len.0, %cond
  %add49 = add i32 %cond, %decoded_bytes.1
  br label %if.end52

if.end52:                                         ; preds = %if.then39, %if.end35.if.end52_crit_edge
  %buf_dst.1 = phi ptr [ %add.ptr45, %if.then39 ], [ %buf_dst.0, %if.end35.if.end52_crit_edge ]
  %tlv_len.1 = phi i32 [ %sub46, %if.then39 ], [ %tlv_len.0, %if.end35.if.end52_crit_edge ]
  %decoded_bytes.2 = phi i32 [ %add49, %if.then39 ], [ %decoded_bytes.1, %if.end35.if.end52_crit_edge ]
  %buf_src.2 = phi ptr [ %add.ptr1.i, %if.then39 ], [ %buf_src.1, %if.end35.if.end52_crit_edge ]
  %temp_ei.3 = phi ptr [ %add.ptr43, %if.then39 ], [ %temp_ei.2, %if.end35.if.end52_crit_edge ]
  %array_type = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.3, i32 0, i32 3
  %31 = ptrtoint ptr %array_type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %array_type, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %32, label %if.else61 [
    i32 0, label %if.then55
    i32 1, label %if.then60
  ]

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %data_len_value to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %data_len_value, align 4
  br label %if.end74

if.then60:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %elem_len = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.3, i32 0, i32 1
  %35 = ptrtoint ptr %elem_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %elem_len, align 4
  %37 = ptrtoint ptr %data_len_value to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %data_len_value, align 4
  br label %if.end74

if.else61:                                        ; preds = %if.end52
  %38 = ptrtoint ptr %data_len_value to i32
  call void @__asan_load4_noabort(i32 %38)
  %data_len_value.0.data_len_value.0.data_len_value.0. = load i32, ptr %data_len_value, align 4
  %elem_len62 = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.3, i32 0, i32 1
  %39 = ptrtoint ptr %elem_len62 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %elem_len62, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %data_len_value.0.data_len_value.0.data_len_value.0., i32 %40)
  %cmp63 = icmp ugt i32 %data_len_value.0.data_len_value.0.data_len_value.0., %40
  br i1 %cmp63, label %do.end68, label %if.else61.if.end74_crit_edge

if.else61.if.end74_crit_edge:                     ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

do.end68:                                         ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #9
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef %data_len_value.0.data_len_value.0.data_len_value.0., i32 noundef %40) #10
  br label %cleanup

if.end74:                                         ; preds = %if.else61.if.end74_crit_edge, %if.then60, %if.then55
  %41 = ptrtoint ptr %temp_ei.3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %temp_ei.3, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %42, label %do.end108 [
    i32 3, label %if.end74.sw.bb_crit_edge
    i32 4, label %if.end74.sw.bb_crit_edge372
    i32 5, label %if.end74.sw.bb_crit_edge373
    i32 6, label %if.end74.sw.bb_crit_edge374
    i32 7, label %if.end74.sw.bb_crit_edge375
    i32 8, label %if.end74.sw.bb_crit_edge376
    i32 9, label %sw.bb83
    i32 10, label %sw.bb95
  ]

if.end74.sw.bb_crit_edge376:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end74.sw.bb_crit_edge375:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end74.sw.bb_crit_edge374:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end74.sw.bb_crit_edge373:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end74.sw.bb_crit_edge372:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end74.sw.bb_crit_edge:                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %if.end74.sw.bb_crit_edge, %if.end74.sw.bb_crit_edge372, %if.end74.sw.bb_crit_edge373, %if.end74.sw.bb_crit_edge374, %if.end74.sw.bb_crit_edge375, %if.end74.sw.bb_crit_edge376
  %44 = ptrtoint ptr %data_len_value to i32
  call void @__asan_load4_noabort(i32 %44)
  %data_len_value.0.data_len_value.0.data_len_value.0.279 = load i32, ptr %data_len_value, align 4
  %elem_size76 = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.3, i32 0, i32 2
  %45 = ptrtoint ptr %elem_size76 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %elem_size76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len_value.0.data_len_value.0.data_len_value.0.279)
  %cmp9.not.i = icmp eq i32 %data_len_value.0.data_len_value.0.data_len_value.0.279, 0
  br i1 %cmp9.not.i, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.do.body.i203_crit_edge

sw.bb.do.body.i203_crit_edge:                     ; preds = %sw.bb
  br label %do.body.i203

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body.i203:                                     ; preds = %do.body.i203.do.body.i203_crit_edge, %sw.bb.do.body.i203_crit_edge
  %i.012.i196 = phi i32 [ %inc.i201, %do.body.i203.do.body.i203_crit_edge ], [ 0, %sw.bb.do.body.i203_crit_edge ]
  %buf_dst.addr.011.i197 = phi ptr [ %add.ptr.i199, %do.body.i203.do.body.i203_crit_edge ], [ %buf_dst.1, %sw.bb.do.body.i203_crit_edge ]
  %buf_src.addr.010.i198 = phi ptr [ %add.ptr1.i200, %do.body.i203.do.body.i203_crit_edge ], [ %buf_src.2, %sw.bb.do.body.i203_crit_edge ]
  %47 = call ptr @memcpy(ptr %buf_dst.addr.011.i197, ptr %buf_src.addr.010.i198, i32 %46)
  %add.ptr.i199 = getelementptr i8, ptr %buf_dst.addr.011.i197, i32 %46
  %add.ptr1.i200 = getelementptr i8, ptr %buf_src.addr.010.i198, i32 %46
  %inc.i201 = add nuw i32 %i.012.i196, 1
  %exitcond.not.i202 = icmp eq i32 %inc.i201, %data_len_value.0.data_len_value.0.data_len_value.0.279
  br i1 %exitcond.not.i202, label %for.end.loopexit.i, label %do.body.i203.do.body.i203_crit_edge

do.body.i203.do.body.i203_crit_edge:              ; preds = %do.body.i203
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i203

for.end.loopexit.i:                               ; preds = %do.body.i203
  call void @__sanitizer_cov_trace_pc() #9
  %48 = mul i32 %46, %data_len_value.0.data_len_value.0.data_len_value.0.279
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end74
  %49 = ptrtoint ptr %data_len_value to i32
  call void @__asan_load4_noabort(i32 %49)
  %data_len_value.0.data_len_value.0.data_len_value.0.280 = load i32, ptr %data_len_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len_value.0.data_len_value.0.data_len_value.0.280)
  %cmp.i244 = icmp ne i32 %data_len_value.0.data_len_value.0.data_len_value.0.280, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tlv_len.1)
  %cmp1.i245 = icmp ne i32 %tlv_len.1, 0
  %or.cond.i246 = select i1 %cmp.i244, i1 %cmp1.i245, i1 false
  br i1 %or.cond.i246, label %for.body.i.lr.ph, label %sw.bb83.for.end.i_crit_edge

sw.bb83.for.end.i_crit_edge:                      ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.lr.ph:                                 ; preds = %sw.bb83
  %ei_array2.i = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.3, i32 0, i32 6
  %elem_size.i = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.3, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i208.for.body.i_crit_edge, %for.body.i.lr.ph
  %decoded_bytes.0.i250 = phi i32 [ 0, %for.body.i.lr.ph ], [ %add.i, %if.end.i208.for.body.i_crit_edge ]
  %i.0.i249 = phi i32 [ 0, %for.body.i.lr.ph ], [ %inc.i207, %if.end.i208.for.body.i_crit_edge ]
  %buf_dst.addr.0.i248 = phi ptr [ %buf_dst.1, %for.body.i.lr.ph ], [ %add.ptr4.i, %if.end.i208.for.body.i_crit_edge ]
  %buf_src.addr.0.i247 = phi ptr [ %buf_src.2, %for.body.i.lr.ph ], [ %add.ptr.i206, %if.end.i208.for.body.i_crit_edge ]
  %50 = ptrtoint ptr %ei_array2.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ei_array2.i, align 4
  %sub.i = sub i32 %tlv_len.1, %decoded_bytes.0.i250
  %call.i = tail call fastcc i32 @qmi_decode(ptr noundef %51, ptr noundef %buf_dst.addr.0.i248, ptr noundef %buf_src.addr.0.i247, i32 noundef %sub.i, i32 noundef %add84) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i205 = icmp slt i32 %call.i, 0
  br i1 %cmp3.i205, label %for.body.i.cleanup_crit_edge, label %if.end.i208

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i208:                                      ; preds = %for.body.i
  %add.ptr.i206 = getelementptr i8, ptr %buf_src.addr.0.i247, i32 %call.i
  %52 = ptrtoint ptr %elem_size.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %elem_size.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %buf_dst.addr.0.i248, i32 %53
  %add.i = add i32 %call.i, %decoded_bytes.0.i250
  %inc.i207 = add nuw i32 %i.0.i249, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i207, i32 %data_len_value.0.data_len_value.0.data_len_value.0.280)
  %cmp.i = icmp ult i32 %inc.i207, %data_len_value.0.data_len_value.0.data_len_value.0.280
  call void @__sanitizer_cov_trace_cmp4(i32 %tlv_len.1, i32 %add.i)
  %cmp1.i = icmp ugt i32 %tlv_len.1, %add.i
  %or.cond.i = select i1 %cmp.i, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %if.end.i208.for.body.i_crit_edge, label %if.end.i208.for.end.i_crit_edge

if.end.i208.for.end.i_crit_edge:                  ; preds = %if.end.i208
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end.i208.for.body.i_crit_edge:                 ; preds = %if.end.i208
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i208.for.end.i_crit_edge, %sw.bb83.for.end.i_crit_edge
  %i.0.i.lcssa = phi i32 [ 0, %sw.bb83.for.end.i_crit_edge ], [ %inc.i207, %if.end.i208.for.end.i_crit_edge ]
  %decoded_bytes.0.i.lcssa = phi i32 [ 0, %sw.bb83.for.end.i_crit_edge ], [ %add.i, %if.end.i208.for.end.i_crit_edge ]
  %cmp.i.lcssa = phi i1 [ %cmp.i244, %sw.bb83.for.end.i_crit_edge ], [ %cmp.i, %if.end.i208.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tlv_len.1, i32 %decoded_bytes.0.i.lcssa)
  %cmp6.not.i = icmp eq i32 %tlv_len.1, %decoded_bytes.0.i.lcssa
  %or.cond42.i = select i1 %cmp5.i, i1 true, i1 %cmp6.not.i
  br i1 %or.cond42.i, label %lor.lhs.false.i, label %for.end.i.do.end.i_crit_edge

for.end.i.do.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %tlv_len.1, i32 %decoded_bytes.0.i.lcssa)
  %cmp11.i = icmp ult i32 %tlv_len.1, %decoded_bytes.0.i.lcssa
  %or.cond43.i = select i1 %cmp.i.lcssa, i1 true, i1 %cmp11.i
  %or.cond44.i = select i1 %cmp5.i, i1 %or.cond43.i, i1 false
  br i1 %or.cond44.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %qmi_decode_struct_elem.exit

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %for.end.i.do.end.i_crit_edge
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef %add84, i32 noundef %decoded_bytes.0.i.lcssa, i32 noundef %tlv_len.1, i32 noundef %i.0.i.lcssa, i32 noundef %data_len_value.0.data_len_value.0.data_len_value.0.280) #10
  br label %cleanup

qmi_decode_struct_elem.exit:                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %decoded_bytes.0.i.lcssa)
  %cmp86 = icmp slt i32 %decoded_bytes.0.i.lcssa, 0
  br i1 %cmp86, label %qmi_decode_struct_elem.exit.cleanup_crit_edge, label %qmi_decode_struct_elem.exit.sw.epilog_crit_edge

qmi_decode_struct_elem.exit.sw.epilog_crit_edge:  ; preds = %qmi_decode_struct_elem.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

qmi_decode_struct_elem.exit.cleanup_crit_edge:    ; preds = %qmi_decode_struct_elem.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb95:                                          ; preds = %if.end74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %string_len.i)
  %54 = ptrtoint ptr %string_len.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %string_len.i, align 4
  br i1 %cmp3220, label %sw.bb95.if.end.i214_crit_edge, label %if.else.i

sw.bb95.if.end.i214_crit_edge:                    ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i214

if.else.i:                                        ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #9
  %elem_len.i = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.3, i32 0, i32 1
  %55 = ptrtoint ptr %elem_len.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %elem_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %56)
  %cmp1.i211 = icmp ult i32 %56, 256
  %cond.i = select i1 %cmp1.i211, i32 1, i32 2
  %57 = call ptr @memcpy(ptr %string_len.i, ptr %buf_src.2, i32 %cond.i)
  %58 = ptrtoint ptr %string_len.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %string_len.i.0.string_len.i.0.string_len.i.0.string_len.i.0.string_len.0..pr.i = load i32, ptr %string_len.i, align 4
  br label %if.end.i214

if.end.i214:                                      ; preds = %if.else.i, %sw.bb95.if.end.i214_crit_edge
  %59 = phi i32 [ %string_len.i.0.string_len.i.0.string_len.i.0.string_len.i.0.string_len.0..pr.i, %if.else.i ], [ %tlv_len.1, %sw.bb95.if.end.i214_crit_edge ]
  %decoded_bytes.0.i212 = phi i32 [ %cond.i, %if.else.i ], [ 0, %sw.bb95.if.end.i214_crit_edge ]
  %elem_len2.i = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.3, i32 0, i32 1
  %60 = ptrtoint ptr %elem_len2.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %elem_len2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp3.i213 = icmp ugt i32 %59, %61
  br i1 %cmp3.i213, label %do.end.i215, label %if.else7.i

do.end.i215:                                      ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef %59, i32 noundef %61) #10
  br label %qmi_decode_string_elem.exit.thread

if.else7.i:                                       ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %tlv_len.1)
  %cmp8.i = icmp ugt i32 %59, %tlv_len.1
  br i1 %cmp8.i, label %do.end12.i, label %if.end16.i

do.end12.i:                                       ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33, i32 noundef %59, i32 noundef %tlv_len.1) #10
  br label %qmi_decode_string_elem.exit.thread

if.end16.i:                                       ; preds = %if.else7.i
  %elem_size.i216 = getelementptr inbounds %struct.qmi_elem_info, ptr %temp_ei.3, i32 0, i32 2
  %62 = ptrtoint ptr %elem_size.i216 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %elem_size.i216, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp9.not.i.i = icmp eq i32 %59, 0
  br i1 %cmp9.not.i.i, label %if.end16.i.qmi_decode_string_elem.exit_crit_edge, label %do.body.i43.preheader.i

if.end16.i.qmi_decode_string_elem.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %qmi_decode_string_elem.exit

do.body.i43.preheader.i:                          ; preds = %if.end16.i
  %add.ptr.i217 = getelementptr i8, ptr %buf_src.2, i32 %decoded_bytes.0.i212
  br label %do.body.i43.i

do.body.i43.i:                                    ; preds = %do.body.i43.i.do.body.i43.i_crit_edge, %do.body.i43.preheader.i
  %i.012.i36.i = phi i32 [ %inc.i41.i, %do.body.i43.i.do.body.i43.i_crit_edge ], [ 0, %do.body.i43.preheader.i ]
  %buf_dst.addr.011.i37.i = phi ptr [ %add.ptr.i39.i, %do.body.i43.i.do.body.i43.i_crit_edge ], [ %buf_dst.1, %do.body.i43.preheader.i ]
  %buf_src.addr.010.i38.i = phi ptr [ %add.ptr1.i40.i, %do.body.i43.i.do.body.i43.i_crit_edge ], [ %add.ptr.i217, %do.body.i43.preheader.i ]
  %64 = call ptr @memcpy(ptr %buf_dst.addr.011.i37.i, ptr %buf_src.addr.010.i38.i, i32 %63)
  %add.ptr.i39.i = getelementptr i8, ptr %buf_dst.addr.011.i37.i, i32 %63
  %add.ptr1.i40.i = getelementptr i8, ptr %buf_src.addr.010.i38.i, i32 %63
  %inc.i41.i = add nuw i32 %i.012.i36.i, 1
  %exitcond.not.i42.i = icmp eq i32 %inc.i41.i, %59
  br i1 %exitcond.not.i42.i, label %for.end.loopexit.i.i, label %do.body.i43.i.do.body.i43.i_crit_edge

do.body.i43.i.do.body.i43.i_crit_edge:            ; preds = %do.body.i43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i43.i

for.end.loopexit.i.i:                             ; preds = %do.body.i43.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = mul i32 %63, %59
  br label %qmi_decode_string_elem.exit

qmi_decode_string_elem.exit.thread:               ; preds = %do.end12.i, %do.end.i215
  %retval.0.i218.ph = phi i32 [ -14, %do.end12.i ], [ -525, %do.end.i215 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %string_len.i)
  br label %cleanup

qmi_decode_string_elem.exit:                      ; preds = %for.end.loopexit.i.i, %if.end16.i.qmi_decode_string_elem.exit_crit_edge
  %rc.0.lcssa.i.i = phi i32 [ 0, %if.end16.i.qmi_decode_string_elem.exit_crit_edge ], [ %65, %for.end.loopexit.i.i ]
  %add.ptr18.i = getelementptr i8, ptr %buf_dst.1, i32 %59
  %66 = ptrtoint ptr %add.ptr18.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %add.ptr18.i, align 1
  %add19.i = add i32 %rc.0.lcssa.i.i, %decoded_bytes.0.i212
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %string_len.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add19.i)
  %cmp97 = icmp slt i32 %add19.i, 0
  br i1 %cmp97, label %qmi_decode_string_elem.exit.cleanup_crit_edge, label %qmi_decode_string_elem.exit.sw.epilog_crit_edge

qmi_decode_string_elem.exit.sw.epilog_crit_edge:  ; preds = %qmi_decode_string_elem.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

qmi_decode_string_elem.exit.cleanup_crit_edge:    ; preds = %qmi_decode_string_elem.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end108:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.24) #10
  br label %cleanup

sw.epilog:                                        ; preds = %qmi_decode_string_elem.exit.sw.epilog_crit_edge, %qmi_decode_struct_elem.exit.sw.epilog_crit_edge, %for.end.loopexit.i, %sw.bb.sw.epilog_crit_edge
  %add19.i.sink = phi i32 [ 0, %sw.bb.sw.epilog_crit_edge ], [ %48, %for.end.loopexit.i ], [ %decoded_bytes.0.i.lcssa, %qmi_decode_struct_elem.exit.sw.epilog_crit_edge ], [ %add19.i, %qmi_decode_string_elem.exit.sw.epilog_crit_edge ]
  %add.ptr102 = getelementptr i8, ptr %buf_src.2, i32 %add19.i.sink
  %decoded_bytes.3 = add i32 %add19.i.sink, %decoded_bytes.2
  %add.ptr111 = getelementptr %struct.qmi_elem_info, ptr %temp_ei.3, i32 1
  br label %while.cond.backedge

cleanup:                                          ; preds = %do.end108, %qmi_decode_string_elem.exit.cleanup_crit_edge, %qmi_decode_string_elem.exit.thread, %qmi_decode_struct_elem.exit.cleanup_crit_edge, %do.end.i, %for.body.i.cleanup_crit_edge, %do.end68, %while.cond.backedge.cleanup_crit_edge, %do.end14, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end108 ], [ -525, %do.end68 ], [ -22, %do.end14 ], [ %retval.0.i218.ph, %qmi_decode_string_elem.exit.thread ], [ -14, %do.end.i ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %for.body.i.cleanup_crit_edge ], [ %decoded_bytes.0.be, %while.cond.backedge.cleanup_crit_edge ], [ %add19.i, %qmi_decode_string_elem.exit.cleanup_crit_edge ], [ %decoded_bytes.0.i.lcssa, %qmi_decode_struct_elem.exit.cleanup_crit_edge ], [ %decoded_bytes.0254, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_len_value)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/soc/qcom/qmi_encdec.c", i32 728, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qmi_encode_message._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qmi_encode_message._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_qmi_encode_message, !7, !"__ksymtab_qmi_encode_message", i1 false, i1 false}
!7 = !{!"../drivers/soc/qcom/qmi_encdec.c", i32 757, i32 1}
!8 = !{ptr @__ksymtab_qmi_decode_message, !9, !"__ksymtab_qmi_decode_message", i1 false, i1 false}
!9 = !{!"../drivers/soc/qcom/qmi_encdec.c", i32 781, i32 1}
!10 = !{ptr @qmi_response_type_v01_ei, !11, !"qmi_response_type_v01_ei", i1 false, i1 false}
!11 = !{!"../drivers/soc/qcom/qmi_encdec.c", i32 784, i32 22}
!12 = !{ptr @__ksymtab_qmi_response_type_v01_ei, !13, !"__ksymtab_qmi_response_type_v01_ei", i1 false, i1 false}
!13 = !{!"../drivers/soc/qcom/qmi_encdec.c", i32 813, i32 1}
!14 = !{ptr @__UNIQUE_ID_description179, !15, !"__UNIQUE_ID_description179", i1 false, i1 false}
!15 = !{!"../drivers/soc/qcom/qmi_encdec.c", i32 815, i32 1}
!16 = !{ptr @__UNIQUE_ID_file180, !17, !"__UNIQUE_ID_file180", i1 false, i1 false}
!17 = !{!"../drivers/soc/qcom/qmi_encdec.c", i32 816, i32 1}
!18 = !{ptr @__UNIQUE_ID_license181, !17, !"__UNIQUE_ID_license181", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/soc/qcom/qmi_encdec.c", i32 326, i32 4}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @qmi_encode._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @qmi_encode._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/soc/qcom/qmi_encdec.c", i32 347, i32 5}
!26 = !{ptr @qmi_encode._entry.5, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @qmi_encode._entry_ptr.7, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/soc/qcom/qmi_encdec.c", i32 372, i32 5}
!30 = !{ptr @qmi_encode._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @qmi_encode._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/soc/qcom/qmi_encdec.c", i32 407, i32 4}
!34 = !{ptr @qmi_encode._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @qmi_encode._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/soc/qcom/qmi_encdec.c", i32 209, i32 4}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @qmi_encode_struct_elem._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @qmi_encode_struct_elem._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/soc/qcom/qmi_encdec.c", i32 250, i32 3}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @qmi_encode_string_elem._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @qmi_encode_string_elem._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/soc/qcom/qmi_encdec.c", i32 258, i32 4}
!48 = !{ptr @qmi_encode_string_elem._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @qmi_encode_string_elem._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @qmi_encode_string_elem._entry.21, !51, !"_entry", i1 false, i1 false}
!51 = !{!"../drivers/soc/qcom/qmi_encdec.c", i32 264, i32 4}
!52 = !{ptr @qmi_encode_string_elem._entry_ptr.22, !51, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/soc/qcom/qmi_encdec.c", i32 620, i32 5}
!55 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @qmi_decode._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @qmi_decode._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/soc/qcom/qmi_encdec.c", i32 659, i32 4}
!60 = !{ptr @qmi_decode._entry.25, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @qmi_decode._entry_ptr.27, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @qmi_decode._entry.28, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../drivers/soc/qcom/qmi_encdec.c", i32 695, i32 4}
!64 = !{ptr @qmi_decode._entry_ptr.29, !63, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/soc/qcom/qmi_encdec.c", i32 491, i32 3}
!67 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @qmi_decode_struct_elem._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @qmi_decode_struct_elem._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/soc/qcom/qmi_encdec.c", i32 538, i32 3}
!72 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @qmi_decode_string_elem._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @qmi_decode_string_elem._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/soc/qcom/qmi_encdec.c", i32 542, i32 3}
!77 = !{ptr @qmi_decode_string_elem._entry.34, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @qmi_decode_string_elem._entry_ptr.36, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
