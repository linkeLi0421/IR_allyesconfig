; ModuleID = '/llk/IR_all_yes/drivers/mailbox/mtk-cmdq-mailbox.c_pt.bc'
source_filename = "../drivers/mailbox/mtk-cmdq-mailbox.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cmdq_get_shift_pa\22, \22a\22\09"
module asm "\09.weak\09__crc_cmdq_get_shift_pa\09\09\09\09"
module asm "\09.long\09__crc_cmdq_get_shift_pa\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cmdq_get_shift_pa:\09\09\09\09\09"
module asm "\09.asciz \09\22cmdq_get_shift_pa\22\09\09\09\09\09"
module asm "__kstrtabns_cmdq_get_shift_pa:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.gce_plat = type { i32, i8, i8, i32 }
%struct.cmdq = type { %struct.mbox_controller, ptr, i32, i32, i32, ptr, [2 x %struct.clk_bulk_data], i8, i8, i8, i32 }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.cmdq_thread = type { ptr, ptr, %struct.list_head, i32 }
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.cmdq_cb_data = type { i32, ptr, ptr }
%struct.cmdq_pkt = type { ptr, i32, i32, i32, %struct.cmdq_task_cb, %struct.cmdq_task_cb, ptr }
%struct.cmdq_task_cb = type { ptr, ptr }
%struct.cmdq_task = type { ptr, %struct.list_head, i32, ptr, ptr }

@__kstrtab_cmdq_get_shift_pa = external dso_local constant [0 x i8], align 1
@__kstrtabns_cmdq_get_shift_pa = external dso_local constant [0 x i8], align 1
@__ksymtab_cmdq_get_shift_pa = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cmdq_get_shift_pa to i32), ptr @__kstrtab_cmdq_get_shift_pa, ptr @__kstrtabns_cmdq_get_shift_pa }, section "___ksymtab+cmdq_get_shift_pa", align 4
@cmdq_drv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cmdq_probe, ptr @cmdq_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cmdq_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cmdq_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_mtk_cmdq_mailbox__236_703_cmdq_drv_init4 = internal global ptr @cmdq_drv_init, section ".initcall4.init", align 4
@__exitcall_cmdq_drv_exit = internal global ptr @cmdq_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file237 = internal constant [55 x i8] c"mtk_cmdq_mailbox.file=drivers/mailbox/mtk-cmdq-mailbox\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [32 x i8] c"mtk_cmdq_mailbox.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mtk_cmdq\00", [23 x i8] zeroinitializer }, align 32
@cmdq_of_ids = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-gce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gce_plat_v2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-gce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gce_plat_v3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6779-gce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gce_plat_v4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-gce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gce_plat_v5 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8195-gce\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gce_plat_v6 }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@cmdq_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cmdq_suspend, ptr @cmdq_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gce\00", [28 x i8] zeroinitializer }, align 32
@cmdq_probe.clk_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.2, ptr @.str.3], [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gce0\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gce1\00", [27 x i8] zeroinitializer }, align 32
@cmdq_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 550, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get match data\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cmdq_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/mailbox/mtk-cmdq-mailbox.c\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cmdq_probe._entry_ptr = internal global ptr @cmdq_probe._entry, section ".printk_index", align 4
@cmdq_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 562, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to register ISR (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@cmdq_probe._entry_ptr.11 = internal global ptr @cmdq_probe._entry.9, section ".printk_index", align 4
@cmdq_probe.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.5, ptr @.str.6, ptr @.str.13, i8 0, i8 -115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk_cmdq_mailbox\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cmdq device: addr:0x%p, va:0x%p, irq:%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get gce clk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get gce clk\0A\00", [41 x i8] zeroinitializer }, align 32
@cmdq_mbox_chan_ops = internal constant { %struct.mbox_chan_ops, [40 x i8] } { %struct.mbox_chan_ops { ptr @cmdq_mbox_send_data, ptr @cmdq_mbox_flush, ptr @cmdq_mbox_startup, ptr @cmdq_mbox_shutdown, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cmdq_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 621, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register mailbox: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@cmdq_probe._entry_ptr.18 = internal global ptr @cmdq_probe._entry.16, section ".printk_index", align 4
@cmdq_task_handle_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.6, i32 215, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"task 0x%p error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cmdq_task_handle_error\00", [41 x i8] zeroinitializer }, align 32
@cmdq_task_handle_error._entry_ptr = internal global ptr @cmdq_task_handle_error._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cmdq_thread_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.6, i32 114, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"suspend GCE thread 0x%x failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cmdq_thread_suspend\00", [44 x i8] zeroinitializer }, align 32
@cmdq_thread_suspend._entry_ptr = internal global ptr @cmdq_thread_suspend._entry, section ".printk_index", align 4
@cmdq_thread_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.6, i32 148, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"reset GCE thread 0x%x failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cmdq_thread_reset\00", [46 x i8] zeroinitializer }, align 32
@cmdq_thread_reset._entry_ptr = internal global ptr @cmdq_thread_reset._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cmdq_mbox_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.6, i32 494, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Fail to wait GCE thread 0x%x done\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cmdq_mbox_flush\00", [16 x i8] zeroinitializer }, align 32
@cmdq_mbox_flush._entry_ptr = internal global ptr @cmdq_mbox_flush._entry, section ".printk_index", align 4
@gce_plat_v2 = internal constant { %struct.gce_plat, [20 x i8] } { %struct.gce_plat { i32 16, i8 0, i8 0, i32 1 }, [20 x i8] zeroinitializer }, align 32
@gce_plat_v3 = internal constant { %struct.gce_plat, [20 x i8] } { %struct.gce_plat { i32 24, i8 0, i8 0, i32 1 }, [20 x i8] zeroinitializer }, align 32
@gce_plat_v4 = internal constant { %struct.gce_plat, [20 x i8] } { %struct.gce_plat { i32 24, i8 3, i8 0, i32 1 }, [20 x i8] zeroinitializer }, align 32
@gce_plat_v5 = internal constant { %struct.gce_plat, [20 x i8] } { %struct.gce_plat { i32 24, i8 3, i8 1, i32 1 }, [20 x i8] zeroinitializer }, align 32
@gce_plat_v6 = internal constant { %struct.gce_plat, [20 x i8] } { %struct.gce_plat { i32 24, i8 3, i8 1, i32 2 }, [20 x i8] zeroinitializer }, align 32
@cmdq_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.6, i32 317, ptr @.str.29, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"exist running task(s) in suspend\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cmdq_suspend\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cmdq_suspend._entry_ptr = internal global ptr @cmdq_suspend._entry, section ".printk_index", align 4
@___asan_gen_.30 = private unnamed_addr constant [9 x i8] c"cmdq_drv\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 683, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 687, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"cmdq_of_ids\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 674, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [12 x i8] c"cmdq_pm_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 634, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 533, i32 39 }
@___asan_gen_.45 = private unnamed_addr constant [10 x i8] c"clk_names\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 534, i32 28 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 534, i32 44 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 534, i32 52 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 550, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 562, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 566, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 579, i32 13 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 589, i32 11 }
@___asan_gen_.90 = private unnamed_addr constant [19 x i8] c"cmdq_mbox_chan_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 501, i32 35 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 621, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 215, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 113, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 147, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 493, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [12 x i8] c"gce_plat_v2\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 639, i32 30 }
@___asan_gen_.138 = private unnamed_addr constant [12 x i8] c"gce_plat_v3\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 646, i32 30 }
@___asan_gen_.141 = private unnamed_addr constant [12 x i8] c"gce_plat_v4\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 653, i32 30 }
@___asan_gen_.144 = private unnamed_addr constant [12 x i8] c"gce_plat_v5\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 660, i32 30 }
@___asan_gen_.147 = private unnamed_addr constant [12 x i8] c"gce_plat_v6\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 667, i32 30 }
@___asan_gen_.150 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.160 = private constant [38 x i8] c"../drivers/mailbox/mtk-cmdq-mailbox.c\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 317, i32 3 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_cmdq_drv_exit, ptr @__initcall__kmod_mtk_cmdq_mailbox__236_703_cmdq_drv_init4, ptr @__ksymtab_cmdq_get_shift_pa, ptr @cmdq_drv_exit, ptr @cmdq_mbox_flush._entry, ptr @cmdq_mbox_flush._entry_ptr, ptr @cmdq_probe._entry, ptr @cmdq_probe._entry.16, ptr @cmdq_probe._entry.9, ptr @cmdq_probe._entry_ptr, ptr @cmdq_probe._entry_ptr.11, ptr @cmdq_probe._entry_ptr.18, ptr @cmdq_suspend._entry, ptr @cmdq_suspend._entry_ptr, ptr @cmdq_task_handle_error._entry, ptr @cmdq_task_handle_error._entry_ptr, ptr @cmdq_thread_reset._entry, ptr @cmdq_thread_reset._entry_ptr, ptr @cmdq_thread_suspend._entry, ptr @cmdq_thread_suspend._entry_ptr, ptr @cmdq_drv, ptr @.str, ptr @cmdq_of_ids, ptr @cmdq_pm_ops, ptr @.str.1, ptr @cmdq_probe.clk_names, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @cmdq_mbox_chan_ops, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @gce_plat_v2, ptr @gce_plat_v3, ptr @gce_plat_v4, ptr @gce_plat_v5, ptr @gce_plat_v6, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdq_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdq_of_ids to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdq_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdq_probe.clk_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdq_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdq_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdq_mbox_chan_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdq_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdq_task_handle_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdq_thread_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdq_thread_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdq_mbox_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gce_plat_v2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gce_plat_v3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gce_plat_v4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gce_plat_v5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gce_plat_v6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdq_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @cmdq_get_shift_pa(ptr nocapture noundef readonly %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %shift_pa = getelementptr inbounds %struct.cmdq, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %shift_pa to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shift_pa, align 1
  ret i8 %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cmdq_drv_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @cmdq_drv) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cmdq_drv_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cmdq_drv, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmdq_probe(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 136, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #10
  %base = getelementptr inbounds %struct.cmdq, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %base, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  %irq = getelementptr inbounds %struct.cmdq, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call9, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %call14 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #10
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #13
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %5 = ptrtoint ptr %call14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call14, align 4
  %thread_nr18 = getelementptr inbounds %struct.cmdq, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %thread_nr18 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %thread_nr18, align 8
  %shift = getelementptr inbounds %struct.gce_plat, ptr %call14, i32 0, i32 1
  %8 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shift, align 4
  %shift_pa = getelementptr inbounds %struct.cmdq, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %shift_pa to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %shift_pa, align 1
  %control_by_sw = getelementptr inbounds %struct.gce_plat, ptr %call14, i32 0, i32 2
  %11 = ptrtoint ptr %control_by_sw to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %control_by_sw, align 1, !range !98
  %control_by_sw20 = getelementptr inbounds %struct.cmdq, ptr %call.i, i32 0, i32 9
  %13 = ptrtoint ptr %control_by_sw20 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %control_by_sw20, align 2
  %gce_num = getelementptr inbounds %struct.gce_plat, ptr %call14, i32 0, i32 3
  %14 = ptrtoint ptr %gce_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gce_num, align 4
  %gce_num21 = getelementptr inbounds %struct.cmdq, ptr %call.i, i32 0, i32 10
  %16 = ptrtoint ptr %gce_num21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %gce_num21, align 8
  %sub23 = sub i32 32, %6
  %shr = lshr i32 -1, %sub23
  %irq_mask = getelementptr inbounds %struct.cmdq, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr, ptr %irq_mask, align 4
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %call.i279 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %19, ptr noundef nonnull @cmdq_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i279)
  %cmp26 = icmp slt i32 %call.i279, 0
  br i1 %cmp26, label %do.end30, label %do.body32

