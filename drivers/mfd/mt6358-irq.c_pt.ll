; ModuleID = '/llk/IR_all_yes/drivers/mfd/mt6358-irq.c_pt.bc'
source_filename = "../drivers/mfd/mt6358-irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pmic_irq_data = type { i32, i32, i16, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_top_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mt6397_chip = type { ptr, ptr, %struct.notifier_block, i32, ptr, %struct.mutex, [2 x i16], [2 x i16], [2 x i16], [2 x i16], [2 x i16], i16, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@mt6358_irqd = internal global { %struct.pmic_irq_data, [40 x i8] } { %struct.pmic_irq_data { i32 8, i32 145, i16 414, ptr null, ptr null, ptr @mt6358_ints }, [40 x i8] zeroinitializer }, align 32
@mt6359_irqd = internal global { %struct.pmic_irq_data, [40 x i8] } { %struct.pmic_irq_data { i32 8, i32 145, i16 414, ptr null, ptr null, ptr @mt6359_ints }, [40 x i8] zeroinitializer }, align 32
@mt6358_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 223, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unsupported chip: 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt6358_irq_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/mfd/mt6358-irq.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt6358_irq_init._entry_ptr = internal global ptr @mt6358_irq_init._entry, section ".printk_index", align 4
@mt6358_irq_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&chip->irqlock\00", [17 x i8] zeroinitializer }, align 32
@mt6358_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @pmic_irq_domain_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@mt6358_irq_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 255, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not create IRQ domain\0A\00", [35 x i8] zeroinitializer }, align 32
@mt6358_irq_init._entry_ptr.8 = internal global ptr @mt6358_irq_init._entry.6, section ".printk_index", align 4
@mt6358_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.16, ptr null, ptr null, ptr @pmic_irq_enable, ptr @pmic_irq_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pmic_irq_lock, ptr @pmic_irq_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 16 }, [56 x i8] zeroinitializer }, align 32
@mt6358_irq_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 264, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register IRQ=%d, ret=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@mt6358_irq_init._entry_ptr.11 = internal global ptr @mt6358_irq_init._entry.9, section ".printk_index", align 4
@mt6358_ints = internal constant { [8 x %struct.irq_top_t], [32 x i8] } { [8 x %struct.irq_top_t] [%struct.irq_top_t { i32 0, i32 1, i32 4888, i32 6, i32 4900, i32 2, i32 0 }, %struct.irq_top_t { i32 16, i32 2, i32 6736, i32 6, i32 6760, i32 2, i32 1 }, %struct.irq_top_t { i32 48, i32 1, i32 2320, i32 6, i32 2332, i32 2, i32 2 }, %struct.irq_top_t { i32 64, i32 1, i32 1326, i32 6, i32 1338, i32 2, i32 3 }, %struct.irq_top_t { i32 80, i32 2, i32 3122, i32 6, i32 3146, i32 2, i32 4 }, %struct.irq_top_t { i32 112, i32 1, i32 3986, i32 6, i32 3998, i32 2, i32 5 }, %struct.irq_top_t { i32 128, i32 1, i32 8744, i32 6, i32 8756, i32 2, i32 6 }, %struct.irq_top_t { i32 144, i32 1, i32 392, i32 6, i32 404, i32 2, i32 7 }], [32 x i8] zeroinitializer }, align 32
@mt6359_ints = internal constant { [8 x %struct.irq_top_t], [32 x i8] } { [8 x %struct.irq_top_t] [%struct.irq_top_t { i32 1, i32 1, i32 5144, i32 6, i32 5156, i32 2, i32 0 }, %struct.irq_top_t { i32 16, i32 2, i32 6932, i32 6, i32 6952, i32 2, i32 1 }, %struct.irq_top_t { i32 48, i32 1, i32 2320, i32 6, i32 2332, i32 2, i32 2 }, %struct.irq_top_t { i32 64, i32 1, i32 1320, i32 6, i32 1332, i32 2, i32 3 }, %struct.irq_top_t { i32 80, i32 2, i32 3122, i32 6, i32 3146, i32 2, i32 4 }, %struct.irq_top_t { i32 112, i32 1, i32 3986, i32 6, i32 3998, i32 2, i32 5 }, %struct.irq_top_t { i32 128, i32 1, i32 9000, i32 6, i32 9012, i32 2, i32 7 }, %struct.irq_top_t { i32 144, i32 1, i32 392, i32 6, i32 404, i32 2, i32 8 }], [32 x i8] zeroinitializer }, align 32
@mt6358_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 173, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to read status from the device, ret=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt6358_irq_handler\00", [45 x i8] zeroinitializer }, align 32
@mt6358_irq_handler._entry_ptr = internal global ptr @mt6358_irq_handler._entry, section ".printk_index", align 4
@mt6358_irq_sp_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 136, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read IRQ status, ret=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt6358_irq_sp_handler\00", [42 x i8] zeroinitializer }, align 32
@mt6358_irq_sp_handler._entry_ptr = internal global ptr @mt6358_irq_sp_handler._entry, section ".printk_index", align 4
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mt6358-irq\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 88, i64 89]
@___asan_gen_.17 = private unnamed_addr constant [12 x i8] c"mt6358_irqd\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 42, i32 29 }
@___asan_gen_.20 = private unnamed_addr constant [12 x i8] c"mt6359_irqd\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 49, i32 29 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 223, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 227, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [22 x i8] c"mt6358_irq_domain_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 203, i32 36 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 255, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [16 x i8] c"mt6358_irq_chip\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 112, i32 24 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 263, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [12 x i8] c"mt6358_ints\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 20, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant [12 x i8] c"mt6359_ints\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 31, i32 31 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 172, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 135, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [28 x i8] c"../drivers/mfd/mt6358-irq.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 113, i32 10 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @mt6358_irq_handler._entry, ptr @mt6358_irq_handler._entry_ptr, ptr @mt6358_irq_init._entry, ptr @mt6358_irq_init._entry.6, ptr @mt6358_irq_init._entry.9, ptr @mt6358_irq_init._entry_ptr, ptr @mt6358_irq_init._entry_ptr.11, ptr @mt6358_irq_init._entry_ptr.8, ptr @mt6358_irq_sp_handler._entry, ptr @mt6358_irq_sp_handler._entry_ptr, ptr @mt6358_irqd, ptr @mt6359_irqd, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mt6358_irq_init.__key, ptr @.str.5, ptr @mt6358_irq_domain_ops, ptr @.str.7, ptr @mt6358_irq_chip, ptr @.str.10, ptr @mt6358_ints, ptr @mt6359_ints, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_irqd to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_irqd to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_irq_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_irq_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_irq_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_ints to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6359_ints to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_irq_sp_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt6358_irq_init(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_id = getelementptr inbounds %struct.mt6397_chip, ptr %chip, i32 0, i32 11
  %0 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %chip_id, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %do.end [
    i16 88, label %entry.do.body5_crit_edge
    i16 89, label %sw.bb1
  ]

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %1 to i32
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef %conv) #9
  br label %cleanup

