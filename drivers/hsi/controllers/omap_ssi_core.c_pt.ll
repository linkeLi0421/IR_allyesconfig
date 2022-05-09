; ModuleID = '/llk/IR_all_yes/drivers/hsi/controllers/omap_ssi_core.c_pt.bc'
source_filename = "../drivers/hsi/controllers/omap_ssi_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ssi_waketest\22, \22a\22\09"
module asm "\09.weak\09__crc_ssi_waketest\09\09\09\09"
module asm "\09.long\09__crc_ssi_waketest\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssi_waketest:\09\09\09\09\09"
module asm "\09.asciz \09\22ssi_waketest\22\09\09\09\09\09"
module asm "__kstrtabns_ssi_waketest:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.omap_ssi_port = type { ptr, ptr, i32, i32, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, [8 x %struct.list_head], [8 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.delayed_work, i32, i32, ptr, i8, i32, i32, %struct.work_struct, i32, %struct.omap_ssm_ctx, %struct.omap_ssm_ctx, i32, i32, ptr }
%struct.omap_ssm_ctx = type { i32, i32, i32, %union.anon.75 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { i32, i32 }
%struct.omap_ssi_controller = type { ptr, ptr, ptr, ptr, i32, %struct.tasklet_struct, [8 x %struct.gdd_trn], %struct.spinlock, %struct.notifier_block, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.77, i32 }
%union.anon.77 = type { ptr }
%struct.gdd_trn = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hsi_port = type { %struct.device, %struct.hsi_config, %struct.hsi_config, i32, i8, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, %struct.blocking_notifier_head }
%struct.hsi_config = type { i32, ptr, i32, i32, i32, %union.anon.70 }
%union.anon.70 = type { i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.hsi_controller = type { %struct.device, ptr, i32, i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.clk_notifier_data = type { ptr, i32, i32 }
%struct.hsi_msg = type { %struct.list_head, ptr, %struct.sg_table, ptr, ptr, ptr, i32, i32, i32, i8 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__kstrtab_ssi_waketest = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssi_waketest = external dso_local constant [0 x i8], align 1
@__ksymtab_ssi_waketest = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssi_waketest to i32), ptr @__kstrtab_ssi_waketest, ptr @__kstrtabns_ssi_waketest }, section "___ksymtab_gpl+ssi_waketest", align 4
@__initcall__kmod_omap_ssi__244_633_ssi_init6 = internal global ptr @ssi_init, section ".initcall6.init", align 4
@ssi_port_pdriver = external dso_local global %struct.platform_driver, align 4
@ssi_pdriver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ssi_probe, ptr @ssi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_ssi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_ssi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ssi_exit = internal global ptr @ssi_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias245 = internal constant [33 x i8] c"omap_ssi.alias=platform:omap_ssi\00", section ".modinfo", align 1
@__UNIQUE_ID_author246 = internal constant [56 x i8] c"omap_ssi.author=Carlos Chinea <carlos.chinea@nokia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author247 = internal constant [51 x i8] c"omap_ssi.author=Sebastian Reichel <sre@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [57 x i8] c"omap_ssi.description=Synchronous Serial Interface Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [47 x i8] c"omap_ssi.file=drivers/hsi/controllers/omap_ssi\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [24 x i8] c"omap_ssi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"omap_ssi\00", [23 x i8] zeroinitializer }, align 32
@omap_ssi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-ssi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@omap_ssi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_ssi_runtime_suspend, ptr @omap_ssi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@ssi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 490, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"missing device tree data\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssi_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/hsi/controllers/omap_ssi_core.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ssi_probe._entry_ptr = internal global ptr @ssi_probe._entry, section ".printk_index", align 4
@ssi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 498, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No memory for controller\0A\00", [38 x i8] zeroinitializer }, align 32
@ssi_probe._entry_ptr.8 = internal global ptr @ssi_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,omap3-ssi-port\00", [46 x i8] zeroinitializer }, align 32
@ssi_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 526, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to create ssi controller port\0A\00", [58 x i8] zeroinitializer }, align 32
@ssi_probe._entry_ptr.12 = internal global ptr @ssi_probe._entry.10, section ".printk_index", align 4
@ssi_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 532, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ssi controller %d initialized (%d ports)!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ssi_probe._entry_ptr.16 = internal global ptr @ssi_probe._entry.13, section ".printk_index", align 4
@platform_omap_ssi_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ssi%d\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sys\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gdd\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gdd_mpu\00", [24 x i8] zeroinitializer }, align 32
@ssi_add_controller._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 382, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Request GDD IRQ %d failed (%d)\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ssi_add_controller\00", [45 x i8] zeroinitializer }, align 32
@ssi_add_controller._entry_ptr = internal global ptr @ssi_add_controller._entry, section ".printk_index", align 4
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ssi_ssr_fck\00", [20 x i8] zeroinitializer }, align 32
@ssi_add_controller._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.3, i32 396, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Could not acquire clock \22ssi_ssr_fck\22: %li\0A\00", [52 x i8] zeroinitializer }, align 32
@ssi_add_controller._entry_ptr.26 = internal global ptr @ssi_add_controller._entry.24, section ".printk_index", align 4
@ssi_add_controller.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&omap_ssi->lock\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"platform_omap_ssi_ida.xa_lock\00", [34 x i8] zeroinitializer }, align 32
@ssi_gdd_tasklet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 229, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ssi_gdd_tasklet called without runtime PM!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ssi_gdd_tasklet\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ssi_gdd_tasklet._entry_ptr = internal global ptr @ssi_gdd_tasklet._entry, section ".printk_index", align 4
@ssi_gdd_complete.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ssi_gdd_complete\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMA completed ch %d ttype %d\0A\00", [34 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ssi_clk_event.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ssi_clk_event\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pre rate change\0A\00", [47 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ssi_clk_event.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.3, ptr @.str.36, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"abort rate change\0A\00", [45 x i8] zeroinitializer }, align 32
@ssi_clk_event.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.3, ptr @.str.37, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"post rate change (%lu -> %lu)\0A\00", [33 x i8] zeroinitializer }, align 32
@ssi_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 429, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"runtime PM failed %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ssi_hw_init\00", [20 x i8] zeroinitializer }, align 32
@ssi_hw_init._entry_ptr = internal global ptr @ssi_hw_init._entry, section ".printk_index", align 4
@ssi_hw_init.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 0, i8 109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SSI fck rate %lu kHz\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@ssi_regs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ssi_regs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ssi_gdd_regs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ssi_gdd_regs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"REVISION\09: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SYSCONFIG\09: 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SYSSTATUS\09: 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"GDD_MPU_STATUS\09: 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"GDD_MPU_ENABLE\09: 0x%08x\0A\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HW_ID\09\09: 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PPORT_ID\09: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MPORT_ID\09: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TEST\09\09: 0x%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GCR\09\09: 0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\0AGDD LCH %d\0A=========\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CSDP\09\09: 0x%04x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CCR\09\09: 0x%04x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CICR\09\09: 0x%04x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CSR\09\09: 0x%04x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CSSA\09\09: 0x%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CDSA\09\09: 0x%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CEN\09\09: 0x%04x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CSAC\09\09: 0x%04x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CDAC\09\09: 0x%04x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CLNK_CTRL\09: 0x%04x\0A\00", [44 x i8] zeroinitializer }, align 32
@omap_ssi_runtime_suspend.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.3, ptr @.str.64, i8 0, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"omap_ssi_runtime_suspend\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"runtime suspend!\0A\00", [46 x i8] zeroinitializer }, align 32
@omap_ssi_runtime_resume.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.3, ptr @.str.66, i8 0, i8 -111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"omap_ssi_runtime_resume\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"runtime resume!\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.67 = private unnamed_addr constant [12 x i8] c"ssi_pdriver\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 614, i32 31 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 618, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant [18 x i8] c"omap_ssi_of_match\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 605, i32 34 }
@___asan_gen_.76 = private unnamed_addr constant [16 x i8] c"omap_ssi_pm_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 594, i32 32 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 490, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 498, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 520, i32 39 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 526, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 531, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [22 x i8] c"platform_omap_ssi_ida\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 363, i32 29 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 366, i32 26 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 369, i32 26 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 372, i32 36 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 381, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 393, i32 45 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 395, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 409, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 35, i32 8 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 229, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 195, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 280, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 298, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 301, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 429, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 436, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 120, i32 22 }
@___asan_gen_.208 = private unnamed_addr constant [14 x i8] c"ssi_regs_fops\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 107, i32 1 }
@___asan_gen_.211 = private unnamed_addr constant [18 x i8] c"ssi_gdd_regs_fops\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 108, i32 1 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 45, i32 16 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 46, i32 16 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 47, i32 16 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 63, i32 16 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 65, i32 16 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 67, i32 16 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 69, i32 16 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 71, i32 16 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 73, i32 16 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 75, i32 16 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 79, i32 17 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 80, i32 17 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 82, i32 17 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 84, i32 17 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 86, i32 17 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 88, i32 17 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 90, i32 17 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 92, i32 17 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 94, i32 17 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 96, i32 17 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 98, i32 17 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 569, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.287 = private constant [43 x i8] c"../drivers/hsi/controllers/omap_ssi_core.c\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 583, i32 2 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_alias245, ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__exitcall_ssi_exit, ptr @__initcall__kmod_omap_ssi__244_633_ssi_init6, ptr @__ksymtab_ssi_waketest, ptr @ssi_add_controller._entry, ptr @ssi_add_controller._entry.24, ptr @ssi_add_controller._entry_ptr, ptr @ssi_add_controller._entry_ptr.26, ptr @ssi_exit, ptr @ssi_gdd_tasklet._entry, ptr @ssi_gdd_tasklet._entry_ptr, ptr @ssi_hw_init._entry, ptr @ssi_hw_init._entry_ptr, ptr @ssi_probe._entry, ptr @ssi_probe._entry.10, ptr @ssi_probe._entry.13, ptr @ssi_probe._entry.6, ptr @ssi_probe._entry_ptr, ptr @ssi_probe._entry_ptr.12, ptr @ssi_probe._entry_ptr.16, ptr @ssi_probe._entry_ptr.8, ptr @ssi_pdriver, ptr @.str, ptr @omap_ssi_of_match, ptr @omap_ssi_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @platform_omap_ssi_ida, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @ssi_add_controller.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @ssi_regs_fops, ptr @ssi_gdd_regs_fops, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_pdriver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_ssi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_ssi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_omap_ssi_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_add_controller._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_add_controller._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_add_controller.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_gdd_tasklet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_regs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_gdd_regs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssi_waketest(ptr nocapture noundef readonly %cl, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %cl, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %parent3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent3, align 8
  %driver_data.i.i30 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i30 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %wktest = getelementptr inbounds %struct.omap_ssi_port, ptr %3, i32 0, i32 17
  %8 = ptrtoint ptr %wktest to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %wktest, align 4
  %bf.shl = select i1 %tobool.not, i8 0, i8 -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %wktest, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent12 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %parent12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent12, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #6
  %sys = getelementptr inbounds %struct.omap_ssi_controller, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sys, align 4
  %num = getelementptr inbounds %struct.hsi_port, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num, align 8
  %mul = shl i32 %14, 4
  %add = add i32 %mul, 3080
  %add.ptr14 = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 16777216) #6, !srcloc !166
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sys15 = getelementptr inbounds %struct.omap_ssi_controller, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %sys15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sys15, align 4
  %num16 = getelementptr inbounds %struct.hsi_port, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %num16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num16, align 8
  %mul17 = shl i32 %18, 4
  %add18 = add i32 %mul17, 3076
  %add.ptr19 = getelementptr i8, ptr %16, i32 %add18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 16777216) #6, !srcloc !166
  %parent21 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %parent21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent21, align 8
  %call.i31 = tail call i32 @__pm_runtime_idle(ptr noundef %20, i32 noundef 5) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ssi_pdriver, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ssi_port_pdriver, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ssi_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ssi_port_pdriver) #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @ssi_pdriver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_probe(ptr noundef %pd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef null) #6
  %cmp.not7.i = icmp eq ptr %call.i, null
  br i1 %cmp.not7.i, label %if.end.ssi_of_get_available_ports_count.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.ssi_of_get_available_ports_count.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ssi_of_get_available_ports_count.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %num.09.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %child.08.i = phi ptr [ %call2.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.end.for.body.i_crit_edge ]
  %call1.i = tail call i32 @of_device_is_compatible(ptr noundef nonnull %child.08.i, ptr noundef nonnull @.str.9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp ne i32 %call1.i, 0
  %inc.i = zext i1 %tobool.not.i to i32
  %spec.select.i = add i32 %num.09.i, %inc.i
  %call2.i = tail call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef nonnull %child.08.i) #6
  %cmp.not.i = icmp eq ptr %call2.i, null
  br i1 %cmp.not.i, label %for.body.i.ssi_of_get_available_ports_count.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.ssi_of_get_available_ports_count.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ssi_of_get_available_ports_count.exit

