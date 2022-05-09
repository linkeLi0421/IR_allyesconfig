; ModuleID = '/llk/IR_all_yes/drivers/staging/nvec/nvec.c_pt.bc'
source_filename = "../drivers/staging/nvec/nvec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nvec_register_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_nvec_register_notifier\09\09\09\09"
module asm "\09.long\09__crc_nvec_register_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvec_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22nvec_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_nvec_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nvec_unregister_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_nvec_unregister_notifier\09\09\09\09"
module asm "\09.long\09__crc_nvec_unregister_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvec_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22nvec_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_nvec_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nvec_msg_free\22, \22a\22\09"
module asm "\09.weak\09__crc_nvec_msg_free\09\09\09\09"
module asm "\09.long\09__crc_nvec_msg_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvec_msg_free:\09\09\09\09\09"
module asm "\09.asciz \09\22nvec_msg_free\22\09\09\09\09\09"
module asm "__kstrtabns_nvec_msg_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nvec_write_async\22, \22a\22\09"
module asm "\09.weak\09__crc_nvec_write_async\09\09\09\09"
module asm "\09.long\09__crc_nvec_write_async\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvec_write_async:\09\09\09\09\09"
module asm "\09.asciz \09\22nvec_write_async\22\09\09\09\09\09"
module asm "__kstrtabns_nvec_write_async:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nvec_write_sync\22, \22a\22\09"
module asm "\09.weak\09__crc_nvec_write_sync\09\09\09\09"
module asm "\09.long\09__crc_nvec_write_sync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nvec_write_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22nvec_write_sync\22\09\09\09\09\09"
module asm "__kstrtabns_nvec_write_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nvec_chip = type { ptr, ptr, i32, i32, ptr, ptr, ptr, %struct.atomic_notifier_head, %struct.list_head, %struct.list_head, %struct.notifier_block, %struct.work_struct, %struct.work_struct, ptr, [64 x %struct.nvec_msg], ptr, ptr, %struct.nvec_msg, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.mutex, %struct.completion, i16, ptr, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvec_msg = type { %struct.list_head, [34 x i8], i16, i16, %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__kstrtab_nvec_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvec_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_nvec_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvec_register_notifier to i32), ptr @__kstrtab_nvec_register_notifier, ptr @__kstrtabns_nvec_register_notifier }, section "___ksymtab_gpl+nvec_register_notifier", align 4
@__kstrtab_nvec_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvec_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_nvec_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvec_unregister_notifier to i32), ptr @__kstrtab_nvec_unregister_notifier, ptr @__kstrtabns_nvec_unregister_notifier }, section "___ksymtab_gpl+nvec_unregister_notifier", align 4
@__kstrtab_nvec_msg_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvec_msg_free = external dso_local constant [0 x i8], align 1
@__ksymtab_nvec_msg_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvec_msg_free to i32), ptr @__kstrtab_nvec_msg_free, ptr @__kstrtabns_nvec_msg_free }, section "___ksymtab_gpl+nvec_msg_free", align 4
@__kstrtab_nvec_write_async = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvec_write_async = external dso_local constant [0 x i8], align 1
@__ksymtab_nvec_write_async = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvec_write_async to i32), ptr @__kstrtab_nvec_write_async, ptr @__kstrtabns_nvec_write_async }, section "___ksymtab+nvec_write_async", align 4
@nvec_write_sync.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nvec\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvec_write_sync\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/staging/nvec/nvec.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvec_sync_write: 0x%04x\0A\00", [39 x i8] zeroinitializer }, align 32
@nvec_write_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 316, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"timeout waiting for sync write to complete\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvec_write_sync._entry_ptr = internal global ptr @nvec_write_sync._entry, section ".printk_index", align 4
@nvec_write_sync.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nvec_sync_write: pong!\0A\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_nvec_write_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_nvec_write_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_nvec_write_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nvec_write_sync to i32), ptr @__kstrtab_nvec_write_sync, ptr @__kstrtabns_nvec_write_sync }, section "___ksymtab+nvec_write_sync", align 4
@__initcall__kmod_nvec__195_953_nvec_device_driver_init6 = internal global ptr @nvec_device_driver_init, section ".initcall6.init", align 4
@nvec_device_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_nvec_probe, ptr @tegra_nvec_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nvidia_nvec_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvec_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_nvec_device_driver_exit = internal global ptr @nvec_device_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias196 = internal constant [25 x i8] c"nvec.alias=platform:nvec\00", section ".modinfo", align 1
@__UNIQUE_ID_description197 = internal constant [64 x i8] c"nvec.description=NVIDIA compliant embedded controller interface\00", section ".modinfo", align 1
@__UNIQUE_ID_author198 = internal constant [44 x i8] c"nvec.author=Marc Dietrich <marvin24@gmx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file199 = internal constant [36 x i8] c"nvec.file=drivers/staging/nvec/nvec\00", section ".modinfo", align 1
@__UNIQUE_ID_license200 = internal constant [17 x i8] c"nvec.license=GPL\00", section ".modinfo", align 1
@nvec_msg_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 179, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not allocate %s buffer\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvec_msg_alloc\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nvec_msg_alloc._entry_ptr = internal global ptr @nvec_msg_alloc._entry, section ".printk_index", align 4
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@nvidia_nvec_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,nvec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@nvec_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @nvec_suspend, ptr @nvec_resume, ptr @nvec_suspend, ptr @nvec_resume, ptr @nvec_suspend, ptr @nvec_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__const.tegra_nvec_probe.enable_event = private unnamed_addr constant [7 x i8] c"\01\01\01\00\00\00\00", align 1
@tegra_nvec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 777, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"must be instantiated using device tree\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_nvec_probe\00", [47 x i8] zeroinitializer }, align 32
@tegra_nvec_probe._entry_ptr = internal global ptr @tegra_nvec_probe._entry, section ".printk_index", align 4
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"slave-addr\00", [21 x i8] zeroinitializer }, align 32
@tegra_nvec_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.2, i32 789, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no i2c address specified\00", [39 x i8] zeroinitializer }, align 32
@tegra_nvec_probe._entry_ptr.18 = internal global ptr @tegra_nvec_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"div-clk\00", [24 x i8] zeroinitializer }, align 32
@tegra_nvec_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.14, ptr @.str.2, i32 803, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get controller clock\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_nvec_probe._entry_ptr.22 = internal global ptr @tegra_nvec_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@tegra_nvec_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.14, ptr @.str.2, i32 809, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get controller reset\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_nvec_probe._entry_ptr.26 = internal global ptr @tegra_nvec_probe._entry.24, section ".printk_index", align 4
@tegra_nvec_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&nvec->notifier_list)->lock\00", [34 x i8] zeroinitializer }, align 32
@tegra_nvec_probe.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&nvec->sync_write_mutex\00", [40 x i8] zeroinitializer }, align 32
@tegra_nvec_probe.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&nvec->tx_lock\00", [17 x i8] zeroinitializer }, align 32
@tegra_nvec_probe.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&nvec->rx_lock\00", [17 x i8] zeroinitializer }, align 32
@tegra_nvec_probe.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&nvec->rx_work)\00", [62 x i8] zeroinitializer }, align 32
@tegra_nvec_probe.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&nvec->tx_work)\00", [62 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"request\00", [24 x i8] zeroinitializer }, align 32
@tegra_nvec_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.14, ptr @.str.2, i32 831, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"couldn't request gpio\0A\00", [41 x i8] zeroinitializer }, align 32
@tegra_nvec_probe._entry_ptr.41 = internal global ptr @tegra_nvec_probe._entry.39, section ".printk_index", align 4
@tegra_nvec_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.14, ptr @.str.2, i32 838, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"couldn't request irq\0A\00", [42 x i8] zeroinitializer }, align 32
@tegra_nvec_probe._entry_ptr.44 = internal global ptr @tegra_nvec_probe._entry.42, section ".printk_index", align 4
@nvec_power_handle = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@tegra_nvec_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.14, ptr @.str.2, i32 861, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ec firmware version %02x.%02x.%02x / %02x\0A\00", [53 x i8] zeroinitializer }, align 32
@tegra_nvec_probe._entry_ptr.47 = internal global ptr @tegra_nvec_probe._entry.45, section ".printk_index", align 4
@nvec_devices = internal constant { [5 x %struct.mfd_cell], [104 x i8] } { [5 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.100, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.101, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.102, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.102, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.103, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [104 x i8] zeroinitializer }, align 32
@tegra_nvec_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.14, ptr @.str.2, i32 869, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error adding subdevices\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_nvec_probe._entry_ptr.50 = internal global ptr @tegra_nvec_probe._entry.48, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@nvec_dispatch.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nvec_dispatch\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sync write completed!\0A\00", [41 x i8] zeroinitializer }, align 32
@parse_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 416, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ec responded %*ph\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"parse_msg\00", [22 x i8] zeroinitializer }, align 32
@parse_msg._entry_ptr = internal global ptr @parse_msg._entry, section ".printk_index", align 4
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ec system event \00", [47 x i8] zeroinitializer }, align 32
@nvec_request_master._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 390, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"timeout waiting for ec transfer\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvec_request_master\00", [44 x i8] zeroinitializer }, align 32
@nvec_request_master._entry_ptr = internal global ptr @nvec_request_master._entry, section ".printk_index", align 4
@nvec_gpio_set_value.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvec_gpio_set_value\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"GPIO changed from %u to %u\0A\00", [36 x i8] zeroinitializer }, align 32
@nvec_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 590, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unexpected irq mask %lx\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvec_interrupt\00", [17 x i8] zeroinitializer }, align 32
@nvec_interrupt._entry_ptr = internal global ptr @nvec_interrupt._entry, section ".printk_index", align 4
@nvec_interrupt._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 594, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Spurious IRQ\0A\00", [18 x i8] zeroinitializer }, align 32
@nvec_interrupt._entry_ptr.65 = internal global ptr @nvec_interrupt._entry.63, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@nvec_interrupt._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.2, i32 633, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Read without prior read command\0A\00", [63 x i8] zeroinitializer }, align 32
@nvec_interrupt._entry_ptr.68 = internal global ptr @nvec_interrupt._entry.66, section ".printk_index", align 4
@nvec_interrupt._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.62, ptr @.str.2, i32 662, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"tx buffer underflow on %p (%u > %u)\0A\00", [59 x i8] zeroinitializer }, align 32
@nvec_interrupt._entry_ptr.71 = internal global ptr @nvec_interrupt._entry.69, section ".printk_index", align 4
@nvec_interrupt._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.62, ptr @.str.2, i32 677, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"RX buffer overflow on %p: Trying to write byte %u of %u\0A\00", [39 x i8] zeroinitializer }, align 32
@nvec_interrupt._entry_ptr.74 = internal global ptr @nvec_interrupt._entry.72, section ".printk_index", align 4
@nvec_interrupt._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.62, ptr @.str.2, i32 688, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"received address 0x%02x, expected 0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@nvec_interrupt._entry_ptr.77 = internal global ptr @nvec_interrupt._entry.75, section ".printk_index", align 4
@nvec_interrupt.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.78, i8 0, i8 -79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Handled: %s 0x%02x, %s 0x%02x in state %u [%s%s%s]\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"received\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"R=\00", [29 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sent\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"S=\00", [29 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" END_TRANS\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" RCVD\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" RNW\00", [27 x i8] zeroinitializer }, align 32
@nvec_invalid_flags._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 534, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"unexpected status flags 0x%02x during state %i\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvec_invalid_flags\00", [45 x i8] zeroinitializer }, align 32
@nvec_invalid_flags._entry_ptr = internal global ptr @nvec_invalid_flags._entry, section ".printk_index", align 4
@nvec_tx_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 551, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"empty tx - sending no-op\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nvec_tx_set\00", [20 x i8] zeroinitializer }, align 32
@nvec_tx_set._entry_ptr = internal global ptr @nvec_tx_set._entry, section ".printk_index", align 4
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\02\07\02\00", [28 x i8] zeroinitializer }, align 32
@nvec_tx_set.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.92, i8 0, i8 -115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Sending message of length %u, command 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@nvec_tx_completed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 475, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"premature END_TRANS, resending\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvec_tx_completed\00", [46 x i8] zeroinitializer }, align 32
@nvec_tx_completed._entry_ptr = internal global ptr @nvec_tx_completed._entry, section ".printk_index", align 4
@nvec_rx_completed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 494, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RX incomplete: Expected %u bytes, got %u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvec_rx_completed\00", [46 x i8] zeroinitializer }, align 32
@nvec_rx_completed._entry_ptr = internal global ptr @nvec_rx_completed._entry, section ".printk_index", align 4
@nvec_status_notifier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 145, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unhandled msg type %ld\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvec_status_notifier\00", [43 x i8] zeroinitializer }, align 32
@nvec_status_notifier._entry_ptr = internal global ptr @nvec_status_notifier._entry, section ".printk_index", align 4
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"payload: \00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nvec-kbd\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nvec-mouse\00", [21 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nvec-power\00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nvec-paz00\00", [21 x i8] zeroinitializer }, align 32
@nvec_suspend.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.2, ptr @.str.105, i8 0, i8 -29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvec_suspend\00", [19 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"suspending\0A\00", [20 x i8] zeroinitializer }, align 32
@nvec_resume.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.106, ptr @.str.2, ptr @.str.107, i8 0, i8 -25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nvec_resume\00", [20 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"resuming\0A\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 134217728, i64 234881024]
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 311, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 315, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 321, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [19 x i8] c"nvec_device_driver\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 943, i32 31 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 178, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [21 x i8] c"nvidia_nvec_of_match\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 937, i32 34 }
@___asan_gen_.160 = private unnamed_addr constant [12 x i8] c"nvec_pm_ops\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 934, i32 8 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 777, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 788, i32 41 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 789, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 801, i32 30 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 803, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 807, i32 52 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 809, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 817, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 821, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 822, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 823, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 826, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 827, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 829, i32 36 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 831, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 838, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant [18 x i8] c"nvec_power_handle\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 76, i32 26 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 858, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [13 x i8] c"nvec_devices\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 78, i32 30 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 869, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 87, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 452, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 416, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 421, i32 32 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 390, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 238, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 590, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 594, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 632, i32 5 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 658, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 674, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 686, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 700, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 533, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 551, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 552, i32 33 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 564, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 475, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 492, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 145, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 146, i32 31 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 80, i32 11 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 83, i32 11 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 86, i32 11 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 94, i32 11 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 908, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.449 = private constant [31 x i8] c"../drivers/staging/nvec/nvec.c\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 926, i32 2 }
@llvm.compiler.used = appending global [150 x ptr] [ptr @__UNIQUE_ID_alias196, ptr @__UNIQUE_ID_author198, ptr @__UNIQUE_ID_description197, ptr @__UNIQUE_ID_file199, ptr @__UNIQUE_ID_license200, ptr @__exitcall_nvec_device_driver_exit, ptr @__initcall__kmod_nvec__195_953_nvec_device_driver_init6, ptr @__ksymtab_nvec_msg_free, ptr @__ksymtab_nvec_register_notifier, ptr @__ksymtab_nvec_unregister_notifier, ptr @__ksymtab_nvec_write_async, ptr @__ksymtab_nvec_write_sync, ptr @nvec_device_driver_exit, ptr @nvec_interrupt._entry, ptr @nvec_interrupt._entry.63, ptr @nvec_interrupt._entry.66, ptr @nvec_interrupt._entry.69, ptr @nvec_interrupt._entry.72, ptr @nvec_interrupt._entry.75, ptr @nvec_interrupt._entry_ptr, ptr @nvec_interrupt._entry_ptr.65, ptr @nvec_interrupt._entry_ptr.68, ptr @nvec_interrupt._entry_ptr.71, ptr @nvec_interrupt._entry_ptr.74, ptr @nvec_interrupt._entry_ptr.77, ptr @nvec_invalid_flags._entry, ptr @nvec_invalid_flags._entry_ptr, ptr @nvec_msg_alloc._entry, ptr @nvec_msg_alloc._entry_ptr, ptr @nvec_request_master._entry, ptr @nvec_request_master._entry_ptr, ptr @nvec_rx_completed._entry, ptr @nvec_rx_completed._entry_ptr, ptr @nvec_status_notifier._entry, ptr @nvec_status_notifier._entry_ptr, ptr @nvec_tx_completed._entry, ptr @nvec_tx_completed._entry_ptr, ptr @nvec_tx_set._entry, ptr @nvec_tx_set._entry_ptr, ptr @nvec_write_sync._entry, ptr @nvec_write_sync._entry_ptr, ptr @parse_msg._entry, ptr @parse_msg._entry_ptr, ptr @tegra_nvec_probe._entry, ptr @tegra_nvec_probe._entry.16, ptr @tegra_nvec_probe._entry.20, ptr @tegra_nvec_probe._entry.24, ptr @tegra_nvec_probe._entry.39, ptr @tegra_nvec_probe._entry.42, ptr @tegra_nvec_probe._entry.45, ptr @tegra_nvec_probe._entry.48, ptr @tegra_nvec_probe._entry_ptr, ptr @tegra_nvec_probe._entry_ptr.18, ptr @tegra_nvec_probe._entry_ptr.22, ptr @tegra_nvec_probe._entry_ptr.26, ptr @tegra_nvec_probe._entry_ptr.41, ptr @tegra_nvec_probe._entry_ptr.44, ptr @tegra_nvec_probe._entry_ptr.47, ptr @tegra_nvec_probe._entry_ptr.50, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @nvec_device_driver, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @nvidia_nvec_of_match, ptr @nvec_pm_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @tegra_nvec_probe.__key, ptr @.str.27, ptr @tegra_nvec_probe.__key.28, ptr @.str.29, ptr @tegra_nvec_probe.__key.30, ptr @.str.31, ptr @tegra_nvec_probe.__key.32, ptr @.str.33, ptr @tegra_nvec_probe.__key.34, ptr @.str.35, ptr @tegra_nvec_probe.__key.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @nvec_power_handle, ptr @.str.46, ptr @nvec_devices, ptr @.str.49, ptr @init_completion.__key, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107], section "llvm.metadata"
@0 = internal global [114 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_write_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_device_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_msg_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvidia_nvec_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nvec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nvec_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nvec_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nvec_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nvec_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nvec_probe.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nvec_probe.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nvec_probe.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nvec_probe.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nvec_probe.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nvec_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nvec_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_power_handle to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nvec_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_devices to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nvec_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_request_master._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_interrupt._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_interrupt._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_interrupt._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_interrupt._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_interrupt._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_invalid_flags._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_tx_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_tx_completed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_rx_completed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_status_notifier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvec_register_notifier(ptr noundef %nvec, ptr noundef %nb, i32 %events) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %notifier_list = getelementptr inbounds %struct.nvec_chip, ptr %nvec, i32 0, i32 7
  %call = tail call i32 @atomic_notifier_chain_register(ptr noundef %notifier_list, ptr noundef %nb) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvec_unregister_notifier(ptr noundef %nvec, ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %notifier_list = getelementptr inbounds %struct.nvec_chip, ptr %nvec, i32 0, i32 7
  %call = tail call i32 @atomic_notifier_chain_unregister(ptr noundef %notifier_list, ptr noundef %nb) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvec_msg_free(ptr nocapture noundef readnone %nvec, ptr noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %used = getelementptr inbounds %struct.nvec_msg, ptr %msg, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %used, i32 noundef 4) #7
  %0 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %used, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvec_write_async(ptr noundef %nvec, ptr nocapture noundef readonly %data, i16 noundef signext %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.014.i = phi i32 [ 16, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %used.i = getelementptr %struct.nvec_chip, ptr %nvec, i32 0, i32 14, i32 %i.014.i, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %used.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @llvm.prefetch.p0(ptr %used.i, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %used.i) #7, !srcloc !231
  %asmresult.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !232
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp2.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp2.i, label %nvec_msg_alloc.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %nvec_msg_alloc.exit.thread, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

nvec_msg_alloc.exit.thread:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %nvec to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nvec, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.11) #10
  br label %cleanup

nvec_msg_alloc.exit:                              ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.nvec_chip, ptr %nvec, i32 0, i32 14, i32 %i.014.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %nvec_msg_alloc.exit.cleanup_crit_edge, label %if.end

nvec_msg_alloc.exit.cleanup_crit_edge:            ; preds = %nvec_msg_alloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %nvec_msg_alloc.exit
  %conv = trunc i16 %size to i8
  %data1 = getelementptr %struct.nvec_chip, ptr %nvec, i32 0, i32 14, i32 %i.014.i, i32 1
  %3 = ptrtoint ptr %data1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %data1, align 4
  %add.ptr = getelementptr %struct.nvec_chip, ptr %nvec, i32 0, i32 14, i32 %i.014.i, i32 1, i32 1
  %conv3 = sext i16 %size to i32
  %4 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 %conv3)
  %add = add i16 %size, 1
  %size6 = getelementptr %struct.nvec_chip, ptr %nvec, i32 0, i32 14, i32 %i.014.i, i32 2
  %5 = ptrtoint ptr %size6 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %add, ptr %size6, align 2
  %tx_lock = getelementptr inbounds %struct.nvec_chip, ptr %nvec, i32 0, i32 19
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #7
  %tx_data = getelementptr inbounds %struct.nvec_chip, ptr %nvec, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.nvec_chip, ptr %nvec, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %arrayidx.i, ptr noundef %7, ptr noundef %tx_data) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx.i, ptr %prev.i, align 4
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tx_data, ptr %arrayidx.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %arrayidx.i, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call10) #7
  %tx_work = getelementptr inbounds %struct.nvec_chip, ptr %nvec, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i26 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %tx_work) #7
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %nvec_msg_alloc.exit.cleanup_crit_edge, %nvec_msg_alloc.exit.thread
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %nvec_msg_alloc.exit.cleanup_crit_edge ], [ -12, %nvec_msg_alloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvec_write_sync(ptr noundef %nvec, ptr nocapture noundef readonly %data, i16 noundef signext %size, ptr nocapture noundef writeonly %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sync_write_mutex = getelementptr inbounds %struct.nvec_chip, ptr %nvec, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %sync_write_mutex, i32 noundef 0) #7
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %msg, align 4
  %arrayidx = getelementptr i8, ptr %data, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i16
  %shl = shl nuw i16 %conv, 8
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1
  %conv2 = zext i8 %4 to i16
  %add = or i16 %shl, %conv2
  %sync_write_pending = getelementptr inbounds %struct.nvec_chip, ptr %nvec, i32 0, i32 23
  %5 = ptrtoint ptr %sync_write_pending to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %add, ptr %sync_write_pending, align 4
  %call = tail call i32 @nvec_write_async(ptr noundef %nvec, ptr noundef %data, i16 noundef signext %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvec_write_sync.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvec_write_sync, %if.then9)) #7
          to label %do.end [label %if.then9], !srcloc !233

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %nvec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nvec, align 4
  %8 = ptrtoint ptr %sync_write_pending to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sync_write_pending, align 4
  %conv11 = zext i16 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nvec_write_sync.__UNIQUE_ID_ddebug188, ptr noundef %7, ptr noundef nonnull @.str.3, i32 noundef %conv11) #7
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %sync_write = getelementptr inbounds %struct.nvec_chip, ptr %nvec, i32 0, i32 22
  %call14 = tail call i32 @wait_for_completion_timeout(ptr noundef %sync_write, i32 noundef 200) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.end18, label %do.body22