do.body5:                                         ; preds = %sw.bb1, %entry.do.body5_crit_edge
  %mt6358_irqd.sink = phi ptr [ @mt6359_irqd, %sw.bb1 ], [ @mt6358_irqd, %entry.do.body5_crit_edge ]
  %irq_data = getelementptr inbounds %struct.mt6397_chip, ptr %chip, i32 0, i32 12
  %5 = ptrtoint ptr %irq_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mt6358_irqd.sink, ptr %irq_data, align 4
  %irqlock = getelementptr inbounds %struct.mt6397_chip, ptr %chip, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %irqlock, ptr noundef nonnull @.str.5, ptr noundef nonnull @mt6358_irq_init.__key) #6
  %irq_data8 = getelementptr inbounds %struct.mt6397_chip, ptr %chip, i32 0, i32 12
  %6 = ptrtoint ptr %irq_data8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_data8, align 4
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %num_pmic_irqs = getelementptr inbounds %struct.pmic_irq_data, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %num_pmic_irqs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_pmic_irqs, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef %11, i32 noundef 3520) #6
  %enable_hwirq = getelementptr inbounds %struct.pmic_irq_data, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %enable_hwirq to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i.i, ptr %enable_hwirq, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %do.body5.cleanup_crit_edge, label %if.end

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %do.body5
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 4
  %15 = ptrtoint ptr %num_pmic_irqs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_pmic_irqs, align 4
  %call5.i.i96 = tail call noalias ptr @devm_kmalloc(ptr noundef %14, i32 noundef %16, i32 noundef 3520) #6
  %cache_hwirq = getelementptr inbounds %struct.pmic_irq_data, ptr %7, i32 0, i32 4
  %17 = ptrtoint ptr %cache_hwirq to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i96, ptr %cache_hwirq, align 4
  %tobool15.not = icmp eq ptr %call5.i.i96, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp100.not = icmp eq i32 %19, 0
  br i1 %cmp100.not, label %for.cond.preheader.for.end30_crit_edge, label %for.cond19.preheader.lr.ph

