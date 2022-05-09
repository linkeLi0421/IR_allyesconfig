; ModuleID = '/llk/IR_all_yes/drivers/soc/dove/pmu.c_pt.bc'
source_filename = "../drivers/soc/dove/pmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pmu_data = type { %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.reset_controller_dev }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dove_pmu_initdata = type { ptr, ptr, i32, i32, ptr }
%struct.dove_pmu_domain_initdata = type { i32, i32, i32, ptr }
%struct.pmu_domain = type { ptr, i32, i32, i32, %struct.generic_pm_domain }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.43 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.43 = type { %struct.mutex }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }

@dove_init_pmu_legacy.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&pmu->lock\00", [21 x i8] zeroinitializer }, align 32
@dove_init_pmu_legacy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013dove_init_pmu_irq() failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dove_init_pmu_legacy\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/soc/dove/pmu.c\00", [41 x i8] zeroinitializer }, align 32
@dove_init_pmu_legacy._entry_ptr = internal global ptr @dove_init_pmu_legacy._entry, section ".printk_index", align 4
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"marvell,dove-pmu\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"domains\00", [24 x i8] zeroinitializer }, align 32
@dove_init_pmu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%pOFn: failed to find domains sub-node\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dove_init_pmu\00", [18 x i8] zeroinitializer }, align 32
@dove_init_pmu._entry_ptr = internal global ptr @dove_init_pmu._entry, section ".printk_index", align 4
@dove_init_pmu.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@dove_init_pmu._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%pOFn: failed to map PMU\0A\00", [36 x i8] zeroinitializer }, align 32
@dove_init_pmu._entry_ptr.10 = internal global ptr @dove_init_pmu._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pOFn\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"marvell,pmu_pwr_mask\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"marvell,pmu_iso_mask\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"resets\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"#reset-cells\00", [19 x i8] zeroinitializer }, align 32
@dove_init_pmu._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.7, ptr @.str.3, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%pOFn: no interrupt specified\0A\00", [63 x i8] zeroinitializer }, align 32
@dove_init_pmu._entry_ptr.18 = internal global ptr @dove_init_pmu._entry.16, section ".printk_index", align 4
@dove_init_pmu._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.7, ptr @.str.3, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dove_init_pmu._entry_ptr.20 = internal global ptr @dove_init_pmu._entry.19, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pmu_reset = internal unnamed_addr constant %struct.reset_controller_dev { ptr @pmu_reset_ops, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, i32 0, ptr null, i32 32 }, section ".init.data", align 4
@pmu_reset_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013pmu: %s failed: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pmu_reset_init\00", [17 x i8] zeroinitializer }, align 32
@pmu_reset_init._entry_ptr = internal global ptr @pmu_reset_init._entry, section ".printk_index", align 4
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reset_controller_register\00", [38 x i8] zeroinitializer }, align 32
@pmu_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr @pmu_reset_reset, ptr @pmu_reset_assert, ptr @pmu_reset_deassert, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pmu_irq\00", [24 x i8] zeroinitializer }, align 32
@irq_generic_chip_ops = external dso_local constant %struct.irq_domain_ops, align 4
@dove_init_pmu_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: unable to add irq domain\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dove_init_pmu_irq\00", [46 x i8] zeroinitializer }, align 32
@dove_init_pmu_irq._entry_ptr = internal global ptr @dove_init_pmu_irq._entry, section ".printk_index", align 4
@dove_init_pmu_irq._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: unable to alloc irq domain gc: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@dove_init_pmu_irq._entry_ptr.29 = internal global ptr @dove_init_pmu_irq._entry.27, section ".printk_index", align 4
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 319, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 342, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 380, i32 47 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 384, i32 46 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 386, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 394, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 399, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 417, i32 45 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 423, i32 28 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 425, i32 28 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 433, i32 40 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 433, i32 50 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 447, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 451, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 112, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [14 x i8] c"pmu_reset_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 91, i32 39 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 268, i32 21 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 280, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [26 x i8] c"../drivers/soc/dove/pmu.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 289, i32 3 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @dove_init_pmu._entry, ptr @dove_init_pmu._entry.16, ptr @dove_init_pmu._entry.19, ptr @dove_init_pmu._entry.8, ptr @dove_init_pmu._entry_ptr, ptr @dove_init_pmu._entry_ptr.10, ptr @dove_init_pmu._entry_ptr.18, ptr @dove_init_pmu._entry_ptr.20, ptr @dove_init_pmu_irq._entry, ptr @dove_init_pmu_irq._entry.27, ptr @dove_init_pmu_irq._entry_ptr, ptr @dove_init_pmu_irq._entry_ptr.29, ptr @dove_init_pmu_legacy._entry, ptr @dove_init_pmu_legacy._entry_ptr, ptr @pmu_reset_init._entry, ptr @pmu_reset_init._entry_ptr, ptr @dove_init_pmu_legacy.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @dove_init_pmu.__key, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @pmu_reset_ops, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dove_init_pmu_legacy.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dove_init_pmu_legacy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dove_init_pmu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dove_init_pmu.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dove_init_pmu._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dove_init_pmu._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dove_init_pmu._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_reset_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dove_init_pmu_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dove_init_pmu_irq._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dove_init_pmu_legacy(ptr nocapture noundef readonly %initdata) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 108) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @dove_init_pmu_legacy.__key, i16 noundef signext 3) #7
  %1 = ptrtoint ptr %initdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %initdata, align 4
  %pmc_base2 = getelementptr inbounds %struct.pmu_data, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %pmc_base2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %pmc_base2, align 8
  %pmu_base = getelementptr inbounds %struct.dove_pmu_initdata, ptr %initdata, i32 0, i32 1
  %4 = ptrtoint ptr %pmu_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmu_base, align 4
  %pmu_base3 = getelementptr inbounds %struct.pmu_data, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %pmu_base3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %pmu_base3, align 4
  tail call fastcc void @pmu_reset_init(ptr noundef nonnull %call7.i.i) #11
  %domains = getelementptr inbounds %struct.dove_pmu_initdata, ptr %initdata, i32 0, i32 4
  %7 = ptrtoint ptr %domains to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %domains, align 4
  %name54 = getelementptr inbounds %struct.dove_pmu_domain_initdata, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %name54 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name54, align 4
  %tobool4.not55 = icmp eq ptr %10, null
  br i1 %tobool4.not55, label %do.body.for.end_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %do.body.for.body_crit_edge
  %name58 = phi ptr [ %name, %if.end14.for.body_crit_edge ], [ %name54, %do.body.for.body_crit_edge ]
  %domain_initdata.056 = phi ptr [ %incdec.ptr, %if.end14.for.body_crit_edge ], [ %8, %do.body.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i53 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 1368) #10
  %tobool6.not = icmp eq ptr %call7.i.i53, null
  br i1 %tobool6.not, label %for.body.if.end14_crit_edge, label %if.then7

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call7.i.i53 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %call7.i.i53, align 8
  %13 = ptrtoint ptr %domain_initdata.056 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %domain_initdata.056, align 4
  %pwr_mask9 = getelementptr inbounds %struct.pmu_domain, ptr %call7.i.i53, i32 0, i32 1
  %15 = ptrtoint ptr %pwr_mask9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %pwr_mask9, align 4
  %rst_mask = getelementptr inbounds %struct.dove_pmu_domain_initdata, ptr %domain_initdata.056, i32 0, i32 1
  %16 = ptrtoint ptr %rst_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rst_mask, align 4
  %rst_mask10 = getelementptr inbounds %struct.pmu_domain, ptr %call7.i.i53, i32 0, i32 2
  %18 = ptrtoint ptr %rst_mask10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %rst_mask10, align 8
  %iso_mask = getelementptr inbounds %struct.dove_pmu_domain_initdata, ptr %domain_initdata.056, i32 0, i32 2
  %19 = ptrtoint ptr %iso_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iso_mask, align 4
  %iso_mask11 = getelementptr inbounds %struct.pmu_domain, ptr %call7.i.i53, i32 0, i32 3
  %21 = ptrtoint ptr %iso_mask11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %iso_mask11, align 4
  %22 = ptrtoint ptr %name58 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name58, align 4
  %name13 = getelementptr inbounds %struct.pmu_domain, ptr %call7.i.i53, i32 0, i32 4, i32 10
  %24 = ptrtoint ptr %name13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %name13, align 8
  %25 = ptrtoint ptr %pmu_base3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pmu_base3, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 16
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !71
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  %base.i = getelementptr inbounds %struct.pmu_domain, ptr %call7.i.i53, i32 0, i32 4
  %power_off.i = getelementptr inbounds %struct.pmu_domain, ptr %call7.i.i53, i32 0, i32 4, i32 18
  %29 = ptrtoint ptr %power_off.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @pmu_domain_power_off, ptr %power_off.i, align 8
  %power_on.i = getelementptr inbounds %struct.pmu_domain, ptr %call7.i.i53, i32 0, i32 4, i32 19
  %30 = ptrtoint ptr %power_on.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @pmu_domain_power_on, ptr %power_on.i, align 4
  %31 = ptrtoint ptr %pwr_mask9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pwr_mask9, align 4
  %and.i = and i32 %32, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %call3.i = tail call i32 @pm_genpd_init(ptr noundef %base.i, ptr noundef null, i1 noundef zeroext %tobool.not.i) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %for.body.if.end14_crit_edge
  %incdec.ptr = getelementptr %struct.dove_pmu_domain_initdata, ptr %domain_initdata.056, i32 1
  %name = getelementptr %struct.dove_pmu_domain_initdata, ptr %domain_initdata.056, i32 1, i32 3
  %33 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name, align 4
  %tobool4.not = icmp eq ptr %34, null
  br i1 %tobool4.not, label %if.end14.for.end_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %do.body.for.end_crit_edge
  %irq = getelementptr inbounds %struct.dove_pmu_initdata, ptr %initdata, i32 0, i32 2
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq, align 4
  %call15 = tail call fastcc i32 @dove_init_pmu_irq(ptr noundef nonnull %call7.i.i, i32 noundef %36) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %for.end.if.end22_crit_edge, label %do.end20

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.end20:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call15) #12
  br label %if.end22