do.end30:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call.i279) #13
  br label %cleanup

do.body32:                                        ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmdq_probe.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmdq_probe, %if.then38)) #10
          to label %do.end43 [label %if.then38], !srcloc !99

if.then38:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 8
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmdq_probe.__UNIQUE_ID_ddebug235, ptr noundef %dev1, ptr noundef nonnull @.str.13, ptr noundef %dev1, ptr noundef %21, i32 noundef %23) #10
  br label %do.end43

do.end43:                                         ; preds = %if.then38, %do.body32
  %24 = ptrtoint ptr %gce_num21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gce_num21, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp45 = icmp ugt i32 %25, 1
  br i1 %cmp45, label %if.then46, label %if.else

if.then46:                                        ; preds = %do.end43
  %parent = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent, align 4
  %call47 = tail call ptr @of_get_next_child(ptr noundef %27, ptr noundef null) #10
  %cmp48.not295 = icmp eq ptr %call47, null
  br i1 %cmp48.not295, label %if.then46.if.end91_crit_edge, label %if.then46.for.body_crit_edge

if.then46.for.body_crit_edge:                     ; preds = %if.then46
  br label %for.body

if.then46.if.end91_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then46.for.body_crit_edge
  %node.0296 = phi ptr [ %call71, %for.inc.for.body_crit_edge ], [ %call47, %if.then46.for.body_crit_edge ]
  %call49 = tail call i32 @of_alias_get_id(ptr noundef nonnull %node.0296, ptr noundef nonnull @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call49)
  %cmp50 = icmp sgt i32 %call49, -1
  br i1 %cmp50, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %28 = ptrtoint ptr %gce_num21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %gce_num21, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call49, i32 %29)
  %cmp52 = icmp ult i32 %call49, %29
  br i1 %cmp52, label %if.then53, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then53:                                        ; preds = %land.lhs.true
  %arrayidx = getelementptr [2 x ptr], ptr @cmdq_probe.clk_names, i32 0, i32 %call49
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %arrayidx54 = getelementptr %struct.cmdq, ptr %call.i, i32 0, i32 6, i32 %call49
  %32 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %arrayidx54, align 4
  %call55 = tail call ptr @of_clk_get(ptr noundef nonnull %node.0296, i32 noundef 0) #10
  %clk = getelementptr %struct.cmdq, ptr %call.i, i32 0, i32 6, i32 %call49, i32 1
  %33 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call55, ptr %clk, align 4
  %cmp.i280 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i280, label %if.then62, label %if.then53.for.inc_crit_edge

if.then53.for.inc_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then62:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @of_node_put(ptr noundef nonnull %node.0296) #10
  %34 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk, align 4
  %36 = ptrtoint ptr %35 to i32
  %call67 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %36, ptr noundef nonnull @.str.14, i32 noundef %call49) #10
  br label %cleanup

for.inc:                                          ; preds = %if.then53.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %37 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent, align 4
  %call71 = tail call ptr @of_get_next_child(ptr noundef %38, ptr noundef nonnull %node.0296) #10
  %cmp48.not = icmp eq ptr %call71, null
  br i1 %cmp48.not, label %for.inc.if.end91_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.end91_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.else:                                          ; preds = %do.end43
  %clocks72 = getelementptr inbounds %struct.cmdq, ptr %call.i, i32 0, i32 6
  %39 = ptrtoint ptr %clocks72 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.1, ptr %clocks72, align 4
  %call76 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  %clk79 = getelementptr inbounds %struct.cmdq, ptr %call.i, i32 0, i32 6, i32 0, i32 1
  %40 = ptrtoint ptr %clk79 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call76, ptr %clk79, align 4
  %cmp.i281 = icmp ugt ptr %call76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i281, label %if.then84, label %if.else.if.end91_crit_edge

if.else.if.end91_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then84:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %call76 to i32
  %call89 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %41, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end91:                                         ; preds = %if.else.if.end91_crit_edge, %for.inc.if.end91_crit_edge, %if.then46.if.end91_crit_edge
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %dev1, ptr %call.i, align 8
  %43 = ptrtoint ptr %thread_nr18 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %thread_nr18, align 8
  %45 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %44, i32 208) #10
  %46 = extractvalue { i32, i1 } %45, 1
  br i1 %46, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !100

devm_kcalloc.exit.thread:                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  %chans289 = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 2
  %47 = ptrtoint ptr %chans289 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %chans289, align 8
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end91
  %48 = extractvalue { i32, i1 } %45, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %48, i32 noundef 3520) #10
  %chans = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 2
  %49 = ptrtoint ptr %chans to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call5.i.i, ptr %chans, align 8
  %tobool98.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool98.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end100

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end100:                                        ; preds = %devm_kcalloc.exit
  %50 = ptrtoint ptr %thread_nr18 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %thread_nr18, align 8
  %num_chans = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 3
  %52 = ptrtoint ptr %num_chans to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %num_chans, align 4
  %ops = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 1
  %53 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @cmdq_mbox_chan_ops, ptr %ops, align 4
  %of_xlate = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 7
  %54 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @cmdq_xlate, ptr %of_xlate, align 8
  %txdone_irq = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 4
  %55 = ptrtoint ptr %txdone_irq to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %txdone_irq, align 8
  %txdone_poll = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 5
  %56 = ptrtoint ptr %txdone_poll to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %txdone_poll, align 1
  %57 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %51, i32 20) #10
  %58 = extractvalue { i32, i1 } %57, 1
  br i1 %58, label %devm_kcalloc.exit285.thread, label %devm_kcalloc.exit285, !prof !100

devm_kcalloc.exit285.thread:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  %thread292 = getelementptr inbounds %struct.cmdq, ptr %call.i, i32 0, i32 5
  %59 = ptrtoint ptr %thread292 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %thread292, align 8
  br label %cleanup

devm_kcalloc.exit285:                             ; preds = %if.end100
  %60 = extractvalue { i32, i1 } %57, 0
  %call5.i.i282 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %60, i32 noundef 3520) #10
  %thread = getelementptr inbounds %struct.cmdq, ptr %call.i, i32 0, i32 5
  %61 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call5.i.i282, ptr %thread, align 8
  %tobool110.not = icmp eq ptr %call5.i.i282, null
  br i1 %tobool110.not, label %devm_kcalloc.exit285.cleanup_crit_edge, label %for.cond113.preheader