for.cond.preheader.for.end30_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end30

for.cond19.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %pmic_ints = getelementptr inbounds %struct.pmic_irq_data, ptr %7, i32 0, i32 5
  %regmap = getelementptr inbounds %struct.mt6397_chip, ptr %chip, i32 0, i32 1
  br label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.inc28.for.cond19.preheader_crit_edge, %for.cond19.preheader.lr.ph
  %i.0101 = phi i32 [ 0, %for.cond19.preheader.lr.ph ], [ %inc29, %for.inc28.for.cond19.preheader_crit_edge ]
  %20 = ptrtoint ptr %pmic_ints to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pmic_ints, align 4
  %num_int_regs97 = getelementptr %struct.irq_top_t, ptr %21, i32 %i.0101, i32 1
  %22 = ptrtoint ptr %num_int_regs97 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_int_regs97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp2098.not = icmp eq i32 %23, 0
  br i1 %cmp2098.not, label %for.cond19.preheader.for.inc28_crit_edge, label %for.cond19.preheader.for.body22_crit_edge

for.cond19.preheader.for.body22_crit_edge:        ; preds = %for.cond19.preheader
  br label %for.body22

for.cond19.preheader.for.inc28_crit_edge:         ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.cond19.preheader.for.body22_crit_edge
  %24 = phi ptr [ %32, %for.body22.for.body22_crit_edge ], [ %21, %for.cond19.preheader.for.body22_crit_edge ]
  %j.099 = phi i32 [ %inc, %for.body22.for.body22_crit_edge ], [ 0, %for.cond19.preheader.for.body22_crit_edge ]
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %en_reg = getelementptr %struct.irq_top_t, ptr %24, i32 %i.0101, i32 2
  %27 = ptrtoint ptr %en_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %en_reg, align 4
  %en_reg_shift = getelementptr %struct.irq_top_t, ptr %24, i32 %i.0101, i32 3
  %29 = ptrtoint ptr %en_reg_shift to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %en_reg_shift, align 4
  %mul = mul i32 %30, %j.099
  %add = add i32 %mul, %28
  %call27 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef %add, i32 noundef 0) #6
  %inc = add nuw i32 %j.099, 1
  %31 = ptrtoint ptr %pmic_ints to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pmic_ints, align 4
  %num_int_regs = getelementptr %struct.irq_top_t, ptr %32, i32 %i.0101, i32 1
  %33 = ptrtoint ptr %num_int_regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_int_regs, align 4
  %cmp20 = icmp ult i32 %inc, %34
  br i1 %cmp20, label %for.body22.for.body22_crit_edge, label %for.body22.for.inc28_crit_edge

for.body22.for.inc28_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body22

for.inc28:                                        ; preds = %for.body22.for.inc28_crit_edge, %for.cond19.preheader.for.inc28_crit_edge
  %inc29 = add nuw i32 %i.0101, 1
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %7, align 4
  %cmp = icmp ult i32 %inc29, %36
  br i1 %cmp, label %for.inc28.for.cond19.preheader_crit_edge, label %for.inc28.for.end30_crit_edge

for.inc28.for.end30_crit_edge:                    ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end30

for.inc28.for.cond19.preheader_crit_edge:         ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond19.preheader

