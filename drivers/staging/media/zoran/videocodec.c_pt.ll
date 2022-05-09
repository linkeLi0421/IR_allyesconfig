; ModuleID = '/llk/IR_all_yes/drivers/staging/media/zoran/videocodec.c_pt.bc'
source_filename = "../drivers/staging/media/zoran/videocodec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+videocodec_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_videocodec_attach\09\09\09\09"
module asm "\09.long\09__crc_videocodec_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_videocodec_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22videocodec_attach\22\09\09\09\09\09"
module asm "__kstrtabns_videocodec_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+videocodec_detach\22, \22a\22\09"
module asm "\09.weak\09__crc_videocodec_detach\09\09\09\09"
module asm "\09.long\09__crc_videocodec_detach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_videocodec_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22videocodec_detach\22\09\09\09\09\09"
module asm "__kstrtabns_videocodec_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+videocodec_register\22, \22a\22\09"
module asm "\09.weak\09__crc_videocodec_register\09\09\09\09"
module asm "\09.long\09__crc_videocodec_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_videocodec_register:\09\09\09\09\09"
module asm "\09.asciz \09\22videocodec_register\22\09\09\09\09\09"
module asm "__kstrtabns_videocodec_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+videocodec_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_videocodec_unregister\09\09\09\09"
module asm "\09.long\09__crc_videocodec_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_videocodec_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22videocodec_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_videocodec_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.videocodec_master = type { [32 x i8], i32, i32, i32, ptr, ptr, ptr }
%struct.videocodec = type { ptr, [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.codec_list = type { ptr, i32, ptr, ptr }
%struct.attached_list = type { ptr, ptr }

@__param_str_debug = internal constant [17 x i8] c"videocodec.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype213 = internal constant [30 x i8] c"videocodec.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug214 = internal constant [40 x i8] c"videocodec.parm=debug:Debug level (0-4)\00", section ".modinfo", align 1
@codeclist_top = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@videocodec_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013%s: no data\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"videocodec_attach\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/staging/media/zoran/videocodec.c\00", [55 x i8] zeroinitializer }, align 32
@videocodec_attach._entry_ptr = internal global ptr @videocodec_attach._entry, section ".printk_index", align 4
@videocodec_attach._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: '%s', flags %lx, magic %lx\0A\00", [32 x i8] zeroinitializer }, align 32
@videocodec_attach._entry_ptr.5 = internal global ptr @videocodec_attach._entry.3, section ".printk_index", align 4
@videocodec_attach._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: no device available\0A\00", [37 x i8] zeroinitializer }, align 32
@videocodec_attach._entry_ptr.8 = internal global ptr @videocodec_attach._entry.6, section ".printk_index", align 4
@videocodec_attach._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: try '%s'\0A\00", [18 x i8] zeroinitializer }, align 32
@videocodec_attach._entry_ptr.11 = internal global ptr @videocodec_attach._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"[%d]\00", [27 x i8] zeroinitializer }, align 32
@videocodec_attach._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: '%s'\0A\00", [22 x i8] zeroinitializer }, align 32
@videocodec_attach._entry_ptr.15 = internal global ptr @videocodec_attach._entry.13, section ".printk_index", align 4
@videocodec_attach._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"videocodec: first element\0A\00", [37 x i8] zeroinitializer }, align 32
@videocodec_attach._entry_ptr.18 = internal global ptr @videocodec_attach._entry.16, section ".printk_index", align 4
@videocodec_attach._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"videocodec: in after '%s'\0A\00", [37 x i8] zeroinitializer }, align 32
@videocodec_attach._entry_ptr.21 = internal global ptr @videocodec_attach._entry.19, section ".printk_index", align 4
@videocodec_attach._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: no codec found!\0A\00", [41 x i8] zeroinitializer }, align 32
@videocodec_attach._entry_ptr.24 = internal global ptr @videocodec_attach._entry.22, section ".printk_index", align 4
@__kstrtab_videocodec_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_videocodec_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_videocodec_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @videocodec_attach to i32), ptr @__kstrtab_videocodec_attach, ptr @__kstrtabns_videocodec_attach }, section "___ksymtab+videocodec_attach", align 4
@videocodec_detach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.25, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"videocodec_detach\00", [46 x i8] zeroinitializer }, align 32
@videocodec_detach._entry_ptr = internal global ptr @videocodec_detach._entry, section ".printk_index", align 4
@videocodec_detach._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: '%s', type: %x, flags %lx, magic %lx\0A\00", [54 x i8] zeroinitializer }, align 32
@videocodec_detach._entry_ptr.28 = internal global ptr @videocodec_detach._entry.26, section ".printk_index", align 4
@videocodec_detach._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: no device left...\0A\00", [39 x i8] zeroinitializer }, align 32
@videocodec_detach._entry_ptr.31 = internal global ptr @videocodec_detach._entry.29, section ".printk_index", align 4
@videocodec_detach._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.25, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@videocodec_detach._entry_ptr.33 = internal global ptr @videocodec_detach._entry.32, section ".printk_index", align 4
@videocodec_detach._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.25, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\013%s: '%s'\0A\00", [20 x i8] zeroinitializer }, align 32
@videocodec_detach._entry_ptr.36 = internal global ptr @videocodec_detach._entry.34, section ".printk_index", align 4
@videocodec_detach._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.25, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"videocodec: delete first\0A\00", [38 x i8] zeroinitializer }, align 32
@videocodec_detach._entry_ptr.39 = internal global ptr @videocodec_detach._entry.37, section ".printk_index", align 4
@videocodec_detach._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.25, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"videocodec: delete middle\0A\00", [37 x i8] zeroinitializer }, align 32
@videocodec_detach._entry_ptr.42 = internal global ptr @videocodec_detach._entry.40, section ".printk_index", align 4
@videocodec_detach._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.25, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: given codec not found!\0A\00", [34 x i8] zeroinitializer }, align 32
@videocodec_detach._entry_ptr.45 = internal global ptr @videocodec_detach._entry.43, section ".printk_index", align 4
@__kstrtab_videocodec_detach = external dso_local constant [0 x i8], align 1
@__kstrtabns_videocodec_detach = external dso_local constant [0 x i8], align 1
@__ksymtab_videocodec_detach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @videocodec_detach to i32), ptr @__kstrtab_videocodec_detach, ptr @__kstrtabns_videocodec_detach }, section "___ksymtab+videocodec_detach", align 4
@videocodec_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\013%s: no data!\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"videocodec_register\00", [44 x i8] zeroinitializer }, align 32
@videocodec_register._entry_ptr = internal global ptr @videocodec_register._entry, section ".printk_index", align 4
@videocodec_register._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"videocodec: register '%s', type: %x, flags %lx, magic %lx\0A\00", [37 x i8] zeroinitializer }, align 32
@videocodec_register._entry_ptr.50 = internal global ptr @videocodec_register._entry.48, section ".printk_index", align 4
@videocodec_register._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"videocodec: hooked in as first element\0A\00", [56 x i8] zeroinitializer }, align 32
@videocodec_register._entry_ptr.53 = internal global ptr @videocodec_register._entry.51, section ".printk_index", align 4
@videocodec_register._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.47, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"videocodec: hooked in after '%s'\0A\00", [62 x i8] zeroinitializer }, align 32
@videocodec_register._entry_ptr.56 = internal global ptr @videocodec_register._entry.54, section ".printk_index", align 4
@__kstrtab_videocodec_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_videocodec_register = external dso_local constant [0 x i8], align 1
@__ksymtab_videocodec_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @videocodec_register to i32), ptr @__kstrtab_videocodec_register, ptr @__kstrtabns_videocodec_register }, section "___ksymtab+videocodec_register", align 4
@videocodec_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.57, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"videocodec_unregister\00", [42 x i8] zeroinitializer }, align 32
@videocodec_unregister._entry_ptr = internal global ptr @videocodec_unregister._entry, section ".printk_index", align 4
@videocodec_unregister._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"videocodec: unregister '%s', type: %x, flags %lx, magic %lx\0A\00", [35 x i8] zeroinitializer }, align 32
@videocodec_unregister._entry_ptr.60 = internal global ptr @videocodec_unregister._entry.58, section ".printk_index", align 4
@videocodec_unregister._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.57, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@videocodec_unregister._entry_ptr.62 = internal global ptr @videocodec_unregister._entry.61, section ".printk_index", align 4
@videocodec_unregister._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.57, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013videocodec: '%s' is used\0A\00", [36 x i8] zeroinitializer }, align 32
@videocodec_unregister._entry_ptr.65 = internal global ptr @videocodec_unregister._entry.63, section ".printk_index", align 4
@videocodec_unregister._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.57, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"videocodec: unregister '%s' is ok.\0A\00", [60 x i8] zeroinitializer }, align 32
@videocodec_unregister._entry_ptr.68 = internal global ptr @videocodec_unregister._entry.66, section ".printk_index", align 4
@videocodec_unregister._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.57, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"videocodec: delete first element\0A\00", [62 x i8] zeroinitializer }, align 32
@videocodec_unregister._entry_ptr.71 = internal global ptr @videocodec_unregister._entry.69, section ".printk_index", align 4
@videocodec_unregister._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.57, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"videocodec: delete middle element\0A\00", [61 x i8] zeroinitializer }, align 32
@videocodec_unregister._entry_ptr.74 = internal global ptr @videocodec_unregister._entry.72, section ".printk_index", align 4
@videocodec_unregister._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.57, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@videocodec_unregister._entry_ptr.76 = internal global ptr @videocodec_unregister._entry.75, section ".printk_index", align 4
@__kstrtab_videocodec_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_videocodec_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_videocodec_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @videocodec_unregister to i32), ptr @__kstrtab_videocodec_unregister, ptr @__kstrtabns_videocodec_unregister }, section "___ksymtab+videocodec_unregister", align 4
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"videocodecs\00", [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_videocodec__215_324_videocodec_init6 = internal global ptr @videocodec_init, section ".initcall6.init", align 4
@__exitcall_videocodec_exit = internal global ptr @videocodec_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author216 = internal constant [54 x i8] c"videocodec.author=Wolfgang Scherr <scherr@net4you.at>\00", section ".modinfo", align 1
@__UNIQUE_ID_description217 = internal constant [69 x i8] c"videocodec.description=Intermediate API module for video codecs v0.2\00", section ".modinfo", align 1
@__UNIQUE_ID_file218 = internal constant [55 x i8] c"videocodec.file=drivers/staging/media/zoran/videocodec\00", section ".modinfo", align 1
@__UNIQUE_ID_license219 = internal constant [23 x i8] c"videocodec.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@videocodec_init.videocodec_proc_entry = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@videocodec_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016Linux video codec intermediate layer: %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"videocodec_init\00", [16 x i8] zeroinitializer }, align 32
@videocodec_init._entry_ptr = internal global ptr @videocodec_init._entry, section ".printk_index", align 4
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"v0.2\00", [27 x i8] zeroinitializer }, align 32
@videocodec_init._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.79, ptr @.str.2, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013videocodec: can't init procfs.\0A\00", [62 x i8] zeroinitializer }, align 32
@videocodec_init._entry_ptr.83 = internal global ptr @videocodec_init._entry.81, section ".printk_index", align 4
@.str.84 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"<S>lave or attached <M>aster name  type flags    magic    \00", [37 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(connected as)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"S %32s %04x %08lx %08lx (TEMPLATE)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"M %32s %04x %08lx %08lx (%s)\0A\00", [34 x i8] zeroinitializer }, align 32
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 29, i32 12 }
@___asan_gen_.91 = private unnamed_addr constant [14 x i8] c"codeclist_top\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 51, i32 27 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 65, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 69, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 73, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 81, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 91, i32 59 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 95, i32 5 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 104, i32 6 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 109, i32 6 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 121, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 139, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 143, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 147, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 158, i32 6 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 161, i32 6 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 166, i32 6 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 169, i32 6 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 183, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 193, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 197, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 208, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 213, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 226, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 230, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 235, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 242, i32 5 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 245, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 249, i32 5 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 253, i32 5 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 263, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 320, i32 20 }
@___asan_gen_.268 = private unnamed_addr constant [22 x i8] c"videocodec_proc_entry\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 304, i32 32 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 307, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 312, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 274, i32 16 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 275, i32 16 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 278, i32 17 }
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.299 = private constant [44 x i8] c"../drivers/staging/media/zoran/videocodec.c\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 283, i32 18 }
@llvm.compiler.used = appending global [115 x ptr] [ptr @__UNIQUE_ID_author216, ptr @__UNIQUE_ID_debug214, ptr @__UNIQUE_ID_debugtype213, ptr @__UNIQUE_ID_description217, ptr @__UNIQUE_ID_file218, ptr @__UNIQUE_ID_license219, ptr @__exitcall_videocodec_exit, ptr @__initcall__kmod_videocodec__215_324_videocodec_init6, ptr @__ksymtab_videocodec_attach, ptr @__ksymtab_videocodec_detach, ptr @__ksymtab_videocodec_register, ptr @__ksymtab_videocodec_unregister, ptr @__param_debug, ptr @videocodec_attach._entry, ptr @videocodec_attach._entry.13, ptr @videocodec_attach._entry.16, ptr @videocodec_attach._entry.19, ptr @videocodec_attach._entry.22, ptr @videocodec_attach._entry.3, ptr @videocodec_attach._entry.6, ptr @videocodec_attach._entry.9, ptr @videocodec_attach._entry_ptr, ptr @videocodec_attach._entry_ptr.11, ptr @videocodec_attach._entry_ptr.15, ptr @videocodec_attach._entry_ptr.18, ptr @videocodec_attach._entry_ptr.21, ptr @videocodec_attach._entry_ptr.24, ptr @videocodec_attach._entry_ptr.5, ptr @videocodec_attach._entry_ptr.8, ptr @videocodec_detach._entry, ptr @videocodec_detach._entry.26, ptr @videocodec_detach._entry.29, ptr @videocodec_detach._entry.32, ptr @videocodec_detach._entry.34, ptr @videocodec_detach._entry.37, ptr @videocodec_detach._entry.40, ptr @videocodec_detach._entry.43, ptr @videocodec_detach._entry_ptr, ptr @videocodec_detach._entry_ptr.28, ptr @videocodec_detach._entry_ptr.31, ptr @videocodec_detach._entry_ptr.33, ptr @videocodec_detach._entry_ptr.36, ptr @videocodec_detach._entry_ptr.39, ptr @videocodec_detach._entry_ptr.42, ptr @videocodec_detach._entry_ptr.45, ptr @videocodec_exit, ptr @videocodec_init._entry, ptr @videocodec_init._entry.81, ptr @videocodec_init._entry_ptr, ptr @videocodec_init._entry_ptr.83, ptr @videocodec_register._entry, ptr @videocodec_register._entry.48, ptr @videocodec_register._entry.51, ptr @videocodec_register._entry.54, ptr @videocodec_register._entry_ptr, ptr @videocodec_register._entry_ptr.50, ptr @videocodec_register._entry_ptr.53, ptr @videocodec_register._entry_ptr.56, ptr @videocodec_unregister._entry, ptr @videocodec_unregister._entry.58, ptr @videocodec_unregister._entry.61, ptr @videocodec_unregister._entry.63, ptr @videocodec_unregister._entry.66, ptr @videocodec_unregister._entry.69, ptr @videocodec_unregister._entry.72, ptr @videocodec_unregister._entry.75, ptr @videocodec_unregister._entry_ptr, ptr @videocodec_unregister._entry_ptr.60, ptr @videocodec_unregister._entry_ptr.62, ptr @videocodec_unregister._entry_ptr.65, ptr @videocodec_unregister._entry_ptr.68, ptr @videocodec_unregister._entry_ptr.71, ptr @videocodec_unregister._entry_ptr.74, ptr @videocodec_unregister._entry_ptr.76, ptr @debug, ptr @codeclist_top, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.77, ptr @videocodec_init.videocodec_proc_entry, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codeclist_top to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_attach._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_attach._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_attach._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_attach._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_attach._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_attach._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_attach._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_detach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_detach._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_detach._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_detach._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_detach._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_detach._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_detach._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_detach._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_register._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_register._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_register._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_unregister._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_unregister._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_unregister._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_unregister._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_unregister._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_unregister._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_unregister._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_init.videocodec_proc_entry to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @videocodec_init._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @videocodec_attach(ptr noundef %master) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @codeclist_top, align 4
  %tobool.not = icmp eq ptr %master, null
  br i1 %tobool.not, label %do.end, label %do.body1

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %do.end5, label %do.body1.do.end10_crit_edge

do.body1.do.end10_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end5:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.videocodec_master, ptr %master, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %magic = getelementptr inbounds %struct.videocodec_master, ptr %master, i32 0, i32 1
  %4 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %magic, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef nonnull %master, i32 noundef %3, i32 noundef %5) #10
  br label %do.end10