if.end22:                                         ; preds = %do.end20, %for.end.if.end22_crit_edge
  %irq_domain = getelementptr inbounds %struct.pmu_data, ptr %call7.i.i, i32 0, i32 5
  %37 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %irq_domain, align 4
  %tobool23.not = icmp eq ptr %38, null
  br i1 %tobool23.not, label %if.end22.cleanup_crit_edge, label %if.then24

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %irq_domain_start = getelementptr inbounds %struct.dove_pmu_initdata, ptr %initdata, i32 0, i32 3
  %39 = ptrtoint ptr %irq_domain_start to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq_domain_start, align 4
  tail call void @irq_domain_associate_many(ptr noundef nonnull %38, i32 noundef %40, i32 noundef 0, i32 noundef 7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then24 ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pmu_reset_init(ptr noundef %pmu) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reset = getelementptr inbounds %struct.pmu_data, ptr %pmu, i32 0, i32 6
  %0 = call ptr @memcpy(ptr %reset, ptr @pmu_reset, i32 44)
  %of_node = getelementptr inbounds %struct.pmu_data, ptr %pmu, i32 0, i32 1
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 4
  %of_node2 = getelementptr inbounds %struct.pmu_data, ptr %pmu, i32 0, i32 6, i32 5
  %3 = ptrtoint ptr %of_node2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %of_node2, align 4
  %call = tail call i32 @reset_controller_register(ptr noundef %reset) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.23, i32 noundef %call) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dove_init_pmu_irq(ptr noundef %pmu, i32 noundef %irq) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %pmc_base = getelementptr inbounds %struct.pmu_data, ptr %pmu, i32 0, i32 2
  %0 = ptrtoint ptr %pmc_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmc_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %pmc_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmc_base, align 4
  %add.ptr5 = getelementptr i8, ptr %3, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #7, !srcloc !73
  %of_node = getelementptr inbounds %struct.pmu_data, ptr %pmu, i32 0, i32 1
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %5, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef 7, i32 noundef 7, i32 noundef 0, ptr noundef nonnull @irq_generic_chip_ops, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %do.end8, label %do.end15

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24) #12
  br label %cleanup