ssi_of_get_available_ports_count.exit:            ; preds = %for.body.i.ssi_of_get_available_ports_count.exit_crit_edge, %if.end.ssi_of_get_available_ports_count.exit_crit_edge
  %num.0.lcssa.i = phi i32 [ 0, %if.end.ssi_of_get_available_ports_count.exit_crit_edge ], [ %spec.select.i, %for.body.i.ssi_of_get_available_ports_count.exit_crit_edge ]
  %call2 = tail call ptr @hsi_alloc_controller(i32 noundef %num.0.lcssa.i, i32 noundef 3264) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end9

do.end7:                                          ; preds = %ssi_of_get_available_ports_count.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end9:                                          ; preds = %ssi_of_get_available_ports_count.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %call2, i32 noundef 192, i32 noundef 3520) #6
  %tobool.not.i78 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i78, label %if.end9.out1_crit_edge, label %if.end.i

if.end9.out1_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %out1

if.end.i:                                         ; preds = %if.end9
  %call1.i79 = tail call i32 @ida_alloc_range(ptr noundef nonnull @platform_omap_ssi_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i79)
  %cmp.i = icmp slt i32 %call1.i79, 0
  br i1 %cmp.i, label %if.end.i.out1_crit_edge, label %if.end3.i

if.end.i.out1_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out1

if.end3.i:                                        ; preds = %if.end.i
  %id.i = getelementptr inbounds %struct.hsi_controller, ptr %call2, i32 0, i32 2
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call1.i79, ptr %id.i, align 4
  %owner.i = getelementptr inbounds %struct.hsi_controller, ptr %call2, i32 0, i32 1
  %4 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %owner.i, align 8
  %parent.i = getelementptr inbounds %struct.device, ptr %call2, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %parent.i, align 8
  %call7.i = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call2, ptr noundef nonnull @.str.17, i32 noundef %call1.i79) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %call2, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i, ptr %driver_data.i.i.i, align 4
  %7 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %call.i.i, align 4
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i.i = tail call ptr @platform_get_resource_byname(ptr noundef %pd, i32 noundef 512, ptr noundef nonnull @.str.18) #6
  %call2.i.i = tail call ptr @devm_ioremap_resource(ptr noundef %9, ptr noundef %call1.i.i) #6
  %cmp.i.i.i = icmp ugt ptr %call2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %ssi_get_iomem.exit.i, label %ssi_get_iomem.exit.thread.i