do.end10:                                         ; preds = %do.end5, %do.body1.do.end10_crit_edge
  %tobool11.not = icmp eq ptr %0, null
  br i1 %tobool11.not, label %do.end15, label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end10
  %flags20 = getelementptr inbounds %struct.videocodec_master, ptr %master, i32 0, i32 2
  br label %while.body

do.end15:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1) #10
  br label %cleanup

while.body:                                       ; preds = %if.end113.while.body_crit_edge, %while.cond.preheader
  %h.0171 = phi ptr [ %0, %while.cond.preheader ], [ %40, %if.end113.while.body_crit_edge ]
  %6 = ptrtoint ptr %flags20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags20, align 4
  %8 = ptrtoint ptr %h.0171 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %h.0171, align 4
  %flags22 = getelementptr inbounds %struct.videocodec, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags22, align 4
  %and = and i32 %11, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %7)
  %cmp24 = icmp eq i32 %and, %7
  br i1 %cmp24, label %do.body26, label %while.body.if.end113_crit_edge

while.body.if.end113_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

do.body26:                                        ; preds = %while.body
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp27 = icmp sgt i32 %12, 3
  br i1 %cmp27, label %do.end31, label %do.body26.do.end39_crit_edge

do.body26.do.end39_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

do.end31:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %name34 = getelementptr inbounds %struct.videocodec, ptr %9, i32 0, i32 1
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, ptr noundef %name34) #10
  br label %do.end39

