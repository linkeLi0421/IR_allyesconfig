; ModuleID = '/llk/IR_all_yes/drivers/bus/fsl-mc/mc-io.c_pt.bc'
source_filename = "../drivers/bus/fsl-mc/mc-io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fsl_mc_portal_allocate\22, \22a\22\09"
module asm "\09.weak\09__crc_fsl_mc_portal_allocate\09\09\09\09"
module asm "\09.long\09__crc_fsl_mc_portal_allocate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_mc_portal_allocate:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_mc_portal_allocate\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_mc_portal_allocate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsl_mc_portal_free\22, \22a\22\09"
module asm "\09.weak\09__crc_fsl_mc_portal_free\09\09\09\09"
module asm "\09.long\09__crc_fsl_mc_portal_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_mc_portal_free:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_mc_portal_free\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_mc_portal_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsl_mc_portal_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_fsl_mc_portal_reset\09\09\09\09"
module asm "\09.long\09__crc_fsl_mc_portal_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_mc_portal_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_mc_portal_reset\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_mc_portal_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fsl_mc_io = type { ptr, i16, i32, i32, ptr, ptr, %union.anon.43 }
%union.anon.43 = type { %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fsl_mc_device = type { %struct.device, i64, i16, i32, i16, ptr, %struct.fsl_mc_obj_desc, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.fsl_mc_obj_desc = type { [16 x i8], i32, i16, i16, i16, i8, i8, i32, [16 x i8], i16 }
%struct.fsl_mc_resource = type { i32, i32, ptr, ptr, %struct.list_head }

@fsl_create_mc_io.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&mc_io->spinlock\00", [47 x i8] zeroinitializer }, align 32
@fsl_create_mc_io.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&mc_io->mutex\00", [18 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mc_portal\00", [22 x i8] zeroinitializer }, align 32
@fsl_create_mc_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 96, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"devm_request_mem_region failed for MC portal %pa\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl_create_mc_io\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/bus/fsl-mc/mc-io.c\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsl_create_mc_io._entry_ptr = internal global ptr @fsl_create_mc_io._entry, section ".printk_index", align 4
@fsl_create_mc_io._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 106, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"devm_ioremap failed for MC portal %pa\0A\00", [57 x i8] zeroinitializer }, align 32
@fsl_create_mc_io._entry_ptr.11 = internal global ptr @fsl_create_mc_io._entry.9, section ".printk_index", align 4
@fsl_mc_bus_type = external dso_local global %struct.bus_type, align 4
@fsl_mc_portal_allocate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.6, i32 202, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ERROR: Version %d.%d of DPMCP not supported.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fsl_mc_portal_allocate\00", [41 x i8] zeroinitializer }, align 32
@fsl_mc_portal_allocate._entry_ptr = internal global ptr @fsl_mc_portal_allocate._entry, section ".printk_index", align 4
@__kstrtab_fsl_mc_portal_allocate = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_mc_portal_allocate = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_mc_portal_allocate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_mc_portal_allocate to i32), ptr @__kstrtab_fsl_mc_portal_allocate, ptr @__kstrtabns_fsl_mc_portal_allocate }, section "___ksymtab_gpl+fsl_mc_portal_allocate", align 4
@__kstrtab_fsl_mc_portal_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_mc_portal_free = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_mc_portal_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_mc_portal_free to i32), ptr @__kstrtab_fsl_mc_portal_free, ptr @__kstrtabns_fsl_mc_portal_free }, section "___ksymtab_gpl+fsl_mc_portal_free", align 4
@fsl_mc_portal_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.6, i32 279, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dpmcp_reset() failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsl_mc_portal_reset\00", [44 x i8] zeroinitializer }, align 32
@fsl_mc_portal_reset._entry_ptr = internal global ptr @fsl_mc_portal_reset._entry, section ".printk_index", align 4
@__kstrtab_fsl_mc_portal_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_mc_portal_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_mc_portal_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_mc_portal_reset to i32), ptr @__kstrtab_fsl_mc_portal_reset, ptr @__kstrtabns_fsl_mc_portal_reset }, section "___ksymtab_gpl+fsl_mc_portal_reset", align 4
@fsl_mc_io_unset_dpmcp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.6, i32 45, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dpmcp_close() failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsl_mc_io_unset_dpmcp\00", [42 x i8] zeroinitializer }, align 32
@fsl_mc_io_unset_dpmcp._entry_ptr = internal global ptr @fsl_mc_io_unset_dpmcp._entry, section ".printk_index", align 4
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 85, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 87, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 89, i32 8 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 94, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 104, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 199, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 279, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [30 x i8] c"../drivers/bus/fsl-mc/mc-io.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 44, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__ksymtab_fsl_mc_portal_allocate, ptr @__ksymtab_fsl_mc_portal_free, ptr @__ksymtab_fsl_mc_portal_reset, ptr @fsl_create_mc_io._entry, ptr @fsl_create_mc_io._entry.9, ptr @fsl_create_mc_io._entry_ptr, ptr @fsl_create_mc_io._entry_ptr.11, ptr @fsl_mc_io_unset_dpmcp._entry, ptr @fsl_mc_io_unset_dpmcp._entry_ptr, ptr @fsl_mc_portal_allocate._entry, ptr @fsl_mc_portal_allocate._entry_ptr, ptr @fsl_mc_portal_reset._entry, ptr @fsl_mc_portal_reset._entry_ptr, ptr @fsl_create_mc_io.__key, ptr @.str, ptr @fsl_create_mc_io.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_create_mc_io.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_create_mc_io.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_create_mc_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_create_mc_io._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_portal_allocate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_portal_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_io_unset_dpmcp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsl_create_mc_io(ptr noundef %dev, i32 noundef %mc_portal_phys_addr, i32 noundef %mc_portal_size, ptr noundef %dpmcp_dev, i32 noundef %flags, ptr nocapture noundef writeonly %new_mc_io) local_unnamed_addr #0 align 64 {
entry:
  %mc_portal_phys_addr.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mc_portal_phys_addr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mc_portal_phys_addr, ptr %mc_portal_phys_addr.addr, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 116, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 4
  %conv = trunc i32 %flags to i16
  %flags2 = getelementptr inbounds %struct.fsl_mc_io, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %flags2 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %flags2, align 4
  %3 = ptrtoint ptr %mc_portal_phys_addr.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mc_portal_phys_addr.addr, align 4
  %portal_phys_addr = getelementptr inbounds %struct.fsl_mc_io, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %portal_phys_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %portal_phys_addr, align 4
  %portal_size = getelementptr inbounds %struct.fsl_mc_io, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %portal_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mc_portal_size, ptr %portal_size, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %7 = getelementptr inbounds %struct.fsl_mc_io, ptr %call.i, i32 0, i32 6
  br i1 %tobool3.not, label %do.body5, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__raw_spin_lock_init(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @fsl_create_mc_io.__key, i16 noundef signext 2) #4
  br label %if.end8

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__mutex_init(ptr noundef %7, ptr noundef nonnull @.str.2, ptr noundef nonnull @fsl_create_mc_io.__key.1) #4
  br label %if.end8