ssi_get_iomem.exit.thread.i:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %sys.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %call.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %sys.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call2.i.i, ptr %sys.i, align 4
  br label %if.end13.i

ssi_get_iomem.exit.i:                             ; preds = %if.end3.i
  %cmp11.i = icmp slt ptr %call2.i.i, null
  br i1 %cmp11.i, label %ssi_get_iomem.exit.i.ssi_add_controller.exit_crit_edge, label %ssi_get_iomem.exit.i.if.end13.i_crit_edge

ssi_get_iomem.exit.i.if.end13.i_crit_edge:        ; preds = %ssi_get_iomem.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

ssi_get_iomem.exit.i.ssi_add_controller.exit_crit_edge: ; preds = %ssi_get_iomem.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ssi_add_controller.exit

if.end13.i:                                       ; preds = %ssi_get_iomem.exit.i.if.end13.i_crit_edge, %ssi_get_iomem.exit.thread.i
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i113.i = tail call ptr @platform_get_resource_byname(ptr noundef %pd, i32 noundef 512, ptr noundef nonnull @.str.19) #6
  %call2.i114.i = tail call ptr @devm_ioremap_resource(ptr noundef %12, ptr noundef %call1.i113.i) #6
  %cmp.i.i115.i = icmp ugt ptr %call2.i114.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i115.i, label %ssi_get_iomem.exit119.i, label %ssi_get_iomem.exit119.thread.i

ssi_get_iomem.exit119.thread.i:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %gdd.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %call.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %gdd.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call2.i114.i, ptr %gdd.i, align 4
  br label %if.end17.i

ssi_get_iomem.exit119.i:                          ; preds = %if.end13.i
  %cmp15.i = icmp slt ptr %call2.i114.i, null
  br i1 %cmp15.i, label %ssi_get_iomem.exit119.i.ssi_add_controller.exit_crit_edge, label %ssi_get_iomem.exit119.i.if.end17.i_crit_edge

ssi_get_iomem.exit119.i.if.end17.i_crit_edge:     ; preds = %ssi_get_iomem.exit119.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

ssi_get_iomem.exit119.i.ssi_add_controller.exit_crit_edge: ; preds = %ssi_get_iomem.exit119.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ssi_add_controller.exit

if.end17.i:                                       ; preds = %ssi_get_iomem.exit119.i.if.end17.i_crit_edge, %ssi_get_iomem.exit119.thread.i
  %call18.i = tail call i32 @platform_get_irq_byname(ptr noundef %pd, ptr noundef nonnull @.str.20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.end17.i.ssi_add_controller.exit.thread97_crit_edge, label %if.end21.i

if.end17.i.ssi_add_controller.exit.thread97_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ssi_add_controller.exit.thread97

if.end21.i:                                       ; preds = %if.end17.i
  %gdd_irq.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %call.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %gdd_irq.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call18.i, ptr %gdd_irq.i, align 4
  %gdd_tasklet.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %call.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %call2 to i32
  tail call void @tasklet_init(ptr noundef %gdd_tasklet.i, ptr noundef nonnull @ssi_gdd_tasklet, i32 noundef %15) #6
  %16 = ptrtoint ptr %gdd_irq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gdd_irq.i, align 4
  %call.i120.i = tail call i32 @devm_request_threaded_irq(ptr noundef nonnull %call2, i32 noundef %17, ptr noundef nonnull @ssi_gdd_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef nonnull %call2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120.i)
  %cmp25.i = icmp slt i32 %call.i120.i, 0
  br i1 %cmp25.i, label %do.end.i, label %if.end29.i

do.end.i:                                         ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %gdd_irq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gdd_irq.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call2, ptr noundef nonnull @.str.21, i32 noundef %19, i32 noundef %call.i120.i) #9
  br label %ssi_add_controller.exit.thread97

if.end29.i:                                       ; preds = %if.end21.i
  %num_ports.i = getelementptr inbounds %struct.hsi_controller, ptr %call2, i32 0, i32 3
  %20 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_ports.i, align 8
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 4) #6
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !167

devm_kcalloc.exit.thread.i:                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  %port126.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %call.i.i, i32 0, i32 14
  %24 = ptrtoint ptr %port126.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %port126.i, align 4
  br label %ssi_add_controller.exit.thread97

devm_kcalloc.exit.i:                              ; preds = %if.end29.i
  %25 = extractvalue { i32, i1 } %22, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %call2, i32 noundef %25, i32 noundef 3520) #6
  %port.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %call.i.i, i32 0, i32 14
  %26 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call5.i.i.i, ptr %port.i, align 4
  %tobool33.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool33.not.i, label %devm_kcalloc.exit.i.ssi_add_controller.exit.thread97_crit_edge, label %if.end35.i

devm_kcalloc.exit.i.ssi_add_controller.exit.thread97_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ssi_add_controller.exit.thread97

if.end35.i:                                       ; preds = %devm_kcalloc.exit.i
  %call37.i = tail call ptr @devm_clk_get(ptr noundef nonnull %call2, ptr noundef nonnull @.str.23) #6
  %fck.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %call.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %fck.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call37.i, ptr %fck.i, align 4
  %cmp.i.i = icmp ugt ptr %call37.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end43.i, label %if.end47.i

do.end43.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %call37.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %28) #9
  br label %ssi_add_controller.exit.thread97

