; ModuleID = '/llk/IR_all_yes/drivers/media/platform/ti-vpe/csc.c_pt.bc'
source_filename = "../drivers/media/platform/ti-vpe/csc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+csc_dump_regs\22, \22a\22\09"
module asm "\09.weak\09__crc_csc_dump_regs\09\09\09\09"
module asm "\09.long\09__crc_csc_dump_regs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_csc_dump_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22csc_dump_regs\22\09\09\09\09\09"
module asm "__kstrtabns_csc_dump_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+csc_set_coeff_bypass\22, \22a\22\09"
module asm "\09.weak\09__crc_csc_set_coeff_bypass\09\09\09\09"
module asm "\09.long\09__crc_csc_set_coeff_bypass\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_csc_set_coeff_bypass:\09\09\09\09\09"
module asm "\09.asciz \09\22csc_set_coeff_bypass\22\09\09\09\09\09"
module asm "__kstrtabns_csc_set_coeff_bypass:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+csc_set_coeff\22, \22a\22\09"
module asm "\09.weak\09__crc_csc_set_coeff\09\09\09\09"
module asm "\09.long\09__crc_csc_set_coeff\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_csc_set_coeff:\09\09\09\09\09"
module asm "\09.asciz \09\22csc_set_coeff\22\09\09\09\09\09"
module asm "__kstrtabns_csc_set_coeff:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+csc_create\22, \22a\22\09"
module asm "\09.weak\09__crc_csc_create\09\09\09\09"
module asm "\09.long\09__crc_csc_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_csc_create:\09\09\09\09\09"
module asm "\09.asciz \09\22csc_create\22\09\09\09\09\09"
module asm "__kstrtabns_csc_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.csc_coeffs = type { %struct.encoding_direction, %struct.encoding_direction }
%struct.encoding_direction = type { %struct.colorspace, %struct.colorspace }
%struct.colorspace = type { %struct.quantization, %struct.quantization }
%struct.quantization = type { [12 x i16] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.csc_data = type { ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.v4l2_format = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.87, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.87 = type { i8 }
%struct.v4l2_format_info = type { i32, i8, i8, i8, [4 x i8], i8, i8, [4 x i8], [4 x i8] }

@csc_dump_regs.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 29, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ti_csc\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"csc_dump_regs\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/platform/ti-vpe/csc.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CSC Registers @ %pa:\0A\00", [42 x i8] zeroinitializer }, align 32
@csc_dump_regs.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 29, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%-35s %08x\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CSC00\00", [26 x i8] zeroinitializer }, align 32
@csc_dump_regs.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 30, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CSC01\00", [26 x i8] zeroinitializer }, align 32
@csc_dump_regs.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 30, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CSC02\00", [26 x i8] zeroinitializer }, align 32
@csc_dump_regs.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 30, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CSC03\00", [26 x i8] zeroinitializer }, align 32
@csc_dump_regs.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 30, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CSC04\00", [26 x i8] zeroinitializer }, align 32
@csc_dump_regs.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 31, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CSC05\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_csc_dump_regs = external dso_local constant [0 x i8], align 1
@__kstrtabns_csc_dump_regs = external dso_local constant [0 x i8], align 1
@__ksymtab_csc_dump_regs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @csc_dump_regs to i32), ptr @__kstrtab_csc_dump_regs, ptr @__kstrtabns_csc_dump_regs }, section "___ksymtab+csc_dump_regs", align 4
@__kstrtab_csc_set_coeff_bypass = external dso_local constant [0 x i8], align 1
@__kstrtabns_csc_set_coeff_bypass = external dso_local constant [0 x i8], align 1
@__ksymtab_csc_set_coeff_bypass = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @csc_set_coeff_bypass to i32), ptr @__kstrtab_csc_set_coeff_bypass, ptr @__kstrtabns_csc_set_coeff_bypass }, section "___ksymtab+csc_set_coeff_bypass", align 4
@csc_coeffs = internal constant { %struct.csc_coeffs, [32 x i8] } { %struct.csc_coeffs { %struct.encoding_direction { %struct.colorspace { %struct.quantization { [12 x i16] [i16 1024, i16 0, i16 1405, i16 1024, i16 7847, i16 7477, i16 1024, i16 1775, i16 8190, i16 3392, i16 528, i16 3208] }, %struct.quantization { [12 x i16] [i16 1192, i16 8190, i16 1634, i16 1192, i16 7791, i16 7359, i16 1192, i16 2066, i16 8191, i16 3204, i16 544, i16 2988] } }, %struct.colorspace { %struct.quantization { [12 x i16] [i16 1024, i16 0, i16 1577, i16 1024, i16 8005, i16 7723, i16 1024, i16 1858, i16 0, i16 3308, i16 328, i16 3168] }, %struct.quantization { [12 x i16] [i16 1192, i16 0, i16 1836, i16 1192, i16 7974, i16 7646, i16 1192, i16 2163, i16 0, i16 3104, i16 308, i16 2940] } } }, %struct.encoding_direction { %struct.colorspace { %struct.quantization { [12 x i16] [i16 306, i16 601, i16 117, i16 8016, i16 7845, i16 523, i16 523, i16 7754, i16 8107, i16 0, i16 512, i16 512] }, %struct.quantization { [12 x i16] [i16 263, i16 516, i16 100, i16 8040, i16 7894, i16 450, i16 450, i16 7815, i16 8119, i16 64, i16 512, i16 512] } }, %struct.colorspace { %struct.quantization { [12 x i16] [i16 218, i16 732, i16 74, i16 8072, i16 7788, i16 524, i16 524, i16 7716, i16 8144, i16 0, i16 512, i16 512] }, %struct.quantization { [12 x i16] [i16 187, i16 629, i16 63, i16 8089, i16 7845, i16 450, i16 450, i16 7783, i16 8151, i16 64, i16 512, i16 512] } } } }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_csc_set_coeff = external dso_local constant [0 x i8], align 1
@__kstrtabns_csc_set_coeff = external dso_local constant [0 x i8], align 1
@__ksymtab_csc_set_coeff = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @csc_set_coeff to i32), ptr @__kstrtab_csc_set_coeff, ptr @__kstrtabns_csc_set_coeff }, section "___ksymtab+csc_set_coeff", align 4
@csc_create.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 62, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"csc_create\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"csc_create\0A\00", [20 x i8] zeroinitializer }, align 32
@csc_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 255, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"couldn't alloc csc_data\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@csc_create._entry_ptr = internal global ptr @csc_create._entry, section ".printk_index", align 4
@csc_create._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.2, i32 265, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"missing '%s' platform resources data\0A\00", [58 x i8] zeroinitializer }, align 32
@csc_create._entry_ptr.18 = internal global ptr @csc_create._entry.16, section ".printk_index", align 4
@__kstrtab_csc_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_csc_create = external dso_local constant [0 x i8], align 1
@__ksymtab_csc_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @csc_create to i32), ptr @__kstrtab_csc_create, ptr @__kstrtabns_csc_create }, section "___ksymtab+csc_create", align 4
@__UNIQUE_ID_description300 = internal constant [52 x i8] c"ti_csc.description=TI VIP/VPE Color Space Converter\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [37 x i8] c"ti_csc.author=Texas Instruments Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [49 x i8] c"ti_csc.file=drivers/media/platform/ti-vpe/ti-csc\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [22 x i8] c"ti_csc.license=GPL v2\00", section ".modinfo", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 117, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 119, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 120, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 121, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 122, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 123, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 124, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [11 x i8] c"csc_coeffs\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 46, i32 26 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 251, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 255, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [39 x i8] c"../drivers/media/platform/ti-vpe/csc.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 264, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__ksymtab_csc_create, ptr @__ksymtab_csc_dump_regs, ptr @__ksymtab_csc_set_coeff, ptr @__ksymtab_csc_set_coeff_bypass, ptr @csc_create._entry, ptr @csc_create._entry.16, ptr @csc_create._entry_ptr, ptr @csc_create._entry_ptr.18, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @csc_coeffs, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csc_coeffs to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csc_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csc_create._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csc_dump_regs(ptr nocapture noundef readonly %csc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.csc_data, ptr %csc, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csc_dump_regs.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csc_dump_regs, %do.body5)) #5
          to label %if.then [label %do.body5], !srcloc !65

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %res = getelementptr inbounds %struct.csc_data, ptr %csc, i32 0, i32 1
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csc_dump_regs.__UNIQUE_ID_ddebug292, ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef %3) #5
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csc_dump_regs.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csc_dump_regs, %do.body24)) #5
          to label %if.then19 [label %do.body24], !srcloc !65