do.end18:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %nvec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nvec, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.4) #10
  br label %return

do.body22:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvec_write_sync.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvec_write_sync, %if.then34)) #7
          to label %do.end37 [label %if.then34], !srcloc !233

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %nvec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nvec, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nvec_write_sync.__UNIQUE_ID_ddebug189, ptr noundef %13, ptr noundef nonnull @.str.7) #7
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %do.body22
  %last_sync_msg = getelementptr inbounds %struct.nvec_chip, ptr %nvec, i32 0, i32 24
  %14 = ptrtoint ptr %last_sync_msg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %last_sync_msg, align 4
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %msg, align 4
  br label %return

return:                                           ; preds = %do.end37, %do.end18, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end37 ], [ -110, %do.end18 ], [ -12, %entry.return_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %sync_write_mutex) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nvec_device_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @nvec_device_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nvec_device_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @nvec_device_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_nvec_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %global_events.i = alloca [3 x i8], align 1
  %msg = alloca ptr, align 4
  %get_firmware_version = alloca [2 x i8], align 2
  %unmute_speakers = alloca [4 x i8], align 4
  %enable_event = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg) #7
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %msg, align 4, !annotation !234
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %get_firmware_version) #7
  %1 = ptrtoint ptr %get_firmware_version to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1813, ptr %get_firmware_version, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unmute_speakers) #7
  %2 = ptrtoint ptr %unmute_speakers to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 219175317, ptr %unmute_speakers, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %enable_event) #7
  %3 = call ptr @memcpy(ptr %enable_event, ptr @__const.tegra_nvec_probe.enable_event, i32 7)
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 3888, i32 noundef 3520) #7
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %call.i, align 4
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %i2c_addr = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 3
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.15, ptr noundef %i2c_addr, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool8.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool8.not, label %if.end13, label %do.end12