if.end8:                                          ; preds = %do.body5, %do.body
  %8 = ptrtoint ptr %mc_portal_phys_addr.addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mc_portal_phys_addr.addr, align 4
  %call9 = tail call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @iomem_resource, i32 noundef %9, i32 noundef %mc_portal_size, ptr noundef nonnull @.str.3) #4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end14, label %if.end15

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull %mc_portal_phys_addr.addr) #7
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %10 = ptrtoint ptr %mc_portal_phys_addr.addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mc_portal_phys_addr.addr, align 4
  %call16 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %11, i32 noundef %mc_portal_size) #4
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %do.end21, label %if.end22

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull %mc_portal_phys_addr.addr) #7
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %portal_virt_addr = getelementptr inbounds %struct.fsl_mc_io, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %portal_virt_addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call16, ptr %portal_virt_addr, align 4
  %tobool23.not = icmp eq ptr %dpmcp_dev, null
  br i1 %tobool23.not, label %if.end22.if.end29_crit_edge, label %if.then24

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then24:                                        ; preds = %if.end22
  %dpmcp_dev1.i = getelementptr inbounds %struct.fsl_mc_io, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %dpmcp_dev1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dpmcp_dev1.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then24.error_destroy_mc_io_crit_edge

if.then24.error_destroy_mc_io_crit_edge:          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_destroy_mc_io