do.end15:                                         ; preds = %entry
  %call17 = tail call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %call1.i, i32 noundef 7, i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef nonnull @handle_level_irq, i32 noundef 3072, i32 noundef 0, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end25, label %do.end22

do.end22:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, i32 noundef %call17) #12
  tail call void @irq_domain_remove(ptr noundef nonnull %call1.i) #7
  br label %cleanup

if.end25:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = tail call ptr @irq_get_domain_generic_chip(ptr noundef nonnull %call1.i, i32 noundef 0) #7
  %6 = ptrtoint ptr %pmc_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pmc_base, align 4
  %reg_base = getelementptr inbounds %struct.irq_chip_generic, ptr %call26, i32 0, i32 1
  %8 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %reg_base, align 4
  %mask = getelementptr inbounds %struct.irq_chip_generic, ptr %call26, i32 2, i32 0, i32 4, i32 1, i32 1
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 84, ptr %mask, align 4
  %irq_mask = getelementptr inbounds %struct.irq_chip_generic, ptr %call26, i32 1, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @irq_gc_mask_clr_bit, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.irq_chip_generic, ptr %call26, i32 1, i32 0, i32 4, i32 6
  %11 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @irq_gc_mask_set_bit, ptr %irq_unmask, align 4
  %irq_domain = getelementptr inbounds %struct.pmu_data, ptr %pmu, i32 0, i32 5
  %12 = ptrtoint ptr %irq_domain to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1.i, ptr %irq_domain, align 4
  %irq_gc = getelementptr inbounds %struct.pmu_data, ptr %pmu, i32 0, i32 4
  %13 = ptrtoint ptr %irq_gc to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call26, ptr %irq_gc, align 4
  %call33 = tail call i32 @irq_set_handler_data(i32 noundef %irq, ptr noundef %pmu) #7
  tail call void @__irq_set_handler(i32 noundef %irq, ptr noundef nonnull @pmu_irq_handler, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end22, %do.end8
  %retval.0 = phi i32 [ %call17, %do.end22 ], [ 0, %if.end25 ], [ -12, %do.end8 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_associate_many(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dove_init_pmu() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.4) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup77_crit_edge, label %if.end

entry.cleanup77_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup77

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %call, ptr noundef nonnull @.str.5) #7
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull %call) #12
  br label %cleanup77

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 108) #10
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.cleanup77_crit_edge, label %do.body10