do.end12:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %call14 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %call19 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call19, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %call23 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.19) #7
  %cmp.i216 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i216, label %do.end28, label %if.end29

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #10
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %call.i217 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %rst = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i217, ptr %rst, align 4
  %cmp.i218 = icmp ugt ptr %call.i217, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i218, label %do.end36, label %if.end39

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #10
  %13 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rst, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end29
  %base40 = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %base40 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call14, ptr %base40, align 4
  %i2c_clk41 = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %i2c_clk41 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call23, ptr %i2c_clk41, align 4
  %msg_pool = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 14
  %rx = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 15
  %18 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg_pool, ptr %rx, align 4
  %notifier_list = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %notifier_list, ptr noundef nonnull @.str.27, ptr noundef nonnull @tegra_nvec_probe.__key, i16 noundef signext 3) #7
  %head = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %head, align 4
  %sync_write = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 22
  %20 = ptrtoint ptr %sync_write to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %sync_write, align 4
  %wait.i = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 22, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_completion.__key) #7
  %ec_transfer = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 18
  %21 = ptrtoint ptr %ec_transfer to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %ec_transfer, align 4
  %wait.i219 = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 18, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i219, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_completion.__key) #7
  %sync_write_mutex = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %sync_write_mutex, ptr noundef nonnull @.str.29, ptr noundef nonnull @tegra_nvec_probe.__key.28) #7
  %tx_lock = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.31, ptr noundef nonnull @tegra_nvec_probe.__key.30, i16 noundef signext 3) #7
  %rx_lock = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 20
  tail call void @__raw_spin_lock_init(ptr noundef %rx_lock, ptr noundef nonnull @.str.33, ptr noundef nonnull @tegra_nvec_probe.__key.32, i16 noundef signext 3) #7
  %rx_data = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 8
  %22 = ptrtoint ptr %rx_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %rx_data, ptr %rx_data, align 4
  %prev.i = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 8, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %rx_data, ptr %prev.i, align 4
  %tx_data = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 9
  %24 = ptrtoint ptr %tx_data to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %tx_data, ptr %tx_data, align 4
  %prev.i220 = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 9, i32 1
  %25 = ptrtoint ptr %prev.i220 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %tx_data, ptr %prev.i220, align 4
  %rx_work = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 11
  tail call void @__init_work(ptr noundef %rx_work, i32 noundef 0) #7
  %26 = ptrtoint ptr %rx_work to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -64, ptr %rx_work, align 4
  %lockdep_map = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.35, ptr noundef nonnull @tegra_nvec_probe.__key.34, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry65 = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 11, i32 1
  %27 = ptrtoint ptr %entry65 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry65, ptr %entry65, align 4
  %prev.i221 = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 11, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i221 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %entry65, ptr %prev.i221, align 4
  %func = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 11, i32 2
  %29 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @nvec_dispatch, ptr %func, align 4
  %tx_work = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 12
  tail call void @__init_work(ptr noundef %tx_work, i32 noundef 0) #7
  %30 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -64, ptr %tx_work, align 4
  %lockdep_map75 = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 12, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map75, ptr noundef nonnull @.str.37, ptr noundef nonnull @tegra_nvec_probe.__key.36, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry77 = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 12, i32 1
  %31 = ptrtoint ptr %entry77 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %entry77, ptr %entry77, align 4
  %prev.i222 = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 12, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i222 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entry77, ptr %prev.i222, align 4
  %func79 = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 12, i32 2
  %33 = ptrtoint ptr %func79 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @nvec_request_master, ptr %func79, align 4
  %call82 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.38, i32 noundef 7) #7
  %gpiod = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 1
  %34 = ptrtoint ptr %gpiod to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call82, ptr %gpiod, align 4
  %cmp.i223 = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i223, label %do.end88, label %if.end91

do.end88:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40) #10
  %35 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gpiod, align 4
  %37 = ptrtoint ptr %36 to i32
  br label %cleanup

if.end91:                                         ; preds = %if.end39
  %38 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq, align 4
  %call.i224 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %39, ptr noundef nonnull @nvec_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i224)
  %tobool94.not = icmp eq i32 %call.i224, 0
  br i1 %tobool94.not, label %if.end99, label %do.end98

do.end98:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43) #10
  br label %cleanup

if.end99:                                         ; preds = %if.end91
  %40 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %41) #7
  tail call fastcc void @tegra_init_i2c_slave(ptr noundef nonnull %call.i)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %global_events.i) #7
  %42 = getelementptr inbounds [3 x i8], ptr %global_events.i, i32 0, i32 1
  %43 = getelementptr inbounds [3 x i8], ptr %global_events.i, i32 0, i32 2
  %44 = ptrtoint ptr %global_events.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 4, ptr %global_events.i, align 1
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %42, align 1
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %43, align 1
  %call.i225 = call i32 @nvec_write_async(ptr noundef nonnull %call.i, ptr noundef nonnull %global_events.i, i16 noundef signext 3) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %global_events.i) #7
  %nvec_status_notifier = getelementptr inbounds %struct.nvec_chip, ptr %call.i, i32 0, i32 10
  %47 = ptrtoint ptr %nvec_status_notifier to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @nvec_status_notifier, ptr %nvec_status_notifier, align 4
  %call.i226 = tail call i32 @atomic_notifier_chain_register(ptr noundef %notifier_list, ptr noundef %nvec_status_notifier) #7
  store ptr %call.i, ptr @nvec_power_handle, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr @nvec_power_off, ptr @pm_power_off, align 4
  %call103 = call i32 @nvec_write_sync(ptr noundef nonnull %call.i, ptr noundef nonnull %get_firmware_version, i16 noundef signext 2, ptr noundef nonnull %msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %do.end108, label %if.end99.if.end120_crit_edge

if.end99.if.end120_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

do.end108:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %msg, align 4
  %arrayidx110 = getelementptr %struct.nvec_msg, ptr %49, i32 0, i32 1, i32 4
  %50 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx110, align 4
  %conv = zext i8 %51 to i32
  %arrayidx112 = getelementptr %struct.nvec_msg, ptr %49, i32 0, i32 1, i32 5
  %52 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %53 to i32
  %arrayidx115 = getelementptr %struct.nvec_msg, ptr %49, i32 0, i32 1, i32 6
  %54 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx115, align 2
  %conv116 = zext i8 %55 to i32
  %arrayidx118 = getelementptr %struct.nvec_msg, ptr %49, i32 0, i32 1, i32 7
  %56 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx118, align 1
  %conv119 = zext i8 %57 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.46, i32 noundef %conv, i32 noundef %conv113, i32 noundef %conv116, i32 noundef %conv119) #10
  %used.i = getelementptr inbounds %struct.nvec_msg, ptr %49, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %used.i, i32 noundef 4) #7
  %58 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 0, ptr %used.i, align 4
  br label %if.end120

if.end120:                                        ; preds = %do.end108, %if.end99.if.end120_crit_edge
  %call121 = tail call i32 @mfd_add_devices(ptr noundef %dev1, i32 noundef 0, ptr noundef nonnull @nvec_devices, i32 noundef 5, ptr noundef null, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end120.if.end127_crit_edge, label %do.end126

if.end120.if.end127_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

do.end126:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.49) #10
  br label %if.end127

if.end127:                                        ; preds = %do.end126, %if.end120.if.end127_crit_edge
  %call129 = call i32 @nvec_write_async(ptr noundef nonnull %call.i, ptr noundef nonnull %unmute_speakers, i16 noundef signext 4)
  %arrayidx.i = getelementptr inbounds i8, ptr %enable_event, i32 3
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %arrayidx.i, align 1
  %arrayidx4.i = getelementptr inbounds i8, ptr %enable_event, i32 4
  %60 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %arrayidx4.i, align 1
  %arrayidx8.i = getelementptr inbounds i8, ptr %enable_event, i32 5
  %61 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 2, ptr %arrayidx8.i, align 1
  %arrayidx12.i = getelementptr inbounds i8, ptr %enable_event, i32 6
  %62 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %arrayidx12.i, align 1
  %call132 = call i32 @nvec_write_async(ptr noundef nonnull %call.i, ptr noundef nonnull %enable_event, i16 noundef signext 7)
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %arrayidx.i, align 1
  %64 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %arrayidx4.i, align 1
  %65 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %arrayidx8.i, align 1
  %66 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -128, ptr %arrayidx12.i, align 1
  %call135 = call i32 @nvec_write_async(ptr noundef nonnull %call.i, ptr noundef nonnull %enable_event, i16 noundef signext 7)
  br label %cleanup