devm_kcalloc.exit285.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit285
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond113.preheader:                            ; preds = %devm_kcalloc.exit285
  %62 = ptrtoint ptr %thread_nr18 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %thread_nr18, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp115298.not = icmp eq i32 %63, 0
  br i1 %cmp115298.not, label %for.cond113.preheader.for.end130_crit_edge, label %for.cond113.preheader.for.body116_crit_edge

for.cond113.preheader.for.body116_crit_edge:      ; preds = %for.cond113.preheader
  br label %for.body116

for.cond113.preheader.for.end130_crit_edge:       ; preds = %for.cond113.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end130

for.body116:                                      ; preds = %for.body116.for.body116_crit_edge, %for.cond113.preheader.for.body116_crit_edge
  %i.0299 = phi i32 [ %inc, %for.body116.for.body116_crit_edge ], [ 0, %for.cond113.preheader.for.body116_crit_edge ]
  %64 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %65, i32 256
  %mul = shl i32 %i.0299, 7
  %add.ptr118 = getelementptr i8, ptr %add.ptr, i32 %mul
  %66 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %thread, align 8
  %base121 = getelementptr %struct.cmdq_thread, ptr %67, i32 %i.0299, i32 1
  %68 = ptrtoint ptr %base121 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr118, ptr %base121, align 4
  %69 = load ptr, ptr %thread, align 8
  %task_busy_list = getelementptr %struct.cmdq_thread, ptr %69, i32 %i.0299, i32 2
  %70 = ptrtoint ptr %task_busy_list to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %task_busy_list, ptr %task_busy_list, align 4
  %prev.i = getelementptr %struct.cmdq_thread, ptr %69, i32 %i.0299, i32 2, i32 1
  %71 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %task_busy_list, ptr %prev.i, align 4
  %72 = load ptr, ptr %thread, align 8
  %arrayidx125 = getelementptr %struct.cmdq_thread, ptr %72, i32 %i.0299
  %73 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %chans, align 8
  %con_priv = getelementptr %struct.mbox_chan, ptr %74, i32 %i.0299, i32 9
  %75 = ptrtoint ptr %con_priv to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %arrayidx125, ptr %con_priv, align 4
  %inc = add nuw i32 %i.0299, 1
  %76 = ptrtoint ptr %thread_nr18 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %thread_nr18, align 8
  %cmp115 = icmp ult i32 %inc, %77
  br i1 %cmp115, label %for.body116.for.body116_crit_edge, label %for.body116.for.end130_crit_edge

for.body116.for.end130_crit_edge:                 ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end130

for.body116.for.body116_crit_edge:                ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body116

for.end130:                                       ; preds = %for.body116.for.end130_crit_edge, %for.cond113.preheader.for.end130_crit_edge
  %call132 = tail call i32 @devm_mbox_controller_register(ptr noundef %dev1, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %cmp133 = icmp slt i32 %call132, 0
  br i1 %cmp133, label %do.end137, label %if.end138

do.end137:                                        ; preds = %for.end130
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %call132) #13
  br label %cleanup

if.end138:                                        ; preds = %for.end130
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %78 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %79 = ptrtoint ptr %gce_num21 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %gce_num21, align 8
  %clocks140 = getelementptr inbounds %struct.cmdq, ptr %call.i, i32 0, i32 6
  %call141 = tail call i32 @clk_bulk_prepare(i32 noundef %80, ptr noundef %clocks140) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end138.if.end164_crit_edge, label %do.end158, !prof !101

if.end138.if.end164_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

do.end158:                                        ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 627, i32 noundef 9, ptr noundef null) #10
  br label %if.end164

if.end164:                                        ; preds = %do.end158, %if.end138.if.end164_crit_edge
  %81 = ptrtoint ptr %gce_num21 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %gce_num21, align 8
  %call.i286 = tail call i32 @clk_bulk_enable(i32 noundef %82, ptr noundef %clocks140) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i286)
  %tobool.not.i = icmp eq i32 %call.i286, 0
  br i1 %tobool.not.i, label %if.end164.if.end.i_crit_edge, label %do.end.i, !prof !101

if.end164.if.end.i_crit_edge:                     ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 130, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end164.if.end.i_crit_edge
  %83 = ptrtoint ptr %control_by_sw20 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %control_by_sw20, align 2, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool20.not.i = icmp eq i8 %84, 0
  br i1 %tobool20.not.i, label %if.end.i.do.body26.i_crit_edge, label %do.body22.i

if.end.i.do.body26.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body26.i

do.body22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !102
  tail call void @arm_heavy_mb() #10
  %85 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base, align 8
  %add.ptr.i = getelementptr i8, ptr %86, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 117440512) #10, !srcloc !103
  br label %do.body26.i

do.body26.i:                                      ; preds = %do.body22.i, %if.end.i.do.body26.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  tail call void @arm_heavy_mb() #10
  %87 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base, align 8
  %add.ptr30.i = getelementptr i8, ptr %88, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 3276800) #10, !srcloc !103
  br label %do.body31.i

do.body31.i:                                      ; preds = %do.body31.i.do.body31.i_crit_edge, %do.body26.i
  %i.049.i = phi i32 [ 0, %do.body26.i ], [ %inc.i, %do.body31.i.do.body31.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %89 = tail call i32 @llvm.bswap.i32(i32 %i.049.i) #10
  %90 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base, align 8
  %add.ptr35.i = getelementptr i8, ptr %91, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %89) #10, !srcloc !103
  %inc.i = add nuw nsw i32 %i.049.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %cmdq_init.exit, label %do.body31.i.do.body31.i_crit_edge

do.body31.i.do.body31.i_crit_edge:                ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body31.i

cmdq_init.exit:                                   ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %gce_num21 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %gce_num21, align 8
  tail call void @clk_bulk_disable(i32 noundef %93, ptr noundef %clocks140) #10
  br label %cleanup