if.end5.cleanup77_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup77

do.body10:                                        ; preds = %if.end5
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @dove_init_pmu.__key, i16 noundef signext 3) #7
  %of_node = getelementptr inbounds %struct.pmu_data, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %of_node, align 4
  %call15 = tail call ptr @of_iomap(ptr noundef nonnull %call, i32 noundef 0) #7
  %pmc_base = getelementptr inbounds %struct.pmu_data, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %pmc_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call15, ptr %pmc_base, align 8
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 4
  %call17 = tail call ptr @of_iomap(ptr noundef %4, i32 noundef 1) #7
  %pmu_base = getelementptr inbounds %struct.pmu_data, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %pmu_base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call17, ptr %pmu_base, align 4
  %6 = ptrtoint ptr %pmc_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pmc_base, align 8
  %tobool19.not = icmp eq ptr %7, null
  %tobool21.not = icmp eq ptr %call17, null
  %or.cond = select i1 %tobool19.not, i1 true, i1 %tobool21.not
  br i1 %or.cond, label %do.end25, label %if.end30

do.end25:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %call) #12
  %8 = ptrtoint ptr %pmu_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pmu_base, align 4
  tail call void @iounmap(ptr noundef %9) #7
  %10 = ptrtoint ptr %pmc_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pmc_base, align 8
  tail call void @iounmap(ptr noundef %11) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup77