cleanup:                                          ; preds = %if.end127, %do.end98, %do.end88, %do.end36, %do.end28, %if.end18.cleanup_crit_edge, %if.then16, %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end12 ], [ %10, %if.then16 ], [ -19, %do.end28 ], [ %15, %do.end36 ], [ %37, %do.end88 ], [ -19, %do.end98 ], [ 0, %if.end127 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %enable_event) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unmute_speakers) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %get_firmware_version) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_nvec_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  %global_events.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %global_events.i) #7
  %2 = getelementptr inbounds [3 x i8], ptr %global_events.i, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %global_events.i, i32 0, i32 2
  %4 = ptrtoint ptr %global_events.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %global_events.i, align 1
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %2, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %3, align 1
  %call.i = call i32 @nvec_write_async(ptr noundef %1, ptr noundef nonnull %global_events.i, i16 noundef signext 3) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %global_events.i) #7
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void @mfd_remove_devices(ptr noundef %8) #7
  %nvec_status_notifier = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 10
  %notifier_list.i = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 7
  %call.i9 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef %notifier_list.i, ptr noundef %nvec_status_notifier) #7
  %rx_work = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 11
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %rx_work) #7
  %tx_work = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 12
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %tx_work) #7
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr null, ptr @pm_power_off, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvec_dispatch(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -104
  %rx_lock = getelementptr i8, ptr %work, i32 3580
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_lock) #7
  %rx_data = getelementptr i8, ptr %work, i32 -28
  %0 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rx_data, align 4
  %cmp.i.not67 = icmp eq ptr %1, %rx_data
  br i1 %cmp.i.not67, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %sync_write_pending = getelementptr i8, ptr %work, i32 3772
  %notifier_list.i = getelementptr i8, ptr %work, i32 -76
  %last_sync_msg = getelementptr i8, ptr %work, i32 3776
  %sync_write = getelementptr i8, ptr %work, i32 3716
  br label %while.body

while.body:                                       ; preds = %do.body33.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %34, %do.body33.while.body_crit_edge ]
  %flags.068 = phi i32 [ %call3, %while.body.lr.ph ], [ %call41, %do.body33.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #7
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %2, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock, i32 noundef %flags.068) #7
  %11 = ptrtoint ptr %sync_write_pending to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sync_write_pending, align 4
  %conv12 = zext i16 %12 to i32
  %data = getelementptr inbounds %struct.nvec_msg, ptr %2, i32 0, i32 1
  %arrayidx = getelementptr %struct.nvec_msg, ptr %2, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 2
  %conv13 = zext i8 %14 to i32
  %shl = shl nuw nsw i32 %conv13, 8
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %data, align 4
  %conv16 = zext i8 %16 to i32
  %add = or i32 %shl, %conv16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv12)
  %cmp17 = icmp eq i32 %add, %conv12
  br i1 %cmp17, label %do.body19, label %if.else

do.body19:                                        ; preds = %list_del_init.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvec_dispatch.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvec_dispatch, %if.then26)) #7
          to label %do.end28 [label %if.then26], !srcloc !233

if.then26:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nvec_dispatch.__UNIQUE_ID_ddebug190, ptr noundef %18, ptr noundef nonnull @.str.53) #7
  br label %do.end28

do.end28:                                         ; preds = %if.then26, %do.body19
  %19 = ptrtoint ptr %sync_write_pending to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %sync_write_pending, align 4
  %20 = ptrtoint ptr %last_sync_msg to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %2, ptr %last_sync_msg, align 4
  tail call void @complete(ptr noundef %sync_write) #7
  br label %do.body33

if.else:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp.i65 = icmp sgt i8 %16, -1
  br i1 %cmp.i65, label %land.lhs.true.i, label %if.else.if.end.i_crit_edge

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.else
  %arrayidx3.i = getelementptr %struct.nvec_msg, ptr %2, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %do.end.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.54, i32 noundef 4, ptr noundef %data) #10
  br label %parse_msg.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.else.if.end.i_crit_edge
  %25 = and i8 %16, -113
  call void @__sanitizer_cov_trace_const_cmp1(i8 -123, i8 %25)
  %26 = icmp eq i8 %25, -123
  br i1 %26, label %if.then18.i, label %if.end.i.if.end24.i_crit_edge

if.end.i.if.end24.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx22.i = getelementptr %struct.nvec_msg, ptr %2, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i = zext i8 %28 to i32
  %add.i = add nuw nsw i32 %conv23.i, 2
  tail call void @print_hex_dump(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.56, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %data, i32 noundef %add.i, i1 noundef zeroext true) #7
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then18.i, %if.end.i.if.end24.i_crit_edge
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %data, align 4
  %31 = and i8 %30, -113
  %and28.i = zext i8 %31 to i32
  %call.i = tail call i32 @atomic_notifier_call_chain(ptr noundef %notifier_list.i, i32 noundef %and28.i, ptr noundef %data) #7
  br label %parse_msg.exit

parse_msg.exit:                                   ; preds = %if.end24.i, %do.end.i
  %used.i = getelementptr inbounds %struct.nvec_msg, ptr %2, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %used.i, i32 noundef 4) #7
  %32 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 0, ptr %used.i, align 4
  br label %do.body33

do.body33:                                        ; preds = %parse_msg.exit, %do.end28
  %call41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_lock) #7
  %33 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %rx_data, align 4
  %cmp.i.not = icmp eq ptr %34, %rx_data
  br i1 %cmp.i.not, label %do.body33.while.end_crit_edge, label %do.body33.while.body_crit_edge

do.body33.while.body_crit_edge:                   ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.body33.while.end_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %do.body33.while.end_crit_edge, %entry.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call3, %entry.while.end_crit_edge ], [ %call41, %do.body33.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock, i32 noundef %flags.0.lcssa) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvec_request_master(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -148
  %tx_lock = getelementptr i8, ptr %work, i32 3492
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #7
  %tx_data = getelementptr i8, ptr %work, i32 -64
  %0 = ptrtoint ptr %tx_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %tx_data, align 4
  %cmp.i.not60 = icmp eq ptr %1, %tx_data
  br i1 %cmp.i.not60, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %gpiod.i = getelementptr i8, ptr %work, i32 -144
  %ec_transfer = getelementptr i8, ptr %work, i32 3436
  br label %while.body

while.body:                                       ; preds = %if.end36.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %28, %if.end36.while.body_crit_edge ]
  %flags.061 = phi i32 [ %call3, %while.body.lr.ph ], [ %call2859, %if.end36.while.body_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %flags.061) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvec_gpio_set_value.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvec_request_master, %if.then.i)) #7
          to label %nvec_gpio_set_value.exit [label %if.then.i], !srcloc !233

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %5 = ptrtoint ptr %gpiod.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gpiod.i, align 4
  %call3.i = tail call i32 @gpiod_get_value(ptr noundef %6) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nvec_gpio_set_value.__UNIQUE_ID_ddebug187, ptr noundef %4, ptr noundef nonnull @.str.60, i32 noundef %call3.i, i32 noundef 0) #7
  br label %nvec_gpio_set_value.exit

nvec_gpio_set_value.exit:                         ; preds = %if.then.i, %while.body
  %7 = ptrtoint ptr %gpiod.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpiod.i, align 4
  tail call void @gpiod_set_value(ptr noundef %8, i32 noundef 0) #7
  %call13 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %ec_transfer, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %do.end18, label %do.body20

do.end18:                                         ; preds = %nvec_gpio_set_value.exit
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.57) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvec_gpio_set_value.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvec_request_master, %if.then.i54)) #7
          to label %do.body20.thread [label %if.then.i54], !srcloc !233

if.then.i54:                                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %13 = ptrtoint ptr %gpiod.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpiod.i, align 4
  %call3.i53 = tail call i32 @gpiod_get_value(ptr noundef %14) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nvec_gpio_set_value.__UNIQUE_ID_ddebug187, ptr noundef %12, ptr noundef nonnull @.str.60, i32 noundef %call3.i53, i32 noundef 1) #7
  br label %do.body20.thread

do.body20.thread:                                 ; preds = %if.then.i54, %do.end18
  %15 = ptrtoint ptr %gpiod.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpiod.i, align 4
  tail call void @gpiod_set_value(ptr noundef %16, i32 noundef 1) #7
  %pos = getelementptr inbounds %struct.nvec_msg, ptr %2, i32 0, i32 3
  %17 = ptrtoint ptr %pos to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %pos, align 4
  %call2857 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #7
  br label %if.end36

do.body20:                                        ; preds = %nvec_gpio_set_value.exit
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp33 = icmp sgt i32 %call13, 0
  br i1 %cmp33, label %if.then35, label %do.body20.if.end36_crit_edge

do.body20.if.end36_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then35:                                        ; preds = %do.body20
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then35.list_del_init.exit_crit_edge

if.then35.list_del_init.exit_crit_edge:           ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then35.list_del_init.exit_crit_edge
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %2, ptr %prev.i3.i, align 4
  %used.i = getelementptr inbounds %struct.nvec_msg, ptr %2, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %used.i, i32 noundef 4) #7
  %26 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %used.i, align 4
  br label %if.end36

if.end36:                                         ; preds = %list_del_init.exit, %do.body20.if.end36_crit_edge, %do.body20.thread
  %call2859 = phi i32 [ %call2857, %do.body20.thread ], [ %call28, %list_del_init.exit ], [ %call28, %do.body20.if.end36_crit_edge ]
  %27 = ptrtoint ptr %tx_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %tx_data, align 4
  %cmp.i.not = icmp eq ptr %28, %tx_data
  br i1 %cmp.i.not, label %if.end36.while.end_crit_edge, label %if.end36.while.body_crit_edge

if.end36.while.body_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end36.while.end_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end36.while.end_crit_edge, %entry.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call3, %entry.while.end_crit_edge ], [ %call2859, %if.end36.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %flags.0.lcssa) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvec_interrupt(i32 noundef %irq, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.nvec_chip, ptr %dev, i32 0, i32 25
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1, align 4
  %base = getelementptr inbounds %struct.nvec_chip, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 40
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !235
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !236
  %and = and i32 %5, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp ne i32 %and, 0
  %and3 = and i32 %5, -31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp4.not = icmp eq i32 %and3, 0
  %or.cond = or i1 %cmp, %cmp4.not
  br i1 %or.cond, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.61, i32 noundef %5) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp7 = icmp eq i32 %and6, 0
  br i1 %cmp7, label %do.end11, label %if.end13

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.64) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %and14 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %cmp15 = icmp eq i32 %and14, 0
  br i1 %cmp15, label %if.then16, label %if.end13.if.end32_crit_edge

if.end13.if.end32_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then16:                                        ; preds = %if.end13
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %11, i32 36
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #7, !srcloc !235
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !237
  %and24 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool.not = icmp eq i32 %and24, 0
  br i1 %tobool.not, label %if.then16.if.end32_crit_edge, label %do.body26

if.then16.if.end32_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.body26:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr30 = getelementptr i8, ptr %15, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 0) #7, !srcloc !239
  br label %if.end32

if.end32:                                         ; preds = %do.body26, %if.then16.if.end32_crit_edge, %if.end13.if.end32_crit_edge
  %received.0 = phi i32 [ %13, %do.body26 ], [ %13, %if.then16.if.end32_crit_edge ], [ 0, %if.end13.if.end32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %4)
  %cmp33 = icmp eq i32 %4, 201326592
  br i1 %cmp33, label %sw.bb.thread, label %if.end36

sw.bb.thread:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %state1, align 4
  br label %sw.epilog

if.end36:                                         ; preds = %if.end32
  %17 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %state1, align 4
  %18 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.pr, label %sw.default [
    i32 0, label %if.then39
    i32 1, label %sw.bb41
    i32 2, label %sw.bb57
    i32 3, label %sw.bb94
    i32 4, label %sw.bb146
  ]

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.87, i32 noundef %5, i32 noundef 0) #10
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %4)
  %cmp42.not = icmp eq i32 %4, 134217728
  br i1 %cmp42.not, label %sw.bb41.for.body.i_crit_edge, label %if.then43

sw.bb41.for.body.i_crit_edge:                     ; preds = %sw.bb41
  br label %for.body.i