if.then19:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %csc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csc, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !66
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csc_dump_regs.__UNIQUE_ID_ddebug293, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %7) #5
  br label %do.body24

do.body24:                                        ; preds = %if.then19, %do.body5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csc_dump_regs.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csc_dump_regs, %do.body45)) #5
          to label %if.then38 [label %do.body45], !srcloc !65

if.then38:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %csc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csc, align 4
  %add.ptr40 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #5, !srcloc !66
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csc_dump_regs.__UNIQUE_ID_ddebug294, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, i32 noundef %11) #5
  br label %do.body45

do.body45:                                        ; preds = %if.then38, %do.body24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csc_dump_regs.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csc_dump_regs, %do.body66)) #5
          to label %if.then59 [label %do.body66], !srcloc !65

if.then59:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %csc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csc, align 4
  %add.ptr61 = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #5, !srcloc !66
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csc_dump_regs.__UNIQUE_ID_ddebug295, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, i32 noundef %15) #5
  br label %do.body66

do.body66:                                        ; preds = %if.then59, %do.body45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csc_dump_regs.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csc_dump_regs, %do.body87)) #5
          to label %if.then80 [label %do.body87], !srcloc !65

if.then80:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %csc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %csc, align 4
  %add.ptr82 = getelementptr i8, ptr %17, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82) #5, !srcloc !66
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csc_dump_regs.__UNIQUE_ID_ddebug296, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8, i32 noundef %19) #5
  br label %do.body87