if.end30:                                         ; preds = %do.body10
  tail call fastcc void @pmu_reset_init(ptr noundef nonnull %call7.i.i) #11
  %call31 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %call1, ptr noundef null) #7
  %cmp.not128 = icmp eq ptr %call31, null
  br i1 %cmp.not128, label %if.end30.for.end_crit_edge, label %for.body.lr.ph

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end30
  %args52 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %np.0129 = phi ptr [ %call31, %for.body.lr.ph ], [ %call57, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #7
  %12 = call ptr @memset(ptr %args, i32 255, i32 72)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i123 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 1368) #10
  %tobool33.not = icmp eq ptr %call7.i.i123, null
  br i1 %tobool33.not, label %for.body.cleanup.thread_crit_edge, label %if.end35

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end35:                                         ; preds = %for.body
  %14 = ptrtoint ptr %call7.i.i123 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %call7.i.i123, align 8
  %call37 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.11, ptr noundef nonnull %np.0129) #7
  %name = getelementptr inbounds %struct.pmu_domain, ptr %call7.i.i123, i32 0, i32 4, i32 10
  %15 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call37, ptr %name, align 8
  %tobool40.not = icmp eq ptr %call37, null
  br i1 %tobool40.not, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i123) #7
  br label %cleanup.thread

if.end42:                                         ; preds = %if.end35
  %pwr_mask = getelementptr inbounds %struct.pmu_domain, ptr %call7.i.i123, i32 0, i32 1
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.0129, ptr noundef nonnull @.str.12, ptr noundef %pwr_mask, i32 noundef 1, i32 noundef 0) #7
  %iso_mask = getelementptr inbounds %struct.pmu_domain, ptr %call7.i.i123, i32 0, i32 3
  %call.i.i124 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.0129, ptr noundef nonnull @.str.13, ptr noundef %iso_mask, i32 noundef 1, i32 noundef 0) #7
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %np.0129, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %args) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp46 = icmp eq i32 %call.i, 0
  br i1 %cmp46, label %if.then47, label %if.end42.for.inc_crit_edge

if.end42.for.inc_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then47:                                        ; preds = %if.end42
  %16 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %args, align 4
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 4
  %cmp50 = icmp eq ptr %17, %19
  br i1 %cmp50, label %if.then51, label %if.then47.if.end53_crit_edge

if.then47.if.end53_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then51:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %args52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %args52, align 4
  %shl = shl nuw i32 1, %21
  %rst_mask = getelementptr inbounds %struct.pmu_domain, ptr %call7.i.i123, i32 0, i32 2
  %22 = ptrtoint ptr %rst_mask to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shl, ptr %rst_mask, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.then47.if.end53_crit_edge
  call void @of_node_put(ptr noundef %17) #7
  br label %for.inc

cleanup.thread:                                   ; preds = %if.then41, %for.body.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #7
  br label %for.end