if.end47.i:                                       ; preds = %if.end35.i
  %fck_nb.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %call.i.i, i32 0, i32 8
  %29 = ptrtoint ptr %fck_nb.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @ssi_clk_event, ptr %fck_nb.i, align 4
  %priority.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %call.i.i, i32 0, i32 8, i32 2
  %30 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2147483647, ptr %priority.i, align 4
  %call51.i = tail call i32 @clk_notifier_register(ptr noundef %call37.i, ptr noundef %fck_nb.i) #6
  %get_loss.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %call.i.i, i32 0, i32 13
  %31 = ptrtoint ptr %get_loss.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %get_loss.i, align 4
  %max_speed.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %call.i.i, i32 0, i32 11
  %32 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %max_speed.i, align 4
  %lock.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %call.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @ssi_add_controller.__key, i16 noundef signext 3) #6
  %call56.i = tail call i32 @hsi_register_controller(ptr noundef nonnull %call2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %cmp57.i = icmp slt i32 %call56.i, 0
  br i1 %cmp57.i, label %if.end47.i.ssi_add_controller.exit.thread97_crit_edge, label %if.end47.i.if.end12_crit_edge

if.end47.i.if.end12_crit_edge:                    ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end47.i.ssi_add_controller.exit.thread97_crit_edge: ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ssi_add_controller.exit.thread97

ssi_add_controller.exit.thread97:                 ; preds = %if.end47.i.ssi_add_controller.exit.thread97_crit_edge, %do.end43.i, %devm_kcalloc.exit.i.ssi_add_controller.exit.thread97_crit_edge, %devm_kcalloc.exit.thread.i, %do.end.i, %if.end17.i.ssi_add_controller.exit.thread97_crit_edge
  %err.0.i.ph = phi i32 [ -12, %devm_kcalloc.exit.thread.i ], [ -12, %devm_kcalloc.exit.i.ssi_add_controller.exit.thread97_crit_edge ], [ %call56.i, %if.end47.i.ssi_add_controller.exit.thread97_crit_edge ], [ -19, %do.end43.i ], [ %call.i120.i, %do.end.i ], [ %call18.i, %if.end17.i.ssi_add_controller.exit.thread97_crit_edge ]
  %33 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id.i, align 4
  br label %out1.sink.split

ssi_add_controller.exit:                          ; preds = %ssi_get_iomem.exit119.i.ssi_add_controller.exit_crit_edge, %ssi_get_iomem.exit.i.ssi_add_controller.exit_crit_edge
  %err.0.i.in = phi ptr [ %call2.i.i, %ssi_get_iomem.exit.i.ssi_add_controller.exit_crit_edge ], [ %call2.i114.i, %ssi_get_iomem.exit119.i.ssi_add_controller.exit_crit_edge ]
  %err.0.i = ptrtoint ptr %err.0.i.in to i32
  %35 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id.i, align 4
  tail call void @ida_free(ptr noundef nonnull @platform_omap_ssi_ida, i32 noundef %36) #6
  %cmp = icmp slt ptr %err.0.i.in, null
  br i1 %cmp, label %ssi_add_controller.exit.out1_crit_edge, label %ssi_add_controller.exit.if.end12_crit_edge

ssi_add_controller.exit.if.end12_crit_edge:       ; preds = %ssi_add_controller.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

ssi_add_controller.exit.out1_crit_edge:           ; preds = %ssi_add_controller.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out1

if.end12:                                         ; preds = %ssi_add_controller.exit.if.end12_crit_edge, %if.end47.i.if.end12_crit_edge
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  %call14 = tail call fastcc i32 @ssi_hw_init(ptr noundef nonnull %call2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end12.out2_crit_edge, label %if.end17

if.end12.out2_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %out2

if.end17:                                         ; preds = %if.end12
  %37 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i.i.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %call2, i32 0, i32 3
  %39 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end17.dev_name.exit.i_crit_edge

if.end17.dev_name.exit.i_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call2, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end17.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %42, %if.end.i.i ], [ %40, %if.end17.dev_name.exit.i_crit_edge ]
  %call2.i81 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i.i, ptr noundef null) #6
  %dir3.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %38, i32 0, i32 15
  %43 = ptrtoint ptr %dir3.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call2.i81, ptr %dir3.i, align 4
  %tobool.not.i82 = icmp eq ptr %call2.i81, null
  br i1 %tobool.not.i82, label %dev_name.exit.i.out2_crit_edge, label %if.end.i83

dev_name.exit.i.out2_crit_edge:                   ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out2

if.end.i83:                                       ; preds = %dev_name.exit.i
  %call6.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.41, i16 noundef zeroext 292, ptr noundef nonnull %call2.i81, ptr noundef nonnull %call2, ptr noundef nonnull @ssi_regs_fops) #6
  %44 = ptrtoint ptr %dir3.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dir3.i, align 4
  %call8.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.19, ptr noundef %45) #6
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %rback.i, label %if.end21

rback.i:                                          ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %dir3.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dir3.i, align 4
  tail call void @debugfs_remove(ptr noundef %47) #6
  br label %out2

if.end21:                                         ; preds = %if.end.i83
  %call12.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.41, i16 noundef zeroext 292, ptr noundef nonnull %call8.i, ptr noundef nonnull %call2, ptr noundef nonnull @ssi_gdd_regs_fops) #6
  %call22 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef null) #6
  %cmp23.not102 = icmp eq ptr %call22, null
  br i1 %cmp23.not102, label %if.end21.do.end40_crit_edge, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  br label %for.body

if.end21.do.end40_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end40

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end21.for.body_crit_edge
  %child.0103 = phi ptr [ %call37, %for.inc.for.body_crit_edge ], [ %call22, %if.end21.for.body_crit_edge ]
  %call24 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %child.0103, ptr noundef nonnull @.str.9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %for.body.for.inc_crit_edge, label %if.end27

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end27:                                         ; preds = %for.body
  %call29 = tail call ptr @of_platform_device_create(ptr noundef nonnull %child.0103, ptr noundef null, ptr noundef %dev) #6
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.then31, label %if.end27.for.inc_crit_edge

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  %call43 = tail call i32 @device_for_each_child(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @ssi_remove_ports) #6
  br label %out2

for.inc:                                          ; preds = %if.end27.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call37 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef nonnull %child.0103) #6
  %cmp23.not = icmp eq ptr %call37, null
  br i1 %cmp23.not, label %for.inc.do.end40_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.end40_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end40

do.end40:                                         ; preds = %for.inc.do.end40_crit_edge, %if.end21.do.end40_crit_edge
  %48 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %49, i32 noundef %num.0.lcssa.i) #9
  br label %cleanup

out2:                                             ; preds = %if.then31, %rback.i, %dev_name.exit.i.out2_crit_edge, %if.end12.out2_crit_edge
  %err.0 = phi i32 [ %call14, %if.end12.out2_crit_edge ], [ -19, %if.then31 ], [ -12, %rback.i ], [ -12, %dev_name.exit.i.out2_crit_edge ]
  %50 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %driver_data.i.i.i, align 4
  %52 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id.i, align 4
  %gdd_tasklet.i86 = getelementptr inbounds %struct.omap_ssi_controller, ptr %51, i32 0, i32 5
  tail call void @tasklet_kill(ptr noundef %gdd_tasklet.i86) #6
  tail call void @hsi_unregister_controller(ptr noundef %call2) #6
  %fck.i87 = getelementptr inbounds %struct.omap_ssi_controller, ptr %51, i32 0, i32 3
  %54 = ptrtoint ptr %fck.i87 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fck.i87, align 4
  %fck_nb.i88 = getelementptr inbounds %struct.omap_ssi_controller, ptr %51, i32 0, i32 8
  %call2.i89 = tail call i32 @clk_notifier_unregister(ptr noundef %55, ptr noundef %fck_nb.i88) #6
  br label %out1.sink.split

out1.sink.split:                                  ; preds = %out2, %ssi_add_controller.exit.thread97
  %.sink = phi i32 [ %34, %ssi_add_controller.exit.thread97 ], [ %53, %out2 ]
  %err.1.ph = phi i32 [ %err.0.i.ph, %ssi_add_controller.exit.thread97 ], [ %err.0, %out2 ]
  tail call void @ida_free(ptr noundef nonnull @platform_omap_ssi_ida, i32 noundef %.sink) #6
  br label %out1