for.end30:                                        ; preds = %for.inc28.for.end30_crit_edge, %for.cond.preheader.for.end30_crit_edge
  %37 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chip, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 27
  %39 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %of_node, align 8
  %41 = ptrtoint ptr %num_pmic_irqs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_pmic_irqs, align 4
  %tobool.not.i.i = icmp eq ptr %40, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %40, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %42, i32 noundef %42, i32 noundef 0, ptr noundef nonnull @mt6358_irq_domain_ops, ptr noundef %chip) #6
  %irq_domain = getelementptr inbounds %struct.mt6397_chip, ptr %chip, i32 0, i32 4
  %43 = ptrtoint ptr %irq_domain to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call1.i, ptr %irq_domain, align 4
  %tobool35.not = icmp eq ptr %call1.i, null
  %44 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chip, align 4
  br i1 %tobool35.not, label %do.end39, label %if.end41

do.end39:                                         ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end41:                                         ; preds = %for.end30
  %irq = getelementptr inbounds %struct.mt6397_chip, ptr %chip, i32 0, i32 3
  %46 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq, align 4
  %48 = load ptr, ptr getelementptr inbounds (%struct.irq_chip, ptr @mt6358_irq_chip, i32 0, i32 1), align 4
  %call43 = tail call i32 @devm_request_threaded_irq(ptr noundef %45, i32 noundef %47, ptr noundef null, ptr noundef nonnull @mt6358_irq_handler, i32 noundef 8192, ptr noundef %48, ptr noundef %chip) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end51, label %do.end48

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chip, align 4
  %51 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.10, i32 noundef %52, i32 noundef %call43) #9
  br label %cleanup

if.end51:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %54, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %do.end48, %do.end39, %if.end.cleanup_crit_edge, %do.body5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %call43, %do.end48 ], [ 0, %if.end51 ], [ -19, %do.end39 ], [ -12, %do.body5.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6358_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %irq.i.i = alloca i32, align 4
  %irq_status.i = alloca i32, align 4
  %top_irq_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_data = getelementptr inbounds %struct.mt6397_chip, ptr %data, i32 0, i32 12
  %0 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %top_irq_status) #6
  %2 = ptrtoint ptr %top_irq_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %top_irq_status, align 4
  %regmap = getelementptr inbounds %struct.mt6397_chip, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %top_int_status_reg = getelementptr inbounds %struct.pmic_irq_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %top_int_status_reg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %top_int_status_reg, align 4
  %conv = zext i16 %6 to i32
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %conv, ptr noundef nonnull %top_irq_status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp25.not = icmp eq i32 %8, 0
  br i1 %cmp25.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pmic_ints = getelementptr inbounds %struct.pmic_irq_data, ptr %1, i32 0, i32 5
  %irq_domain.i = getelementptr inbounds %struct.mt6397_chip, ptr %data, i32 0, i32 4
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.12, i32 noundef %call) #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %pmic_ints to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pmic_ints, align 4
  %top_offset = getelementptr %struct.irq_top_t, ptr %12, i32 %i.026, i32 6
  %13 = ptrtoint ptr %top_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %top_offset, align 4
  %shl = shl nuw i32 1, %14
  %15 = ptrtoint ptr %top_irq_status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %top_irq_status, align 4
  %and = and i32 %16, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.then3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then3:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_status.i) #6
  %17 = ptrtoint ptr %irq_status.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %irq_status.i, align 4, !annotation !52
  %18 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irq_data, align 4
  %pmic_ints.i = getelementptr inbounds %struct.pmic_irq_data, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %pmic_ints.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pmic_ints.i, align 4
  %num_int_regs54.i = getelementptr %struct.irq_top_t, ptr %21, i32 %i.026, i32 1
  %22 = ptrtoint ptr %num_int_regs54.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_int_regs54.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp55.not.i = icmp eq i32 %23, 0
  br i1 %cmp55.not.i, label %if.then3.mt6358_irq_sp_handler.exit_crit_edge, label %if.then3.for.body.i_crit_edge

if.then3.for.body.i_crit_edge:                    ; preds = %if.then3
  br label %for.body.i