for.inc:                                          ; preds = %if.end53, %if.end42.for.inc_crit_edge
  %23 = ptrtoint ptr %call7.i.i123 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call7.i.i123, align 8
  %pmu_base.i = getelementptr inbounds %struct.pmu_data, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %pmu_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pmu_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 16
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !71
  %28 = call i32 @llvm.bswap.i32(i32 %27) #7
  %base.i = getelementptr inbounds %struct.pmu_domain, ptr %call7.i.i123, i32 0, i32 4
  %power_off.i = getelementptr inbounds %struct.pmu_domain, ptr %call7.i.i123, i32 0, i32 4, i32 18
  %29 = ptrtoint ptr %power_off.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @pmu_domain_power_off, ptr %power_off.i, align 8
  %power_on.i = getelementptr inbounds %struct.pmu_domain, ptr %call7.i.i123, i32 0, i32 4, i32 19
  %30 = ptrtoint ptr %power_on.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @pmu_domain_power_on, ptr %power_on.i, align 4
  %31 = ptrtoint ptr %pwr_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pwr_mask, align 4
  %and.i = and i32 %32, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %call3.i = call i32 @pm_genpd_init(ptr noundef %base.i, ptr noundef null, i1 noundef zeroext %tobool.not.i) #7
  %call6.i = call i32 @of_genpd_add_provider_simple(ptr noundef nonnull %np.0129, ptr noundef %base.i) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #7
  %call57 = call ptr @of_get_next_available_child(ptr noundef nonnull %call1, ptr noundef nonnull %np.0129) #7
  %cmp.not = icmp eq ptr %call57, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.thread, %if.end30.for.end_crit_edge
  %33 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_node, align 4
  %call59 = call i32 @irq_of_parse_and_map(ptr noundef %34, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %do.end64, label %if.else

do.end64:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %call) #12
  br label %cleanup77

if.else:                                          ; preds = %for.end
  %call67 = call fastcc i32 @dove_init_pmu_irq(ptr noundef nonnull %call7.i.i, i32 noundef %call59) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.else.cleanup77_crit_edge, label %do.end72

if.else.cleanup77_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup77

do.end72:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call67) #12
  br label %cleanup77

cleanup77:                                        ; preds = %do.end72, %if.else.cleanup77_crit_edge, %do.end64, %do.end25, %if.end5.cleanup77_crit_edge, %do.end, %entry.cleanup77_crit_edge
  %retval.0 = phi i32 [ -12, %do.end25 ], [ 0, %do.end ], [ 0, %entry.cleanup77_crit_edge ], [ -12, %if.end5.cleanup77_crit_edge ], [ 0, %if.else.cleanup77_crit_edge ], [ 0, %do.end72 ], [ 0, %do.end64 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmu_reset_reset(ptr noundef %rc, i32 noundef %id) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rc, i32 -64
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #7
  %pmc_base = getelementptr i8, ptr %rc, i32 -16
  %0 = ptrtoint ptr %pmc_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmc_base, align 4
  %add.ptr6 = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !71
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shl = shl nuw i32 1, %id
  %neg = xor i32 %shl, -1
  %and = and i32 %3, %neg
  %4 = tail call i32 @llvm.bswap.i32(i32 %and)
  %5 = ptrtoint ptr %pmc_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pmc_base, align 4
  %add.ptr10 = getelementptr i8, ptr %6, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %4) #7, !srcloc !73
  %or = or i32 %3, %shl
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  %8 = ptrtoint ptr %pmc_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pmc_base, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %7) #7, !srcloc !73
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmu_reset_assert(ptr noundef %rc, i32 noundef %id) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rc, i32 -64
  %shl = shl nuw i32 1, %id
  %neg = xor i32 %shl, -1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #7
  %pmc_base = getelementptr i8, ptr %rc, i32 -16
  %0 = ptrtoint ptr %pmc_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmc_base, align 4
  %add.ptr6 = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !71
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %and = and i32 %3, %neg
  %4 = tail call i32 @llvm.bswap.i32(i32 %and)
  %5 = ptrtoint ptr %pmc_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pmc_base, align 4
  %add.ptr10 = getelementptr i8, ptr %6, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %4) #7, !srcloc !73
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmu_reset_deassert(ptr noundef %rc, i32 noundef %id) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rc, i32 -64
  %shl = shl nuw i32 1, %id
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #7
  %pmc_base = getelementptr i8, ptr %rc, i32 -16
  %0 = ptrtoint ptr %pmc_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmc_base, align 4
  %add.ptr6 = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !71
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %or = or i32 %3, %shl
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %pmc_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pmc_base, align 4
  %add.ptr10 = getelementptr i8, ptr %6, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %4) #7, !srcloc !73
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmu_domain_power_off(ptr nocapture noundef readonly %domain) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %domain, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %pmu_base2 = getelementptr inbounds %struct.pmu_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pmu_base2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu_base2, align 4
  %pmc_base3 = getelementptr inbounds %struct.pmu_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pmc_base3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmc_base3, align 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #7
  %iso_mask = getelementptr i8, ptr %domain, i32 -4
  %6 = ptrtoint ptr %iso_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iso_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %7, -1
  %add.ptr10 = getelementptr i8, ptr %3, i32 88
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #7, !srcloc !71
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %and = and i32 %9, %neg
  %10 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %10) #7, !srcloc !73
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rst_mask = getelementptr i8, ptr %domain, i32 -8
  %11 = ptrtoint ptr %rst_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rst_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool14.not = icmp eq i32 %12, 0
  br i1 %tobool14.not, label %if.end.if.end24_crit_edge, label %if.then15

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %neg17 = xor i32 %12, -1
  %add.ptr19 = getelementptr i8, ptr %5, i32 48
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #7, !srcloc !71
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %and22 = and i32 %14, %neg17
  %15 = tail call i32 @llvm.bswap.i32(i32 %and22)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %15) #7, !srcloc !73
  br label %if.end24