out1:                                             ; preds = %out1.sink.split, %ssi_add_controller.exit.out1_crit_edge, %if.end.i.out1_crit_edge, %if.end9.out1_crit_edge
  %err.1 = phi i32 [ %err.0.i, %ssi_add_controller.exit.out1_crit_edge ], [ %call1.i79, %if.end.i.out1_crit_edge ], [ -12, %if.end9.out1_crit_edge ], [ %err.1.ph, %out1.sink.split ]
  %56 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %out1, %do.end40, %do.end7, %do.end
  %retval.0 = phi i32 [ %err.1, %out1 ], [ 0, %do.end40 ], [ -12, %do.end7 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_remove(ptr noundef %pd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3
  %call1 = tail call i32 @device_for_each_child(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @ssi_remove_ports) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %dir.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dir.i, align 4
  tail call void @debugfs_remove(ptr noundef %5) #6
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %id1.i = getelementptr inbounds %struct.hsi_controller, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id1.i, align 4
  %gdd_tasklet.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %7, i32 0, i32 5
  tail call void @tasklet_kill(ptr noundef %gdd_tasklet.i) #6
  tail call void @hsi_unregister_controller(ptr noundef %1) #6
  %fck.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %fck.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fck.i, align 4
  %fck_nb.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %7, i32 0, i32 8
  %call2.i = tail call i32 @clk_notifier_unregister(ptr noundef %11, ptr noundef %fck_nb.i) #6
  tail call void @ida_free(ptr noundef nonnull @platform_omap_ssi_ida, i32 noundef %9) #6
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hsi_alloc_controller(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ssi_hw_init(ptr noundef %ssi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ssi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %ssi, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !168
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #6
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #6, !srcloc !169
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !170
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ssi, ptr noundef nonnull @.str.38, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %gdd = getelementptr inbounds %struct.omap_ssi_controller, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %gdd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gdd, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #6, !srcloc !166
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %fck.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %fck.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fck.i, align 4
  %call1.i = tail call i32 @clk_get_rate(ptr noundef %10) #6
  %add = add i32 %call1.i, 500
  %div4 = udiv i32 %add, 1000
  %fck_rate = getelementptr inbounds %struct.omap_ssi_controller, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %fck_rate to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div4, ptr %fck_rate, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssi_hw_init.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssi_hw_init, %if.then10)) #6
          to label %do.end15 [label %if.then10], !srcloc !171

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %fck_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fck_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssi_hw_init.__UNIQUE_ID_ddebug241, ptr noundef %ssi, ptr noundef nonnull @.str.40, i32 noundef %13) #6
  br label %do.end15

do.end15:                                         ; preds = %if.then10, %if.end
  %sys = getelementptr inbounds %struct.omap_ssi_controller, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sys, align 4
  %add.ptr16 = getelementptr i8, ptr %15, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 134217728) #6, !srcloc !166
  %gdd_gcr = getelementptr inbounds %struct.omap_ssi_controller, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %gdd_gcr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %gdd_gcr, align 4
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent, align 8
  %call.i34 = tail call i32 @__pm_runtime_idle(ptr noundef %18, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %do.end15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_platform_device_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_remove_ports(ptr noundef %dev, ptr nocapture noundef readnone %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #6
  tail call void @of_device_unregister(ptr noundef %add.ptr) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssi_gdd_tasklet(i32 noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %dev to ptr
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %sys1 = getelementptr inbounds %struct.omap_ssi_controller, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %sys1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sys1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 5) #6
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 12, i32 18
  %9 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %pm_runtime_active.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

pm_runtime_active.exit:                           ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 12, i32 15
  %11 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.if.end_crit_edge, label %do.end

pm_runtime_active.exit.if.end_crit_edge:          ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.29) #9
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 8
  %call.i47 = tail call i32 @__pm_runtime_idle(ptr noundef %13, i32 noundef 5) #6
  br label %cleanup

if.end:                                           ; preds = %pm_runtime_active.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %4, i32 2048
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !172
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !173
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.then13

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ssi_gdd_complete(ptr noundef %0, i32 noundef 0)
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %if.end.for.inc_crit_edge
  %and.1 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then13.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then13.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ssi_gdd_complete(ptr noundef %0, i32 noundef 1)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then13.1, %for.inc.for.inc.1_crit_edge
  %and.2 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then13.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then13.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ssi_gdd_complete(ptr noundef %0, i32 noundef 2)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then13.2, %for.inc.1.for.inc.2_crit_edge
  %and.3 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then13.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then13.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ssi_gdd_complete(ptr noundef %0, i32 noundef 3)
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then13.3, %for.inc.2.for.inc.3_crit_edge
  %and.4 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then13.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.then13.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ssi_gdd_complete(ptr noundef %0, i32 noundef 4)
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then13.4, %for.inc.3.for.inc.4_crit_edge
  %and.5 = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then13.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

if.then13.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ssi_gdd_complete(ptr noundef %0, i32 noundef 5)
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then13.5, %for.inc.4.for.inc.5_crit_edge
  %and.6 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then13.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

if.then13.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ssi_gdd_complete(ptr noundef %0, i32 noundef 6)
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then13.6, %for.inc.5.for.inc.6_crit_edge
  %and.7 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then13.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

if.then13.7:                                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ssi_gdd_complete(ptr noundef %0, i32 noundef 7)
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then13.7, %for.inc.6.for.inc.7_crit_edge
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #6, !srcloc !166
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !174
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent, align 8
  %call.i48 = tail call i32 @__pm_runtime_idle(ptr noundef %18, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool25.not = icmp eq i32 %16, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %for.inc.7
  %state.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %2, i32 0, i32 5, i32 1
  %call.i49 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool.not.i = icmp eq i32 %call.i49, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  %gdd_tasklet = getelementptr inbounds %struct.omap_ssi_controller, ptr %2, i32 0, i32 5
  tail call void @__tasklet_hi_schedule(ptr noundef %gdd_tasklet) #6
  br label %cleanup

if.else:                                          ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  %gdd_irq = getelementptr inbounds %struct.omap_ssi_controller, ptr %2, i32 0, i32 4
  %19 = ptrtoint ptr %gdd_irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gdd_irq, align 4
  tail call void @enable_irq(i32 noundef %20) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.i, %if.then26.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_gdd_isr(i32 noundef %irq, ptr nocapture noundef readonly %ssi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ssi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %state.i = getelementptr inbounds %struct.omap_ssi_controller, ptr %1, i32 0, i32 5, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_hi_schedule.exit_crit_edge

entry.tasklet_hi_schedule.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tasklet_hi_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %gdd_tasklet = getelementptr inbounds %struct.omap_ssi_controller, ptr %1, i32 0, i32 5
  tail call void @__tasklet_hi_schedule(ptr noundef %gdd_tasklet) #6
  br label %tasklet_hi_schedule.exit

tasklet_hi_schedule.exit:                         ; preds = %if.then.i, %entry.tasklet_hi_schedule.exit_crit_edge
  tail call void @disable_irq_nosync(i32 noundef %irq) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_clk_event(ptr nocapture noundef %nb, i32 noundef %event, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -152
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %do.body
    i32 4, label %do.body12
    i32 2, label %entry.do.body30_crit_edge
  ]

entry.do.body30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssi_clk_event.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssi_clk_event, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !171

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssi_clk_event.__UNIQUE_ID_ddebug238, ptr noundef %1, ptr noundef nonnull @.str.35) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %num_ports = getelementptr inbounds %struct.hsi_controller, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_ports, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp100.not = icmp eq i32 %4, 0
  br i1 %cmp100.not, label %do.end.sw.epilog_crit_edge, label %for.body.lr.ph

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body.lr.ph:                                   ; preds = %do.end
  %port = getelementptr i8, ptr %nb, i32 32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port, align 4
  %arrayidx = getelementptr ptr, ptr %6, i32 %i.0101
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %if.end9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end9:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %wake_irq = getelementptr inbounds %struct.omap_ssi_port, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %wake_irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wake_irq, align 4
  tail call void @disable_irq(i32 noundef %10) #6
  %pdev = getelementptr inbounds %struct.omap_ssi_port, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %call10 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %12) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end9, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0101, 1
  %14 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_ports, align 8
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.sw.epilog_crit_edge

for.inc.sw.epilog_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssi_clk_event.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssi_clk_event, %if.then24)) #6
          to label %do.body30 [label %if.then24], !srcloc !171

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssi_clk_event.__UNIQUE_ID_ddebug239, ptr noundef %1, ptr noundef nonnull @.str.36) #6
  br label %do.body30

do.body30:                                        ; preds = %if.then24, %do.body12, %entry.do.body30_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssi_clk_event.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssi_clk_event, %if.then42)) #6
          to label %do.end46 [label %if.then42], !srcloc !171

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  %old_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 1
  %16 = ptrtoint ptr %old_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old_rate, align 4
  %new_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %18 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %new_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssi_clk_event.__UNIQUE_ID_ddebug240, ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef %17, i32 noundef %19) #6
  br label %do.end46

