; ModuleID = '/llk/IR_all_yes/drivers/mtd/hyperbus/hyperbus-core.c_pt.bc'
source_filename = "../drivers/mtd/hyperbus/hyperbus-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+hyperbus_register_device\22, \22a\22\09"
module asm "\09.weak\09__crc_hyperbus_register_device\09\09\09\09"
module asm "\09.long\09__crc_hyperbus_register_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hyperbus_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22hyperbus_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_hyperbus_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+hyperbus_unregister_device\22, \22a\22\09"
module asm "\09.weak\09__crc_hyperbus_unregister_device\09\09\09\09"
module asm "\09.long\09__crc_hyperbus_unregister_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hyperbus_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22hyperbus_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_hyperbus_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.hyperbus_device = type { %struct.map_info, ptr, ptr, ptr, i32, ptr }
%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.hyperbus_ctlr = type { ptr, i8, ptr }
%struct.hyperbus_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%union.map_word = type { [8 x i32] }

@hyperbus_register_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013hyperbus: please fill all the necessary fields!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hyperbus_register_device\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/mtd/hyperbus/hyperbus-core.c\00", [59 x i8] zeroinitializer }, align 32
@hyperbus_register_device._entry_ptr = internal global ptr @hyperbus_register_device._entry, section ".printk_index", align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cypress,hyperflash\00", [45 x i8] zeroinitializer }, align 32
@hyperbus_register_device._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 75, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\22cypress,hyperflash\22 compatible missing\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hyperbus_register_device._entry_ptr.8 = internal global ptr @hyperbus_register_device._entry.4, section ".printk_index", align 4
@hyperbus_register_device._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 102, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Calibration failed\0A\00", [44 x i8] zeroinitializer }, align 32
@hyperbus_register_device._entry_ptr.11 = internal global ptr @hyperbus_register_device._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cfi_probe\00", [22 x i8] zeroinitializer }, align 32
@hyperbus_register_device._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 111, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"probing of hyperbus device failed\0A\00", [61 x i8] zeroinitializer }, align 32
@hyperbus_register_device._entry_ptr.15 = internal global ptr @hyperbus_register_device._entry.13, section ".printk_index", align 4
@hyperbus_register_device._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 120, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register mtd device\0A\00", [33 x i8] zeroinitializer }, align 32
@hyperbus_register_device._entry_ptr.18 = internal global ptr @hyperbus_register_device._entry.16, section ".printk_index", align 4
@__kstrtab_hyperbus_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_hyperbus_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_hyperbus_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hyperbus_register_device to i32), ptr @__kstrtab_hyperbus_register_device, ptr @__kstrtabns_hyperbus_register_device }, section "___ksymtab_gpl+hyperbus_register_device", align 4
@__kstrtab_hyperbus_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_hyperbus_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_hyperbus_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hyperbus_unregister_device to i32), ptr @__kstrtab_hyperbus_unregister_device, ptr @__kstrtabns_hyperbus_unregister_device }, section "___ksymtab_gpl+hyperbus_unregister_device", align 4
@__UNIQUE_ID_description172 = internal constant [45 x i8] c"hyperbus_core.description=HyperBus Framework\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [54 x i8] c"hyperbus_core.file=drivers/mtd/hyperbus/hyperbus-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [29 x i8] c"hyperbus_core.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author175 = internal constant [59 x i8] c"hyperbus_core.author=Vignesh Raghavendra <vigneshr@ti.com>\00", section ".modinfo", align 1
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 68, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 74, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 75, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 102, i32 5 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 109, i32 28 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 111, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private constant [40 x i8] c"../drivers/mtd/hyperbus/hyperbus-core.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 120, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 464, i32 31 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__ksymtab_hyperbus_register_device, ptr @__ksymtab_hyperbus_unregister_device, ptr @hyperbus_register_device._entry, ptr @hyperbus_register_device._entry.13, ptr @hyperbus_register_device._entry.16, ptr @hyperbus_register_device._entry.4, ptr @hyperbus_register_device._entry.9, ptr @hyperbus_register_device._entry_ptr, ptr @hyperbus_register_device._entry_ptr.11, ptr @hyperbus_register_device._entry_ptr.15, ptr @hyperbus_register_device._entry_ptr.18, ptr @hyperbus_register_device._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hyperbus_register_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hyperbus_register_device._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hyperbus_register_device._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hyperbus_register_device._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hyperbus_register_device._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hyperbus_register_device(ptr noundef %hbdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hbdev, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %np1 = getelementptr inbounds %struct.hyperbus_device, ptr %hbdev, i32 0, i32 1
  %0 = ptrtoint ptr %np1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %np1, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false3

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %ctlr4 = getelementptr inbounds %struct.hyperbus_device, ptr %hbdev, i32 0, i32 3
  %2 = ptrtoint ptr %ctlr4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctlr4, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %lor.lhs.false3.do.end_crit_edge, label %lor.lhs.false6