if.end.i:                                         ; preds = %if.then24
  %mc_io2.i = getelementptr inbounds %struct.fsl_mc_device, ptr %dpmcp_dev, i32 0, i32 5
  %15 = ptrtoint ptr %mc_io2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mc_io2.i, align 4
  %tobool3.not.i = icmp eq ptr %16, null
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.error_destroy_mc_io_crit_edge

if.end.i.error_destroy_mc_io_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_destroy_mc_io

if.end5.i:                                        ; preds = %if.end.i
  %id.i = getelementptr inbounds %struct.fsl_mc_device, ptr %dpmcp_dev, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id.i, align 8
  %mc_handle.i = getelementptr inbounds %struct.fsl_mc_device, ptr %dpmcp_dev, i32 0, i32 4
  %call.i54 = tail call i32 @dpmcp_open(ptr noundef nonnull %call.i, i32 noundef 0, i32 noundef %18, ptr noundef %mc_handle.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %cmp.i = icmp slt i32 %call.i54, 0
  br i1 %cmp.i, label %if.end5.i.error_destroy_mc_io_crit_edge, label %fsl_mc_io_set_dpmcp.exit

if.end5.i.error_destroy_mc_io_crit_edge:          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_destroy_mc_io

fsl_mc_io_set_dpmcp.exit:                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %dpmcp_dev1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dpmcp_dev, ptr %dpmcp_dev1.i, align 4
  %20 = ptrtoint ptr %mc_io2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %mc_io2.i, align 4
  br label %if.end29

if.end29:                                         ; preds = %fsl_mc_io_set_dpmcp.exit, %if.end22.if.end29_crit_edge
  %21 = ptrtoint ptr %new_mc_io to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %new_mc_io, align 4
  br label %cleanup

error_destroy_mc_io:                              ; preds = %if.end5.i.error_destroy_mc_io_crit_edge, %if.end.i.error_destroy_mc_io_crit_edge, %if.then24.error_destroy_mc_io_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i54, %if.end5.i.error_destroy_mc_io_crit_edge ], [ -22, %if.end.i.error_destroy_mc_io_crit_edge ], [ -22, %if.then24.error_destroy_mc_io_crit_edge ]
  tail call void @fsl_destroy_mc_io(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %error_destroy_mc_io, %if.end29, %do.end21, %do.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %error_destroy_mc_io ], [ 0, %if.end29 ], [ -6, %do.end21 ], [ -16, %do.end14 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsl_destroy_mc_io(ptr noundef %mc_io) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mc_io, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dpmcp_dev1 = getelementptr inbounds %struct.fsl_mc_io, ptr %mc_io, i32 0, i32 5
  %0 = ptrtoint ptr %dpmcp_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpmcp_dev1, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %mc_handle.i = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mc_handle.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mc_handle.i, align 8
  %call.i = tail call i32 @dpmcp_close(ptr noundef nonnull %mc_io, i32 noundef 0, i16 noundef zeroext %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then3.fsl_mc_io_unset_dpmcp.exit_crit_edge

if.then3.fsl_mc_io_unset_dpmcp.exit_crit_edge:    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %fsl_mc_io_unset_dpmcp.exit

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %1, ptr noundef nonnull @.str.16, i32 noundef %call.i) #7
  br label %fsl_mc_io_unset_dpmcp.exit

fsl_mc_io_unset_dpmcp.exit:                       ; preds = %do.end.i, %if.then3.fsl_mc_io_unset_dpmcp.exit_crit_edge
  %4 = ptrtoint ptr %dpmcp_dev1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dpmcp_dev1, align 4
  %mc_io3.i = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %mc_io3.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %mc_io3.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %fsl_mc_io_unset_dpmcp.exit, %if.end.if.end4_crit_edge
  %6 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mc_io, align 4
  %portal_virt_addr = getelementptr inbounds %struct.fsl_mc_io, ptr %mc_io, i32 0, i32 4
  %8 = ptrtoint ptr %portal_virt_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %portal_virt_addr, align 4
  tail call void @devm_iounmap(ptr noundef %7, ptr noundef %9) #4
  %10 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mc_io, align 4
  %portal_phys_addr = getelementptr inbounds %struct.fsl_mc_io, ptr %mc_io, i32 0, i32 3
  %12 = ptrtoint ptr %portal_phys_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %portal_phys_addr, align 4
  %portal_size = getelementptr inbounds %struct.fsl_mc_io, ptr %mc_io, i32 0, i32 2
  %14 = ptrtoint ptr %portal_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %portal_size, align 4
  tail call void @__devm_release_region(ptr noundef %11, ptr noundef nonnull @iomem_resource, i32 noundef %13, i32 noundef %15) #4
  %16 = ptrtoint ptr %portal_virt_addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %portal_virt_addr, align 4
  %17 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mc_io, align 4
  tail call void @devm_kfree(ptr noundef %18, ptr noundef nonnull %mc_io) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__devm_release_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsl_mc_portal_allocate(ptr noundef %mc_dev, i16 noundef zeroext %mc_io_flags, ptr nocapture noundef writeonly %new_mc_io) #0 align 64 {
entry:
  %resource = alloca ptr, align 4
  %mc_io = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resource) #4
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %resource, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mc_io) #4
  %1 = ptrtoint ptr %mc_io to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %mc_io, align 4
  %flags = getelementptr inbounds %struct.fsl_mc_device, ptr %mc_dev, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 8
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.else:                                          ; preds = %entry
  %parent = getelementptr inbounds %struct.device, ptr %mc_dev, i32 0, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %bus = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus, align 8
  %cmp = icmp eq ptr %8, @fsl_mc_bus_type
  br i1 %cmp, label %if.else.if.end5_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5:                                          ; preds = %if.else.if.end5_crit_edge, %entry.if.end5_crit_edge
  %mc_bus_dev.0 = phi ptr [ %mc_dev, %entry.if.end5_crit_edge ], [ %6, %if.else.if.end5_crit_edge ]
  %9 = ptrtoint ptr %new_mc_io to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %new_mc_io, align 4
  %call = call i32 @fsl_mc_resource_allocate(ptr noundef %mc_bus_dev.0, i32 noundef 0, ptr noundef nonnull %resource) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp slt i32 %call, 0
  br i1 %cmp9, label %if.end5.cleanup_crit_edge, label %if.end12

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %10 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resource, align 4
  %data = getelementptr inbounds %struct.fsl_mc_resource, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %ver_major = getelementptr inbounds %struct.fsl_mc_device, ptr %13, i32 0, i32 6, i32 3
  %14 = ptrtoint ptr %ver_major to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ver_major, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %15)
  %cmp14 = icmp ult i16 %15, 3
  br i1 %cmp14, label %do.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end12
  %regions = getelementptr inbounds %struct.fsl_mc_device, ptr %13, i32 0, i32 7
  %16 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regions, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %19
  %add.i = add i32 %sub.i, %21
  %conv37 = zext i16 %mc_io_flags to i32
  %call38 = call i32 @fsl_create_mc_io(ptr noundef %mc_bus_dev.0, i32 noundef %19, i32 noundef %add.i, ptr noundef %13, i32 noundef %conv37, ptr noundef nonnull %mc_io)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %lor.lhs.false.error_cleanup_resource_crit_edge, label %if.end42