if.then3.mt6358_irq_sp_handler.exit_crit_edge:    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt6358_irq_sp_handler.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then3.for.body.i_crit_edge
  %24 = phi ptr [ %50, %for.inc.i.for.body.i_crit_edge ], [ %21, %if.then3.for.body.i_crit_edge ]
  %i.056.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then3.for.body.i_crit_edge ]
  %sta_reg3.i = getelementptr %struct.irq_top_t, ptr %24, i32 %i.026, i32 4
  %25 = ptrtoint ptr %sta_reg3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sta_reg3.i, align 4
  %sta_reg_shift.i = getelementptr %struct.irq_top_t, ptr %24, i32 %i.026, i32 5
  %27 = ptrtoint ptr %sta_reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sta_reg_shift.i, align 4
  %mul.i = mul i32 %28, %i.056.i
  %add.i = add i32 %mul.i, %26
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_read(ptr noundef %30, i32 noundef %add.i, ptr noundef nonnull %irq_status.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.14, i32 noundef %call.i) #9
  br label %mt6358_irq_sp_handler.exit

if.end.i:                                         ; preds = %for.body.i
  %33 = ptrtoint ptr %irq_status.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool6.not.i = icmp eq i32 %34, 0
  br i1 %tobool6.not.i, label %if.end.i.for.inc.i_crit_edge, label %do.body9.preheader.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

do.body9.preheader.i:                             ; preds = %if.end.i
  %mul13.i = shl i32 %i.056.i, 4
  br label %do.body9.i

do.body9.i:                                       ; preds = %if.end19.i.do.body9.i_crit_edge, %do.body9.preheader.i
  %status.0.i = phi i32 [ %and.i, %if.end19.i.do.body9.i_crit_edge ], [ %34, %do.body9.preheader.i ]
  %35 = call i32 @llvm.cttz.i32(i32 %status.0.i, i1 false) #6, !range !53
  %36 = ptrtoint ptr %pmic_ints.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pmic_ints.i, align 4
  %arrayidx12.i = getelementptr %struct.irq_top_t, ptr %37, i32 %i.026
  %38 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx12.i, align 4
  %add14.i = add i32 %35, %mul13.i
  %add15.i = add i32 %add14.i, %39
  %40 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %irq_domain.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i) #6
  %42 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %irq.i.i, align 4, !annotation !52
  %call.i.i = call ptr @__irq_resolve_mapping(ptr noundef %41, i32 noundef %add15.i, ptr noundef nonnull %irq.i.i) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %irq_find_mapping.exit.thread.i, label %irq_find_mapping.exit.i

irq_find_mapping.exit.thread.i:                   ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #6
  br label %if.end19.i

irq_find_mapping.exit.i:                          ; preds = %do.body9.i
  %43 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool17.not.i = icmp eq i32 %44, 0
  br i1 %tobool17.not.i, label %irq_find_mapping.exit.i.if.end19.i_crit_edge, label %if.then18.i

irq_find_mapping.exit.i.if.end19.i_crit_edge:     ; preds = %irq_find_mapping.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then18.i:                                      ; preds = %irq_find_mapping.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @handle_nested_irq(i32 noundef %44) #6
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %irq_find_mapping.exit.i.if.end19.i_crit_edge, %irq_find_mapping.exit.thread.i
  %shl.i = shl nuw i32 1, %35
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %status.0.i, %neg.i
  %tobool21.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool21.not.i, label %do.end22.i, label %if.end19.i.do.body9.i_crit_edge

if.end19.i.do.body9.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body9.i

do.end22.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %47 = ptrtoint ptr %irq_status.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq_status.i, align 4
  %call24.i = call i32 @regmap_write(ptr noundef %46, i32 noundef %add.i, i32 noundef %48) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end22.i, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.056.i, 1
  %49 = ptrtoint ptr %pmic_ints.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pmic_ints.i, align 4
  %num_int_regs.i = getelementptr %struct.irq_top_t, ptr %50, i32 %i.026, i32 1
  %51 = ptrtoint ptr %num_int_regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_int_regs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %52
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.mt6358_irq_sp_handler.exit_crit_edge

for.inc.i.mt6358_irq_sp_handler.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt6358_irq_sp_handler.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