if.end24:                                         ; preds = %if.then15, %if.end.if.end24_crit_edge
  %add.ptr26 = getelementptr i8, ptr %3, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #7, !srcloc !71
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %pwr_mask = getelementptr i8, ptr %domain, i32 -12
  %18 = ptrtoint ptr %pwr_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pwr_mask, align 4
  %or = or i32 %17, %19
  %20 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %20) #7, !srcloc !73
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call6) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmu_domain_power_on(ptr nocapture noundef readonly %domain) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %domain, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %pmu_base2 = getelementptr inbounds %struct.pmu_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pmu_base2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmu_base2, align 4
  %pmc_base3 = getelementptr inbounds %struct.pmu_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pmc_base3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmc_base3, align 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #7
  %pwr_mask = getelementptr i8, ptr %domain, i32 -12
  %6 = ptrtoint ptr %pwr_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pwr_mask, align 4
  %neg = xor i32 %7, -1
  %add.ptr9 = getelementptr i8, ptr %3, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !71
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %and = and i32 %9, %neg
  %10 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %10) #7, !srcloc !73
  %rst_mask = getelementptr i8, ptr %domain, i32 -8
  %11 = ptrtoint ptr %rst_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rst_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr15 = getelementptr i8, ptr %5, i32 48
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #7, !srcloc !71
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %or = or i32 %14, %12
  %15 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %15) #7, !srcloc !73
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %iso_mask = getelementptr i8, ptr %domain, i32 -4
  %16 = ptrtoint ptr %iso_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iso_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool19.not = icmp eq i32 %17, 0
  br i1 %tobool19.not, label %if.end.if.end28_crit_edge, label %if.then20

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr23 = getelementptr i8, ptr %3, i32 88
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #7, !srcloc !71
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %or26 = or i32 %19, %17
  %20 = tail call i32 @llvm.bswap.i32(i32 %or26)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %20) #7, !srcloc !73
  br label %if.end28