if.then43:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.87, i32 noundef %5, i32 noundef 1) #10
  %23 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %state1, align 4
  br label %sw.epilog

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb41.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %sw.bb41.for.body.i_crit_edge ]
  %used.i = getelementptr %struct.nvec_chip, ptr %dev, i32 0, i32 14, i32 %i.014.i, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %used.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void @llvm.prefetch.p0(ptr %used.i, i32 1, i32 3, i32 1) #7
  %24 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %used.i) #7, !srcloc !231
  %asmresult.i.i.i = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !232
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp2.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp2.i, label %nvec_msg_alloc.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %nvec_msg_alloc.exit.thread, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

nvec_msg_alloc.exit.thread:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.12) #10
  %rx381 = getelementptr inbounds %struct.nvec_chip, ptr %dev, i32 0, i32 15
  %27 = ptrtoint ptr %rx381 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %rx381, align 4
  br label %if.then50

nvec_msg_alloc.exit:                              ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.nvec_chip, ptr %dev, i32 0, i32 14, i32 %i.014.i
  %rx = getelementptr inbounds %struct.nvec_chip, ptr %dev, i32 0, i32 15
  %28 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx.i, ptr %rx, align 4
  %tobool46.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool46.not, label %nvec_msg_alloc.exit.if.then50_crit_edge, label %if.end52, !prof !240

nvec_msg_alloc.exit.if.then50_crit_edge:          ; preds = %nvec_msg_alloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then50

if.then50:                                        ; preds = %nvec_msg_alloc.exit.if.then50_crit_edge, %nvec_msg_alloc.exit.thread
  %29 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %state1, align 4
  br label %sw.epilog

if.end52:                                         ; preds = %nvec_msg_alloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %received.0 to i8
  %data = getelementptr %struct.nvec_chip, ptr %dev, i32 0, i32 14, i32 %i.014.i, i32 1
  %30 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv, ptr %data, align 4
  %31 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx, align 4
  %pos = getelementptr inbounds %struct.nvec_msg, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %pos to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %pos, align 4
  %34 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %state1, align 4
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end36
  %35 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %4, label %if.else91 [
    i32 234881024, label %if.then60
    i32 134217728, label %if.then83
  ]

if.then60:                                        ; preds = %sw.bb57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 7086684) #7
  %rx61 = getelementptr inbounds %struct.nvec_chip, ptr %dev, i32 0, i32 15
  %37 = ptrtoint ptr %rx61 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rx61, align 4
  %data62 = getelementptr inbounds %struct.nvec_msg, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %data62 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %data62, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %40)
  %cmp65.not = icmp eq i8 %40, 1
  br i1 %cmp65.not, label %if.end73, label %do.end70

do.end70:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.67) #10
  %43 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %state1, align 4
  br label %sw.epilog

if.end73:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  %used.i363 = getelementptr inbounds %struct.nvec_msg, ptr %38, i32 0, i32 4
  %call.i.i.i364 = tail call zeroext i1 @__kasan_check_write(ptr noundef %used.i363, i32 noundef 4) #7
  %44 = ptrtoint ptr %used.i363 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 0, ptr %used.i363, align 4
  %45 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %state1, align 4
  tail call fastcc void @nvec_tx_set(ptr noundef %dev)
  %tx = getelementptr inbounds %struct.nvec_chip, ptr %dev, i32 0, i32 16
  %46 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tx, align 4
  %data76 = getelementptr inbounds %struct.nvec_msg, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %data76 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %data76, align 4
  %pos79 = getelementptr inbounds %struct.nvec_msg, ptr %47, i32 0, i32 3
  %50 = ptrtoint ptr %pos79 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %pos79, align 4
  br label %sw.epilog

if.then83:                                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #9
  %conv84 = trunc i32 %received.0 to i8
  %rx85 = getelementptr inbounds %struct.nvec_chip, ptr %dev, i32 0, i32 15
  %51 = ptrtoint ptr %rx85 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rx85, align 4
  %arrayidx87 = getelementptr %struct.nvec_msg, ptr %52, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv84, ptr %arrayidx87, align 1
  %54 = load ptr, ptr %rx85, align 4
  %pos89 = getelementptr inbounds %struct.nvec_msg, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %pos89 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 2, ptr %pos89, align 4
  %56 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 4, ptr %state1, align 4
  br label %sw.epilog

if.else91:                                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.87, i32 noundef %5, i32 noundef 2) #10
  %59 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %state1, align 4
  br label %sw.epilog

sw.bb94:                                          ; preds = %if.end36
  %and95 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.else98, label %if.then97

if.then97:                                        ; preds = %sw.bb94
  %tx.i = getelementptr inbounds %struct.nvec_chip, ptr %dev, i32 0, i32 16
  %60 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tx.i, align 4
  %pos.i = getelementptr inbounds %struct.nvec_msg, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %pos.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %pos.i, align 4
  %size.i = getelementptr inbounds %struct.nvec_msg, ptr %61, i32 0, i32 2
  %64 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %size.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %63, i16 %65)
  %cmp.not.i = icmp eq i16 %63, %65
  br i1 %cmp.not.i, label %if.else.i, label %do.end.i367

do.end.i367:                                      ; preds = %if.then97
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.93) #10
  %68 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tx.i, align 4
  %pos5.i = getelementptr inbounds %struct.nvec_msg, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %pos5.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %pos5.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvec_gpio_set_value.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvec_interrupt, %if.then.i.i)) #7
          to label %nvec_gpio_set_value.exit.i [label %if.then.i.i], !srcloc !233

if.then.i.i:                                      ; preds = %do.end.i367
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 4
  %gpiod.i.i = getelementptr inbounds %struct.nvec_chip, ptr %dev, i32 0, i32 1
  %73 = ptrtoint ptr %gpiod.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %gpiod.i.i, align 4
  %call3.i.i = tail call i32 @gpiod_get_value(ptr noundef %74) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nvec_gpio_set_value.__UNIQUE_ID_ddebug187, ptr noundef %72, ptr noundef nonnull @.str.60, i32 noundef %call3.i.i, i32 noundef 0) #7
  br label %nvec_gpio_set_value.exit.i

nvec_gpio_set_value.exit.i:                       ; preds = %if.then.i.i, %do.end.i367
  %gpiod4.i.i = getelementptr inbounds %struct.nvec_chip, ptr %dev, i32 0, i32 1
  %75 = ptrtoint ptr %gpiod4.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %gpiod4.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %76, i32 noundef 0) #7
  br label %sw.epilog

if.else.i:                                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %state1, align 4
  br label %sw.epilog

if.else98:                                        ; preds = %sw.bb94
  %cmp15.not = xor i1 %cmp15, true
  %and102 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  %or.cond360 = select i1 %cmp15.not, i1 %tobool103.not, i1 false
  br i1 %or.cond360, label %if.else105, label %if.then104

if.then104:                                       ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.87, i32 noundef %5, i32 noundef 3) #10
  %80 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %state1, align 4
  br label %sw.epilog

if.else105:                                       ; preds = %if.else98
  %tx106 = getelementptr inbounds %struct.nvec_chip, ptr %dev, i32 0, i32 16
  %81 = ptrtoint ptr %tx106 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tx106, align 4
  %tobool107.not = icmp eq ptr %82, null
  br i1 %tobool107.not, label %if.else105.cond.end140_crit_edge, label %land.lhs.true108

if.else105.cond.end140_crit_edge:                 ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end140

land.lhs.true108:                                 ; preds = %if.else105
  %pos110 = getelementptr inbounds %struct.nvec_msg, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %pos110 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %pos110, align 4
  %size = getelementptr inbounds %struct.nvec_msg, ptr %82, i32 0, i32 2
  %85 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %size, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %84, i16 %86)
  %cmp114 = icmp ult i16 %84, %86
  br i1 %cmp114, label %if.then116, label %cond.true135

if.then116:                                       ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #9
  %conv111 = zext i16 %84 to i32
  %inc = add nuw i16 %84, 1
  %87 = ptrtoint ptr %pos110 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %inc, ptr %pos110, align 4
  %arrayidx121 = getelementptr %struct.nvec_msg, ptr %82, i32 0, i32 1, i32 %conv111
  %88 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx121, align 1
  br label %sw.epilog

cond.true135:                                     ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %pos110 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %pos110, align 4
  %conv132 = zext i16 %91 to i32
  %92 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %size, align 2
  %conv138 = zext i16 %93 to i32
  br label %cond.end140

cond.end140:                                      ; preds = %cond.true135, %if.else105.cond.end140_crit_edge
  %cond384 = phi i32 [ %conv132, %cond.true135 ], [ 0, %if.else105.cond.end140_crit_edge ]
  %cond141 = phi i32 [ %conv138, %cond.true135 ], [ 0, %if.else105.cond.end140_crit_edge ]
  %94 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.70, ptr noundef %82, i32 noundef %cond384, i32 noundef %cond141) #10
  %96 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %state1, align 4
  br label %sw.epilog

sw.bb146:                                         ; preds = %if.end36
  %and147 = and i32 %5, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and147)
  %cmp148 = icmp eq i32 %and147, 16
  br i1 %cmp148, label %if.then150, label %if.else151

if.then150:                                       ; preds = %sw.bb146
  %rx.i = getelementptr inbounds %struct.nvec_chip, ptr %dev, i32 0, i32 15
  %97 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rx.i, align 4
  %pos.i371 = getelementptr inbounds %struct.nvec_msg, ptr %98, i32 0, i32 3
  %99 = ptrtoint ptr %pos.i371 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %pos.i371, align 4
  %conv.i = zext i16 %100 to i32
  %data.i.i.i = getelementptr inbounds %struct.nvec_msg, ptr %98, i32 0, i32 1
  %101 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %102)
  %tobool.i.i.i = icmp sgt i8 %102, -1
  %103 = lshr i8 %102, 5
  %104 = and i8 %103, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %104)
  %cmp.i.i = icmp eq i8 %104, 2
  %or.cond.i.i = select i1 %tobool.i.i.i, i1 true, i1 %cmp.i.i
  br i1 %or.cond.i.i, label %if.then.i.i372, label %nvec_msg_size.exit.thread.i

if.then.i.i372:                                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool3.not.i.i = icmp eq i16 %100, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %nvec_msg_size.exit.thread68.i

lor.lhs.false4.i.i:                               ; preds = %if.then.i.i372
  %size.i.i = getelementptr inbounds %struct.nvec_msg, ptr %98, i32 0, i32 2
  %105 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %size.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %106)
  %tobool6.not.i.i = icmp eq i16 %106, 0
  br i1 %tobool6.not.i.i, label %lor.lhs.false4.i.i.if.end14.i_crit_edge, label %nvec_msg_size.exit.i

lor.lhs.false4.i.i.if.end14.i_crit_edge:          ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

nvec_msg_size.exit.i:                             ; preds = %lor.lhs.false4.i.i
  %arrayidx8.i.i = getelementptr %struct.nvec_msg, ptr %98, i32 0, i32 1, i32 1
  %107 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %108 to i32
  %add.i.i = add nuw nsw i32 %conv9.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv.i)
  %cmp.not.i373 = icmp eq i32 %add.i.i, %conv.i
  br i1 %cmp.not.i373, label %nvec_msg_size.exit.i.if.end14.i_crit_edge, label %nvec_msg_size.exit.i.cond.true.i54.i_crit_edge

nvec_msg_size.exit.i.cond.true.i54.i_crit_edge:   ; preds = %nvec_msg_size.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i54.i

nvec_msg_size.exit.i.if.end14.i_crit_edge:        ; preds = %nvec_msg_size.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