do.end39:                                         ; preds = %do.end31, %do.body26.do.end39_crit_edge
  %13 = ptrtoint ptr %h.0171 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %h.0171, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call41 = tail call zeroext i1 @try_module_get(ptr noundef %16) #7
  br i1 %call41, label %if.end43, label %do.end39.cleanup_crit_edge

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end43:                                         ; preds = %do.end39
  %17 = ptrtoint ptr %h.0171 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %h.0171, align 4
  %call45 = tail call ptr @kmemdup(ptr noundef %18, i32 noundef 92, i32 noundef 3264) #7
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %out_module_put, label %if.end48

if.end48:                                         ; preds = %if.end43
  %name49 = getelementptr inbounds %struct.videocodec, ptr %call45, i32 0, i32 1
  %call51 = tail call i32 @strlen(ptr noundef %name49) #11
  %add.ptr = getelementptr i8, ptr %name49, i32 %call51
  %sub = sub i32 32, %call51
  %attached = getelementptr inbounds %struct.codec_list, ptr %h.0171, i32 0, i32 1
  %19 = ptrtoint ptr %attached to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %attached, align 4
  %call54 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.12, i32 noundef %20)
  %master_data = getelementptr inbounds %struct.videocodec, ptr %call45, i32 0, i32 5
  %21 = ptrtoint ptr %master_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %master, ptr %master_data, align 4
  %setup = getelementptr inbounds %struct.videocodec, ptr %call45, i32 0, i32 7
  %22 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %setup, align 4
  %call55 = tail call i32 %23(ptr noundef nonnull %call45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %do.body58, label %if.else111

do.body58:                                        ; preds = %if.end48
  %attached.le = getelementptr inbounds %struct.codec_list, ptr %h.0171, i32 0, i32 1
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp59 = icmp sgt i32 %24, 2
  br i1 %cmp59, label %do.end63, label %do.body58.do.end70_crit_edge

do.body58.do.end70_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end70

do.end63:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, ptr noundef %name49) #10
  br label %do.end70