do.body87:                                        ; preds = %if.then80, %do.body66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csc_dump_regs.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csc_dump_regs, %do.body108)) #5
          to label %if.then101 [label %do.body108], !srcloc !65

if.then101:                                       ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %csc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %csc, align 4
  %add.ptr103 = getelementptr i8, ptr %21, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr103) #5, !srcloc !66
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csc_dump_regs.__UNIQUE_ID_ddebug297, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, i32 noundef %23) #5
  br label %do.body108

do.body108:                                       ; preds = %if.then101, %do.body87
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csc_dump_regs.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csc_dump_regs, %do.end128)) #5
          to label %if.then122 [label %do.end128], !srcloc !65

if.then122:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %csc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %csc, align 4
  %add.ptr124 = getelementptr i8, ptr %25, i32 20
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr124) #5, !srcloc !66
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csc_dump_regs.__UNIQUE_ID_ddebug298, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.10, i32 noundef %27) #5
  br label %do.end128

do.end128:                                        ; preds = %if.then122, %do.body108
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @csc_set_coeff_bypass(ptr nocapture readnone %csc, ptr nocapture noundef %csc_reg5) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %csc_reg5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %csc_reg5, align 4
  %or = or i32 %1, 268435456
  store i32 %or, ptr %csc_reg5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csc_set_coeff(ptr nocapture readnone %csc, ptr nocapture noundef %csc_reg0, ptr nocapture noundef readonly %src_fmt, ptr nocapture noundef readonly %dst_fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i32, ptr %csc_reg0, i32 5
  %0 = ptrtoint ptr %src_fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_fmt, align 4
  %.off = add i32 %1, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = getelementptr inbounds %struct.v4l2_format, ptr %src_fmt, i32 0, i32 1, i32 0, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %conv = zext i8 %4 to i32
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %src_fmt, i32 0, i32 1, i32 0, i32 9
  %5 = ptrtoint ptr %quantization to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %quantization, align 1
  %conv3 = zext i8 %6 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %src_fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %quantization6 = getelementptr inbounds %struct.v4l2_format, ptr %src_fmt, i32 0, i32 1, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %quantization6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %quantization6, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %src_ycbcr_enc.0 = phi i32 [ %conv, %if.then ], [ %9, %if.else ]
  %src_quantization.0 = phi i32 [ %conv3, %if.then ], [ %11, %if.else ]
  %src_pixelformat.0.in = getelementptr inbounds %struct.v4l2_format, ptr %src_fmt, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %src_pixelformat.0.in to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %src_pixelformat.0 = load i32, ptr %src_pixelformat.0.in, align 1
  %13 = ptrtoint ptr %dst_fmt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dst_fmt, align 4
  %.off157 = add i32 %14, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off157)
  %switch158 = icmp ult i32 %.off157, 2
  br i1 %switch158, label %if.then14, label %if.else20

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %15 = getelementptr inbounds %struct.v4l2_format, ptr %dst_fmt, i32 0, i32 1, i32 0, i32 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %conv17 = zext i8 %17 to i32
  %quantization18 = getelementptr inbounds %struct.v4l2_format, ptr %dst_fmt, i32 0, i32 1, i32 0, i32 9
  %18 = ptrtoint ptr %quantization18 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %quantization18, align 1
  %conv19 = zext i8 %19 to i32
  br label %if.end24