cleanup:                                          ; preds = %cmdq_init.exit, %do.end137, %devm_kcalloc.exit285.cleanup_crit_edge, %devm_kcalloc.exit285.thread, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.then84, %if.then62, %do.end30, %do.end, %if.end8.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then5 ], [ %call.i279, %do.end30 ], [ %call67, %if.then62 ], [ %call132, %do.end137 ], [ 0, %cmdq_init.exit ], [ %call89, %if.then84 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit285.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit285.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmdq_remove(ptr nocapture noundef readonly %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gce_num = getelementptr inbounds %struct.cmdq, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %gce_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gce_num, align 8
  %clocks = getelementptr inbounds %struct.cmdq, ptr %1, i32 0, i32 6
  tail call void @clk_bulk_unprepare(i32 noundef %3, ptr noundef %clocks) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmdq_irq_handler(i32 noundef %irq, ptr noundef %dev) #4 align 64 {
entry:
  %irq_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_status) #10
  %base = getelementptr inbounds %struct.cmdq, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !106
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !107
  %irq_mask = getelementptr inbounds %struct.cmdq, ptr %dev, i32 0, i32 4
  %4 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_mask, align 4
  %and = and i32 %5, %3
  %6 = ptrtoint ptr %irq_status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %irq_status, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %5)
  %tobool.not = icmp eq i32 %and, %5
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %thread_nr = getelementptr inbounds %struct.cmdq, ptr %dev, i32 0, i32 3
  %7 = ptrtoint ptr %thread_nr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %thread_nr, align 8
  %call3 = call i32 @_find_next_zero_bit_be(ptr noundef nonnull %irq_status, i32 noundef %8, i32 noundef 0) #10
  %9 = ptrtoint ptr %thread_nr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %thread_nr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %10)
  %cmp31 = icmp ult i32 %call3, %10
  br i1 %cmp31, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %thread5 = getelementptr inbounds %struct.cmdq, ptr %dev, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %bit.032 = phi i32 [ %call3, %for.body.lr.ph ], [ %call16, %for.body.for.body_crit_edge ]
  %11 = ptrtoint ptr %thread5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %thread5, align 8
  %arrayidx = getelementptr %struct.cmdq_thread, ptr %12, i32 %bit.032
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %lock = getelementptr inbounds %struct.mbox_chan, ptr %14, i32 0, i32 8
  %call10 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  call fastcc void @cmdq_thread_irq_handler(ptr noundef %dev, ptr noundef %arrayidx)
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %lock14 = getelementptr inbounds %struct.mbox_chan, ptr %16, i32 0, i32 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock14, i32 noundef %call10) #10
  %17 = ptrtoint ptr %thread_nr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %thread_nr, align 8
  %add = add nuw i32 %bit.032, 1
  %call16 = call i32 @_find_next_zero_bit_be(ptr noundef nonnull %irq_status, i32 noundef %18, i32 noundef %add) #10
  %19 = ptrtoint ptr %thread_nr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %thread_nr, align 8
  %cmp = icmp ult i32 %call16, %20
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_status) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @cmdq_xlate(ptr nocapture noundef readonly %mbox, ptr nocapture noundef readonly %sp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %sp, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %num_chans = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 3
  %2 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_chans, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp slt i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %chans = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 2
  %4 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chans, align 8
  %con_priv = getelementptr %struct.mbox_chan, ptr %5, i32 %1, i32 9
  %6 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %con_priv, align 4
  %arrayidx3 = getelementptr %struct.of_phandle_args, ptr %sp, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3, align 4
  %priority = getelementptr inbounds %struct.cmdq_thread, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %priority, align 4
  %11 = load ptr, ptr %chans, align 8
  %arrayidx5 = getelementptr %struct.mbox_chan, ptr %11, i32 %1
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx5, ptr %7, align 4
  %13 = load ptr, ptr %chans, align 8
  %arrayidx7 = getelementptr %struct.mbox_chan, ptr %13, i32 %1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx7, %if.end ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mbox_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cmdq_thread_irq_handler(ptr noundef %cmdq, ptr noundef %thread) unnamed_addr #4 align 64 {
entry:
  %data.i102 = alloca %struct.cmdq_cb_data, align 4
  %data.i = alloca %struct.cmdq_cb_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.cmdq_thread, ptr %thread, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !106
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !109
  tail call void @arm_heavy_mb() #10
  %neg = xor i32 %3, -1
  %4 = tail call i32 @llvm.bswap.i32(i32 %neg)
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %4) #10, !srcloc !103
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #10, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !110
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and12 = and i32 %3, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %11 = and i32 %3, 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %if.end.cleanup_crit_edge, label %if.end20

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr24 = getelementptr i8, ptr %14, i32 32
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #10, !srcloc !106
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !111
  %shift_pa = getelementptr inbounds %struct.cmdq, ptr %cmdq, i32 0, i32 8
  %17 = ptrtoint ptr %shift_pa to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %shift_pa, align 1
  %conv = zext i8 %18 to i32
  %shl = shl i32 %16, %conv
  %task_busy_list = getelementptr inbounds %struct.cmdq_thread, ptr %thread, i32 0, i32 2
  %19 = ptrtoint ptr %task_busy_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task_busy_list, align 4
  %21 = getelementptr inbounds %struct.cmdq_cb_data, ptr %data.i102, i32 0, i32 1
  %22 = getelementptr inbounds %struct.cmdq_cb_data, ptr %data.i102, i32 0, i32 2
  %23 = getelementptr inbounds %struct.cmdq_cb_data, ptr %data.i, i32 0, i32 1
  %24 = getelementptr inbounds %struct.cmdq_cb_data, ptr %data.i, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %if.end52.for.cond_crit_edge, %if.end20
  %.pn.in = phi ptr [ %20, %if.end20 ], [ %.pn, %if.end52.for.cond_crit_edge ]
  %task.0 = getelementptr i8, ptr %.pn.in, i32 -4
  %25 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn.in, %task_busy_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %pa_base = getelementptr i8, ptr %.pn.in, i32 8
  %26 = ptrtoint ptr %pa_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pa_base, align 4
  %pkt = getelementptr i8, ptr %.pn.in, i32 16
  %28 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pkt, align 4
  %cmd_buf_size = getelementptr inbounds %struct.cmdq_pkt, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %cmd_buf_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cmd_buf_size, align 4
  %add = add i32 %31, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %27)
  %cmp38.not = icmp uge i32 %shl, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %add)
  %cmp40 = icmp ult i32 %shl, %add
  %or.cond = select i1 %cmp38.not, i1 %cmp40, i1 false
  %curr_task.1 = select i1 %or.cond, ptr %task.0, ptr null
  %tobool44.not = icmp eq ptr %curr_task.1, null
  %sub = add i32 %add, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %sub)
  %cmp45 = icmp eq i32 %shl, %sub
  %or.cond100 = select i1 %tobool44.not, i1 true, i1 %cmp45
  br i1 %or.cond100, label %if.then47, label %if.else48

if.then47:                                        ; preds = %for.body
  %32 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pkt, align 4
  %async_cb.i = getelementptr inbounds %struct.cmdq_pkt, ptr %33, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data.i) #10
  %34 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %data.i, align 4
  %data2.i = getelementptr inbounds %struct.cmdq_pkt, ptr %33, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data2.i, align 4
  %37 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %23, align 4
  %38 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %33, ptr %24, align 4
  %39 = ptrtoint ptr %async_cb.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %async_cb.i, align 4
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %if.then47.if.end.i_crit_edge, label %if.then.i

if.then47.if.end.i_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.fca.1.load.i = load i32, ptr %23, align 4
  %.fca.1.insert.i = insertvalue [3 x i32] [i32 0, i32 poison, i32 poison], i32 %.fca.1.load.i, 1
  %42 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.fca.2.load.i = load i32, ptr %24, align 4
  %.fca.2.insert.i = insertvalue [3 x i32] %.fca.1.insert.i, i32 %.fca.2.load.i, 2
  call void %40([3 x i32] %.fca.2.insert.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then47.if.end.i_crit_edge
  %thread.i = getelementptr i8, ptr %.pn.in, i32 12
  %43 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %thread.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  call void @mbox_chan_received_data(ptr noundef %46, ptr noundef nonnull %data.i) #10
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.cmdq_task_exec_done.exit_crit_edge

if.end.i.cmdq_task_exec_done.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cmdq_task_exec_done.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr i8, ptr %.pn.in, i32 4
  %47 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i.i, align 4
  %49 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %cmdq_task_exec_done.exit

cmdq_task_exec_done.exit:                         ; preds = %if.end.i.i.i, %if.end.i.cmdq_task_exec_done.exit_crit_edge
  %53 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in, i32 4
  %54 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data.i) #10
  br label %if.end52.sink.split

if.else48:                                        ; preds = %for.body
  br i1 %tobool13.not, label %if.else48.if.end52_crit_edge, label %if.then50

if.else48.if.end52_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then50:                                        ; preds = %if.else48
  %55 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pkt, align 4
  %async_cb.i104 = getelementptr inbounds %struct.cmdq_pkt, ptr %56, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data.i102) #10
  %57 = ptrtoint ptr %data.i102 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -8, ptr %data.i102, align 4
  %data2.i105 = getelementptr inbounds %struct.cmdq_pkt, ptr %56, i32 0, i32 5, i32 1
  %58 = ptrtoint ptr %data2.i105 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data2.i105, align 4
  %60 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %21, align 4
  %61 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %56, ptr %22, align 4
  %62 = ptrtoint ptr %async_cb.i104 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %async_cb.i104, align 4
  %tobool.not.i106 = icmp eq ptr %63, null
  br i1 %tobool.not.i106, label %if.then50.if.end.i115_crit_edge, label %if.then.i111

if.then50.if.end.i115_crit_edge:                  ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i115

if.then.i111:                                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.fca.1.load.i107 = load i32, ptr %21, align 4
  %.fca.1.insert.i108 = insertvalue [3 x i32] [i32 -8, i32 poison, i32 poison], i32 %.fca.1.load.i107, 1
  %65 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.fca.2.load.i109 = load i32, ptr %22, align 4
  %.fca.2.insert.i110 = insertvalue [3 x i32] %.fca.1.insert.i108, i32 %.fca.2.load.i109, 2
  call void %63([3 x i32] %.fca.2.insert.i110) #10
  br label %if.end.i115

if.end.i115:                                      ; preds = %if.then.i111, %if.then50.if.end.i115_crit_edge
  %thread.i112 = getelementptr i8, ptr %.pn.in, i32 12
  %66 = ptrtoint ptr %thread.i112 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %thread.i112, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  call void @mbox_chan_received_data(ptr noundef %69, ptr noundef nonnull %data.i102) #10
  %call.i.i.i114 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #10
  br i1 %call.i.i.i114, label %if.end.i.i.i118, label %if.end.i115.cmdq_task_exec_done.exit120_crit_edge

if.end.i115.cmdq_task_exec_done.exit120_crit_edge: ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #12
  br label %cmdq_task_exec_done.exit120

if.end.i.i.i118:                                  ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i116 = getelementptr i8, ptr %.pn.in, i32 4
  %70 = ptrtoint ptr %prev.i.i.i116 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i.i.i116, align 4
  %72 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i.i117 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev1.i.i.i.i117, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %73, ptr %71, align 4
  br label %cmdq_task_exec_done.exit120

cmdq_task_exec_done.exit120:                      ; preds = %if.end.i.i.i118, %if.end.i115.cmdq_task_exec_done.exit120_crit_edge
  %76 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in, align 4
  %prev.i.i119 = getelementptr i8, ptr %.pn.in, i32 4
  %77 = ptrtoint ptr %prev.i.i119 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i119, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data.i102) #10
  %thread1.i = getelementptr inbounds %struct.cmdq_task, ptr %curr_task.1, i32 0, i32 3
  %78 = ptrtoint ptr %thread1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %thread1.i, align 4
  %80 = ptrtoint ptr %curr_task.1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %curr_task.1, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.19, ptr noundef nonnull %curr_task.1) #13
  %call.i = call fastcc i32 @cmdq_thread_suspend(ptr noundef %81, ptr noundef %79) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end12.i, label %cmdq_task_exec_done.exit120.if.end.i121_crit_edge, !prof !100

cmdq_task_exec_done.exit120.if.end.i121_crit_edge: ; preds = %cmdq_task_exec_done.exit120
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i121