lor.lhs.false3.do.end_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %lor.lhs.false6.do.end_crit_edge, label %if.end

lor.lhs.false6.do.end_crit_edge:                  ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false6.do.end_crit_edge, %lor.lhs.false3.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %call12 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %1, ptr noundef nonnull @.str.3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.5) #6
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %memtype = getelementptr inbounds %struct.hyperbus_device, ptr %hbdev, i32 0, i32 4
  %8 = ptrtoint ptr %memtype to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %memtype, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end19.dev_name.exit_crit_edge

if.end19.dev_name.exit_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end19.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %14, %if.end.i ], [ %12, %if.end19.dev_name.exit_crit_edge ]
  %15 = ptrtoint ptr %hbdev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %retval.0.i, ptr %hbdev, align 4
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %hbdev, i32 0, i32 6
  %16 = ptrtoint ptr %bankwidth to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %bankwidth, align 4
  %device_node = getelementptr inbounds %struct.map_info, ptr %hbdev, i32 0, i32 16
  %17 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %1, ptr %device_node, align 4
  tail call void @simple_map_init(ptr noundef nonnull %hbdev) #3
  %ops23 = getelementptr inbounds %struct.hyperbus_ctlr, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %ops23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops23, align 4
  %tobool24.not = icmp eq ptr %19, null
  br i1 %tobool24.not, label %dev_name.exit.if.end53_crit_edge, label %if.then25

dev_name.exit.if.end53_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end53

if.then25:                                        ; preds = %dev_name.exit
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool26.not = icmp eq ptr %21, null
  br i1 %tobool26.not, label %if.then25.if.end28_crit_edge, label %if.then27

if.then25.if.end28_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end28

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  %read = getelementptr inbounds %struct.map_info, ptr %hbdev, i32 0, i32 7
  %22 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @hyperbus_read16, ptr %read, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.then25.if.end28_crit_edge
  %write16 = getelementptr inbounds %struct.hyperbus_ops, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %write16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write16, align 4
  %tobool29.not = icmp eq ptr %24, null
  br i1 %tobool29.not, label %if.end28.if.end31_crit_edge, label %if.then30

if.end28.if.end31_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  %write = getelementptr inbounds %struct.map_info, ptr %hbdev, i32 0, i32 9
  %25 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @hyperbus_write16, ptr %write, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28.if.end31_crit_edge
  %copy_to = getelementptr inbounds %struct.hyperbus_ops, ptr %19, i32 0, i32 3
  %26 = ptrtoint ptr %copy_to to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %copy_to, align 4
  %tobool32.not = icmp eq ptr %27, null
  br i1 %tobool32.not, label %if.end31.if.end35_crit_edge, label %if.then33

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #5
  %copy_to34 = getelementptr inbounds %struct.map_info, ptr %hbdev, i32 0, i32 10
  %28 = ptrtoint ptr %copy_to34 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @hyperbus_copy_to, ptr %copy_to34, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end31.if.end35_crit_edge
  %copy_from = getelementptr inbounds %struct.hyperbus_ops, ptr %19, i32 0, i32 2
  %29 = ptrtoint ptr %copy_from to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %copy_from, align 4
  %tobool36.not = icmp eq ptr %30, null
  br i1 %tobool36.not, label %if.end35.if.end39_crit_edge, label %if.then37

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end39

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #5
  %copy_from38 = getelementptr inbounds %struct.map_info, ptr %hbdev, i32 0, i32 8
  %31 = ptrtoint ptr %copy_from38 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @hyperbus_copy_from, ptr %copy_from38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end35.if.end39_crit_edge
  %calibrate = getelementptr inbounds %struct.hyperbus_ops, ptr %19, i32 0, i32 4
  %32 = ptrtoint ptr %calibrate to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %calibrate, align 4
  %tobool40.not = icmp eq ptr %33, null
  br i1 %tobool40.not, label %if.end39.if.end53_crit_edge, label %land.lhs.true