do.end70:                                         ; preds = %do.end63, %do.body58.do.end70_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 8) #12
  %tobool72.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool72.not, label %do.end70.out_kfree_crit_edge, label %if.end74

do.end70.out_kfree_crit_edge:                     ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_kfree

if.end74:                                         ; preds = %do.end70
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call45, ptr %call7.i.i, align 8
  %list = getelementptr inbounds %struct.codec_list, ptr %h.0171, i32 0, i32 2
  %27 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %list, align 4
  %tobool76.not = icmp eq ptr %28, null
  br i1 %tobool76.not, label %if.then77, label %if.end74.while.cond90_crit_edge

if.end74.while.cond90_crit_edge:                  ; preds = %if.end74
  br label %while.cond90

if.then77:                                        ; preds = %if.end74
  %29 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %list, align 4
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp80 = icmp sgt i32 %30, 3
  br i1 %cmp80, label %do.end84, label %if.then77.if.end109_crit_edge

if.then77.if.end109_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

do.end84:                                         ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #10
  br label %if.end109

while.cond90:                                     ; preds = %while.cond90.while.cond90_crit_edge, %if.end74.while.cond90_crit_edge
  %a.0 = phi ptr [ %32, %while.cond90.while.cond90_crit_edge ], [ %28, %if.end74.while.cond90_crit_edge ]
  %next = getelementptr inbounds %struct.attached_list, ptr %a.0, i32 0, i32 1
  %31 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %next, align 4
  %tobool91.not = icmp eq ptr %32, null
  br i1 %tobool91.not, label %while.end, label %while.cond90.while.cond90_crit_edge

while.cond90.while.cond90_crit_edge:              ; preds = %while.cond90
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond90

while.end:                                        ; preds = %while.cond90
  %next.le = getelementptr inbounds %struct.attached_list, ptr %a.0, i32 0, i32 1
  %33 = ptrtoint ptr %next.le to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i, ptr %next.le, align 4
  %34 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp96 = icmp sgt i32 %34, 3
  br i1 %cmp96, label %do.end100, label %while.end.if.end109_crit_edge

while.end.if.end109_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

do.end100:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %h.0171 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %h.0171, align 4
  %name103 = getelementptr inbounds %struct.videocodec, ptr %36, i32 0, i32 1
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name103) #10
  br label %if.end109

if.end109:                                        ; preds = %do.end100, %while.end.if.end109_crit_edge, %do.end84, %if.then77.if.end109_crit_edge
  %37 = ptrtoint ptr %attached.le to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %attached.le, align 4
  %add = add i32 %38, 1
  store i32 %add, ptr %attached.le, align 4
  br label %cleanup

if.else111:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call45) #7
  br label %if.end113

if.end113:                                        ; preds = %if.else111, %while.body.if.end113_crit_edge
  %next114 = getelementptr inbounds %struct.codec_list, ptr %h.0171, i32 0, i32 3
  %39 = ptrtoint ptr %next114 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %next114, align 4
  %tobool19.not = icmp eq ptr %40, null
  br i1 %tobool19.not, label %do.end118, label %if.end113.while.body_crit_edge

if.end113.while.body_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.end118:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1) #10
  br label %cleanup

out_module_put:                                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %h.0171 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %h.0171, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  tail call void @module_put(ptr noundef %44) #7
  br label %out_kfree

out_kfree:                                        ; preds = %out_module_put, %do.end70.out_kfree_crit_edge
  tail call void @kfree(ptr noundef %call45) #7
  br label %cleanup

cleanup:                                          ; preds = %out_kfree, %do.end118, %if.end109, %do.end39.cleanup_crit_edge, %do.end15, %do.end
  %retval.0 = phi ptr [ %call45, %if.end109 ], [ null, %out_kfree ], [ null, %do.end118 ], [ null, %do.end15 ], [ null, %do.end ], [ null, %do.end39.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @videocodec_detach(ptr noundef %codec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @codeclist_top, align 4
  %tobool.not = icmp eq ptr %codec, null
  br i1 %tobool.not, label %do.end, label %do.body1

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.25) #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %do.end5, label %do.body1.do.end10_crit_edge

do.body1.do.end10_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end5:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 1
  %type = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %flags = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %magic = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 2
  %6 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %magic, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, ptr noundef %name, i32 noundef %3, i32 noundef %5, i32 noundef %7) #10
  br label %do.end10

do.end10:                                         ; preds = %do.end5, %do.body1.do.end10_crit_edge
  %tobool11.not = icmp eq ptr %0, null
  br i1 %tobool11.not, label %do.end15, label %do.end10.while.body_crit_edge

do.end10.while.body_crit_edge:                    ; preds = %do.end10
  br label %while.body

do.end15:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.25) #10
  br label %cleanup