do.end12.i:                                       ; preds = %cmdq_task_exec_done.exit120
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 216, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i121

if.end.i121:                                      ; preds = %do.end12.i, %cmdq_task_exec_done.exit120.if.end.i121_crit_edge
  %task_busy_list.i = getelementptr inbounds %struct.cmdq_thread, ptr %79, i32 0, i32 2
  %84 = ptrtoint ptr %task_busy_list.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %task_busy_list.i, align 4
  %cmp29.not.i = icmp eq ptr %85, %task_busy_list.i
  %add.ptr.i = getelementptr i8, ptr %85, i32 -4
  %tobool31.not49.i = icmp eq ptr %add.ptr.i, null
  %tobool31.not.i = or i1 %cmp29.not.i, %tobool31.not49.i
  br i1 %tobool31.not.i, label %if.end.i121.cmdq_task_handle_error.exit_crit_edge, label %do.body33.i

if.end.i121.cmdq_task_handle_error.exit_crit_edge: ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #12
  br label %cmdq_task_handle_error.exit

do.body33.i:                                      ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !112
  call void @arm_heavy_mb() #10
  %pa_base.i = getelementptr i8, ptr %85, i32 8
  %86 = ptrtoint ptr %pa_base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pa_base.i, align 4
  %shift_pa.i = getelementptr inbounds %struct.cmdq, ptr %81, i32 0, i32 8
  %88 = ptrtoint ptr %shift_pa.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %shift_pa.i, align 1
  %conv.i = zext i8 %89 to i32
  %shr.i = lshr i32 %87, %conv.i
  %90 = call i32 @llvm.bswap.i32(i32 %shr.i) #10
  %base.i = getelementptr inbounds %struct.cmdq_thread, ptr %79, i32 0, i32 1
  %91 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %92, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %90) #10, !srcloc !103
  br label %cmdq_task_handle_error.exit

cmdq_task_handle_error.exit:                      ; preds = %do.body33.i, %if.end.i121.cmdq_task_handle_error.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !113
  call void @arm_heavy_mb() #10
  %base.i.i = getelementptr inbounds %struct.cmdq_thread, ptr %79, i32 0, i32 1
  %93 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %94, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !103
  br label %if.end52.sink.split

if.end52.sink.split:                              ; preds = %cmdq_task_handle_error.exit, %cmdq_task_exec_done.exit
  call void @kfree(ptr noundef %task.0) #10
  br label %if.end52

if.end52:                                         ; preds = %if.end52.sink.split, %if.else48.if.end52_crit_edge
  br i1 %tobool44.not, label %if.end52.for.cond_crit_edge, label %if.end52.for.end_crit_edge

if.end52.for.end_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end52.for.cond_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end:                                          ; preds = %if.end52.for.end_crit_edge, %for.cond.for.end_crit_edge
  %95 = ptrtoint ptr %task_busy_list to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile ptr, ptr %task_busy_list, align 4
  %cmp.i122.not = icmp eq ptr %96, %task_busy_list
  br i1 %cmp.i122.not, label %if.then64, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then64:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i124 = call fastcc i32 @cmdq_thread_reset(ptr noundef %cmdq, ptr noundef %thread) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  call void @arm_heavy_mb() #10
  %97 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base, align 4
  %add.ptr.i126 = getelementptr i8, ptr %98, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 0) #10, !srcloc !103
  %gce_num = getelementptr inbounds %struct.cmdq, ptr %cmdq, i32 0, i32 10
  %99 = ptrtoint ptr %gce_num to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %gce_num, align 8
  %clocks = getelementptr inbounds %struct.cmdq, ptr %cmdq, i32 0, i32 6
  call void @clk_bulk_disable(i32 noundef %100, ptr noundef %clocks) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_received_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cmdq_thread_suspend(ptr nocapture noundef readonly %cmdq, ptr nocapture noundef readonly %thread) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !115
  tail call void @arm_heavy_mb() #10
  %base = getelementptr inbounds %struct.cmdq_thread, ptr %thread, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #10, !srcloc !103
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #10, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i64 @ktime_get() #10
  %add.i = add i64 %call4, 10000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %if.end
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #10, !srcloc !106
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !117
  %and13 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %land.lhs.true, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

land.lhs.true:                                    ; preds = %for.cond
  %call18 = tail call i64 @ktime_get() #10
  %cmp3.i = icmp sgt i64 %call18, %add.i
  br i1 %cmp3.i, label %if.then20, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr24 = getelementptr i8, ptr %11, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #10, !srcloc !106
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  br label %for.end

for.end:                                          ; preds = %if.then20, %for.cond.for.end_crit_edge
  %status.0 = phi i32 [ %13, %if.then20 ], [ %9, %for.cond.for.end_crit_edge ]
  %and37 = and i32 %status.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.end43, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end43:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %cmdq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmdq, align 8
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %base45 = getelementptr inbounds %struct.cmdq, ptr %cmdq, i32 0, i32 1
  %18 = ptrtoint ptr %base45 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base45, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %19 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.21, i32 noundef %sub.ptr.sub) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %do.end43 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cmdq_thread_reset(ptr nocapture noundef readonly %cmdq, ptr nocapture noundef readonly %thread) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !119
  tail call void @arm_heavy_mb() #10
  %base = getelementptr inbounds %struct.cmdq_thread, ptr %thread, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777216) #10, !srcloc !103
  %call = tail call i64 @ktime_get() #10
  %add.i = add i64 %call, 10000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %entry
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !120
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.cond.cleanup_crit_edge, label %land.lhs.true

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %for.cond
  %call7 = tail call i64 @ktime_get() #10
  %cmp3.i = icmp sgt i64 %call7, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !121
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %phi.cmp = icmp eq i32 %9, 0
  br i1 %phi.cmp, label %for.end.cleanup_crit_edge, label %do.end32

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end32:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %cmdq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmdq, align 8
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %base34 = getelementptr inbounds %struct.cmdq, ptr %cmdq, i32 0, i32 1
  %14 = ptrtoint ptr %base34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base34, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %15 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.23, i32 noundef %sub.ptr.sub) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %for.end.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %do.end32 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmdq_mbox_send_data(ptr nocapture noundef readonly %chan, ptr noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %suspended = getelementptr inbounds %struct.cmdq, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %suspended, align 4, !range !98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !101

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 350, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2848, i32 noundef 24) #14
  %tobool21.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool21.not, label %if.end.cleanup_crit_edge, label %if.end23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %7, ptr %call7.i.i, align 8
  %list_entry = getelementptr inbounds %struct.cmdq_task, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list_entry, ptr %list_entry, align 4
  %prev.i = getelementptr inbounds %struct.cmdq_task, ptr %call7.i.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list_entry, ptr %prev.i, align 8
  %pa_base = getelementptr inbounds %struct.cmdq_pkt, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %pa_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pa_base, align 4
  %pa_base25 = getelementptr inbounds %struct.cmdq_task, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %pa_base25 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %pa_base25, align 4
  %thread26 = getelementptr inbounds %struct.cmdq_task, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %thread26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %1, ptr %thread26, align 8
  %pkt27 = getelementptr inbounds %struct.cmdq_task, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %pkt27 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %data, ptr %pkt27, align 4
  %task_busy_list = getelementptr inbounds %struct.cmdq_thread, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %task_busy_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %task_busy_list, align 4
  %cmp.i.not = icmp eq ptr %20, %task_busy_list
  br i1 %cmp.i.not, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end23
  %gce_num = getelementptr inbounds %struct.cmdq, ptr %7, i32 0, i32 10
  %21 = ptrtoint ptr %gce_num to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gce_num, align 8
  %clocks = getelementptr inbounds %struct.cmdq, ptr %7, i32 0, i32 6
  %call32 = tail call i32 @clk_bulk_enable(i32 noundef %22, ptr noundef %clocks) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then30.if.end55_crit_edge, label %do.end49, !prof !101

if.then30.if.end55_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

do.end49:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 363, i32 noundef 9, ptr noundef null) #10
  br label %if.end55

if.end55:                                         ; preds = %do.end49, %if.then30.if.end55_crit_edge
  %call64 = tail call fastcc i32 @cmdq_thread_reset(ptr noundef %7, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp = icmp slt i32 %call64, 0
  br i1 %cmp, label %do.end80, label %if.end55.if.end86_crit_edge, !prof !100

if.end55.if.end86_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

do.end80:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 371, i32 noundef 9, ptr noundef null) #10
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %if.end55.if.end86_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %pa_base25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pa_base25, align 4
  %shift_pa = getelementptr inbounds %struct.cmdq, ptr %7, i32 0, i32 8
  %25 = ptrtoint ptr %shift_pa to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %shift_pa, align 1
  %conv = zext i8 %26 to i32
  %shr = lshr i32 %24, %conv
  %27 = tail call i32 @llvm.bswap.i32(i32 %shr)
  %base = getelementptr inbounds %struct.cmdq_thread, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %27) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  tail call void @arm_heavy_mb() #10
  %30 = ptrtoint ptr %pa_base25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pa_base25, align 4
  %cmd_buf_size = getelementptr inbounds %struct.cmdq_pkt, ptr %data, i32 0, i32 2
  %32 = ptrtoint ptr %cmd_buf_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cmd_buf_size, align 4
  %add = add i32 %33, %31
  %34 = ptrtoint ptr %shift_pa to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %shift_pa, align 1
  %conv103 = zext i8 %35 to i32
  %shr104 = lshr i32 %add, %conv103
  %36 = tail call i32 @llvm.bswap.i32(i32 %shr104)
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr106 = getelementptr i8, ptr %38, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 %36) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %priority = getelementptr inbounds %struct.cmdq_thread, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %priority, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr111 = getelementptr i8, ptr %43, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111, i32 %41) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !125
  tail call void @arm_heavy_mb() #10
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %add.ptr116 = getelementptr i8, ptr %45, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr116, i32 318767104) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !126
  tail call void @arm_heavy_mb() #10
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr121 = getelementptr i8, ptr %47, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 16777216) #10, !srcloc !103
  br label %if.end205