if.end39.if.end53_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end53

land.lhs.true:                                    ; preds = %if.end39
  %calibrated = getelementptr inbounds %struct.hyperbus_ctlr, ptr %3, i32 0, i32 1
  %34 = ptrtoint ptr %calibrated to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %calibrated, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool41.not = icmp eq i8 %35, 0
  br i1 %tobool41.not, label %if.then42, label %land.lhs.true.if.end53_crit_edge

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end53

if.then42:                                        ; preds = %land.lhs.true
  %call44 = tail call i32 %33(ptr noundef nonnull %hbdev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %do.end49, label %if.end50

do.end49:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.10) #6
  br label %cleanup

if.end50:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #5
  %36 = ptrtoint ptr %calibrated to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %calibrated, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end50, %land.lhs.true.if.end53_crit_edge, %if.end39.if.end53_crit_edge, %dev_name.exit.if.end53_crit_edge
  %call54 = tail call ptr @do_map_probe(ptr noundef nonnull @.str.12, ptr noundef nonnull %hbdev) #3
  %mtd = getelementptr inbounds %struct.hyperbus_device, ptr %hbdev, i32 0, i32 2
  %37 = ptrtoint ptr %mtd to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call54, ptr %mtd, align 4
  %tobool56.not = icmp eq ptr %call54, null
  br i1 %tobool56.not, label %do.end60, label %if.end61

do.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.14) #6
  br label %cleanup

if.end61:                                         ; preds = %if.end53
  %parent = getelementptr inbounds %struct.mtd_info, ptr %call54, i32 0, i32 56, i32 1
  %38 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %10, ptr %parent, align 8
  %39 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mtd, align 4
  %of_node.i = getelementptr inbounds %struct.mtd_info, ptr %40, i32 0, i32 56, i32 27
  %41 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %1, ptr %of_node.i, align 8
  %name.i = getelementptr inbounds %struct.mtd_info, ptr %40, i32 0, i32 13
  %42 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name.i, align 8
  %tobool.not.i122 = icmp eq ptr %43, null
  br i1 %tobool.not.i122, label %if.then.i, label %if.end61.mtd_set_of_node.exit_crit_edge

if.end61.mtd_set_of_node.exit_crit_edge:          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #5
  br label %mtd_set_of_node.exit

if.then.i:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #5
  %call.i = tail call i32 @of_property_read_string(ptr noundef nonnull %1, ptr noundef nonnull @.str.19, ptr noundef %name.i) #3
  br label %mtd_set_of_node.exit

mtd_set_of_node.exit:                             ; preds = %if.then.i, %if.end61.mtd_set_of_node.exit_crit_edge
  %44 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mtd, align 4
  %call66 = tail call i32 @mtd_device_parse_register(ptr noundef %45, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %mtd_set_of_node.exit.cleanup_crit_edge, label %do.end71

mtd_set_of_node.exit.cleanup_crit_edge:           ; preds = %mtd_set_of_node.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end71:                                         ; preds = %mtd_set_of_node.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.17) #6
  %46 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mtd, align 4
  tail call void @map_destroy(ptr noundef %47) #3
  br label %cleanup