while.body:                                       ; preds = %while.end.while.body_crit_edge, %do.end10.while.body_crit_edge
  %h.0136 = phi ptr [ %37, %while.end.while.body_crit_edge ], [ %0, %do.end10.while.body_crit_edge ]
  %list = getelementptr inbounds %struct.codec_list, ptr %h.0136, i32 0, i32 2
  %8 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %8)
  %a.0131 = load ptr, ptr %list, align 4
  %tobool21.not132 = icmp eq ptr %a.0131, null
  br i1 %tobool21.not132, label %while.body.while.end_crit_edge, label %while.body22.preheader

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body22.preheader:                           ; preds = %while.body
  %9 = ptrtoint ptr %a.0131 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %a.0131, align 4
  %cmp24150 = icmp eq ptr %10, %codec
  br i1 %cmp24150, label %while.body22.preheader.if.then25_crit_edge, label %while.body22.preheader.if.end88_crit_edge

while.body22.preheader.if.end88_crit_edge:        ; preds = %while.body22.preheader
  br label %if.end88

while.body22.preheader.if.then25_crit_edge:       ; preds = %while.body22.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

while.body22:                                     ; preds = %if.end88
  %11 = ptrtoint ptr %a.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %a.0, align 4
  %cmp24 = icmp eq ptr %12, %codec
  br i1 %cmp24, label %while.body22.if.then25_crit_edge, label %while.body22.if.end88_crit_edge

while.body22.if.end88_crit_edge:                  ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

while.body22.if.then25_crit_edge:                 ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

if.then25:                                        ; preds = %while.body22.if.then25_crit_edge, %while.body22.preheader.if.then25_crit_edge
  %a.0134.lcssa = phi ptr [ %a.0, %while.body22.if.then25_crit_edge ], [ %a.0131, %while.body22.preheader.if.then25_crit_edge ]
  %prev.0133.lcssa = phi ptr [ %a.0134151, %while.body22.if.then25_crit_edge ], [ null, %while.body22.preheader.if.then25_crit_edge ]
  %list.le = getelementptr inbounds %struct.codec_list, ptr %h.0136, i32 0, i32 2
  %unset = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 8
  %13 = ptrtoint ptr %unset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %unset, align 4
  %call28 = tail call i32 %14(ptr noundef nonnull %codec) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call28)
  %cmp29 = icmp sgt i32 %call28, -1
  br i1 %cmp29, label %do.body31, label %if.then25.if.end56.sink.split_crit_edge

if.then25.if.end56.sink.split_crit_edge:          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.sink.split

do.body31:                                        ; preds = %if.then25
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp32 = icmp sgt i32 %15, 2
  br i1 %cmp32, label %do.body31.if.end56.sink.split_crit_edge, label %do.body31.if.end56_crit_edge

do.body31.if.end56_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

do.body31.if.end56.sink.split_crit_edge:          ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.sink.split

if.end56.sink.split:                              ; preds = %do.body31.if.end56.sink.split_crit_edge, %if.then25.if.end56.sink.split_crit_edge
  %.str.14.sink = phi ptr [ @.str.14, %do.body31.if.end56.sink.split_crit_edge ], [ @.str.35, %if.then25.if.end56.sink.split_crit_edge ]
  %16 = ptrtoint ptr %a.0134.lcssa to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %a.0134.lcssa, align 4
  %name39 = getelementptr inbounds %struct.videocodec, ptr %17, i32 0, i32 1
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.14.sink, ptr noundef nonnull @.str.25, ptr noundef %name39) #10
  br label %if.end56

if.end56:                                         ; preds = %if.end56.sink.split, %do.body31.if.end56_crit_edge
  %18 = ptrtoint ptr %a.0134.lcssa to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %a.0134.lcssa, align 4
  %master_data55 = getelementptr inbounds %struct.videocodec, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %master_data55 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %master_data55, align 4
  %tobool57.not = icmp eq ptr %prev.0133.lcssa, null
  %next = getelementptr inbounds %struct.attached_list, ptr %a.0134.lcssa, i32 0, i32 1
  %21 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %next, align 4
  br i1 %tobool57.not, label %if.then58, label %if.else71

if.then58:                                        ; preds = %if.end56
  %23 = ptrtoint ptr %list.le to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %list.le, align 4
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp61 = icmp sgt i32 %24, 3
  br i1 %cmp61, label %if.then58.if.end85.sink.split_crit_edge, label %if.then58.if.end85_crit_edge

if.then58.if.end85_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then58.if.end85.sink.split_crit_edge:          ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85.sink.split

if.else71:                                        ; preds = %if.end56
  %next73 = getelementptr inbounds %struct.attached_list, ptr %prev.0133.lcssa, i32 0, i32 1
  %25 = ptrtoint ptr %next73 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %next73, align 4
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp75 = icmp sgt i32 %26, 3
  br i1 %cmp75, label %if.else71.if.end85.sink.split_crit_edge, label %if.else71.if.end85_crit_edge

if.else71.if.end85_crit_edge:                     ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.else71.if.end85.sink.split_crit_edge:          ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85.sink.split

if.end85.sink.split:                              ; preds = %if.else71.if.end85.sink.split_crit_edge, %if.then58.if.end85.sink.split_crit_edge
  %.str.41.sink = phi ptr [ @.str.38, %if.then58.if.end85.sink.split_crit_edge ], [ @.str.41, %if.else71.if.end85.sink.split_crit_edge ]
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.41.sink) #10
  br label %if.end85

if.end85:                                         ; preds = %if.end85.sink.split, %if.else71.if.end85_crit_edge, %if.then58.if.end85_crit_edge
  %27 = ptrtoint ptr %a.0134.lcssa to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %a.0134.lcssa, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  tail call void @module_put(ptr noundef %30) #7
  %31 = ptrtoint ptr %a.0134.lcssa to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %a.0134.lcssa, align 4
  tail call void @kfree(ptr noundef %32) #7
  tail call void @kfree(ptr noundef nonnull %a.0134.lcssa) #7
  %attached = getelementptr inbounds %struct.codec_list, ptr %h.0136, i32 0, i32 1
  %33 = ptrtoint ptr %attached to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %attached, align 4
  %sub = add i32 %34, -1
  store i32 %sub, ptr %attached, align 4
  br label %cleanup

if.end88:                                         ; preds = %while.body22.if.end88_crit_edge, %while.body22.preheader.if.end88_crit_edge
  %a.0134151 = phi ptr [ %a.0, %while.body22.if.end88_crit_edge ], [ %a.0131, %while.body22.preheader.if.end88_crit_edge ]
  %next89 = getelementptr inbounds %struct.attached_list, ptr %a.0134151, i32 0, i32 1
  %35 = ptrtoint ptr %next89 to i32
  call void @__asan_load4_noabort(i32 %35)
  %a.0 = load ptr, ptr %next89, align 4
  %tobool21.not = icmp eq ptr %a.0, null
  br i1 %tobool21.not, label %if.end88.while.end_crit_edge, label %while.body22

