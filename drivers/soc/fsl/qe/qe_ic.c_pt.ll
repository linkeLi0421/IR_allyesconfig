; ModuleID = '/llk/IR_all_yes/drivers/soc/fsl/qe/qe_ic.c_pt.bc'
source_filename = "../drivers/soc/fsl/qe/qe_ic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.qe_ic_info = type { i32, i32, i8, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.qe_ic = type { ptr, ptr, %struct.irq_chip, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_qe_ic__188_487_qe_ic_of_init4 = internal global ptr @qe_ic_of_init, section ".initcall4.init", align 4
@qe_ic_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qe_ic_init, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qe_ic_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"qe-ic\00", [26 x i8] zeroinitializer }, align 32
@qe_ic_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,qe-ic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] c"qeic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] zeroinitializer, ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@qe_ic_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 419, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no memory resource defined\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qe_ic_init\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/soc/fsl/qe/qe_ic.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qe_ic_init._entry_ptr = internal global ptr @qe_ic_init._entry, section ".printk_index", align 4
@qe_ic_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 429, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to ioremap() registers\0A\00", [33 x i8] zeroinitializer }, align 32
@qe_ic_init._entry_ptr.8 = internal global ptr @qe_ic_init._entry.6, section ".printk_index", align 4
@qe_ic_irq_chip = internal constant { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.12, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qe_ic_mask_irq, ptr @qe_ic_mask_irq, ptr @qe_ic_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@qe_ic_host_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr @qe_ic_host_match, ptr null, ptr @qe_ic_host_map, ptr null, ptr @irq_domain_xlate_onetwocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@qe_ic_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 452, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to add irq domain\0A\00", [38 x i8] zeroinitializer }, align 32
@qe_ic_init._entry_ptr.11 = internal global ptr @qe_ic_init._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"QEIC\00", [27 x i8] zeroinitializer }, align 32
@qe_ic_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@qe_ic_info = internal constant { [44 x %struct.qe_ic_info], [160 x i8] } { [44 x %struct.qe_ic_info] [%struct.qe_ic_info zeroinitializer, %struct.qe_ic_info { i32 32768, i32 32, i8 0, i32 24 }, %struct.qe_ic_info { i32 16384, i32 32, i8 1, i32 24 }, %struct.qe_ic_info { i32 8192, i32 32, i8 2, i32 24 }, %struct.qe_ic_info zeroinitializer, %struct.qe_ic_info zeroinitializer, %struct.qe_ic_info zeroinitializer, %struct.qe_ic_info zeroinitializer, %struct.qe_ic_info zeroinitializer, %struct.qe_ic_info zeroinitializer, %struct.qe_ic_info { i32 64, i32 32, i8 1, i32 28 }, %struct.qe_ic_info { i32 32, i32 32, i8 2, i32 28 }, %struct.qe_ic_info { i32 16, i32 32, i8 3, i32 28 }, %struct.qe_ic_info { i32 8, i32 32, i8 4, i32 28 }, %struct.qe_ic_info { i32 4, i32 32, i8 5, i32 28 }, %struct.qe_ic_info { i32 2, i32 32, i8 6, i32 28 }, %struct.qe_ic_info zeroinitializer, %struct.qe_ic_info zeroinitializer, %struct.qe_ic_info zeroinitializer, %struct.qe_ic_info zeroinitializer, %struct.qe_ic_info { i32 268435456, i32 36, i8 3, i32 48 }, %struct.qe_ic_info zeroinitializer, %struct.qe_ic_info zeroinitializer, %struct.qe_ic_info zeroinitializer, %struct.qe_ic_info zeroinitializer, %struct.qe_ic_info { i32 8388608, i32 36, i8 0, i32 52 }, %struct.qe_ic_info { i32 4194304, i32 36, i8 1, i32 52 }, %struct.qe_ic_info { i32 2097152, i32 36, i8 2, i32 52 }, %struct.qe_ic_info { i32 1048576, i32 36, i8 3, i32 52 }, %struct.qe_ic_info zeroinitializer, %struct.qe_ic_info zeroinitializer, %struct.qe_ic_info zeroinitializer, %struct.qe_ic_info { i32 -2147483648, i32 32, i8 0, i32 16 }, %struct.qe_ic_info { i32 1073741824, i32 32, i8 1, i32 16 }, %struct.qe_ic_info { i32 536870912, i32 32, i8 2, i32 16 }, %struct.qe_ic_info { i32 268435456, i32 32, i8 3, i32 16 }, %struct.qe_ic_info { i32 134217728, i32 32, i8 4, i32 16 }, %struct.qe_ic_info zeroinitializer, %struct.qe_ic_info zeroinitializer, %struct.qe_ic_info zeroinitializer, %struct.qe_ic_info { i32 8388608, i32 32, i8 0, i32 20 }, %struct.qe_ic_info { i32 4194304, i32 32, i8 1, i32 20 }, %struct.qe_ic_info { i32 2097152, i32 32, i8 2, i32 20 }, %struct.qe_ic_info { i32 1048576, i32 32, i8 3, i32 20 }], [160 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qe_ic_lock\00", [21 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@qe_ic_host_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Invalid hw irq number for QEIC\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qe_ic_host_map\00", [17 x i8] zeroinitializer }, align 32
@qe_ic_host_map._entry_ptr = internal global ptr @qe_ic_host_map._entry, section ".printk_index", align 4
@qe_ic_host_map._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Can't map reserved IRQ\0A\00", [38 x i8] zeroinitializer }, align 32
@qe_ic_host_map._entry_ptr.18 = internal global ptr @qe_ic_host_map._entry.16, section ".printk_index", align 4
@___asan_gen_.19 = private unnamed_addr constant [13 x i8] c"qe_ic_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 473, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 476, i32 12 }
@___asan_gen_.25 = private unnamed_addr constant [10 x i8] c"qe_ic_ids\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 467, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 419, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 429, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"qe_ic_irq_chip\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 287, i32 24 }
@___asan_gen_.55 = private unnamed_addr constant [15 x i8] c"qe_ic_host_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 328, i32 36 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 452, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 288, i32 10 }
@___asan_gen_.67 = private unnamed_addr constant [11 x i8] c"qe_ic_lock\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [11 x i8] c"qe_ic_info\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 83, i32 26 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 81, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 309, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [30 x i8] c"../drivers/soc/fsl/qe/qe_ic.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 314, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__initcall__kmod_qe_ic__188_487_qe_ic_of_init4, ptr @qe_ic_host_map._entry, ptr @qe_ic_host_map._entry.16, ptr @qe_ic_host_map._entry_ptr, ptr @qe_ic_host_map._entry_ptr.18, ptr @qe_ic_init._entry, ptr @qe_ic_init._entry.6, ptr @qe_ic_init._entry.9, ptr @qe_ic_init._entry_ptr, ptr @qe_ic_init._entry_ptr.11, ptr @qe_ic_init._entry_ptr.8, ptr @qe_ic_driver, ptr @.str, ptr @qe_ic_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @qe_ic_irq_chip, ptr @qe_ic_host_ops, ptr @.str.10, ptr @.str.12, ptr @qe_ic_lock, ptr @qe_ic_info, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qe_ic_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qe_ic_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qe_ic_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qe_ic_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qe_ic_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qe_ic_host_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qe_ic_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qe_ic_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qe_ic_info to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qe_ic_host_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qe_ic_host_map._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qe_ic_of_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qe_ic_driver, ptr noundef null) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qe_ic_init(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 152, i32 noundef 3520) #6
  %cmp4 = icmp eq ptr %call.i, null
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %3
  %add.i = add i32 %sub.i, %5
  %call8 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %3, i32 noundef %add.i) #6
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8, ptr %call.i, align 4
  %cmp10 = icmp eq ptr %call8, null
  br i1 %cmp10, label %do.end14, label %if.end15

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %hc_irq = getelementptr inbounds %struct.qe_ic, ptr %call.i, i32 0, i32 2
  %7 = call ptr @memcpy(ptr %hc_irq, ptr @qe_ic_irq_chip, i32 136)
  %call16 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %virq_high = getelementptr inbounds %struct.qe_ic, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %virq_high to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call16, ptr %virq_high, align 4
  %call17 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #6
  %virq_low = getelementptr inbounds %struct.qe_ic, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %virq_low to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call17, ptr %virq_low, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17)
  %cmp19 = icmp slt i32 %call17, 1
  br i1 %cmp19, label %if.end15.cleanup_crit_edge, label %if.end21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %10 = ptrtoint ptr %virq_high to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %virq_high, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp23 = icmp slt i32 %11, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %call17)
  %cmp26.not = icmp eq i32 %11, %call17
  %or.cond = select i1 %cmp23, i1 true, i1 %cmp26.not
  %high_handler.0 = select i1 %or.cond, ptr null, ptr @qe_ic_cascade_high
  %tobool.not.i.i = icmp eq ptr %1, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef 64, i32 noundef 64, i32 noundef 0, ptr noundef nonnull @qe_ic_host_ops, ptr noundef nonnull %call.i) #6
  %irqhost = getelementptr inbounds %struct.qe_ic, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %irqhost to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1.i, ptr %irqhost, align 4
  %cmp31 = icmp eq ptr %call1.i, null
  br i1 %cmp31, label %do.end35, label %if.end36