do.end46:                                         ; preds = %if.then42, %do.body30
  %new_rate47 = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %20 = ptrtoint ptr %new_rate47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %new_rate47, align 4
  %add = add i32 %21, 500
  %div49 = udiv i32 %add, 1000
  %fck_rate = getelementptr i8, ptr %nb, i32 12
  %22 = ptrtoint ptr %fck_rate to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div49, ptr %fck_rate, align 4
  %num_ports51 = getelementptr inbounds %struct.hsi_controller, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %num_ports51 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_ports51, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp5298.not = icmp eq i32 %24, 0
  br i1 %cmp5298.not, label %do.end46.sw.epilog_crit_edge, label %for.body53.lr.ph

do.end46.sw.epilog_crit_edge:                     ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body53.lr.ph:                                 ; preds = %do.end46
  %port54 = getelementptr i8, ptr %nb, i32 32
  br label %for.body53

for.body53:                                       ; preds = %for.inc62.for.body53_crit_edge, %for.body53.lr.ph
  %i.199 = phi i32 [ 0, %for.body53.lr.ph ], [ %inc63, %for.inc62.for.body53_crit_edge ]
  %25 = ptrtoint ptr %port54 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port54, align 4
  %arrayidx55 = getelementptr ptr, ptr %26, i32 %i.199
  %27 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx55, align 4
  %tobool56.not = icmp eq ptr %28, null
  br i1 %tobool56.not, label %for.body53.for.inc62_crit_edge, label %if.end58

for.body53.for.inc62_crit_edge:                   ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc62

if.end58:                                         ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @omap_ssi_port_update_fclk(ptr noundef %1, ptr noundef nonnull %28) #6
  %pdev59 = getelementptr inbounds %struct.omap_ssi_port, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %pdev59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev59, align 4
  %call60 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %30) #6
  %wake_irq61 = getelementptr inbounds %struct.omap_ssi_port, ptr %28, i32 0, i32 15
  %31 = ptrtoint ptr %wake_irq61 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %wake_irq61, align 4
  tail call void @enable_irq(i32 noundef %32) #6
  br label %for.inc62

for.inc62:                                        ; preds = %if.end58, %for.body53.for.inc62_crit_edge
  %inc63 = add nuw i32 %i.199, 1
  %33 = ptrtoint ptr %num_ports51 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_ports51, align 8
  %cmp52 = icmp ult i32 %inc63, %34
  br i1 %cmp52, label %for.inc62.for.body53_crit_edge, label %for.inc62.sw.epilog_crit_edge

for.inc62.sw.epilog_crit_edge:                    ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.inc62.for.body53_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body53

sw.epilog:                                        ; preds = %for.inc62.sw.epilog_crit_edge, %do.end46.sw.epilog_crit_edge, %for.inc.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsi_register_controller(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ssi_gdd_complete(ptr noundef %ssi, i32 noundef %lch) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ssi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.omap_ssi_controller, ptr %1, i32 0, i32 6, i32 %lch
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cl = getelementptr inbounds %struct.hsi_msg, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cl, align 4
  %parent = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %driver_data.i.i112 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i112 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i112, align 4
  %lock = getelementptr inbounds %struct.omap_ssi_controller, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %sys = getelementptr inbounds %struct.omap_ssi_controller, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sys, align 4
  %add.ptr3 = getelementptr i8, ptr %11, i32 2052
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #6, !srcloc !172
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !175
  %shl = shl nuw i32 1, %lch
  %neg = xor i32 %shl, -1
  %and = and i32 %13, %neg
  %14 = tail call i32 @llvm.bswap.i32(i32 %and)
  %15 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sys, align 4
  %add.ptr8 = getelementptr i8, ptr %16, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %14) #6, !srcloc !166
  %ttype = getelementptr inbounds %struct.hsi_msg, ptr %3, i32 0, i32 9
  %17 = ptrtoint ptr %ttype to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %ttype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %cmp = icmp sgt i8 %bf.load, -1
  %channel = getelementptr inbounds %struct.hsi_msg, ptr %3, i32 0, i32 8
  %18 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channel, align 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %19, 8
  %pdev = getelementptr inbounds %struct.omap_ssi_port, ptr %9, i32 0, i32 1
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %21, i32 noundef 5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.pn = phi i32 [ %add, %if.then ], [ %19, %entry.if.end_crit_edge ]
  %dir.0 = phi i32 [ 2, %if.then ], [ 1, %entry.if.end_crit_edge ]
  %val.0 = shl nuw i32 1, %add.pn
  %sgt = getelementptr inbounds %struct.hsi_msg, ptr %3, i32 0, i32 2
  %22 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sgt, align 4
  %nents = getelementptr inbounds %struct.hsi_msg, ptr %3, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nents, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %ssi, ptr noundef %23, i32 noundef %25, i32 noundef %dir.0, i32 noundef 0) #6
  %gdd = getelementptr inbounds %struct.omap_ssi_controller, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %gdd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %gdd, align 4
  %mul = shl i32 %lch, 6
  %add17 = add i32 %mul, 2054
  %add.ptr18 = getelementptr i8, ptr %27, i32 %add17
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18) #6, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !177
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssi_gdd_complete.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssi_gdd_complete, %if.then29)) #6
          to label %do.end [label %if.then29], !srcloc !171

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %channel31 = getelementptr inbounds %struct.hsi_msg, ptr %3, i32 0, i32 8
  %30 = ptrtoint ptr %channel31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %channel31, align 4
  %32 = ptrtoint ptr %ttype to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load33 = load i8, ptr %ttype, align 4
  %bf.lshr34 = lshr i8 %bf.load33, 7
  %bf.cast35 = zext i8 %bf.lshr34 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssi_gdd_complete.__UNIQUE_ID_ddebug237, ptr noundef %7, ptr noundef nonnull @.str.33, i32 noundef %31, i32 noundef %bf.cast35) #6
  br label %do.end

do.end:                                           ; preds = %if.then29, %if.end
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %33 = and i16 %28, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool39.not = icmp eq i16 %33, 0
  br i1 %tobool39.not, label %if.end45, label %if.then40

if.then40:                                        ; preds = %do.end
  %status = getelementptr inbounds %struct.hsi_msg, ptr %3, i32 0, i32 6
  %34 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4, ptr %status, align 4
  %actual_len = getelementptr inbounds %struct.hsi_msg, ptr %3, i32 0, i32 7
  %35 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %actual_len, align 4
  %lock41 = getelementptr inbounds %struct.omap_ssi_port, ptr %9, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock41) #6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then40.list_del.exit_crit_edge

if.then40.list_del.exit_crit_edge:                ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then40.list_del.exit_crit_edge
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock41) #6
  %errqueue = getelementptr inbounds %struct.omap_ssi_port, ptr %9, i32 0, i32 12
  %prev.i113 = getelementptr inbounds %struct.omap_ssi_port, ptr %9, i32 0, i32 12, i32 1
  %44 = ptrtoint ptr %prev.i113 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i113, align 4
  %call.i.i114 = tail call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %45, ptr noundef %errqueue) #6
  br i1 %call.i.i114, label %if.end.i.i115, label %list_del.exit.list_add_tail.exit_crit_edge

list_del.exit.list_add_tail.exit_crit_edge:       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i115:                                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %prev.i113 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %3, ptr %prev.i113, align 4
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %errqueue, ptr %3, align 4
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %3, ptr %45, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i115, %list_del.exit.list_add_tail.exit_crit_edge
  %errqueue_work = getelementptr inbounds %struct.omap_ssi_port, ptr %9, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %50 = load ptr, ptr @system_wq, align 4
  %call.i.i116 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %50, ptr noundef %errqueue_work, i32 noundef 0) #6
  br label %cleanup