if.else:                                          ; preds = %if.end23
  %call123 = tail call fastcc i32 @cmdq_thread_suspend(ptr noundef %7, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %do.end141, label %if.else.if.end147_crit_edge, !prof !100

if.else.if.end147_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end147

do.end141:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 382, i32 noundef 9, ptr noundef null) #10
  br label %if.end147

if.end147:                                        ; preds = %do.end141, %if.else.if.end147_crit_edge
  %base155 = getelementptr inbounds %struct.cmdq_thread, ptr %1, i32 0, i32 1
  %48 = ptrtoint ptr %base155 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base155, align 4
  %add.ptr156 = getelementptr i8, ptr %49, i32 32
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr156) #10, !srcloc !106
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  %shift_pa160 = getelementptr inbounds %struct.cmdq, ptr %7, i32 0, i32 8
  %52 = ptrtoint ptr %shift_pa160 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %shift_pa160, align 1
  %conv161 = zext i8 %53 to i32
  %shl = shl i32 %51, %conv161
  %54 = ptrtoint ptr %base155 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base155, align 4
  %add.ptr165 = getelementptr i8, ptr %55, i32 36
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr165) #10, !srcloc !106
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  %58 = ptrtoint ptr %shift_pa160 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %shift_pa160, align 1
  %conv170 = zext i8 %59 to i32
  %shl171 = shl i32 %57, %conv170
  %sub = add i32 %shl171, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %sub)
  %cmp172 = icmp eq i32 %shl, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %shl171)
  %cmp174 = icmp eq i32 %shl, %shl171
  %or.cond = or i1 %cmp174, %cmp172
  br i1 %or.cond, label %do.body177, label %if.else186

do.body177:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !129
  tail call void @arm_heavy_mb() #10
  %60 = ptrtoint ptr %pa_base25 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pa_base25, align 4
  %62 = ptrtoint ptr %shift_pa160 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %shift_pa160, align 1
  %conv182 = zext i8 %63 to i32
  %shr183 = lshr i32 %61, %conv182
  %64 = tail call i32 @llvm.bswap.i32(i32 %shr183)
  %65 = ptrtoint ptr %base155 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base155, align 4
  %add.ptr185 = getelementptr i8, ptr %66, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr185, i32 %64) #10, !srcloc !103
  br label %do.body194

if.else186:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call7.i.i, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 8
  %71 = ptrtoint ptr %thread26 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %thread26, align 8
  %prev.i260 = getelementptr inbounds %struct.cmdq_thread, ptr %72, i32 0, i32 2, i32 1
  %73 = ptrtoint ptr %prev.i260 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i260, align 4
  %pkt.i = getelementptr i8, ptr %74, i32 16
  %75 = ptrtoint ptr %pkt.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pkt.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %pa_base.i = getelementptr i8, ptr %74, i32 8
  %79 = ptrtoint ptr %pa_base.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pa_base.i, align 4
  %cmd_buf_size.i = getelementptr inbounds %struct.cmdq_pkt, ptr %76, i32 0, i32 2
  %81 = ptrtoint ptr %cmd_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cmd_buf_size.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %70, i32 noundef %80, i32 noundef %82, i32 noundef 1) #10
  %83 = ptrtoint ptr %pa_base25 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pa_base25, align 4
  %85 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %call7.i.i, align 8
  %shift_pa.i = getelementptr inbounds %struct.cmdq, ptr %86, i32 0, i32 8
  %87 = ptrtoint ptr %shift_pa.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %shift_pa.i, align 1
  %conv.i261 = zext i8 %88 to i32
  %shr.i = lshr i32 %84, %conv.i261
  %conv6.i = zext i32 %shr.i to i64
  %or.i = or i64 %conv6.i, 1152921508901814272
  %89 = ptrtoint ptr %pkt.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pkt.i, align 4
  %cmd_buf_size8.i = getelementptr inbounds %struct.cmdq_pkt, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %cmd_buf_size8.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cmd_buf_size8.i, align 4
  %div22.i = lshr i32 %92, 3
  %sub.i = add nsw i32 %div22.i, -1
  %arrayidx.i = getelementptr i64, ptr %78, i32 %sub.i
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %or.i, ptr %arrayidx.i, align 8
  %94 = ptrtoint ptr %pa_base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pa_base.i, align 4
  %96 = load ptr, ptr %pkt.i, align 4
  %cmd_buf_size11.i = getelementptr inbounds %struct.cmdq_pkt, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %cmd_buf_size11.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cmd_buf_size11.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %70, i32 noundef %95, i32 noundef %98, i32 noundef 1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !130
  tail call void @arm_heavy_mb() #10
  %base.i.i = getelementptr inbounds %struct.cmdq_thread, ptr %72, i32 0, i32 1
  %99 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %100, i32 32
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  %102 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %103, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %101) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !132
  br label %do.body194

do.body194:                                       ; preds = %if.else186, %do.body177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @arm_heavy_mb() #10
  %104 = ptrtoint ptr %pa_base25 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %pa_base25, align 4
  %cmd_buf_size198 = getelementptr inbounds %struct.cmdq_pkt, ptr %data, i32 0, i32 2
  %106 = ptrtoint ptr %cmd_buf_size198 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cmd_buf_size198, align 4
  %add199 = add i32 %107, %105
  %108 = ptrtoint ptr %shift_pa160 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %shift_pa160, align 1
  %conv201 = zext i8 %109 to i32
  %shr202 = lshr i32 %add199, %conv201
  %110 = tail call i32 @llvm.bswap.i32(i32 %shr202)
  %111 = ptrtoint ptr %base155 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %base155, align 4
  %add.ptr204 = getelementptr i8, ptr %112, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr204, i32 %110) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !113
  tail call void @arm_heavy_mb() #10
  %113 = ptrtoint ptr %base155 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base155, align 4
  %add.ptr.i = getelementptr i8, ptr %114, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !103
  br label %if.end205

if.end205:                                        ; preds = %do.body194, %if.end86
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_entry) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end205.__list_del_entry.exit.i_crit_edge

if.end205.__list_del_entry.exit.i_crit_edge:      ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #12
  %115 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %prev.i, align 8
  %117 = ptrtoint ptr %list_entry to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %list_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %116, ptr %prev1.i.i.i, align 4
  %120 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile ptr %118, ptr %116, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end205.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.cmdq_thread, ptr %1, i32 0, i32 2, i32 1
  %121 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_entry, ptr noundef %122, ptr noundef %task_busy_list) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.cleanup_crit_edge

__list_del_entry.exit.i.cleanup_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %list_entry, ptr %prev.i2.i, align 4
  %124 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %task_busy_list, ptr %list_entry, align 4
  %125 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %122, ptr %prev.i, align 8
  %126 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %list_entry, ptr %122, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ 0, %__list_del_entry.exit.i.cleanup_crit_edge ], [ 0, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmdq_mbox_flush(ptr nocapture noundef readonly %chan, i32 noundef %timeout) #4 align 64 {
entry:
  %data = alloca %struct.cmdq_cb_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data) #10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4, !annotation !134
  %3 = getelementptr inbounds %struct.cmdq_cb_data, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !134
  %5 = getelementptr inbounds %struct.cmdq_cb_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !134
  %7 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chan, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %lock = getelementptr inbounds %struct.mbox_chan, ptr %14, i32 0, i32 8
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %task_busy_list = getelementptr inbounds %struct.cmdq_thread, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %task_busy_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %task_busy_list, align 4
  %cmp.i.not = icmp eq ptr %16, %task_busy_list
  br i1 %cmp.i.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %call9 = tail call fastcc i32 @cmdq_thread_suspend(ptr noundef %12, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end23, label %if.end.if.end29_crit_edge, !prof !100

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

do.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 462, i32 noundef 9, ptr noundef null) #10
  br label %if.end29

if.end29:                                         ; preds = %do.end23, %if.end.if.end29_crit_edge
  %base.i = getelementptr inbounds %struct.cmdq_thread, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 48
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !135
  %.mask.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.i.not = icmp eq i32 %.mask.i, 0
  br i1 %tobool.i.not, label %wait, label %if.end39