do.end35:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end36:                                         ; preds = %if.end21
  %low_handler.0 = select i1 %or.cond, ptr @qe_ic_cascade_muxed_mpic, ptr @qe_ic_cascade_low
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #6, !srcloc !54
  %15 = ptrtoint ptr %virq_low to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %virq_low, align 4
  %call39 = tail call i32 @irq_set_handler_data(i32 noundef %16, ptr noundef nonnull %call.i) #6
  %17 = ptrtoint ptr %virq_low to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %virq_low, align 4
  tail call void @__irq_set_handler(i32 noundef %18, ptr noundef nonnull %low_handler.0, i32 noundef 1, ptr noundef null) #6
  br i1 %or.cond, label %if.end36.cleanup_crit_edge, label %if.then41

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %virq_high to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %virq_high, align 4
  %call43 = tail call i32 @irq_set_handler_data(i32 noundef %20, ptr noundef nonnull %call.i) #6
  %21 = ptrtoint ptr %virq_high to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %virq_high, align 4
  tail call void @__irq_set_handler(i32 noundef %22, ptr noundef %high_handler.0, i32 noundef 1, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.end36.cleanup_crit_edge, %do.end35, %if.end15.cleanup_crit_edge, %do.end14, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end14 ], [ -19, %do.end35 ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %if.end15.cleanup_crit_edge ], [ 0, %if.then41 ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qe_ic_cascade_low(ptr noundef %desc) #2 align 64 {
entry:
  %irq.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %do.body2.i, label %do.end7.i, !prof !55

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/soc/fsl/qe/qe_ic.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 339, 0\0A.popsection", ""() #6, !srcloc !56
  unreachable

do.end7.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i32, ptr %3, i32 1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %4)
  %cmp8.i = icmp ult i32 %4, 67108864
  br i1 %cmp8.i, label %qe_ic_get_low_irq.exit.thread, label %if.end10.i