if.end45:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %lock46 = getelementptr inbounds %struct.omap_ssi_port, ptr %9, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock46) #6
  %51 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sys, align 4
  %num = getelementptr inbounds %struct.hsi_port, ptr %7, i32 0, i32 3
  %53 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num, align 8
  %mul50 = shl i32 %54, 4
  %add51 = add i32 %mul50, 2060
  %add.ptr53 = getelementptr i8, ptr %52, i32 %add51
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #6, !srcloc !172
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !178
  %or = or i32 %56, %val.0
  %57 = tail call i32 @llvm.bswap.i32(i32 %or)
  %58 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sys, align 4
  %60 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num, align 8
  %mul59 = shl i32 %61, 4
  %add60 = add i32 %mul59, 2060
  %add.ptr62 = getelementptr i8, ptr %59, i32 %add60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %57) #6, !srcloc !166
  tail call void @_raw_spin_unlock(ptr noundef %lock46) #6
  %status64 = getelementptr inbounds %struct.hsi_msg, ptr %3, i32 0, i32 6
  %62 = ptrtoint ptr %status64 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %status64, align 4
  %63 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sgt, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dma_length, align 4
  %actual_len67 = getelementptr inbounds %struct.hsi_msg, ptr %3, i32 0, i32 7
  %67 = ptrtoint ptr %actual_len67 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %actual_len67, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %list_add_tail.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_hi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_idle_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_ssi_port_update_fclk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_regs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ssi_regs_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_regs_show(ptr noundef %m, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %sys1 = getelementptr inbounds %struct.omap_ssi_controller, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %sys1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sys1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !172
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.42, i32 noundef %9) #6
  %add.ptr7 = getelementptr i8, ptr %5, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #6, !srcloc !172
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !180
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.43, i32 noundef %11) #6
  %add.ptr13 = getelementptr i8, ptr %5, i32 20
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #6, !srcloc !172
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef %13) #6
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent, align 8
  %call.i27 = tail call i32 @__pm_runtime_idle(ptr noundef %15, i32 noundef 5) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_gdd_regs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ssi_gdd_regs_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssi_gdd_regs_show(ptr noundef %m, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %gdd1 = getelementptr inbounds %struct.omap_ssi_controller, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %gdd1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gdd1, align 4
  %sys2 = getelementptr inbounds %struct.omap_ssi_controller, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %sys2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sys2, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #6
  %add.ptr = getelementptr i8, ptr %7, i32 2048
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !172
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !182
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.45, i32 noundef %11) #6
  %add.ptr8 = getelementptr i8, ptr %7, i32 2052
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #6, !srcloc !172
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !183
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.46, i32 noundef %13) #6
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !172
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !184
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.47, i32 noundef %15) #6
  %add.ptr20 = getelementptr i8, ptr %5, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #6, !srcloc !172
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !185
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.48, i32 noundef %17) #6
  %add.ptr26 = getelementptr i8, ptr %5, i32 20
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #6, !srcloc !172
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !186
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.49, i32 noundef %19) #6
  %add.ptr32 = getelementptr i8, ptr %5, i32 64
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #6, !srcloc !172
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.50, i32 noundef %21) #6
  %add.ptr38 = getelementptr i8, ptr %5, i32 256
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #6, !srcloc !172
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !188
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.51, i32 noundef %23) #6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %lch.0179 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.52, i32 noundef %lch.0179) #6
  %mul = shl i32 %lch.0179, 6
  %add = add nuw nsw i32 %mul, 2048
  %add.ptr44 = getelementptr i8, ptr %5, i32 %add
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr44) #6, !srcloc !176
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !189
  %conv = zext i16 %25 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.53, i32 noundef %conv) #6
  %add51 = add nuw nsw i32 %mul, 2050
  %add.ptr52 = getelementptr i8, ptr %5, i32 %add51
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr52) #6, !srcloc !176
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !190
  %conv56 = zext i16 %27 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.54, i32 noundef %conv56) #6
  %add60 = add nuw nsw i32 %mul, 2052
  %add.ptr61 = getelementptr i8, ptr %5, i32 %add60
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr61) #6, !srcloc !176
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !191
  %conv65 = zext i16 %29 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.55, i32 noundef %conv65) #6
  %add69 = add nuw nsw i32 %mul, 2054
  %add.ptr70 = getelementptr i8, ptr %5, i32 %add69
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr70) #6, !srcloc !176
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !192
  %conv74 = zext i16 %31 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56, i32 noundef %conv74) #6
  %add78 = add nuw nsw i32 %mul, 2056
  %add.ptr79 = getelementptr i8, ptr %5, i32 %add78
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #6, !srcloc !172
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !193
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.57, i32 noundef %33) #6
  %add86 = add nuw nsw i32 %mul, 2060
  %add.ptr87 = getelementptr i8, ptr %5, i32 %add86
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #6, !srcloc !172
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !194
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.58, i32 noundef %35) #6
  %add94 = add nuw nsw i32 %mul, 2064
  %add.ptr95 = getelementptr i8, ptr %5, i32 %add94
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr95) #6, !srcloc !176
  %37 = tail call i16 @llvm.bswap.i16(i16 %36)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !195
  %conv99 = zext i16 %37 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.59, i32 noundef %conv99) #6
  %add103 = add nuw nsw i32 %mul, 2072
  %add.ptr104 = getelementptr i8, ptr %5, i32 %add103
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr104) #6, !srcloc !176
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !196
  %conv108 = zext i16 %39 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.60, i32 noundef %conv108) #6
  %add112 = add nuw nsw i32 %mul, 2074
  %add.ptr113 = getelementptr i8, ptr %5, i32 %add112
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr113) #6, !srcloc !176
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !197
  %conv117 = zext i16 %41 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.61, i32 noundef %conv117) #6
  %add121 = add nuw nsw i32 %mul, 2088
  %add.ptr122 = getelementptr i8, ptr %5, i32 %add121
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr122) #6, !srcloc !176
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !198
  %conv126 = zext i16 %43 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.62, i32 noundef %conv126) #6
  %inc = add nuw nsw i32 %lch.0179, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %parent, align 8
  %call.i178 = tail call i32 @__pm_runtime_idle(ptr noundef %45, i32 noundef 5) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hsi_unregister_controller(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_ssi_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_ssi_runtime_suspend.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_ssi_runtime_suspend, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_ssi_runtime_suspend.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.64) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %get_loss = getelementptr inbounds %struct.omap_ssi_controller, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %get_loss to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_loss, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %do.end.if.end9_crit_edge, label %if.then6

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %call8 = tail call i32 %5(ptr noundef %7) #6
  %loss_count = getelementptr inbounds %struct.omap_ssi_controller, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %loss_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call8, ptr %loss_count, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %do.end.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_ssi_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_ssi_runtime_resume.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap_ssi_runtime_resume, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_ssi_runtime_resume.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.66) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %get_loss = getelementptr inbounds %struct.omap_ssi_controller, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %get_loss to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_loss, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %do.end.if.end9_crit_edge, label %land.lhs.true

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