mt6358_irq_sp_handler.exit:                       ; preds = %for.inc.i.mt6358_irq_sp_handler.exit_crit_edge, %do.end.i, %if.then3.mt6358_irq_sp_handler.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_status.i) #6
  %neg = xor i32 %shl, -1
  %53 = ptrtoint ptr %top_irq_status to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %top_irq_status, align 4
  %and4 = and i32 %54, %neg
  store i32 %and4, ptr %top_irq_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %mt6358_irq_sp_handler.exit.cleanup_crit_edge, label %mt6358_irq_sp_handler.exit.for.inc_crit_edge

mt6358_irq_sp_handler.exit.for.inc_crit_edge:     ; preds = %mt6358_irq_sp_handler.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

mt6358_irq_sp_handler.exit.cleanup_crit_edge:     ; preds = %mt6358_irq_sp_handler.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %mt6358_irq_sp_handler.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.026, 1
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %inc, %56
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %mt6358_irq_sp_handler.exit.cleanup_crit_edge, %do.end, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %for.cond.preheader.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ], [ 1, %mt6358_irq_sp_handler.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %top_irq_status) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_irq_domain_map(ptr nocapture noundef readonly %d, i32 noundef %irq, i32 noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #6
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @mt6358_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 32768) #6
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 1024) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @pmic_irq_enable(ptr nocapture noundef readonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i, align 4
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i, align 4
  %irq_data = getelementptr inbounds %struct.mt6397_chip, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_data, align 4
  %enable_hwirq = getelementptr inbounds %struct.pmic_irq_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %enable_hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_hwirq, align 4
  %arrayidx = getelementptr i8, ptr %7, i32 %1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @pmic_irq_disable(ptr nocapture noundef readonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq.i, align 4
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i, align 4
  %irq_data = getelementptr inbounds %struct.mt6397_chip, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_data, align 4
  %enable_hwirq = getelementptr inbounds %struct.pmic_irq_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %enable_hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_hwirq, align 4
  %arrayidx = getelementptr i8, ptr %7, i32 %1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pmic_irq_lock(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irqlock = getelementptr inbounds %struct.mt6397_chip, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %irqlock, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pmic_irq_sync_unlock(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq_data = getelementptr inbounds %struct.mt6397_chip, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_data, align 4
  %num_pmic_irqs = getelementptr inbounds %struct.pmic_irq_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_pmic_irqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pmic_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp61.not = icmp eq i32 %5, 0
  br i1 %cmp61.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %enable_hwirq = getelementptr inbounds %struct.pmic_irq_data, ptr %3, i32 0, i32 3
  %cache_hwirq = getelementptr inbounds %struct.pmic_irq_data, ptr %3, i32 0, i32 4
  %pmic_ints = getelementptr inbounds %struct.pmic_irq_data, ptr %3, i32 0, i32 5
  %regmap = getelementptr inbounds %struct.mt6397_chip, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc32, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %enable_hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_hwirq, align 4
  %arrayidx = getelementptr i8, ptr %7, i32 %i.062
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1, !range !54
  %10 = ptrtoint ptr %cache_hwirq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cache_hwirq, align 4
  %arrayidx1 = getelementptr i8, ptr %11, i32 %i.062
  %12 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx1, align 1, !range !54
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %13)
  %cmp4 = icmp eq i8 %9, %13
  br i1 %cmp4, label %for.body.for.inc_crit_edge, label %while.cond.preheader

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

while.cond.preheader:                             ; preds = %for.body
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  %umax = call i32 @llvm.umax.i32(i32 %15, i32 1)
  %16 = add i32 %umax, -1
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %while.cond.preheader
  %top_gp.0 = phi i32 [ %add, %land.rhs.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %top_gp.0, i32 %16)
  %exitcond.not = icmp eq i32 %top_gp.0, %16
  br i1 %exitcond.not, label %while.cond.while.end_crit_edge, label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %add = add nuw i32 %top_gp.0, 1
  %17 = ptrtoint ptr %pmic_ints to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pmic_ints, align 4
  %arrayidx9 = getelementptr %struct.irq_top_t, ptr %18, i32 %add
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx9, align 4
  %cmp10.not = icmp ult i32 %i.062, %20
  br i1 %cmp10.not, label %land.rhs.while.end_crit_edge, label %land.rhs.while.cond_crit_edge

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  %top_gp.0.lcssa = phi i32 [ %16, %while.cond.while.end_crit_edge ], [ %top_gp.0, %land.rhs.while.end_crit_edge ]
  %21 = ptrtoint ptr %pmic_ints to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pmic_ints, align 4
  %arrayidx13 = getelementptr %struct.irq_top_t, ptr %22, i32 %top_gp.0.lcssa
  %23 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx13, align 4
  %sub = sub i32 %i.062, %24
  %div60 = lshr i32 %sub, 4
  %rem = and i32 %sub, 15
  %en_reg17 = getelementptr %struct.irq_top_t, ptr %22, i32 %top_gp.0.lcssa, i32 2
  %25 = ptrtoint ptr %en_reg17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %en_reg17, align 4
  %en_reg_shift = getelementptr %struct.irq_top_t, ptr %22, i32 %top_gp.0.lcssa, i32 3
  %27 = ptrtoint ptr %en_reg_shift to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %en_reg_shift, align 4
  %mul = mul i32 %28, %div60
  %add20 = add i32 %mul, %26
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %shl = shl nuw nsw i32 1, %rem
  %31 = zext i8 %9 to i32
  %shl25 = shl nuw nsw i32 %31, %rem
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %add20, i32 noundef %shl, i32 noundef %shl25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %32 = ptrtoint ptr %enable_hwirq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %enable_hwirq, align 4
  %arrayidx28 = getelementptr i8, ptr %33, i32 %i.062
  %34 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx28, align 1, !range !54
  %36 = ptrtoint ptr %cache_hwirq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cache_hwirq, align 4
  %arrayidx31 = getelementptr i8, ptr %37, i32 %i.062
  %38 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %35, ptr %arrayidx31, align 1
  br label %for.inc

for.inc:                                          ; preds = %while.end, %for.body.for.inc_crit_edge
  %inc32 = add nuw i32 %i.062, 1
  %39 = ptrtoint ptr %num_pmic_irqs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_pmic_irqs, align 4
  %cmp = icmp ult i32 %inc32, %40
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %irqlock = getelementptr inbounds %struct.mt6397_chip, ptr %1, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %irqlock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !17, !18, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/mt6358-irq.c", i32 223, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mt6358_irq_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mt6358_irq_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @mt6358_irq_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/mfd/mt6358-irq.c", i32 227, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mfd/mt6358-irq.c", i32 255, i32 3}
!13 = !{ptr @mt6358_irq_init._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @mt6358_irq_init._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mfd/mt6358-irq.c", i32 263, i32 3}
!17 = !{ptr @mt6358_irq_init._entry.9, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @mt6358_irq_init._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @mt6358_irqd, !20, !"mt6358_irqd", i1 false, i1 false}
!20 = !{!"../drivers/mfd/mt6358-irq.c", i32 42, i32 29}
!21 = !{ptr @mt6358_ints, !22, !"mt6358_ints", i1 false, i1 false}
!22 = !{!"../drivers/mfd/mt6358-irq.c", i32 20, i32 31}
!23 = !{ptr @mt6359_irqd, !24, !"mt6359_irqd", i1 false, i1 false}
!24 = !{!"../drivers/mfd/mt6358-irq.c", i32 49, i32 29}
!25 = !{ptr @mt6359_ints, !26, !"mt6359_ints", i1 false, i1 false}
!26 = !{!"../drivers/mfd/mt6358-irq.c", i32 31, i32 31}
!27 = !{ptr @mt6358_irq_domain_ops, !28, !"mt6358_irq_domain_ops", i1 false, i1 false}
!28 = !{!"../drivers/mfd/mt6358-irq.c", i32 203, i32 36}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mfd/mt6358-irq.c", i32 172, i32 3}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mt6358_irq_handler._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @mt6358_irq_handler._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mfd/mt6358-irq.c", i32 135, i32 4}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @mt6358_irq_sp_handler._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @mt6358_irq_sp_handler._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mfd/mt6358-irq.c", i32 113, i32 10}
!41 = !{ptr @mt6358_irq_chip, !42, !"mt6358_irq_chip", i1 false, i1 false}
!42 = !{!"../drivers/mfd/mt6358-irq.c", i32 112, i32 24}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"auto-init"}
!53 = !{i32 0, i32 33}
!54 = !{i8 0, i8 2}