qe_ic_get_low_irq.exit.thread:                    ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %chip.i12 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %chip.i12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip.i12, align 8
  br label %if.end

if.end10.i:                                       ; preds = %do.end7.i
  %shr.i = lshr i32 %4, 26
  %irqhost.i = getelementptr inbounds %struct.qe_ic, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %irqhost.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irqhost.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i.i) #6
  %9 = ptrtoint ptr %irq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %irq.i.i.i, align 4, !annotation !59
  %call.i.i.i = call ptr @__irq_resolve_mapping(ptr noundef %8, i32 noundef %shr.i, ptr noundef nonnull %irq.i.i.i) #6
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %qe_ic_get_low_irq.exit.thread14, label %qe_ic_get_low_irq.exit

qe_ic_get_low_irq.exit.thread14:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i.i) #6
  %chip.i16 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %chip.i16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip.i16, align 8
  br label %if.end

qe_ic_get_low_irq.exit:                           ; preds = %if.end10.i
  %12 = ptrtoint ptr %irq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i.i) #6
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %qe_ic_get_low_irq.exit.if.end_crit_edge, label %if.then

qe_ic_get_low_irq.exit.if.end_crit_edge:          ; preds = %qe_ic_get_low_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %qe_ic_get_low_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = call i32 @generic_handle_irq(i32 noundef %13) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %qe_ic_get_low_irq.exit.if.end_crit_edge, %qe_ic_get_low_irq.exit.thread14, %qe_ic_get_low_irq.exit.thread
  %16 = phi ptr [ %6, %qe_ic_get_low_irq.exit.thread ], [ %15, %if.then ], [ %15, %qe_ic_get_low_irq.exit.if.end_crit_edge ], [ %11, %qe_ic_get_low_irq.exit.thread14 ]
  %irq_eoi = getelementptr inbounds %struct.irq_chip, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %irq_eoi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %irq_eoi, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %18(ptr noundef %irq_data) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qe_ic_cascade_high(ptr noundef %desc) #2 align 64 {