if.else20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %20 = getelementptr inbounds %struct.v4l2_format, ptr %dst_fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %quantization23 = getelementptr inbounds %struct.v4l2_format, ptr %dst_fmt, i32 0, i32 1, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %quantization23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %quantization23, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else20, %if.then14
  %dst_ycbcr_enc.0 = phi i32 [ %conv17, %if.then14 ], [ %22, %if.else20 ]
  %dst_quantization.0 = phi i32 [ %conv19, %if.then14 ], [ %24, %if.else20 ]
  %dst_pixelformat.0.in = getelementptr inbounds %struct.v4l2_format, ptr %dst_fmt, i32 0, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %dst_pixelformat.0.in to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %dst_pixelformat.0 = load i32, ptr %dst_pixelformat.0.in, align 1
  %call = tail call ptr @v4l2_format_info(i32 noundef %src_pixelformat.0) #5
  %call25 = tail call ptr @v4l2_format_info(i32 noundef %dst_pixelformat.0) #5
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %if.end24.if.else94_crit_edge, label %v4l2_is_format_yuv.exit

if.end24.if.else94_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else94

v4l2_is_format_yuv.exit:                          ; preds = %if.end24
  %pixel_enc.i = getelementptr inbounds %struct.v4l2_format_info, ptr %call, i32 0, i32 1
  %26 = ptrtoint ptr %pixel_enc.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pixel_enc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp.i = icmp eq i8 %27, 1
  br i1 %cmp.i, label %land.lhs.true, label %v4l2_is_format_yuv.exit.v4l2_is_format_rgb.exit167_crit_edge

v4l2_is_format_yuv.exit.v4l2_is_format_rgb.exit167_crit_edge: ; preds = %v4l2_is_format_yuv.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_is_format_rgb.exit167

land.lhs.true:                                    ; preds = %v4l2_is_format_yuv.exit
  %tobool.not.i159 = icmp eq ptr %call25, null
  br i1 %tobool.not.i159, label %land.lhs.true.if.else94_crit_edge, label %v4l2_is_format_rgb.exit

land.lhs.true.if.else94_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else94