lor.lhs.false.error_cleanup_resource_crit_edge:   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_cleanup_resource

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %conv29 = zext i16 %15 to i32
  %ver_minor31 = getelementptr inbounds %struct.fsl_mc_device, ptr %13, i32 0, i32 6, i32 4
  %22 = ptrtoint ptr %ver_minor31 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ver_minor31, align 8
  %conv32 = zext i16 %23 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.12, i32 noundef %conv29, i32 noundef %conv32) #7
  br label %error_cleanup_resource

if.end42:                                         ; preds = %lor.lhs.false
  %call45 = call ptr @device_link_add(ptr noundef %mc_dev, ptr noundef %13, i32 noundef 2) #4
  %consumer_link = getelementptr inbounds %struct.fsl_mc_device, ptr %13, i32 0, i32 10
  %24 = ptrtoint ptr %consumer_link to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call45, ptr %consumer_link, align 8
  %tobool47.not = icmp eq ptr %call45, null
  %25 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mc_io, align 4
  br i1 %tobool47.not, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  call void @fsl_destroy_mc_io(ptr noundef %26)
  br label %error_cleanup_resource

if.end49:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %new_mc_io to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %new_mc_io, align 4
  br label %cleanup

error_cleanup_resource:                           ; preds = %if.then48, %do.end, %lor.lhs.false.error_cleanup_resource_crit_edge
  %error.0 = phi i32 [ -524, %do.end ], [ %call38, %lor.lhs.false.error_cleanup_resource_crit_edge ], [ -22, %if.then48 ]
  %28 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %resource, align 4
  call void @fsl_mc_resource_free(ptr noundef %29) #4
  br label %cleanup