if.end39:                                         ; preds = %if.end29
  %20 = ptrtoint ptr %task_busy_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task_busy_list, align 4
  %cmp48.not176 = icmp eq ptr %21, %task_busy_list
  br i1 %cmp48.not176, label %if.end39.for.end_crit_edge, label %if.end39.for.body_crit_edge

if.end39.for.body_crit_edge:                      ; preds = %if.end39
  br label %for.body

if.end39.for.end_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end39.for.body_crit_edge
  %.pn.in177 = phi ptr [ %.pn180, %list_del.exit.for.body_crit_edge ], [ %21, %if.end39.for.body_crit_edge ]
  %task.0179 = getelementptr i8, ptr %.pn.in177, i32 -4
  %22 = ptrtoint ptr %.pn.in177 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn180 = load ptr, ptr %.pn.in177, align 4
  %pkt = getelementptr i8, ptr %.pn.in177, i32 16
  %23 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pkt, align 4
  %async_cb = getelementptr inbounds %struct.cmdq_pkt, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -103, ptr %data, align 4
  %data52 = getelementptr inbounds %struct.cmdq_pkt, ptr %24, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %data52 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data52, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %3, align 4
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %24, ptr %5, align 4
  %30 = ptrtoint ptr %async_cb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %async_cb, align 4
  %tobool57.not = icmp eq ptr %31, null
  br i1 %tobool57.not, label %for.body.if.end60_crit_edge, label %if.then58

for.body.if.end60_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then58:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.fca.1.load = load i32, ptr %3, align 4
  %.fca.1.insert = insertvalue [3 x i32] [i32 -103, i32 poison, i32 poison], i32 %.fca.1.load, 1
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.fca.2.load = load i32, ptr %5, align 4
  %.fca.2.insert = insertvalue [3 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  call void %31([3 x i32] %.fca.2.insert) #10
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %for.body.if.end60_crit_edge
  %thread61 = getelementptr i8, ptr %.pn.in177, i32 12
  %34 = ptrtoint ptr %thread61 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %thread61, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  call void @mbox_chan_received_data(ptr noundef %37, ptr noundef nonnull %data) #10
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in177) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end60.list_del.exit_crit_edge

if.end60.list_del.exit_crit_edge:                 ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in177, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i, align 4
  %40 = ptrtoint ptr %.pn.in177 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %.pn.in177, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end60.list_del.exit_crit_edge
  %44 = ptrtoint ptr %.pn.in177 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in177, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in177, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %task.0179) #10
  %cmp48.not = icmp eq ptr %.pn180, %task_busy_list
  br i1 %cmp48.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end39.for.end_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !113
  call void @arm_heavy_mb() #10
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr.i168 = getelementptr i8, ptr %47, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168, i32 0) #10, !srcloc !103
  %call.i = call fastcc i32 @cmdq_thread_reset(ptr noundef %12, ptr noundef %1) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  call void @arm_heavy_mb() #10
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 4
  %add.ptr.i170 = getelementptr i8, ptr %49, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 0) #10, !srcloc !103
  %gce_num = getelementptr inbounds %struct.cmdq, ptr %12, i32 0, i32 10
  %50 = ptrtoint ptr %gce_num to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %gce_num, align 8
  %clocks = getelementptr inbounds %struct.cmdq, ptr %12, i32 0, i32 6
  call void @clk_bulk_disable(i32 noundef %51, ptr noundef %clocks) #10
  br label %out

out:                                              ; preds = %for.end, %entry.out_crit_edge
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %lock70 = getelementptr inbounds %struct.mbox_chan, ptr %53, i32 0, i32 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock70, i32 noundef %call5) #10
  br label %cleanup

wait:                                             ; preds = %if.end29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !113
  tail call void @arm_heavy_mb() #10
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 4
  %add.ptr.i172 = getelementptr i8, ptr %55, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172, i32 0) #10, !srcloc !103
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %lock72 = getelementptr inbounds %struct.mbox_chan, ptr %57, i32 0, i32 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock72, i32 noundef %call5) #10
  %conv73 = zext i32 %timeout to i64
  %call74 = tail call i64 @ktime_get() #10
  %mul.i = mul nuw nsw i64 %conv73, 1000
  %add.i = add i64 %call74, %mul.i
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 4
  %add.ptr77181 = getelementptr i8, ptr %59, i32 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77181) #10, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp81182 = icmp eq i32 %60, 0
  br i1 %cmp81182, label %wait.cleanup_crit_edge, label %if.end84.lr.ph

wait.cleanup_crit_edge:                           ; preds = %wait
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end84.lr.ph:                                   ; preds = %wait
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool85.not = icmp eq i32 %timeout, 0
  br label %if.end84

if.end84:                                         ; preds = %cond.false.if.end84_crit_edge, %if.end84.lr.ph
  br i1 %tobool85.not, label %if.end84.cond.false_crit_edge, label %land.lhs.true

if.end84.cond.false_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

land.lhs.true:                                    ; preds = %if.end84
  %call86 = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call86, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call86, %add.i
  br i1 %cmp3.i, label %if.then90, label %land.lhs.true.cond.false_crit_edge

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

if.then90:                                        ; preds = %land.lhs.true
  %61 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i, align 4
  %add.ptr94 = getelementptr i8, ptr %62, i32 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr94) #10, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %phi.cmp = icmp eq i32 %63, 0
  br i1 %phi.cmp, label %if.then90.cleanup_crit_edge, label %do.end115

if.then90.cleanup_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.false:                                       ; preds = %land.lhs.true.cond.false_crit_edge, %if.end84.cond.false_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748) #10
  %65 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i, align 4
  %add.ptr77 = getelementptr i8, ptr %66, i32 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77) #10, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !136
  %cmp81 = icmp eq i32 %67, 0
  br i1 %cmp81, label %cond.false.cleanup_crit_edge, label %cond.false.if.end84_crit_edge

cond.false.if.end84_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end115:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %12, align 8
  %70 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i, align 4
  %base119 = getelementptr inbounds %struct.cmdq, ptr %12, i32 0, i32 1
  %72 = ptrtoint ptr %base119 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base119, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %71 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %73 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.25, i32 noundef %sub.ptr.sub) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end115, %cond.false.cleanup_crit_edge, %if.then90.cleanup_crit_edge, %wait.cleanup_crit_edge, %out
  %retval.0 = phi i32 [ 0, %out ], [ -14, %do.end115 ], [ 0, %if.then90.cleanup_crit_edge ], [ 0, %wait.cleanup_crit_edge ], [ 0, %cond.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmdq_mbox_startup(ptr nocapture noundef readnone %chan) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmdq_mbox_shutdown(ptr nocapture noundef readonly %chan) #4 align 64 {
entry:
  %data.i = alloca %struct.cmdq_cb_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %lock = getelementptr inbounds %struct.mbox_chan, ptr %9, i32 0, i32 8
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %task_busy_list = getelementptr inbounds %struct.cmdq_thread, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %task_busy_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %task_busy_list, align 4
  %cmp.i.not = icmp eq ptr %11, %task_busy_list
  br i1 %cmp.i.not, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end:                                           ; preds = %entry
  %call9 = tail call fastcc i32 @cmdq_thread_suspend(ptr noundef %7, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end23, label %if.end.if.end29_crit_edge, !prof !100

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

do.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 422, i32 noundef 9, ptr noundef null) #10
  br label %if.end29

if.end29:                                         ; preds = %do.end23, %if.end.if.end29_crit_edge
  tail call fastcc void @cmdq_thread_irq_handler(ptr noundef %7, ptr noundef %1)
  %12 = ptrtoint ptr %task_busy_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %task_busy_list, align 4
  %cmp.i80.not = icmp eq ptr %13, %task_busy_list
  br i1 %cmp.i80.not, label %if.end29.done_crit_edge, label %for.body.lr.ph

if.end29.done_crit_edge:                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

for.body.lr.ph:                                   ; preds = %if.end29
  %14 = getelementptr inbounds %struct.cmdq_cb_data, ptr %data.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.cmdq_cb_data, ptr %data.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cmdq_task_exec_done.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in83 = phi ptr [ %13, %for.body.lr.ph ], [ %.pn, %cmdq_task_exec_done.exit.for.body_crit_edge ]
  %task.0 = getelementptr i8, ptr %.pn.in83, i32 -4
  %16 = ptrtoint ptr %.pn.in83 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn.in83, align 4
  %pkt.i = getelementptr i8, ptr %.pn.in83, i32 16
  %17 = ptrtoint ptr %pkt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pkt.i, align 4
  %async_cb.i = getelementptr inbounds %struct.cmdq_pkt, ptr %18, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data.i) #10
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -103, ptr %data.i, align 4
  %data2.i = getelementptr inbounds %struct.cmdq_pkt, ptr %18, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data2.i, align 4
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %14, align 4
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %18, ptr %15, align 4
  %24 = ptrtoint ptr %async_cb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %async_cb.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.fca.1.load.i = load i32, ptr %14, align 4
  %.fca.1.insert.i = insertvalue [3 x i32] [i32 -103, i32 poison, i32 poison], i32 %.fca.1.load.i, 1
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.fca.2.load.i = load i32, ptr %15, align 4
  %.fca.2.insert.i = insertvalue [3 x i32] %.fca.1.insert.i, i32 %.fca.2.load.i, 2
  call void %25([3 x i32] %.fca.2.insert.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %thread.i = getelementptr i8, ptr %.pn.in83, i32 12
  %28 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %thread.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  call void @mbox_chan_received_data(ptr noundef %31, ptr noundef nonnull %data.i) #10
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in83) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.cmdq_task_exec_done.exit_crit_edge