if.end88.while.end_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end88.while.end_crit_edge, %while.body.while.end_crit_edge
  %next90 = getelementptr inbounds %struct.codec_list, ptr %h.0136, i32 0, i32 3
  %36 = ptrtoint ptr %next90 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %next90, align 4
  %tobool19.not = icmp eq ptr %37, null
  br i1 %tobool19.not, label %do.end94, label %while.end.while.body_crit_edge

while.end.while.body_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.end94:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.25) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end94, %if.end85, %do.end15, %do.end
  %retval.0 = phi i32 [ 0, %if.end85 ], [ -22, %do.end94 ], [ -6, %do.end15 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @videocodec_register(ptr noundef %codec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @codeclist_top, align 4
  %tobool.not = icmp eq ptr %codec, null
  br i1 %tobool.not, label %do.end, label %do.body1

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47) #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %do.end5, label %do.body1.do.end10_crit_edge

do.body1.do.end10_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end5:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 1
  %type = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %flags = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %magic = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 2
  %6 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %magic, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name, i32 noundef %3, i32 noundef %5, i32 noundef %7) #10
  br label %do.end10

do.end10:                                         ; preds = %do.end5, %do.body1.do.end10_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 16) #12
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %do.end10.cleanup_crit_edge, label %if.end14

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %do.end10
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %codec, ptr %call7.i.i, align 8
  %tobool16.not = icmp eq ptr %0, null
  br i1 %tobool16.not, label %if.then17, label %if.end14.while.cond_crit_edge

if.end14.while.cond_crit_edge:                    ; preds = %if.end14
  br label %while.cond

if.then17:                                        ; preds = %if.end14
  store ptr %call7.i.i, ptr @codeclist_top, align 4
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp19 = icmp sgt i32 %10, 3
  br i1 %cmp19, label %do.end23, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end23:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #10
  br label %cleanup

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end14.while.cond_crit_edge
  %h.0 = phi ptr [ %12, %while.cond.while.cond_crit_edge ], [ %0, %if.end14.while.cond_crit_edge ]
  %next = getelementptr inbounds %struct.codec_list, ptr %h.0, i32 0, i32 3
  %11 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %next, align 4
  %tobool29.not = icmp eq ptr %12, null
  br i1 %tobool29.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %next.le = getelementptr inbounds %struct.codec_list, ptr %h.0, i32 0, i32 3
  %13 = ptrtoint ptr %next.le to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %next.le, align 4
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp33 = icmp sgt i32 %14, 3
  br i1 %cmp33, label %do.end37, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end37:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %h.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %h.0, align 4
  %name40 = getelementptr inbounds %struct.videocodec, ptr %16, i32 0, i32 1
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name40) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %while.end.cleanup_crit_edge, %do.end23, %if.then17.cleanup_crit_edge, %do.end10.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %do.end10.cleanup_crit_edge ], [ 0, %while.end.cleanup_crit_edge ], [ 0, %do.end37 ], [ 0, %if.then17.cleanup_crit_edge ], [ 0, %do.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @videocodec_unregister(ptr noundef %codec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @codeclist_top, align 4
  %tobool.not = icmp eq ptr %codec, null
  br i1 %tobool.not, label %do.end, label %do.body1

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.57) #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %do.end5, label %do.body1.do.end10_crit_edge

do.body1.do.end10_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end5:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 1
  %type = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %flags = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %magic = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 2
  %6 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %magic, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name, i32 noundef %3, i32 noundef %5, i32 noundef %7) #10
  br label %do.end10

do.end10:                                         ; preds = %do.end5, %do.body1.do.end10_crit_edge
  %tobool11.not = icmp eq ptr %0, null
  br i1 %tobool11.not, label %do.end15, label %while.body.preheader

while.body.preheader:                             ; preds = %do.end10
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %cmp21113 = icmp eq ptr %9, %codec
  br i1 %cmp21113, label %while.body.preheader.if.then22_crit_edge, label %while.body.preheader.if.end75_crit_edge

while.body.preheader.if.end75_crit_edge:          ; preds = %while.body.preheader
  br label %if.end75

while.body.preheader.if.then22_crit_edge:         ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

do.end15:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.57) #10
  br label %cleanup

while.body:                                       ; preds = %if.end75
  %10 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %21, align 4
  %cmp21 = icmp eq ptr %11, %codec
  br i1 %cmp21, label %while.body.if.then22_crit_edge, label %while.body.if.end75_crit_edge

while.body.if.end75_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

while.body.if.then22_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

if.then22:                                        ; preds = %while.body.if.then22_crit_edge, %while.body.preheader.if.then22_crit_edge
  %prev.0105.lcssa = phi ptr [ null, %while.body.preheader.if.then22_crit_edge ], [ %h.0104114, %while.body.if.then22_crit_edge ]
  %h.0104.lcssa = phi ptr [ %0, %while.body.preheader.if.then22_crit_edge ], [ %21, %while.body.if.then22_crit_edge ]
  %attached = getelementptr inbounds %struct.codec_list, ptr %h.0104.lcssa, i32 0, i32 1
  %12 = ptrtoint ptr %attached to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool23.not = icmp eq i32 %13, 0
  br i1 %tobool23.not, label %do.body34, label %do.end27

do.end27:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %name30 = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 1
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name30) #10
  br label %cleanup

do.body34:                                        ; preds = %if.then22
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp35 = icmp sgt i32 %14, 2
  br i1 %cmp35, label %do.end39, label %do.body34.do.end47_crit_edge

do.body34.do.end47_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47

do.end39:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  %name42 = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 1
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %name42) #10
  br label %do.end47

do.end47:                                         ; preds = %do.end39, %do.body34.do.end47_crit_edge
  %tobool48.not = icmp eq ptr %prev.0105.lcssa, null
  %next = getelementptr inbounds %struct.codec_list, ptr %h.0104.lcssa, i32 0, i32 3
  %15 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %next, align 4
  br i1 %tobool48.not, label %if.then49, label %if.else

if.then49:                                        ; preds = %do.end47
  store ptr %16, ptr @codeclist_top, align 4
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp51 = icmp sgt i32 %17, 3
  br i1 %cmp51, label %if.then49.if.end74.sink.split_crit_edge, label %if.then49.if.end74_crit_edge