cleanup:                                          ; preds = %do.end71, %mtd_set_of_node.exit.cleanup_crit_edge, %do.end60, %do.end49, %do.end17, %do.end
  %retval.0 = phi i32 [ %call66, %do.end71 ], [ -19, %do.end60 ], [ -19, %do.end49 ], [ -19, %do.end17 ], [ -22, %do.end ], [ 0, %mtd_set_of_node.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @simple_map_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hyperbus_read16(ptr noalias nocapture writeonly sret(%union.map_word) align 4 %agg.result, ptr noundef %map, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ctlr1 = getelementptr inbounds %struct.hyperbus_device, ptr %map, i32 0, i32 3
  %0 = ptrtoint ptr %ctlr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctlr1, align 4
  %ops = getelementptr inbounds %struct.hyperbus_ctlr, ptr %1, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %agg.result, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 28)
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call2 = tail call zeroext i16 %7(ptr noundef %map, i32 noundef %addr) #3
  %conv = zext i16 %call2 to i32
  %8 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %agg.result, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hyperbus_write16(ptr noundef %map, [8 x i32] %d.coerce, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %d.coerce.fca.0.extract = extractvalue [8 x i32] %d.coerce, 0
  %ctlr1 = getelementptr inbounds %struct.hyperbus_device, ptr %map, i32 0, i32 3
  %0 = ptrtoint ptr %ctlr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctlr1, align 4
  %ops = getelementptr inbounds %struct.hyperbus_ctlr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %write16 = getelementptr inbounds %struct.hyperbus_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write16 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write16, align 4
  %conv = trunc i32 %d.coerce.fca.0.extract to i16
  tail call void %5(ptr noundef %map, i32 noundef %addr, i16 noundef zeroext %conv) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hyperbus_copy_to(ptr noundef %map, i32 noundef %to, ptr noundef %from, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ctlr1 = getelementptr inbounds %struct.hyperbus_device, ptr %map, i32 0, i32 3
  %0 = ptrtoint ptr %ctlr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctlr1, align 4
  %ops = getelementptr inbounds %struct.hyperbus_ctlr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %copy_to = getelementptr inbounds %struct.hyperbus_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %copy_to to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %copy_to, align 4
  tail call void %5(ptr noundef %map, i32 noundef %to, ptr noundef %from, i32 noundef %len) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hyperbus_copy_from(ptr noundef %map, ptr noundef %to, i32 noundef %from, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ctlr1 = getelementptr inbounds %struct.hyperbus_device, ptr %map, i32 0, i32 3
  %0 = ptrtoint ptr %ctlr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctlr1, align 4
  %ops = getelementptr inbounds %struct.hyperbus_ctlr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %copy_from = getelementptr inbounds %struct.hyperbus_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %copy_from to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %copy_from, align 4
  tail call void %5(ptr noundef %map, ptr noundef %to, i32 noundef %from, i32 noundef %len) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @do_map_probe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @map_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hyperbus_unregister_device(ptr noundef readonly %hbdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hbdev, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %mtd = getelementptr inbounds %struct.hyperbus_device, ptr %hbdev, i32 0, i32 2
  %0 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtd, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @mtd_device_unregister(ptr noundef nonnull %1) #3
  %2 = ptrtoint ptr %mtd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtd, align 4
  tail call void @map_destroy(ptr noundef %3) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/hyperbus/hyperbus-core.c", i32 68, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hyperbus_register_device._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hyperbus_register_device._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/hyperbus/hyperbus-core.c", i32 74, i32 35}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/hyperbus/hyperbus-core.c", i32 75, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @hyperbus_register_device._entry.4, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @hyperbus_register_device._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/hyperbus/hyperbus-core.c", i32 102, i32 5}
!16 = !{ptr @hyperbus_register_device._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @hyperbus_register_device._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/hyperbus/hyperbus-core.c", i32 109, i32 28}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/hyperbus/hyperbus-core.c", i32 111, i32 3}
!22 = !{ptr @hyperbus_register_device._entry.13, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @hyperbus_register_device._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/hyperbus/hyperbus-core.c", i32 120, i32 3}
!26 = !{ptr @hyperbus_register_device._entry.16, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @hyperbus_register_device._entry_ptr.18, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @__ksymtab_hyperbus_register_device, !29, !"__ksymtab_hyperbus_register_device", i1 false, i1 false}
!29 = !{!"../drivers/mtd/hyperbus/hyperbus-core.c", i32 127, i32 1}
!30 = !{ptr @__ksymtab_hyperbus_unregister_device, !31, !"__ksymtab_hyperbus_unregister_device", i1 false, i1 false}
!31 = !{!"../drivers/mtd/hyperbus/hyperbus-core.c", i32 140, i32 1}
!32 = !{ptr @__UNIQUE_ID_description172, !33, !"__UNIQUE_ID_description172", i1 false, i1 false}
!33 = !{!"../drivers/mtd/hyperbus/hyperbus-core.c", i32 142, i32 1}
!34 = !{ptr @__UNIQUE_ID_file173, !35, !"__UNIQUE_ID_file173", i1 false, i1 false}
!35 = !{!"../drivers/mtd/hyperbus/hyperbus-core.c", i32 143, i32 1}
!36 = !{ptr @__UNIQUE_ID_license174, !35, !"__UNIQUE_ID_license174", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_author175, !38, !"__UNIQUE_ID_author175", i1 false, i1 false}
!38 = !{!"../drivers/mtd/hyperbus/hyperbus-core.c", i32 144, i32 1}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i8 0, i8 2}