v4l2_is_format_rgb.exit:                          ; preds = %land.lhs.true
  %pixel_enc.i160 = getelementptr inbounds %struct.v4l2_format_info, ptr %call25, i32 0, i32 1
  %28 = ptrtoint ptr %pixel_enc.i160 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pixel_enc.i160, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp.i161 = icmp eq i8 %29, 2
  br i1 %cmp.i161, label %if.then30, label %v4l2_is_format_rgb.exit.v4l2_is_format_rgb.exit167_crit_edge

v4l2_is_format_rgb.exit.v4l2_is_format_rgb.exit167_crit_edge: ; preds = %v4l2_is_format_rgb.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_is_format_rgb.exit167

if.then30:                                        ; preds = %v4l2_is_format_rgb.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_quantization.0)
  %cmp35 = icmp eq i32 %src_quantization.0, 0
  %spec.store.select119 = select i1 %cmp35, i32 1, i32 %src_quantization.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %src_ycbcr_enc.0)
  %30 = icmp ult i32 %src_ycbcr_enc.0, 2
  br i1 %30, label %if.then41, label %if.else47

if.then41:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.store.select119)
  %cmp42 = icmp eq i32 %spec.store.select119, 1
  %.csc_coeffs = select i1 %cmp42, ptr getelementptr inbounds (%struct.csc_coeffs, ptr @csc_coeffs, i32 0, i32 0, i32 0, i32 1), ptr @csc_coeffs
  br label %if.end96

if.else47:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %src_ycbcr_enc.0)
  %cmp48 = icmp eq i32 %src_ycbcr_enc.0, 2
  br i1 %cmp48, label %if.then50, label %if.else47.if.end96_crit_edge

if.else47.if.end96_crit_edge:                     ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

if.then50:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.store.select119)
  %cmp51 = icmp eq i32 %spec.store.select119, 1
  %. = select i1 %cmp51, ptr getelementptr inbounds (%struct.csc_coeffs, ptr @csc_coeffs, i32 0, i32 0, i32 1, i32 1), ptr getelementptr inbounds (%struct.csc_coeffs, ptr @csc_coeffs, i32 0, i32 0, i32 1)
  br label %if.end96

v4l2_is_format_rgb.exit167:                       ; preds = %v4l2_is_format_rgb.exit.v4l2_is_format_rgb.exit167_crit_edge, %v4l2_is_format_yuv.exit.v4l2_is_format_rgb.exit167_crit_edge
  %31 = ptrtoint ptr %pixel_enc.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pixel_enc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %32)
  %cmp.i165 = icmp ne i8 %32, 2
  %tobool.not.i168 = icmp eq ptr %call25, null
  %or.cond = select i1 %cmp.i165, i1 true, i1 %tobool.not.i168
  br i1 %or.cond, label %v4l2_is_format_rgb.exit167.if.else94_crit_edge, label %v4l2_is_format_yuv.exit172

v4l2_is_format_rgb.exit167.if.else94_crit_edge:   ; preds = %v4l2_is_format_rgb.exit167
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else94

v4l2_is_format_yuv.exit172:                       ; preds = %v4l2_is_format_rgb.exit167
  %pixel_enc.i169 = getelementptr inbounds %struct.v4l2_format_info, ptr %call25, i32 0, i32 1
  %33 = ptrtoint ptr %pixel_enc.i169 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pixel_enc.i169, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %cmp.i170 = icmp eq i8 %34, 1
  br i1 %cmp.i170, label %if.then65, label %v4l2_is_format_yuv.exit172.if.else94_crit_edge

v4l2_is_format_yuv.exit172.if.else94_crit_edge:   ; preds = %v4l2_is_format_yuv.exit172
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else94

if.then65:                                        ; preds = %v4l2_is_format_yuv.exit172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst_quantization.0)
  %cmp70 = icmp eq i32 %dst_quantization.0, 0
  %spec.store.select120 = select i1 %cmp70, i32 1, i32 %dst_quantization.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dst_ycbcr_enc.0)
  %35 = icmp ult i32 %dst_ycbcr_enc.0, 2
  br i1 %35, label %if.then76, label %if.else82