if.then49.if.end74_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then49.if.end74.sink.split_crit_edge:          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.sink.split

if.else:                                          ; preds = %do.end47
  %next62 = getelementptr inbounds %struct.codec_list, ptr %prev.0105.lcssa, i32 0, i32 3
  %18 = ptrtoint ptr %next62 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %next62, align 4
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp64 = icmp sgt i32 %19, 3
  br i1 %cmp64, label %if.else.if.end74.sink.split_crit_edge, label %if.else.if.end74_crit_edge

if.else.if.end74_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.else.if.end74.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.sink.split

if.end74.sink.split:                              ; preds = %if.else.if.end74.sink.split_crit_edge, %if.then49.if.end74.sink.split_crit_edge
  %.str.73.sink = phi ptr [ @.str.70, %if.then49.if.end74.sink.split_crit_edge ], [ @.str.73, %if.else.if.end74.sink.split_crit_edge ]
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.73.sink) #10
  br label %if.end74

if.end74:                                         ; preds = %if.end74.sink.split, %if.else.if.end74_crit_edge, %if.then49.if.end74_crit_edge
  tail call void @kfree(ptr noundef nonnull %h.0104.lcssa) #7
  br label %cleanup

if.end75:                                         ; preds = %while.body.if.end75_crit_edge, %while.body.preheader.if.end75_crit_edge
  %h.0104114 = phi ptr [ %21, %while.body.if.end75_crit_edge ], [ %0, %while.body.preheader.if.end75_crit_edge ]
  %next76 = getelementptr inbounds %struct.codec_list, ptr %h.0104114, i32 0, i32 3
  %20 = ptrtoint ptr %next76 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %next76, align 4
  %tobool19.not = icmp eq ptr %21, null
  br i1 %tobool19.not, label %do.end79, label %while.body

do.end79:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.57) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end79, %if.end74, %do.end27, %do.end15, %do.end
  %retval.0 = phi i32 [ -16, %do.end27 ], [ 0, %if.end74 ], [ -22, %do.end79 ], [ -6, %do.end15 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @videocodec_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.77, ptr noundef null) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @videocodec_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.80) #10
  %call1 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.77, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @proc_videocodecs_show, ptr noundef null) #7
  store ptr %call1, ptr @videocodec_init.videocodec_proc_entry, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end3, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #10
  br label %if.end

if.end:                                           ; preds = %do.end3, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_videocodecs_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @codeclist_top, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.84) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.85) #7
  %tobool.not42 = icmp eq ptr %0, null
  br i1 %tobool.not42, label %entry.while.end23_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end23_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end23

while.body:                                       ; preds = %while.end.while.body_crit_edge, %entry.while.body_crit_edge
  %h.043 = phi ptr [ %22, %while.end.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  %1 = ptrtoint ptr %h.043 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %h.043, align 4
  %name = getelementptr inbounds %struct.videocodec, ptr %2, i32 0, i32 1
  %type = getelementptr inbounds %struct.videocodec, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %flags = getelementptr inbounds %struct.videocodec, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %magic = getelementptr inbounds %struct.videocodec, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %magic, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.86, ptr noundef %name, i32 noundef %4, i32 noundef %6, i32 noundef %8) #7
  %list = getelementptr inbounds %struct.codec_list, ptr %h.043, i32 0, i32 2
  %9 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %9)
  %a.039 = load ptr, ptr %list, align 4
  %tobool5.not40 = icmp eq ptr %a.039, null
  br i1 %tobool5.not40, label %while.body.while.end_crit_edge, label %while.body.while.body6_crit_edge

while.body.while.body6_crit_edge:                 ; preds = %while.body
  br label %while.body6

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body6:                                      ; preds = %while.body6.while.body6_crit_edge, %while.body.while.body6_crit_edge
  %a.041 = phi ptr [ %a.0, %while.body6.while.body6_crit_edge ], [ %a.039, %while.body.while.body6_crit_edge ]
  %10 = ptrtoint ptr %a.041 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %a.041, align 4
  %master_data = getelementptr inbounds %struct.videocodec, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %master_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master_data, align 4
  %type12 = getelementptr inbounds %struct.videocodec_master, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %type12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type12, align 4
  %flags15 = getelementptr inbounds %struct.videocodec_master, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags15, align 4
  %magic18 = getelementptr inbounds %struct.videocodec_master, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %magic18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %magic18, align 4
  %name20 = getelementptr inbounds %struct.videocodec, ptr %11, i32 0, i32 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.87, ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, ptr noundef %name20) #7
  %next = getelementptr inbounds %struct.attached_list, ptr %a.041, i32 0, i32 1
  %20 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %20)
  %a.0 = load ptr, ptr %next, align 4
  %tobool5.not = icmp eq ptr %a.0, null
  br i1 %tobool5.not, label %while.body6.while.end_crit_edge, label %while.body6.while.body6_crit_edge

while.body6.while.body6_crit_edge:                ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body6

while.body6.while.end_crit_edge:                  ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body6.while.end_crit_edge, %while.body.while.end_crit_edge
  %next22 = getelementptr inbounds %struct.codec_list, ptr %h.043, i32 0, i32 3
  %21 = ptrtoint ptr %next22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %next22, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %while.end.while.end23_crit_edge, label %while.end.while.body_crit_edge

while.end.while.body_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end.while.end23_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end23