if.end28:                                         ; preds = %if.then20, %if.end.if.end28_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call6) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_simple(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_clr_bit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_set_bit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_handler_data(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pmu_irq_handler(ptr noundef %desc) #6 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %irq_gc = getelementptr inbounds %struct.pmu_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %irq_gc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_gc, align 4
  %irq_domain = getelementptr inbounds %struct.pmu_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_domain, align 4
  %reg_base = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 80
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !71
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %mask_cache = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask_cache, align 4
  %and = and i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @handle_bad_irq(ptr noundef %desc) #7
  br label %cleanup

while.body:                                       ; preds = %irq_find_mapping.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %done.036 = phi i32 [ %and6, %irq_find_mapping.exit.while.body_crit_edge ], [ -1, %entry.while.body_crit_edge ]
  %stat.035 = phi i32 [ %and3, %irq_find_mapping.exit.while.body_crit_edge ], [ %and, %entry.while.body_crit_edge ]
  %12 = call i32 @llvm.ctlz.i32(i32 %stat.035, i1 true) #7, !range !75
  %sub = xor i32 %12, 31
  %shl = shl nuw i32 1, %sub
  %neg = xor i32 %shl, -1
  %and3 = and i32 %stat.035, %neg
  %and6 = and i32 %done.036, %neg
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #7
  %13 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %irq.i, align 4, !annotation !76
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %5, i32 noundef %sub, ptr noundef nonnull %irq.i) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.irq_find_mapping.exit_crit_edge, label %if.then.i

while.body.irq_find_mapping.exit_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %while.body.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %15, %if.then.i ], [ 0, %while.body.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  %call8 = call i32 @generic_handle_irq(i32 noundef %retval.0.i) #7
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %while.end, label %irq_find_mapping.exit.while.body_crit_edge

irq_find_mapping.exit.while.body_crit_edge:       ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_lock(ptr noundef %3) #7
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !71
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %and13 = and i32 %17, %and6
  %18 = call i32 @llvm.bswap.i32(i32 %and13)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #7, !srcloc !73
  call void @_raw_spin_unlock(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !13, !15, !16, !17, !18, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36, !37, !38, !40, !41, !43, !44, !45, !46, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @dove_init_pmu_legacy.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/soc/dove/pmu.c", i32 319, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/soc/dove/pmu.c", i32 342, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @dove_init_pmu_legacy._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @dove_init_pmu_legacy._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/soc/dove/pmu.c", i32 380, i32 47}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/soc/dove/pmu.c", i32 384, i32 46}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/soc/dove/pmu.c", i32 386, i32 3}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @dove_init_pmu._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @dove_init_pmu._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @dove_init_pmu.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/soc/dove/pmu.c", i32 394, i32 2}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/soc/dove/pmu.c", i32 399, i32 3}
!22 = !{ptr @dove_init_pmu._entry.8, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @dove_init_pmu._entry_ptr.10, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/soc/dove/pmu.c", i32 417, i32 45}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/soc/dove/pmu.c", i32 423, i32 28}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/soc/dove/pmu.c", i32 425, i32 28}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/soc/dove/pmu.c", i32 433, i32 40}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/soc/dove/pmu.c", i32 433, i32 50}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/soc/dove/pmu.c", i32 447, i32 3}
!36 = !{ptr @dove_init_pmu._entry.16, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @dove_init_pmu._entry_ptr.18, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @dove_init_pmu._entry.19, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../drivers/soc/dove/pmu.c", i32 451, i32 4}
!40 = !{ptr @dove_init_pmu._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/soc/dove/pmu.c", i32 112, i32 3}
!43 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @pmu_reset_init._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @pmu_reset_init._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @pmu_reset, !48, !"pmu_reset", i1 false, i1 false}
!48 = !{!"../drivers/soc/dove/pmu.c", i32 97, i32 36}
!49 = !{ptr @pmu_reset_ops, !50, !"pmu_reset_ops", i1 false, i1 false}
!50 = !{!"../drivers/soc/dove/pmu.c", i32 91, i32 39}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/soc/dove/pmu.c", i32 268, i32 21}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/soc/dove/pmu.c", i32 280, i32 3}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @dove_init_pmu_irq._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @dove_init_pmu_irq._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/soc/dove/pmu.c", i32 289, i32 3}
!60 = !{ptr @dove_init_pmu_irq._entry.27, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @dove_init_pmu_irq._entry_ptr.29, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 695124}
!72 = !{i64 2153064468}
!73 = !{i64 694706}
!74 = !{i64 2153064860}
!75 = !{i32 0, i32 33}
!76 = !{!"auto-init"}