cleanup:                                          ; preds = %error_cleanup_resource, %if.end49, %if.end5.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %error_cleanup_resource ], [ 0, %if.end49 ], [ -22, %if.else.cleanup_crit_edge ], [ %call, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mc_io) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resource) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_mc_resource_allocate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_mc_resource_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsl_mc_portal_free(ptr noundef %mc_io) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dpmcp_dev1 = getelementptr inbounds %struct.fsl_mc_io, ptr %mc_io, i32 0, i32 5
  %0 = ptrtoint ptr %dpmcp_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpmcp_dev1, align 4
  %resource2 = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %resource2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.fsl_mc_resource, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %cmp3.not = icmp eq ptr %7, %1
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @fsl_destroy_mc_io(ptr noundef %mc_io)
  tail call void @fsl_mc_resource_free(ptr noundef nonnull %3) #4
  %consumer_link = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %consumer_link to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %consumer_link, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsl_mc_portal_reset(ptr noundef %mc_io) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dpmcp_dev1 = getelementptr inbounds %struct.fsl_mc_io, ptr %mc_io, i32 0, i32 5
  %0 = ptrtoint ptr %dpmcp_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpmcp_dev1, align 4
  %mc_handle = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mc_handle, align 8
  %call = tail call i32 @dpmcp_reset(ptr noundef %mc_io, i32 noundef 0, i16 noundef zeroext %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpmcp_reset(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpmcp_open(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpmcp_close(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !29, !31, !32, !33, !34, !36, !38, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @fsl_create_mc_io.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/bus/fsl-mc/mc-io.c", i32 85, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @fsl_create_mc_io.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/bus/fsl-mc/mc-io.c", i32 87, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/bus/fsl-mc/mc-io.c", i32 89, i32 8}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/bus/fsl-mc/mc-io.c", i32 94, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @fsl_create_mc_io._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @fsl_create_mc_io._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/bus/fsl-mc/mc-io.c", i32 104, i32 3}
!18 = !{ptr @fsl_create_mc_io._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @fsl_create_mc_io._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/bus/fsl-mc/mc-io.c", i32 199, i32 3}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @fsl_mc_portal_allocate._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @fsl_mc_portal_allocate._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @__ksymtab_fsl_mc_portal_allocate, !26, !"__ksymtab_fsl_mc_portal_allocate", i1 false, i1 false}
!26 = !{!"../drivers/bus/fsl-mc/mc-io.c", i32 234, i32 1}
!27 = !{ptr @__ksymtab_fsl_mc_portal_free, !28, !"__ksymtab_fsl_mc_portal_free", i1 false, i1 false}
!28 = !{!"../drivers/bus/fsl-mc/mc-io.c", i32 265, i32 1}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/bus/fsl-mc/mc-io.c", i32 279, i32 3}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @fsl_mc_portal_reset._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @fsl_mc_portal_reset._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @__ksymtab_fsl_mc_portal_reset, !35, !"__ksymtab_fsl_mc_portal_reset", i1 false, i1 false}
!35 = !{!"../drivers/bus/fsl-mc/mc-io.c", i32 285, i32 1}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/bus/fsl-mc/mc-io.c", i32 44, i32 3}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @fsl_mc_io_unset_dpmcp._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @fsl_mc_io_unset_dpmcp._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