if.end.i.cmdq_task_exec_done.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cmdq_task_exec_done.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr i8, ptr %.pn.in83, i32 4
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i, align 4
  %34 = ptrtoint ptr %.pn.in83 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %.pn.in83, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %cmdq_task_exec_done.exit

cmdq_task_exec_done.exit:                         ; preds = %if.end.i.i.i, %if.end.i.cmdq_task_exec_done.exit_crit_edge
  %38 = ptrtoint ptr %.pn.in83 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in83, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in83, i32 4
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data.i) #10
  call void @kfree(ptr noundef %task.0) #10
  %cmp50.not = icmp eq ptr %.pn, %task_busy_list
  br i1 %cmp50.not, label %for.end, label %cmdq_task_exec_done.exit.for.body_crit_edge

cmdq_task_exec_done.exit.for.body_crit_edge:      ; preds = %cmdq_task_exec_done.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cmdq_task_exec_done.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call fastcc i32 @cmdq_thread_reset(ptr noundef %7, ptr noundef %1) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  call void @arm_heavy_mb() #10
  %base.i = getelementptr inbounds %struct.cmdq_thread, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %41, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !103
  %gce_num = getelementptr inbounds %struct.cmdq, ptr %7, i32 0, i32 10
  %42 = ptrtoint ptr %gce_num to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %gce_num, align 8
  %clocks = getelementptr inbounds %struct.cmdq, ptr %7, i32 0, i32 6
  call void @clk_bulk_disable(i32 noundef %43, ptr noundef %clocks) #10
  br label %done

done:                                             ; preds = %for.end, %if.end29.done_crit_edge, %entry.done_crit_edge
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %lock60 = getelementptr inbounds %struct.mbox_chan, ptr %45, i32 0, i32 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock60, i32 noundef %call5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmdq_suspend(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %suspended = getelementptr inbounds %struct.cmdq, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %suspended, align 4
  %thread_nr = getelementptr inbounds %struct.cmdq, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %thread_nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %thread_nr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp13.not = icmp eq i32 %4, 0
  br i1 %cmp13.not, label %entry.if.end5_crit_edge, label %for.body.lr.ph

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.body.lr.ph:                                   ; preds = %entry
  %thread1 = getelementptr inbounds %struct.cmdq, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %thread1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %thread1, align 8
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.cond.if.end5_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.if.end5_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %task_busy_list = getelementptr %struct.cmdq_thread, ptr %6, i32 %i.014, i32 2
  %7 = ptrtoint ptr %task_busy_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %task_busy_list, align 4
  %cmp.i.not = icmp eq ptr %8, %task_busy_list
  br i1 %cmp.i.not, label %for.cond, label %do.end.critedge

do.end.critedge:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.27) #13
  br label %if.end5

if.end5:                                          ; preds = %do.end.critedge, %for.cond.if.end5_crit_edge, %entry.if.end5_crit_edge
  %gce_num = getelementptr inbounds %struct.cmdq, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %gce_num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gce_num, align 8
  %clocks = getelementptr inbounds %struct.cmdq, ptr %1, i32 0, i32 6
  tail call void @clk_bulk_unprepare(i32 noundef %10, ptr noundef %clocks) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmdq_resume(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %gce_num = getelementptr inbounds %struct.cmdq, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %gce_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gce_num, align 8
  %clocks = getelementptr inbounds %struct.cmdq, ptr %1, i32 0, i32 6
  %call1 = tail call i32 @clk_bulk_prepare(i32 noundef %3, ptr noundef %clocks) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !101

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 328, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %suspended = getelementptr inbounds %struct.cmdq, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %suspended, align 4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !66, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !86, !87, !88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__ksymtab_cmdq_get_shift_pa, !1, !"__ksymtab_cmdq_get_shift_pa", i1 false, i1 false}
!1 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 99, i32 1}
!2 = !{ptr @__initcall__kmod_mtk_cmdq_mailbox__236_703_cmdq_drv_init4, !3, !"__initcall__kmod_mtk_cmdq_mailbox__236_703_cmdq_drv_init4", i1 false, i1 false}
!3 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 703, i32 1}
!4 = !{ptr @__exitcall_cmdq_drv_exit, !5, !"__exitcall_cmdq_drv_exit", i1 false, i1 false}
!5 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 704, i32 1}
!6 = !{ptr @__UNIQUE_ID_file237, !7, !"__UNIQUE_ID_file237", i1 false, i1 false}
!7 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 706, i32 1}
!8 = !{ptr @__UNIQUE_ID_license238, !7, !"__UNIQUE_ID_license238", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 687, i32 11}
!11 = !{ptr @cmdq_drv, !12, !"cmdq_drv", i1 false, i1 false}
!12 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 683, i32 31}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 533, i32 39}
!15 = distinct !{null, !16, !"clk_name", i1 false, i1 false}
!16 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 533, i32 28}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 534, i32 44}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 534, i32 52}
!21 = !{ptr @cmdq_probe.clk_names, !22, !"clk_names", i1 false, i1 false}
!22 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 534, i32 28}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 550, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @cmdq_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @cmdq_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 562, i32 3}
!33 = !{ptr @cmdq_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @cmdq_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 566, i32 2}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @cmdq_probe.__UNIQUE_ID_ddebug235, !36, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 579, i32 13}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 589, i32 11}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 621, i32 3}
!45 = !{ptr @cmdq_probe._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @cmdq_probe._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 215, i32 2}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @cmdq_task_handle_error._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @cmdq_task_handle_error._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 113, i32 3}
!54 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @cmdq_thread_suspend._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @cmdq_thread_suspend._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 147, i32 3}
!59 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @cmdq_thread_reset._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @cmdq_thread_reset._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @cmdq_mbox_chan_ops, !63, !"cmdq_mbox_chan_ops", i1 false, i1 false}
!63 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 501, i32 35}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 493, i32 3}
!66 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @cmdq_mbox_flush._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @cmdq_mbox_flush._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @cmdq_of_ids, !70, !"cmdq_of_ids", i1 false, i1 false}
!70 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 674, i32 34}
!71 = !{ptr @gce_plat_v2, !72, !"gce_plat_v2", i1 false, i1 false}
!72 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 639, i32 30}
!73 = !{ptr @gce_plat_v3, !74, !"gce_plat_v3", i1 false, i1 false}
!74 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 646, i32 30}
!75 = !{ptr @gce_plat_v4, !76, !"gce_plat_v4", i1 false, i1 false}
!76 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 653, i32 30}
!77 = !{ptr @gce_plat_v5, !78, !"gce_plat_v5", i1 false, i1 false}
!78 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 660, i32 30}
!79 = !{ptr @gce_plat_v6, !80, !"gce_plat_v6", i1 false, i1 false}
!80 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 667, i32 30}
!81 = !{ptr @cmdq_pm_ops, !82, !"cmdq_pm_ops", i1 false, i1 false}
!82 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 634, i32 32}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mailbox/mtk-cmdq-mailbox.c", i32 317, i32 3}
!85 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @cmdq_suspend._entry, !84, !"_entry", i1 false, i1 false}
!88 = !{ptr @cmdq_suspend._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{i8 0, i8 2}
!99 = !{i64 2148738704, i64 2148738709, i64 2148738722, i64 2148738766, i64 2148738800, i64 2148738821}
!100 = !{!"branch_weights", i32 1, i32 2000}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{i64 2154382056}
!103 = !{i64 6434254}
!104 = !{i64 2154382460}
!105 = !{i64 2154382867}
!106 = !{i64 6434672}
!107 = !{i64 2154407840}
!108 = !{i64 2154400611}
!109 = !{i64 2154400838}
!110 = !{i64 2154401532}
!111 = !{i64 2154402044}
!112 = !{i64 2154399824}
!113 = !{i64 2154381118}
!114 = !{i64 2154388793}
!115 = !{i64 2154375287}
!116 = !{i64 2154375963}
!117 = !{i64 2154378054}
!118 = !{i64 2154378548}
!119 = !{i64 2154383363}
!120 = !{i64 2154385747}
!121 = !{i64 2154386241}
!122 = !{i64 2154412826}
!123 = !{i64 2154413358}
!124 = !{i64 2154413919}
!125 = !{i64 2154414417}
!126 = !{i64 2154414852}
!127 = !{i64 2154416063}
!128 = !{i64 2154416562}
!129 = !{i64 2154416813}
!130 = !{i64 2154389936}
!131 = !{i64 2154390839}
!132 = !{i64 2154417226}
!133 = !{i64 2154417497}
!134 = !{!"auto-init"}
!135 = !{i64 2154393075}
!136 = !{i64 2154432164}
!137 = !{i64 2154432658}