land.lhs.true:                                    ; preds = %do.end
  %loss_count = getelementptr inbounds %struct.omap_ssi_controller, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %loss_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %loss_count, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %call7 = tail call i32 %5(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %call7)
  %cmp = icmp eq i32 %7, %call7
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %do.end.if.end9_crit_edge
  %gdd_gcr = getelementptr inbounds %struct.omap_ssi_controller, ptr %3, i32 0, i32 12
  %10 = ptrtoint ptr %gdd_gcr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gdd_gcr, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %gdd = getelementptr inbounds %struct.omap_ssi_controller, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %gdd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gdd, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #6, !srcloc !166
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %land.lhs.true.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !41, !42, !43, !44, !46, !48, !50, !52, !54, !55, !56, !57, !59, !61, !62, !63, !65, !66, !68, !69, !71, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !88, !89, !91, !92, !93, !94, !96, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !152, !153, !155, !156}
!llvm.module.flags = !{!157, !158, !159, !160, !161, !162, !163, !164}
!llvm.ident = !{!165}

!0 = !{ptr @__ksymtab_ssi_waketest, !1, !"__ksymtab_ssi_waketest", i1 false, i1 false}
!1 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 165, i32 1}
!2 = !{ptr @__initcall__kmod_omap_ssi__244_633_ssi_init6, !3, !"__initcall__kmod_omap_ssi__244_633_ssi_init6", i1 false, i1 false}
!3 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 633, i32 1}
!4 = !{ptr @__exitcall_ssi_exit, !5, !"__exitcall_ssi_exit", i1 false, i1 false}
!5 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 639, i32 1}
!6 = !{ptr @__UNIQUE_ID_alias245, !7, !"__UNIQUE_ID_alias245", i1 false, i1 false}
!7 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 641, i32 1}
!8 = !{ptr @__UNIQUE_ID_author246, !9, !"__UNIQUE_ID_author246", i1 false, i1 false}
!9 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 642, i32 1}
!10 = !{ptr @__UNIQUE_ID_author247, !11, !"__UNIQUE_ID_author247", i1 false, i1 false}
!11 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 643, i32 1}
!12 = !{ptr @__UNIQUE_ID_description248, !13, !"__UNIQUE_ID_description248", i1 false, i1 false}
!13 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 644, i32 1}
!14 = !{ptr @__UNIQUE_ID_file249, !15, !"__UNIQUE_ID_file249", i1 false, i1 false}
!15 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 645, i32 1}
!16 = !{ptr @__UNIQUE_ID_license250, !15, !"__UNIQUE_ID_license250", i1 false, i1 false}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 618, i32 11}
!19 = !{ptr @ssi_pdriver, !20, !"ssi_pdriver", i1 false, i1 false}
!20 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 614, i32 31}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 490, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ssi_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @ssi_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 498, i32 3}
!31 = !{ptr @ssi_probe._entry.6, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ssi_probe._entry_ptr.8, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 520, i32 39}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 526, i32 4}
!37 = !{ptr @ssi_probe._entry.10, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ssi_probe._entry_ptr.12, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 531, i32 2}
!41 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ssi_probe._entry.13, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @ssi_probe._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 363, i32 29}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 366, i32 26}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 369, i32 26}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 372, i32 36}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 381, i32 3}
!54 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ssi_add_controller._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @ssi_add_controller._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 393, i32 45}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 395, i32 3}
!61 = !{ptr @ssi_add_controller._entry.24, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ssi_add_controller._entry_ptr.26, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @ssi_add_controller.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 409, i32 2}
!65 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 35, i32 8}
!68 = !{ptr @platform_omap_ssi_ida, !67, !"platform_omap_ssi_ida", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 229, i32 3}
!71 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @ssi_gdd_tasklet._entry, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @ssi_gdd_tasklet._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 195, i32 2}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @ssi_gdd_complete.__UNIQUE_ID_ddebug237, !76, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 280, i32 3}
!81 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ssi_clk_event.__UNIQUE_ID_ddebug238, !80, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 298, i32 3}
!85 = !{ptr @ssi_clk_event.__UNIQUE_ID_ddebug239, !84, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 301, i32 3}
!88 = !{ptr @ssi_clk_event.__UNIQUE_ID_ddebug240, !87, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 429, i32 3}
!91 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @ssi_hw_init._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @ssi_hw_init._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 436, i32 2}
!96 = !{ptr @ssi_hw_init.__UNIQUE_ID_ddebug241, !95, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 120, i32 22}
!99 = !{ptr @ssi_regs_fops, !100, !"ssi_regs_fops", i1 false, i1 false}
!100 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 107, i32 1}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 45, i32 16}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 46, i32 16}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 47, i32 16}
!107 = !{ptr @ssi_gdd_regs_fops, !108, !"ssi_gdd_regs_fops", i1 false, i1 false}
!108 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 108, i32 1}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 63, i32 16}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 65, i32 16}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 67, i32 16}
!115 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 69, i32 16}
!117 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 71, i32 16}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 73, i32 16}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 75, i32 16}
!123 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 79, i32 17}
!125 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 80, i32 17}
!127 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 82, i32 17}
!129 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 84, i32 17}
!131 = !{ptr @.str.56, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 86, i32 17}
!133 = !{ptr @.str.57, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 88, i32 17}
!135 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 90, i32 17}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 92, i32 17}
!139 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 94, i32 17}
!141 = !{ptr @.str.61, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 96, i32 17}
!143 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 98, i32 17}
!145 = !{ptr @omap_ssi_of_match, !146, !"omap_ssi_of_match", i1 false, i1 false}
!146 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 605, i32 34}
!147 = !{ptr @omap_ssi_pm_ops, !148, !"omap_ssi_pm_ops", i1 false, i1 false}
!148 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 594, i32 32}
!149 = !{ptr @.str.63, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 569, i32 2}
!151 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @omap_ssi_runtime_suspend.__UNIQUE_ID_ddebug242, !150, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!153 = !{ptr @.str.65, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/hsi/controllers/omap_ssi_core.c", i32 583, i32 2}
!155 = !{ptr @.str.66, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @omap_ssi_runtime_resume.__UNIQUE_ID_ddebug243, !154, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!157 = !{i32 1, !"wchar_size", i32 2}
!158 = !{i32 1, !"min_enum_size", i32 4}
!159 = !{i32 8, !"branch-target-enforcement", i32 0}
!160 = !{i32 8, !"sign-return-address", i32 0}
!161 = !{i32 8, !"sign-return-address-all", i32 0}
!162 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!163 = !{i32 7, !"uwtable", i32 1}
!164 = !{i32 7, !"frame-pointer", i32 2}
!165 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!166 = !{i64 723796}
!167 = !{!"branch_weights", i32 1, i32 2000}
!168 = !{i64 2148459293}
!169 = !{i64 945893, i64 945918, i64 945940, i64 945956, i64 945968, i64 945988, i64 946012, i64 946028, i64 946040}
!170 = !{i64 2148459481}
!171 = !{i64 2148201437, i64 2148201442, i64 2148201455, i64 2148201499, i64 2148201533, i64 2148201554}
!172 = !{i64 724214}
!173 = !{i64 2154541704}
!174 = !{i64 2154542398}
!175 = !{i64 2154530907}
!176 = !{i64 723376}
!177 = !{i64 2154531881}
!178 = !{i64 2154535057}
!179 = !{i64 2154512992}
!180 = !{i64 2154513455}
!181 = !{i64 2154513918}
!182 = !{i64 2154514419}
!183 = !{i64 2154514892}
!184 = !{i64 2154515340}
!185 = !{i64 2154515803}
!186 = !{i64 2154516266}
!187 = !{i64 2154516729}
!188 = !{i64 2154517197}
!189 = !{i64 2154517778}
!190 = !{i64 2154518357}
!191 = !{i64 2154518936}
!192 = !{i64 2154519515}
!193 = !{i64 2154520094}
!194 = !{i64 2154520673}
!195 = !{i64 2154521252}
!196 = !{i64 2154521831}
!197 = !{i64 2154522410}
!198 = !{i64 2154522989}