if.then76:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.store.select120)
  %cmp77 = icmp eq i32 %spec.store.select120, 1
  %.155 = select i1 %cmp77, ptr getelementptr inbounds (%struct.csc_coeffs, ptr @csc_coeffs, i32 0, i32 1, i32 0, i32 1), ptr getelementptr inbounds (%struct.csc_coeffs, ptr @csc_coeffs, i32 0, i32 1)
  br label %if.end96

if.else82:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dst_ycbcr_enc.0)
  %cmp83 = icmp eq i32 %dst_ycbcr_enc.0, 2
  br i1 %cmp83, label %if.then85, label %if.else82.if.end96_crit_edge

if.else82.if.end96_crit_edge:                     ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

if.then85:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.store.select120)
  %cmp86 = icmp eq i32 %spec.store.select120, 1
  %.156 = select i1 %cmp86, ptr getelementptr inbounds (%struct.csc_coeffs, ptr @csc_coeffs, i32 0, i32 1, i32 1, i32 1), ptr getelementptr inbounds (%struct.csc_coeffs, ptr @csc_coeffs, i32 0, i32 1, i32 1)
  br label %if.end96

if.else94:                                        ; preds = %v4l2_is_format_yuv.exit172.if.else94_crit_edge, %v4l2_is_format_rgb.exit167.if.else94_crit_edge, %land.lhs.true.if.else94_crit_edge, %if.end24.if.else94_crit_edge
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr, align 4
  %or = or i32 %37, 268435456
  store i32 %or, ptr %add.ptr, align 4
  br label %cleanup

if.end96:                                         ; preds = %if.then85, %if.else82.if.end96_crit_edge, %if.then76, %if.then50, %if.else47.if.end96_crit_edge, %if.then41
  %coeff.0 = phi ptr [ %.csc_coeffs, %if.then41 ], [ %., %if.then50 ], [ getelementptr inbounds (%struct.csc_coeffs, ptr @csc_coeffs, i32 0, i32 0, i32 0, i32 1), %if.else47.if.end96_crit_edge ], [ %.155, %if.then76 ], [ %.156, %if.then85 ], [ getelementptr inbounds (%struct.csc_coeffs, ptr @csc_coeffs, i32 0, i32 1, i32 0, i32 1), %if.else82.if.end96_crit_edge ]
  %add.ptr97 = getelementptr i16, ptr %coeff.0, i32 12
  %cmp98177 = icmp ult ptr %coeff.0, %add.ptr97
  br i1 %cmp98177, label %if.end96.for.body_crit_edge, label %if.end96.cleanup_crit_edge

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end96.for.body_crit_edge:                      ; preds = %if.end96
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end96.for.body_crit_edge
  %coeff.1179 = phi ptr [ %add.ptr104, %for.body.for.body_crit_edge ], [ %coeff.0, %if.end96.for.body_crit_edge ]
  %shadow_csc.0178 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %csc_reg0, %if.end96.for.body_crit_edge ]
  %add.ptr100 = getelementptr i16, ptr %coeff.1179, i32 1
  %38 = ptrtoint ptr %add.ptr100 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr100, align 2
  %conv101 = zext i16 %39 to i32
  %shl = shl nuw i32 %conv101, 16
  %40 = ptrtoint ptr %coeff.1179 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %coeff.1179, align 2
  %conv102 = zext i16 %41 to i32
  %or103 = or i32 %shl, %conv102
  %incdec.ptr = getelementptr i32, ptr %shadow_csc.0178, i32 1
  %42 = ptrtoint ptr %shadow_csc.0178 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or103, ptr %shadow_csc.0178, align 4
  %add.ptr104 = getelementptr i16, ptr %coeff.1179, i32 2
  %cmp98 = icmp ult ptr %add.ptr104, %add.ptr97
  br i1 %cmp98, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end96.cleanup_crit_edge, %if.else94
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_format_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @csc_create(ptr noundef %pdev, ptr noundef %res_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @csc_create.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@csc_create, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !65

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @csc_create.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.12) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev4, i32 noundef 12, i32 noundef 3520) #5
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %do.end10, label %if.end13

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %pdev14 = getelementptr inbounds %struct.csc_data, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %pdev14 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %pdev14, align 4
  %call15 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef %res_name) #5
  %res = getelementptr inbounds %struct.csc_data, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call15, ptr %res, align 4
  %cmp = icmp eq ptr %call15, null
  br i1 %cmp, label %do.end20, label %if.end23

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.17, ptr noundef %res_name) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %call26 = tail call ptr @devm_ioremap_resource(ptr noundef %dev4, ptr noundef nonnull %call15) #5
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call26, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i, ptr %call26, ptr %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end20, %do.end10
  %retval.0 = phi ptr [ inttoptr (i32 -19 to ptr), %do.end20 ], [ inttoptr (i32 -12 to ptr), %do.end10 ], [ %spec.select, %if.end23 ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !29, !31, !33, !34, !35, !37, !38, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/ti-vpe/csc.c", i32 117, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @csc_dump_regs.__UNIQUE_ID_ddebug292, !1, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/ti-vpe/csc.c", i32 119, i32 2}