nvec_msg_size.exit.thread68.i:                    ; preds = %if.then.i.i372
  %arrayidx8.i69.i = getelementptr %struct.nvec_msg, ptr %98, i32 0, i32 1, i32 1
  %109 = ptrtoint ptr %arrayidx8.i69.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx8.i69.i, align 1
  %conv9.i70.i = zext i8 %110 to i32
  %add.i71.i = add nuw nsw i32 %conv9.i70.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i71.i, i32 %conv.i)
  %cmp.not72.i = icmp eq i32 %add.i71.i, %conv.i
  br i1 %cmp.not72.i, label %nvec_msg_size.exit.thread68.i.if.end14.i_crit_edge, label %nvec_msg_size.exit.thread68.i.cond.true.i54.i_crit_edge

nvec_msg_size.exit.thread68.i.cond.true.i54.i_crit_edge: ; preds = %nvec_msg_size.exit.thread68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i54.i

nvec_msg_size.exit.thread68.i.if.end14.i_crit_edge: ; preds = %nvec_msg_size.exit.thread68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

nvec_msg_size.exit.thread.i:                      ; preds = %if.then150
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %104)
  %switch.selectcmp.i.i = icmp eq i8 %104, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 3, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %switch.selectcmp26.i.i = icmp eq i8 %104, 0
  %switch.select27.i.i = select i1 %switch.selectcmp26.i.i, i32 2, i32 %switch.select.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.select27.i.i, i32 %conv.i)
  %cmp.not64.i = icmp eq i32 %switch.select27.i.i, %conv.i
  br i1 %cmp.not64.i, label %nvec_msg_size.exit.thread.i.if.end14.i_crit_edge, label %nvec_msg_size.exit.thread.i.nvec_msg_size.exit61.i_crit_edge

nvec_msg_size.exit.thread.i.nvec_msg_size.exit61.i_crit_edge: ; preds = %nvec_msg_size.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvec_msg_size.exit61.i

nvec_msg_size.exit.thread.i.if.end14.i_crit_edge: ; preds = %nvec_msg_size.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

cond.true.i54.i:                                  ; preds = %nvec_msg_size.exit.thread68.i.cond.true.i54.i_crit_edge, %nvec_msg_size.exit.i.cond.true.i54.i_crit_edge
  %arrayidx8.i51.i = getelementptr %struct.nvec_msg, ptr %98, i32 0, i32 1, i32 1
  %111 = ptrtoint ptr %arrayidx8.i51.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx8.i51.i, align 1
  %conv9.i52.i = zext i8 %112 to i32
  %add.i53.i = add nuw nsw i32 %conv9.i52.i, 2
  br label %nvec_msg_size.exit61.i

nvec_msg_size.exit61.i:                           ; preds = %cond.true.i54.i, %nvec_msg_size.exit.thread.i.nvec_msg_size.exit61.i_crit_edge
  %retval.0.i60.i = phi i32 [ %add.i53.i, %cond.true.i54.i ], [ %switch.select27.i.i, %nvec_msg_size.exit.thread.i.nvec_msg_size.exit61.i_crit_edge ]
  %113 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.95, i32 noundef %retval.0.i60.i, i32 noundef %conv.i) #10
  %115 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rx.i, align 4
  %used.i.i = getelementptr inbounds %struct.nvec_msg, ptr %116, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %used.i.i, i32 noundef 4) #7
  %117 = ptrtoint ptr %used.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile i32 0, ptr %used.i.i, align 4
  %118 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %state1, align 4
  %119 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rx.i, align 4
  %data.i = getelementptr inbounds %struct.nvec_msg, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %122)
  %cmp11.i = icmp eq i8 %122, 2
  br i1 %cmp11.i, label %if.then13.i, label %nvec_msg_size.exit61.i.sw.epilog_crit_edge

nvec_msg_size.exit61.i.sw.epilog_crit_edge:       ; preds = %nvec_msg_size.exit61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then13.i:                                      ; preds = %nvec_msg_size.exit61.i
  call void @__sanitizer_cov_trace_pc() #9
  %ec_transfer.i = getelementptr inbounds %struct.nvec_chip, ptr %dev, i32 0, i32 18
  tail call void @complete(ptr noundef %ec_transfer.i) #7
  br label %sw.epilog

if.end14.i:                                       ; preds = %nvec_msg_size.exit.thread.i.if.end14.i_crit_edge, %nvec_msg_size.exit.thread68.i.if.end14.i_crit_edge, %nvec_msg_size.exit.i.if.end14.i_crit_edge, %lor.lhs.false4.i.i.if.end14.i_crit_edge
  %rx_lock.i = getelementptr inbounds %struct.nvec_chip, ptr %dev, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %rx_lock.i) #7
  %123 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rx.i, align 4
  %rx_data.i = getelementptr inbounds %struct.nvec_chip, ptr %dev, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.nvec_chip, ptr %dev, i32 0, i32 8, i32 1
  %125 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i375 = tail call zeroext i1 @__list_add_valid(ptr noundef %124, ptr noundef %126, ptr noundef %rx_data.i) #7
  br i1 %call.i.i.i375, label %if.end.i.i.i, label %if.end14.i.list_add_tail.exit.i_crit_edge

if.end14.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %127 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %124, ptr %prev.i.i, align 4
  %128 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %rx_data.i, ptr %124, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %124, i32 0, i32 1
  %129 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %126, ptr %prev3.i.i.i, align 4
  %130 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %124, ptr %126, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end14.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rx_lock.i) #7
  %131 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %state1, align 4
  %132 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rx.i, align 4
  %data.i.i = getelementptr inbounds %struct.nvec_msg, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool.i.i = icmp slt i8 %135, 0
  br i1 %tobool.i.i, label %list_add_tail.exit.i.if.end22.i_crit_edge, label %if.then20.i

list_add_tail.exit.i.if.end22.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then20.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %ec_transfer21.i = getelementptr inbounds %struct.nvec_chip, ptr %dev, i32 0, i32 18
  tail call void @complete(ptr noundef %ec_transfer21.i) #7
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %list_add_tail.exit.i.if.end22.i_crit_edge
  %rx_work.i = getelementptr inbounds %struct.nvec_chip, ptr %dev, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %136 = load ptr, ptr @system_wq, align 4
  %call.i.i62.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %136, ptr noundef %rx_work.i) #7
  br label %sw.epilog

if.else151:                                       ; preds = %sw.bb146
  %and152 = and i32 %5, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %if.else155, label %if.then154

if.then154:                                       ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #9
  %137 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.87, i32 noundef %5, i32 noundef 4) #10
  %139 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %state1, align 4
  br label %sw.epilog

if.else155:                                       ; preds = %if.else151
  %rx156 = getelementptr inbounds %struct.nvec_chip, ptr %dev, i32 0, i32 15
  %140 = ptrtoint ptr %rx156 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %rx156, align 4
  %tobool157.not = icmp eq ptr %141, null
  br i1 %tobool157.not, label %if.else155.cond.end186_crit_edge, label %land.lhs.true158

if.else155.cond.end186_crit_edge:                 ; preds = %if.else155
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end186

land.lhs.true158:                                 ; preds = %if.else155
  %pos160 = getelementptr inbounds %struct.nvec_msg, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %pos160 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %pos160, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %143)
  %cmp162 = icmp ult i16 %143, 34
  br i1 %cmp162, label %if.then164, label %cond.true181

if.then164:                                       ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #9
  %conv161 = zext i16 %143 to i32
  %conv165 = trunc i32 %received.0 to i8
  %inc170 = add nuw nsw i16 %143, 1
  %144 = ptrtoint ptr %pos160 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %inc170, ptr %pos160, align 4
  %arrayidx172 = getelementptr %struct.nvec_msg, ptr %141, i32 0, i32 1, i32 %conv161
  %145 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv165, ptr %arrayidx172, align 1
  br label %sw.epilog

cond.true181:                                     ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #9
  %146 = ptrtoint ptr %pos160 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %pos160, align 4
  %conv184 = zext i16 %147 to i32
  br label %cond.end186

cond.end186:                                      ; preds = %cond.true181, %if.else155.cond.end186_crit_edge
  %cond187 = phi i32 [ %conv184, %cond.true181 ], [ 0, %if.else155.cond.end186_crit_edge ]
  %148 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.73, ptr noundef %141, i32 noundef %cond187, i32 noundef 34) #10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %150 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %state1, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end186, %if.then164, %if.then154, %if.end22.i, %if.then13.i, %nvec_msg_size.exit61.i.sw.epilog_crit_edge, %cond.end140, %if.then116, %if.then104, %if.else.i, %nvec_gpio_set_value.exit.i, %if.else91, %if.then83, %if.end73, %do.end70, %if.end52, %if.then50, %if.then43, %if.then39, %sw.bb.thread
  %to_send.0 = phi i8 [ -1, %sw.default ], [ -1, %if.then154 ], [ -1, %if.then164 ], [ -1, %cond.end186 ], [ -1, %if.then104 ], [ %89, %if.then116 ], [ -1, %cond.end140 ], [ -1, %do.end70 ], [ %49, %if.end73 ], [ -1, %if.then83 ], [ -1, %if.else91 ], [ -1, %if.then43 ], [ -1, %if.then50 ], [ -1, %if.end52 ], [ -1, %if.then39 ], [ -1, %sw.bb.thread ], [ -1, %nvec_gpio_set_value.exit.i ], [ -1, %if.else.i ], [ -1, %nvec_msg_size.exit61.i.sw.epilog_crit_edge ], [ -1, %if.then13.i ], [ -1, %if.end22.i ]
  %and192 = and i32 %5, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and192)
  %cmp193 = icmp eq i32 %and192, 4
  br i1 %cmp193, label %if.then195, label %sw.epilog.if.end206_crit_edge

sw.epilog.if.end206_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end206

if.then195:                                       ; preds = %sw.epilog
  %i2c_addr = getelementptr inbounds %struct.nvec_chip, ptr %dev, i32 0, i32 3
  %151 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %i2c_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %received.0, i32 %152)
  %cmp196.not = icmp eq i32 %received.0, %152
  br i1 %cmp196.not, label %if.then195.if.end204_crit_edge, label %do.end201

if.then195.if.end204_crit_edge:                   ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end204

do.end201:                                        ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #9
  %153 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %154, ptr noundef nonnull @.str.76, i32 noundef %received.0, i32 noundef %152) #10
  br label %if.end204

if.end204:                                        ; preds = %do.end201, %if.then195.if.end204_crit_edge
  %155 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 1, ptr %state1, align 4
  br label %if.end206

if.end206:                                        ; preds = %if.end204, %sw.epilog.if.end206_crit_edge
  %and207 = and i32 %5, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and207)
  %cmp208 = icmp eq i32 %and207, 2
  br i1 %cmp208, label %do.body211, label %if.end206.if.end217_crit_edge

if.end206.if.end217_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end217

do.body211:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !241
  tail call void @arm_heavy_mb() #7
  %conv214 = zext i8 %to_send.0 to i32
  %156 = shl nuw i32 %conv214, 24
  %157 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %base, align 4
  %add.ptr216 = getelementptr i8, ptr %158, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr216, i32 %156) #7, !srcloc !239
  br label %if.end217

if.end217:                                        ; preds = %do.body211, %if.end206.if.end217_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 234881024, i32 %4)
  %cmp218 = icmp eq i32 %4, 234881024
  br i1 %cmp218, label %if.then220, label %if.end217.do.body222_crit_edge

if.end217.do.body222_crit_edge:                   ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body222

if.then220:                                       ; preds = %if.end217
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvec_gpio_set_value.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvec_interrupt, %if.then.i378)) #7
          to label %nvec_gpio_set_value.exit [label %if.then.i378], !srcloc !233