entry:
  %irq.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %do.body2.i, label %do.end7.i, !prof !55

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/soc/fsl/qe/qe_ic.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 355, 0\0A.popsection", ""() #6, !srcloc !60
  unreachable

do.end7.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i32, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %4)
  %cmp8.i = icmp ult i32 %4, 67108864
  br i1 %cmp8.i, label %qe_ic_get_high_irq.exit.thread, label %if.end10.i

qe_ic_get_high_irq.exit.thread:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %chip.i12 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %chip.i12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip.i12, align 8
  br label %if.end

if.end10.i:                                       ; preds = %do.end7.i
  %shr.i = lshr i32 %4, 26
  %irqhost.i = getelementptr inbounds %struct.qe_ic, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %irqhost.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irqhost.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i.i) #6
  %9 = ptrtoint ptr %irq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %irq.i.i.i, align 4, !annotation !59
  %call.i.i.i = call ptr @__irq_resolve_mapping(ptr noundef %8, i32 noundef %shr.i, ptr noundef nonnull %irq.i.i.i) #6
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %qe_ic_get_high_irq.exit.thread14, label %qe_ic_get_high_irq.exit

qe_ic_get_high_irq.exit.thread14:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i.i) #6
  %chip.i16 = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %chip.i16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip.i16, align 8
  br label %if.end

qe_ic_get_high_irq.exit:                          ; preds = %if.end10.i
  %12 = ptrtoint ptr %irq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i.i) #6
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %qe_ic_get_high_irq.exit.if.end_crit_edge, label %if.then

qe_ic_get_high_irq.exit.if.end_crit_edge:         ; preds = %qe_ic_get_high_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %qe_ic_get_high_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = call i32 @generic_handle_irq(i32 noundef %13) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %qe_ic_get_high_irq.exit.if.end_crit_edge, %qe_ic_get_high_irq.exit.thread14, %qe_ic_get_high_irq.exit.thread
  %16 = phi ptr [ %6, %qe_ic_get_high_irq.exit.thread ], [ %15, %if.then ], [ %15, %qe_ic_get_high_irq.exit.if.end_crit_edge ], [ %11, %qe_ic_get_high_irq.exit.thread14 ]
  %irq_eoi = getelementptr inbounds %struct.irq_chip, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %irq_eoi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %irq_eoi, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %18(ptr noundef %irq_data) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qe_ic_cascade_muxed_mpic(ptr noundef %desc) #2 align 64 {
entry:
  %irq.i.i.i13 = alloca i32, align 4
  %irq.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %do.body2.i, label %do.end7.i, !prof !55

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/soc/fsl/qe/qe_ic.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 355, 0\0A.popsection", ""() #6, !srcloc !60
  unreachable

do.end7.i:                                        ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i32, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %6)
  %cmp8.i = icmp ult i32 %6, 67108864
  br i1 %cmp8.i, label %do.end7.i.do.end7.i18_crit_edge, label %if.end10.i

do.end7.i.do.end7.i18_crit_edge:                  ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i18

if.end10.i:                                       ; preds = %do.end7.i
  %shr.i = lshr i32 %6, 26
  %irqhost.i = getelementptr inbounds %struct.qe_ic, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %irqhost.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irqhost.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i.i) #6
  %9 = ptrtoint ptr %irq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %irq.i.i.i, align 4, !annotation !59
  %call.i.i.i = call ptr @__irq_resolve_mapping(ptr noundef %8, i32 noundef %shr.i, ptr noundef nonnull %irq.i.i.i) #6
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %qe_ic_get_high_irq.exit.thread30, label %qe_ic_get_high_irq.exit

qe_ic_get_high_irq.exit.thread30:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i.i) #6
  br label %do.end7.i18

qe_ic_get_high_irq.exit:                          ; preds = %if.end10.i
  %10 = ptrtoint ptr %irq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %qe_ic_get_high_irq.exit.do.end7.i18_crit_edge, label %qe_ic_get_high_irq.exit.if.then5_crit_edge

qe_ic_get_high_irq.exit.if.then5_crit_edge:       ; preds = %qe_ic_get_high_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