while.end23:                                      ; preds = %while.end.while.end23_crit_edge, %entry.while.end23_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !97, !98, !99, !101, !102, !103, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !127, !129, !131, !133, !135, !137, !139, !140, !142, !144, !145, !147, !149, !150, !151, !152, !153, !155, !156, !157, !159, !161, !163}
!llvm.module.flags = !{!165, !166, !167, !168, !169, !170, !171, !172}
!llvm.ident = !{!173}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype213, !1, !"__UNIQUE_ID_debugtype213", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug214, !4, !"__UNIQUE_ID_debug214", i1 false, i1 false}
!4 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 31, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 65, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @videocodec_attach._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @videocodec_attach._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 69, i32 2}
!13 = !{ptr @videocodec_attach._entry.3, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @videocodec_attach._entry_ptr.5, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 73, i32 3}
!17 = !{ptr @videocodec_attach._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @videocodec_attach._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 81, i32 4}
!21 = !{ptr @videocodec_attach._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @videocodec_attach._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 91, i32 59}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 95, i32 5}
!27 = !{ptr @videocodec_attach._entry.13, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @videocodec_attach._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 104, i32 6}
!31 = !{ptr @videocodec_attach._entry.16, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @videocodec_attach._entry_ptr.18, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 109, i32 6}
!35 = !{ptr @videocodec_attach._entry.19, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @videocodec_attach._entry_ptr.21, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 121, i32 2}
!39 = !{ptr @videocodec_attach._entry.22, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @videocodec_attach._entry_ptr.24, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @__ksymtab_videocodec_attach, !42, !"__ksymtab_videocodec_attach", i1 false, i1 false}
!42 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 130, i32 1}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 139, i32 3}
!45 = !{ptr @videocodec_detach._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @videocodec_detach._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 143, i32 2}
!49 = !{ptr @videocodec_detach._entry.26, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @videocodec_detach._entry_ptr.28, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 147, i32 3}
!53 = !{ptr @videocodec_detach._entry.29, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @videocodec_detach._entry_ptr.31, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @videocodec_detach._entry.32, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 158, i32 6}
!57 = !{ptr @videocodec_detach._entry_ptr.33, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.35, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 161, i32 6}
!60 = !{ptr @videocodec_detach._entry.34, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @videocodec_detach._entry_ptr.36, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.38, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 166, i32 6}
!64 = !{ptr @videocodec_detach._entry.37, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @videocodec_detach._entry_ptr.39, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.41, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 169, i32 6}
!68 = !{ptr @videocodec_detach._entry.40, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @videocodec_detach._entry_ptr.42, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.44, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 183, i32 2}
!72 = !{ptr @videocodec_detach._entry.43, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @videocodec_detach._entry_ptr.45, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @__ksymtab_videocodec_detach, !75, !"__ksymtab_videocodec_detach", i1 false, i1 false}
!75 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 186, i32 1}
!76 = !{ptr @.str.46, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 193, i32 3}
!78 = !{ptr @.str.47, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @videocodec_register._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @videocodec_register._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.49, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 197, i32 2}
!83 = !{ptr @videocodec_register._entry.48, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @videocodec_register._entry_ptr.50, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.52, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 208, i32 3}
!87 = !{ptr @videocodec_register._entry.51, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @videocodec_register._entry_ptr.53, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.55, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 213, i32 3}
!91 = !{ptr @videocodec_register._entry.54, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @videocodec_register._entry_ptr.56, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @__ksymtab_videocodec_register, !94, !"__ksymtab_videocodec_register", i1 false, i1 false}
!94 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 219, i32 1}
!95 = !{ptr @.str.57, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 226, i32 3}
!97 = !{ptr @videocodec_unregister._entry, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @videocodec_unregister._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.59, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 230, i32 2}
!101 = !{ptr @videocodec_unregister._entry.58, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @videocodec_unregister._entry_ptr.60, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @videocodec_unregister._entry.61, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 235, i32 3}
!105 = !{ptr @videocodec_unregister._entry_ptr.62, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.64, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 242, i32 5}
!108 = !{ptr @videocodec_unregister._entry.63, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @videocodec_unregister._entry_ptr.65, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.67, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 245, i32 4}
!112 = !{ptr @videocodec_unregister._entry.66, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @videocodec_unregister._entry_ptr.68, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.70, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 249, i32 5}
!116 = !{ptr @videocodec_unregister._entry.69, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @videocodec_unregister._entry_ptr.71, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.73, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 253, i32 5}
!120 = !{ptr @videocodec_unregister._entry.72, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @videocodec_unregister._entry_ptr.74, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @videocodec_unregister._entry.75, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 263, i32 2}
!124 = !{ptr @videocodec_unregister._entry_ptr.76, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @__ksymtab_videocodec_unregister, !126, !"__ksymtab_videocodec_unregister", i1 false, i1 false}
!126 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 266, i32 1}
!127 = !{ptr @.str.77, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 320, i32 20}
!129 = !{ptr @__initcall__kmod_videocodec__215_324_videocodec_init6, !130, !"__initcall__kmod_videocodec__215_324_videocodec_init6", i1 false, i1 false}
!130 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 324, i32 1}
!131 = !{ptr @__exitcall_videocodec_exit, !132, !"__exitcall_videocodec_exit", i1 false, i1 false}
!132 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 325, i32 1}
!133 = !{ptr @__UNIQUE_ID_author216, !134, !"__UNIQUE_ID_author216", i1 false, i1 false}
!134 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 327, i32 1}
!135 = !{ptr @__UNIQUE_ID_description217, !136, !"__UNIQUE_ID_description217", i1 false, i1 false}
!136 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 328, i32 1}
!137 = !{ptr @__UNIQUE_ID_file218, !138, !"__UNIQUE_ID_file218", i1 false, i1 false}
!138 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 330, i32 1}
!139 = !{ptr @__UNIQUE_ID_license219, !138, !"__UNIQUE_ID_license219", i1 false, i1 false}
!140 = !{ptr @debug, !141, !"debug", i1 false, i1 false}
!141 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 29, i32 12}
!142 = !{ptr @codeclist_top, !143, !"codeclist_top", i1 false, i1 false}
!143 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 51, i32 27}
!144 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!145 = !{ptr @videocodec_init.videocodec_proc_entry, !146, !"videocodec_proc_entry", i1 false, i1 false}
!146 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 304, i32 32}
!147 = !{ptr @.str.78, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 307, i32 2}
!149 = !{ptr @.str.79, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @videocodec_init._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @videocodec_init._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.80, !148, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.82, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 312, i32 3}
!155 = !{ptr @videocodec_init._entry.81, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @videocodec_init._entry_ptr.83, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.84, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 274, i32 16}
!159 = !{ptr @.str.85, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 275, i32 16}
!161 = !{ptr @.str.86, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 278, i32 17}
!163 = !{ptr @.str.87, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/staging/media/zoran/videocodec.c", i32 283, i32 18}
!165 = !{i32 1, !"wchar_size", i32 2}
!166 = !{i32 1, !"min_enum_size", i32 4}
!167 = !{i32 8, !"branch-target-enforcement", i32 0}
!168 = !{i32 8, !"sign-return-address", i32 0}
!169 = !{i32 8, !"sign-return-address-all", i32 0}
!170 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!171 = !{i32 7, !"uwtable", i32 1}
!172 = !{i32 7, !"frame-pointer", i32 2}
!173 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