if.then.i378:                                     ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #9
  %159 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dev, align 4
  %gpiod.i = getelementptr inbounds %struct.nvec_chip, ptr %dev, i32 0, i32 1
  %161 = ptrtoint ptr %gpiod.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %gpiod.i, align 4
  %call3.i = tail call i32 @gpiod_get_value(ptr noundef %162) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nvec_gpio_set_value.__UNIQUE_ID_ddebug187, ptr noundef %160, ptr noundef nonnull @.str.60, i32 noundef %call3.i, i32 noundef 1) #7
  br label %nvec_gpio_set_value.exit

nvec_gpio_set_value.exit:                         ; preds = %if.then.i378, %if.then220
  %gpiod4.i = getelementptr inbounds %struct.nvec_chip, ptr %dev, i32 0, i32 1
  %163 = ptrtoint ptr %gpiod4.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %gpiod4.i, align 4
  tail call void @gpiod_set_value(ptr noundef %164, i32 noundef 1) #7
  br label %do.body222

do.body222:                                       ; preds = %nvec_gpio_set_value.exit, %if.end217.do.body222_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvec_interrupt.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvec_interrupt, %if.then232)) #7
          to label %do.end253 [label %if.then232], !srcloc !233

if.then232:                                       ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #9
  %165 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev, align 4
  %cond237 = select i1 %cmp15, ptr @.str.79, ptr @.str.80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and207)
  %tobool239.not = icmp eq i32 %and207, 0
  %cond240 = select i1 %tobool239.not, ptr @.str.82, ptr @.str.81
  %conv241 = zext i8 %to_send.0 to i32
  %and242 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and242)
  %tobool243.not = icmp eq i32 %and242, 0
  %cond244 = select i1 %tobool243.not, ptr @.str.84, ptr @.str.83
  %and245 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and245)
  %tobool246.not = icmp eq i32 %and245, 0
  %cond247 = select i1 %tobool246.not, ptr @.str.84, ptr @.str.85
  %cond250 = select i1 %cmp15, ptr @.str.84, ptr @.str.86
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nvec_interrupt.__UNIQUE_ID_ddebug192, ptr noundef %166, ptr noundef nonnull @.str.78, ptr noundef nonnull %cond237, i32 noundef %received.0, ptr noundef nonnull %cond240, i32 noundef %conv241, i32 noundef %1, ptr noundef nonnull %cond244, ptr noundef nonnull %cond247, ptr noundef nonnull %cond250) #7
  br label %do.end253

do.end253:                                        ; preds = %if.then232, %do.body222
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %167(i32 noundef 21474800) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end253, %do.end11, %do.end
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_init_i2c_slave(ptr nocapture noundef readonly %nvec) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_clk = getelementptr inbounds %struct.nvec_chip, ptr %nvec, i32 0, i32 5
  %0 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %1) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %rst = getelementptr inbounds %struct.nvec_chip, ptr %nvec, i32 0, i32 6
  %2 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 429496) #7
  %5 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rst, align 4
  %call3 = tail call i32 @reset_control_deassert(ptr noundef %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !242
  tail call void @arm_heavy_mb() #7
  %base = getelementptr inbounds %struct.nvec_chip, ptr %nvec, i32 0, i32 4
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 2883584) #7, !srcloc !239
  %9 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_clk, align 4
  %call5 = tail call i32 @clk_set_rate(ptr noundef %10, i32 noundef 640000) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !243
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %12, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 67108864) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %14, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 503316480) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  tail call void @arm_heavy_mb() #7
  %i2c_addr = getelementptr inbounds %struct.nvec_chip, ptr %nvec, i32 0, i32 3
  %15 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i2c_addr, align 4
  %shr = lshr i32 %16, 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %shr)
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %19, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %17) #7, !srcloc !239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !246
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr25 = getelementptr i8, ptr %21, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 0) #7, !srcloc !239
  %irq = getelementptr inbounds %struct.nvec_chip, ptr %nvec, i32 0, i32 2
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %23) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvec_status_notifier(ptr nocapture noundef readonly %nb, i32 noundef %event_type, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %event_type)
  %cmp.not = icmp eq i32 %event_type, 7
  br i1 %cmp.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %nb, i32 -92
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.97, i32 noundef 7) #10
  %arrayidx = getelementptr i8, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv, 2
  tail call void @print_hex_dump(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.99, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %data, i32 noundef %add, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvec_power_off() #0 align 64 {
entry:
  %global_events.i = alloca [3 x i8], align 1
  %ap_pwr_down = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ap_pwr_down) #7
  %0 = ptrtoint ptr %ap_pwr_down to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1025, ptr %ap_pwr_down, align 2
  %1 = load ptr, ptr @nvec_power_handle, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %global_events.i) #7
  %2 = getelementptr inbounds [3 x i8], ptr %global_events.i, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %global_events.i, i32 0, i32 2
  %4 = ptrtoint ptr %global_events.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %global_events.i, align 1
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %2, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %3, align 1
  %call.i = call i32 @nvec_write_async(ptr noundef %1, ptr noundef nonnull %global_events.i, i16 noundef signext 3) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %global_events.i) #7
  %7 = load ptr, ptr @nvec_power_handle, align 4
  %call = call i32 @nvec_write_async(ptr noundef %7, ptr noundef nonnull %ap_pwr_down, i16 noundef signext 2)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ap_pwr_down) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvec_tx_set(ptr noundef %nvec) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_lock = getelementptr inbounds %struct.nvec_chip, ptr %nvec, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %tx_lock) #7
  %tx_data = getelementptr inbounds %struct.nvec_chip, ptr %nvec, i32 0, i32 9
  %0 = ptrtoint ptr %tx_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %tx_data, align 4
  %cmp.i.not = icmp eq ptr %1, %tx_data
  br i1 %cmp.i.not, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %nvec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nvec, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.89) #10
  %tx_scratch = getelementptr inbounds %struct.nvec_chip, ptr %nvec, i32 0, i32 17
  %data = getelementptr inbounds %struct.nvec_chip, ptr %nvec, i32 0, i32 17, i32 1
  %4 = call ptr @memcpy(ptr %data, ptr @.str.91, i32 3)
  %size = getelementptr inbounds %struct.nvec_chip, ptr %nvec, i32 0, i32 17, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 3, ptr %size, align 2
  %pos = getelementptr inbounds %struct.nvec_chip, ptr %nvec, i32 0, i32 17, i32 3
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %pos, align 4
  %tx = getelementptr inbounds %struct.nvec_chip, ptr %nvec, i32 0, i32 16
  %7 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tx_scratch, ptr %tx, align 4
  %prev.i = getelementptr inbounds %struct.nvec_chip, ptr %nvec, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %tx_scratch, ptr noundef %9, ptr noundef %tx_data) #7
  br i1 %call.i.i, label %if.end.i.i, label %do.end.if.end_crit_edge

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tx_scratch, ptr %prev.i, align 4
  %11 = ptrtoint ptr %tx_scratch to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %tx_data, ptr %tx_scratch, align 4
  %prev3.i.i = getelementptr inbounds %struct.nvec_chip, ptr %nvec, i32 0, i32 17, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %tx_scratch, ptr %9, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tx7 = getelementptr inbounds %struct.nvec_chip, ptr %nvec, i32 0, i32 16
  %14 = ptrtoint ptr %tx7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %tx7, align 4
  %pos9 = getelementptr inbounds %struct.nvec_msg, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %pos9 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %pos9, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i.i, %do.end.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_lock) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvec_tx_set.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvec_tx_set, %if.then17)) #7
          to label %do.end25 [label %if.then17], !srcloc !233

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %nvec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nvec, align 4
  %tx19 = getelementptr inbounds %struct.nvec_chip, ptr %nvec, i32 0, i32 16
  %18 = ptrtoint ptr %tx19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx19, align 4
  %size20 = getelementptr inbounds %struct.nvec_msg, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %size20 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %size20, align 2
  %conv = zext i16 %21 to i32
  %arrayidx = getelementptr %struct.nvec_msg, ptr %19, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  %conv23 = zext i8 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nvec_tx_set.__UNIQUE_ID_ddebug191, ptr noundef %17, ptr noundef nonnull @.str.92, i32 noundef %conv, i32 noundef %conv23) #7
  br label %do.end25

do.end25:                                         ; preds = %if.then17, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvec_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %global_events.i = alloca [3 x i8], align 1
  %msg = alloca ptr, align 4
  %ap_suspend = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg) #7
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %msg, align 4, !annotation !234
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ap_suspend) #7
  %3 = ptrtoint ptr %ap_suspend to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1026, ptr %ap_suspend, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvec_suspend.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvec_suspend, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !233

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nvec_suspend.__UNIQUE_ID_ddebug193, ptr noundef %5, ptr noundef nonnull @.str.105) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %global_events.i) #7
  %6 = getelementptr inbounds [3 x i8], ptr %global_events.i, i32 0, i32 1
  %7 = getelementptr inbounds [3 x i8], ptr %global_events.i, i32 0, i32 2
  %8 = ptrtoint ptr %global_events.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %global_events.i, align 1
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %6, align 1
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %7, align 1
  %call.i = call i32 @nvec_write_async(ptr noundef %1, ptr noundef nonnull %global_events.i, i16 noundef signext 3) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %global_events.i) #7
  %call5 = call i32 @nvec_write_sync(ptr noundef %1, ptr noundef nonnull %ap_suspend, i16 noundef signext 2, ptr noundef nonnull %msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %do.end.if.end8_crit_edge

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %msg, align 4
  %used.i = getelementptr inbounds %struct.nvec_msg, ptr %12, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %used.i, i32 noundef 4) #7
  %13 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %used.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.end.if.end8_crit_edge
  %irq.i = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %15) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !247
  tail call void @arm_heavy_mb() #7
  %base.i = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 100663296) #7, !srcloc !239
  %i2c_clk.i = getelementptr inbounds %struct.nvec_chip, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %i2c_clk.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_clk.i, align 4
  tail call void @clk_disable(ptr noundef %19) #7
  tail call void @clk_unprepare(ptr noundef %19) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ap_suspend) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvec_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %global_events.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvec_resume.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvec_resume, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !233

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nvec_resume.__UNIQUE_ID_ddebug194, ptr noundef %3, ptr noundef nonnull @.str.107) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @tegra_init_i2c_slave(ptr noundef %1)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %global_events.i) #7
  %4 = getelementptr inbounds [3 x i8], ptr %global_events.i, i32 0, i32 1
  %5 = getelementptr inbounds [3 x i8], ptr %global_events.i, i32 0, i32 2
  %6 = ptrtoint ptr %global_events.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %global_events.i, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %4, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %5, align 1
  %call.i = call i32 @nvec_write_async(ptr noundef %1, ptr noundef nonnull %global_events.i, i16 noundef signext 3) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %global_events.i) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !22, !23, !25, !27, !28, !30, !32, !34, !36, !37, !39, !40, !41, !42, !43, !44, !45, !47, !49, !50, !51, !52, !54, !56, !57, !58, !60, !62, !63, !64, !66, !68, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !175, !177, !179, !180, !182, !183, !184, !185, !187, !188, !189, !190, !192, !193, !194, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !216, !217, !219, !220}
!llvm.module.flags = !{!221, !222, !223, !224, !225, !226, !227, !228}
!llvm.ident = !{!229}