qe_ic_get_high_irq.exit.do.end7.i18_crit_edge:    ; preds = %qe_ic_get_high_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i18

do.end7.i18:                                      ; preds = %qe_ic_get_high_irq.exit.do.end7.i18_crit_edge, %qe_ic_get_high_irq.exit.thread30, %do.end7.i.do.end7.i18_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr.i.i16 = getelementptr i32, ptr %13, i32 1
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i16) #6, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %14)
  %cmp8.i17 = icmp ult i32 %14, 67108864
  br i1 %cmp8.i17, label %do.end7.i18.if.end7_crit_edge, label %if.end10.i23

do.end7.i18.if.end7_crit_edge:                    ; preds = %do.end7.i18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end10.i23:                                     ; preds = %do.end7.i18
  %shr.i19 = lshr i32 %14, 26
  %irqhost.i20 = getelementptr inbounds %struct.qe_ic, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %irqhost.i20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %irqhost.i20, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i.i13) #6
  %17 = ptrtoint ptr %irq.i.i.i13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %irq.i.i.i13, align 4, !annotation !59
  %call.i.i.i21 = call ptr @__irq_resolve_mapping(ptr noundef %16, i32 noundef %shr.i19, ptr noundef nonnull %irq.i.i.i13) #6
  %tobool.not.i.i.i22 = icmp eq ptr %call.i.i.i21, null
  br i1 %tobool.not.i.i.i22, label %if.end.thread39, label %if.end

if.end.thread39:                                  ; preds = %if.end10.i23
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i.i13) #6
  br label %if.end7

if.end:                                           ; preds = %if.end10.i23
  %18 = ptrtoint ptr %irq.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq.i.i.i13, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i.i13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp4.not = icmp eq i32 %19, 0
  br i1 %cmp4.not, label %if.end.if.end7_crit_edge, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %if.end.if.then5_crit_edge, %qe_ic_get_high_irq.exit.if.then5_crit_edge
  %cascade_irq.038 = phi i32 [ %19, %if.end.if.then5_crit_edge ], [ %11, %qe_ic_get_high_irq.exit.if.then5_crit_edge ]
  %call6 = call i32 @generic_handle_irq(i32 noundef %cascade_irq.038) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge, %if.end.thread39, %do.end7.i18.if.end7_crit_edge
  %irq_eoi = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %20 = ptrtoint ptr %irq_eoi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %irq_eoi, align 4
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %21(ptr noundef %irq_data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_handler_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qe_ic_mask_irq(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @qe_ic_lock) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr [44 x %struct.qe_ic_info], ptr @qe_ic_info, i32 0, i32 %3
  %mask_reg = getelementptr [44 x %struct.qe_ic_info], ptr @qe_ic_info, i32 0, i32 %3, i32 1
  %6 = ptrtoint ptr %mask_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask_reg, align 4
  %shr.i = lshr i32 %7, 2
  %add.ptr.i = getelementptr i32, ptr %5, i32 %shr.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %neg = xor i32 %12, -1
  %and = and i32 %8, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %add.ptr.i24 = getelementptr i32, ptr %10, i32 %shr.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %and) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @qe_ic_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qe_ic_unmask_irq(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @qe_ic_lock) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr [44 x %struct.qe_ic_info], ptr @qe_ic_info, i32 0, i32 %3
  %mask_reg = getelementptr [44 x %struct.qe_ic_info], ptr @qe_ic_info, i32 0, i32 %3, i32 1
  %6 = ptrtoint ptr %mask_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask_reg, align 4
  %shr.i = lshr i32 %7, 2
  %add.ptr.i = getelementptr i32, ptr %5, i32 %shr.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %or = or i32 %12, %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %add.ptr.i21 = getelementptr i32, ptr %10, i32 %shr.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %or) #6, !srcloc !54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @qe_ic_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qe_ic_host_match(ptr nocapture noundef readonly %h, ptr noundef readnone %node, i32 noundef %bus_token) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fwnode.i = getelementptr inbounds %struct.irq_domain, ptr %h, i32 0, i32 6
  %0 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwnode.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %1, null
  %cmp.i.i.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %entry.irq_domain_get_of_node.exit_crit_edge, label %is_of_node.exit.i

entry.irq_domain_get_of_node.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_domain_get_of_node.exit