!8 = !{ptr @csc_dump_regs.__UNIQUE_ID_ddebug293, !7, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @csc_dump_regs.__UNIQUE_ID_ddebug294, !11, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/ti-vpe/csc.c", i32 120, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @csc_dump_regs.__UNIQUE_ID_ddebug295, !14, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/ti-vpe/csc.c", i32 121, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @csc_dump_regs.__UNIQUE_ID_ddebug296, !17, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/ti-vpe/csc.c", i32 122, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @csc_dump_regs.__UNIQUE_ID_ddebug297, !20, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/ti-vpe/csc.c", i32 123, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @csc_dump_regs.__UNIQUE_ID_ddebug298, !23, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/ti-vpe/csc.c", i32 124, i32 2}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__ksymtab_csc_dump_regs, !26, !"__ksymtab_csc_dump_regs", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/ti-vpe/csc.c", i32 128, i32 1}
!27 = !{ptr @__ksymtab_csc_set_coeff_bypass, !28, !"__ksymtab_csc_set_coeff_bypass", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/ti-vpe/csc.c", i32 134, i32 1}
!29 = !{ptr @__ksymtab_csc_set_coeff, !30, !"__ksymtab_csc_set_coeff", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/ti-vpe/csc.c", i32 245, i32 1}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/ti-vpe/csc.c", i32 251, i32 2}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @csc_create.__UNIQUE_ID_ddebug299, !32, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/ti-vpe/csc.c", i32 255, i32 3}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @csc_create._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @csc_create._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/ti-vpe/csc.c", i32 264, i32 3}
!43 = !{ptr @csc_create._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @csc_create._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @__ksymtab_csc_create, !46, !"__ksymtab_csc_create", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/ti-vpe/csc.c", i32 275, i32 1}
!47 = !{ptr @__UNIQUE_ID_description300, !48, !"__UNIQUE_ID_description300", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/ti-vpe/csc.c", i32 277, i32 1}
!49 = !{ptr @__UNIQUE_ID_author301, !50, !"__UNIQUE_ID_author301", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/ti-vpe/csc.c", i32 278, i32 1}
!51 = !{ptr @__UNIQUE_ID_file302, !52, !"__UNIQUE_ID_file302", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/ti-vpe/csc.c", i32 279, i32 1}
!53 = !{ptr @__UNIQUE_ID_license303, !52, !"__UNIQUE_ID_license303", i1 false, i1 false}
!54 = !{ptr @csc_coeffs, !55, !"csc_coeffs", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/ti-vpe/csc.c", i32 46, i32 26}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2148167735, i64 2148167740, i64 2148167753, i64 2148167797, i64 2148167831, i64 2148167852}
!66 = !{i64 690512}
!67 = !{i64 2148875685}