!0 = !{ptr @__ksymtab_nvec_register_notifier, !1, !"__ksymtab_nvec_register_notifier", i1 false, i1 false}
!1 = !{!"../drivers/staging/nvec/nvec.c", i32 113, i32 1}
!2 = !{ptr @__ksymtab_nvec_unregister_notifier, !3, !"__ksymtab_nvec_unregister_notifier", i1 false, i1 false}
!3 = !{!"../drivers/staging/nvec/nvec.c", i32 127, i32 1}
!4 = !{ptr @__ksymtab_nvec_msg_free, !5, !"__ksymtab_nvec_msg_free", i1 false, i1 false}
!5 = !{!"../drivers/staging/nvec/nvec.c", i32 197, i32 1}
!6 = !{ptr @__ksymtab_nvec_write_async, !7, !"__ksymtab_nvec_write_async", i1 false, i1 false}
!7 = !{!"../drivers/staging/nvec/nvec.c", i32 278, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/nvec/nvec.c", i32 311, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @nvec_write_sync.__UNIQUE_ID_ddebug188, !9, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/nvec/nvec.c", i32 315, i32 3}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @nvec_write_sync._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @nvec_write_sync._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/nvec/nvec.c", i32 321, i32 2}
!22 = !{ptr @nvec_write_sync.__UNIQUE_ID_ddebug189, !21, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!23 = !{ptr @__ksymtab_nvec_write_sync, !24, !"__ksymtab_nvec_write_sync", i1 false, i1 false}
!24 = !{!"../drivers/staging/nvec/nvec.c", i32 329, i32 1}
!25 = !{ptr @__initcall__kmod_nvec__195_953_nvec_device_driver_init6, !26, !"__initcall__kmod_nvec__195_953_nvec_device_driver_init6", i1 false, i1 false}
!26 = !{!"../drivers/staging/nvec/nvec.c", i32 953, i32 1}
!27 = !{ptr @__exitcall_nvec_device_driver_exit, !26, !"__exitcall_nvec_device_driver_exit", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_alias196, !29, !"__UNIQUE_ID_alias196", i1 false, i1 false}
!29 = !{!"../drivers/staging/nvec/nvec.c", i32 955, i32 1}
!30 = !{ptr @__UNIQUE_ID_description197, !31, !"__UNIQUE_ID_description197", i1 false, i1 false}
!31 = !{!"../drivers/staging/nvec/nvec.c", i32 956, i32 1}
!32 = !{ptr @__UNIQUE_ID_author198, !33, !"__UNIQUE_ID_author198", i1 false, i1 false}
!33 = !{!"../drivers/staging/nvec/nvec.c", i32 957, i32 1}
!34 = !{ptr @__UNIQUE_ID_file199, !35, !"__UNIQUE_ID_file199", i1 false, i1 false}
!35 = !{!"../drivers/staging/nvec/nvec.c", i32 958, i32 1}
!36 = !{ptr @__UNIQUE_ID_license200, !35, !"__UNIQUE_ID_license200", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/nvec/nvec.c", i32 178, i32 2}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @nvec_msg_alloc._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @nvec_msg_alloc._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @nvec_device_driver, !46, !"nvec_device_driver", i1 false, i1 false}
!46 = !{!"../drivers/staging/nvec/nvec.c", i32 943, i32 31}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/nvec/nvec.c", i32 777, i32 3}
!49 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @tegra_nvec_probe._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @tegra_nvec_probe._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/nvec/nvec.c", i32 788, i32 41}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/nvec/nvec.c", i32 789, i32 3}
!56 = !{ptr @tegra_nvec_probe._entry.16, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @tegra_nvec_probe._entry_ptr.18, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/nvec/nvec.c", i32 801, i32 30}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/nvec/nvec.c", i32 803, i32 3}
!62 = !{ptr @tegra_nvec_probe._entry.20, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @tegra_nvec_probe._entry_ptr.22, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/nvec/nvec.c", i32 807, i32 52}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/nvec/nvec.c", i32 809, i32 3}
!68 = !{ptr @tegra_nvec_probe._entry.24, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @tegra_nvec_probe._entry_ptr.26, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @tegra_nvec_probe.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/staging/nvec/nvec.c", i32 817, i32 2}
!72 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @tegra_nvec_probe.__key.28, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/staging/nvec/nvec.c", i32 821, i32 2}
!75 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @tegra_nvec_probe.__key.30, !77, !"__key", i1 false, i1 false}
!77 = !{!"../drivers/staging/nvec/nvec.c", i32 822, i32 2}
!78 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @tegra_nvec_probe.__key.32, !80, !"__key", i1 false, i1 false}
!80 = !{!"../drivers/staging/nvec/nvec.c", i32 823, i32 2}
!81 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @tegra_nvec_probe.__key.34, !83, !"__key", i1 false, i1 false}
!83 = !{!"../drivers/staging/nvec/nvec.c", i32 826, i32 2}
!84 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @tegra_nvec_probe.__key.36, !86, !"__key", i1 false, i1 false}
!86 = !{!"../drivers/staging/nvec/nvec.c", i32 827, i32 2}
!87 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/nvec/nvec.c", i32 829, i32 36}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/nvec/nvec.c", i32 831, i32 3}
!92 = !{ptr @tegra_nvec_probe._entry.39, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @tegra_nvec_probe._entry_ptr.41, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/nvec/nvec.c", i32 838, i32 3}
!96 = !{ptr @tegra_nvec_probe._entry.42, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @tegra_nvec_probe._entry_ptr.44, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/staging/nvec/nvec.c", i32 858, i32 3}
!100 = !{ptr @tegra_nvec_probe._entry.45, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @tegra_nvec_probe._entry_ptr.47, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/nvec/nvec.c", i32 869, i32 3}
!104 = !{ptr @tegra_nvec_probe._entry.48, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @tegra_nvec_probe._entry_ptr.50, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @init_completion.__key, !107, !"__key", i1 false, i1 false}
!107 = !{!"../include/linux/completion.h", i32 87, i32 2}
!108 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/staging/nvec/nvec.c", i32 452, i32 4}
!111 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @nvec_dispatch.__UNIQUE_ID_ddebug190, !110, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/staging/nvec/nvec.c", i32 416, i32 3}
!115 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @parse_msg._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @parse_msg._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/nvec/nvec.c", i32 421, i32 32}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/staging/nvec/nvec.c", i32 390, i32 4}
!122 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @nvec_request_master._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @nvec_request_master._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/staging/nvec/nvec.c", i32 238, i32 2}
!127 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @nvec_gpio_set_value.__UNIQUE_ID_ddebug187, !126, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/staging/nvec/nvec.c", i32 590, i32 3}
!131 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @nvec_interrupt._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @nvec_interrupt._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/staging/nvec/nvec.c", i32 594, i32 3}
!136 = !{ptr @nvec_interrupt._entry.63, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @nvec_interrupt._entry_ptr.65, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/staging/nvec/nvec.c", i32 632, i32 5}
!140 = !{ptr @nvec_interrupt._entry.66, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @nvec_interrupt._entry_ptr.68, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/staging/nvec/nvec.c", i32 658, i32 4}
!144 = !{ptr @nvec_interrupt._entry.69, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @nvec_interrupt._entry_ptr.71, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/staging/nvec/nvec.c", i32 674, i32 4}
!148 = !{ptr @nvec_interrupt._entry.72, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @nvec_interrupt._entry_ptr.74, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.76, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/staging/nvec/nvec.c", i32 686, i32 4}
!152 = !{ptr @nvec_interrupt._entry.75, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @nvec_interrupt._entry_ptr.77, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.78, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/staging/nvec/nvec.c", i32 700, i32 2}
!156 = !{ptr @nvec_interrupt.__UNIQUE_ID_ddebug192, !155, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!157 = !{ptr @.str.79, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.80, !155, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.81, !155, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.82, !155, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.83, !155, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.84, !155, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.85, !155, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.86, !155, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.87, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/staging/nvec/nvec.c", i32 533, i32 2}
!167 = !{ptr @.str.88, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @nvec_invalid_flags._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @nvec_invalid_flags._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.89, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/staging/nvec/nvec.c", i32 551, i32 3}
!172 = !{ptr @.str.90, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @nvec_tx_set._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @nvec_tx_set._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.91, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/staging/nvec/nvec.c", i32 552, i32 33}
!177 = !{ptr @.str.92, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/staging/nvec/nvec.c", i32 564, i32 2}
!179 = !{ptr @nvec_tx_set.__UNIQUE_ID_ddebug191, !178, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!180 = !{ptr @.str.93, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/staging/nvec/nvec.c", i32 475, i32 3}
!182 = !{ptr @.str.94, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @nvec_tx_completed._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @nvec_tx_completed._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.95, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/staging/nvec/nvec.c", i32 492, i32 3}
!187 = !{ptr @.str.96, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @nvec_rx_completed._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @nvec_rx_completed._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.97, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/staging/nvec/nvec.c", i32 145, i32 2}
!192 = !{ptr @.str.98, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @nvec_status_notifier._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @nvec_status_notifier._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.99, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/staging/nvec/nvec.c", i32 146, i32 31}
!197 = !{ptr @nvec_power_handle, !198, !"nvec_power_handle", i1 false, i1 false}
!198 = !{!"../drivers/staging/nvec/nvec.c", i32 76, i32 26}
!199 = !{ptr @.str.100, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/staging/nvec/nvec.c", i32 80, i32 11}
!201 = !{ptr @.str.101, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/staging/nvec/nvec.c", i32 83, i32 11}
!203 = !{ptr @.str.102, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/staging/nvec/nvec.c", i32 86, i32 11}
!205 = !{ptr @.str.103, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/staging/nvec/nvec.c", i32 94, i32 11}
!207 = !{ptr @nvec_devices, !208, !"nvec_devices", i1 false, i1 false}
!208 = !{!"../drivers/staging/nvec/nvec.c", i32 78, i32 30}
!209 = !{ptr @nvidia_nvec_of_match, !210, !"nvidia_nvec_of_match", i1 false, i1 false}
!210 = !{!"../drivers/staging/nvec/nvec.c", i32 937, i32 34}
!211 = !{ptr @nvec_pm_ops, !212, !"nvec_pm_ops", i1 false, i1 false}
!212 = !{!"../drivers/staging/nvec/nvec.c", i32 934, i32 8}
!213 = !{ptr @.str.104, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/staging/nvec/nvec.c", i32 908, i32 2}
!215 = !{ptr @.str.105, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @nvec_suspend.__UNIQUE_ID_ddebug193, !214, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!217 = !{ptr @.str.106, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/staging/nvec/nvec.c", i32 926, i32 2}
!219 = !{ptr @.str.107, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @nvec_resume.__UNIQUE_ID_ddebug194, !218, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!221 = !{i32 1, !"wchar_size", i32 2}
!222 = !{i32 1, !"min_enum_size", i32 4}
!223 = !{i32 8, !"branch-target-enforcement", i32 0}
!224 = !{i32 8, !"sign-return-address", i32 0}
!225 = !{i32 8, !"sign-return-address-all", i32 0}
!226 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!227 = !{i32 7, !"uwtable", i32 1}
!228 = !{i32 7, !"frame-pointer", i32 2}
!229 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!230 = !{i64 2148493265}
!231 = !{i64 740193, i64 740210, i64 740234, i64 740260, i64 740278}
!232 = !{i64 2148493635}
!233 = !{i64 2148715240, i64 2148715245, i64 2148715258, i64 2148715302, i64 2148715336, i64 2148715357}
!234 = !{!"auto-init"}
!235 = !{i64 4709635}
!236 = !{i64 2153265616}
!237 = !{i64 2153269390}
!238 = !{i64 2153269689}
!239 = !{i64 4709217}
!240 = !{!"branch_weights", i32 1, i32 2000}
!241 = !{i64 2153283996}
!242 = !{i64 2153289794}
!243 = !{i64 2153290294}
!244 = !{i64 2153290761}
!245 = !{i64 2153291174}
!246 = !{i64 2153291614}
!247 = !{i64 2153292220}