is_of_node.exit.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ops.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i, align 4
  %cmp.i.i = icmp eq ptr %3, @of_fwnode_ops
  %add.ptr.i = getelementptr i8, ptr %1, i32 -12
  %spec.select.i = select i1 %cmp.i.i, ptr %add.ptr.i, ptr null
  br label %irq_domain_get_of_node.exit

irq_domain_get_of_node.exit:                      ; preds = %is_of_node.exit.i, %entry.irq_domain_get_of_node.exit_crit_edge
  %4 = phi ptr [ null, %entry.irq_domain_get_of_node.exit_crit_edge ], [ %spec.select.i, %is_of_node.exit.i ]
  %cmp = icmp eq ptr %4, null
  %cmp1 = icmp eq ptr %4, %node
  %narrow = or i1 %cmp, %cmp1
  %5 = zext i1 %narrow to i32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qe_ic_host_map(ptr nocapture noundef readonly %h, i32 noundef %virq, i32 noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %h, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %hw)
  %cmp = icmp ugt i32 %hw, 43
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [44 x %struct.qe_ic_info], ptr @qe_ic_info, i32 0, i32 %hw
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %hc_irq = getelementptr inbounds %struct.qe_ic, ptr %1, i32 0, i32 2
  %call9 = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef %1) #6
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 256) #6
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef %hc_irq, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end5 ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onetwocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !28, !29, !31, !33, !35, !36, !37, !38, !40, !41, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__initcall__kmod_qe_ic__188_487_qe_ic_of_init4, !1, !"__initcall__kmod_qe_ic__188_487_qe_ic_of_init4", i1 false, i1 false}
!1 = !{!"../drivers/soc/fsl/qe/qe_ic.c", i32 487, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soc/fsl/qe/qe_ic.c", i32 476, i32 12}
!4 = !{ptr @qe_ic_driver, !5, !"qe_ic_driver", i1 false, i1 false}
!5 = !{!"../drivers/soc/fsl/qe/qe_ic.c", i32 473, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/soc/fsl/qe/qe_ic.c", i32 419, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @qe_ic_init._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @qe_ic_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/fsl/qe/qe_ic.c", i32 429, i32 3}
!16 = !{ptr @qe_ic_init._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @qe_ic_init._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/soc/fsl/qe/qe_ic.c", i32 452, i32 3}
!20 = !{ptr @qe_ic_init._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @qe_ic_init._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/fsl/qe/qe_ic.c", i32 288, i32 10}
!24 = !{ptr @qe_ic_irq_chip, !25, !"qe_ic_irq_chip", i1 false, i1 false}
!25 = !{!"../drivers/soc/fsl/qe/qe_ic.c", i32 287, i32 24}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/soc/fsl/qe/qe_ic.c", i32 81, i32 8}
!28 = !{ptr @qe_ic_lock, !27, !"qe_ic_lock", i1 false, i1 false}
!29 = !{ptr @qe_ic_info, !30, !"qe_ic_info", i1 false, i1 false}
!30 = !{!"../drivers/soc/fsl/qe/qe_ic.c", i32 83, i32 26}
!31 = !{ptr @qe_ic_host_ops, !32, !"qe_ic_host_ops", i1 false, i1 false}
!32 = !{!"../drivers/soc/fsl/qe/qe_ic.c", i32 328, i32 36}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/soc/fsl/qe/qe_ic.c", i32 309, i32 3}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @qe_ic_host_map._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @qe_ic_host_map._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/soc/fsl/qe/qe_ic.c", i32 314, i32 3}
!40 = !{ptr @qe_ic_host_map._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @qe_ic_host_map._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @qe_ic_ids, !43, !"qe_ic_ids", i1 false, i1 false}
!43 = !{!"../drivers/soc/fsl/qe/qe_ic.c", i32 467, i32 34}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i64 2153100445}
!54 = !{i64 3641956}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{i64 2153105751, i64 2153106242, i64 2153105788, i64 2153105844, i64 2153105878, i64 2153105902, i64 2153105943, i64 2153105964, i64 2153105992, i64 2153106026}
!57 = !{i64 3642374}
!58 = !{i64 2153100033}
!59 = !{!"auto-init"}
!60 = !{i64 2153111446, i64 2153111937, i64 2153111483, i64 2153111539, i64 2153111573, i64 2153111597, i64 2153111638, i64 2153111659, i64 2153111687, i64 2153111721}
!61 = !{i64 2153101699}
