; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/meson_nand.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/meson_nand.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.meson_nand_ecc = type { i32, i32 }
%struct.meson_nfc_data = type { ptr }
%struct.nand_ecc_caps = type { ptr, i32, ptr }
%struct.nand_ecc_step_info = type { i32, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.meson_nfc = type { %struct.nand_controller, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, %struct.completion, %struct.list_head, ptr, %struct.meson_nfc_param, %struct.nand_timing, %union.anon.78, i32, i32, i32 }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.meson_nfc_param = type { i32, i32 }
%struct.nand_timing = type { i32, i32, i32 }
%union.anon.78 = type { [32 x i32] }
%struct.meson_nfc_nand_chip = type { %struct.list_head, %struct.nand_chip, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, [0 x i8] }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.81, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.74 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.74 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.anon.81 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_op_instr = type { i32, %union.anon.75, i32 }
%union.anon.75 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.76, i8 }
%union.anon.76 = type { ptr }
%struct.nand_op_addr_instr = type { i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.mtd_oob_region = type { i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }

@__initcall__kmod_meson_nand__255_1469_meson_nfc_driver_init6 = internal global ptr @meson_nfc_driver_init, section ".initcall6.init", align 4
@meson_nfc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson_nfc_probe, ptr @meson_nfc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_nfc_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson_nfc_driver_exit = internal global ptr @meson_nfc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file256 = internal constant [48 x i8] c"meson_nand.file=drivers/mtd/nand/raw/meson_nand\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [32 x i8] c"meson_nand.license=Dual MIT/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author258 = internal constant [54 x i8] c"meson_nand.author=Liang Yang <liang.yang@amlogic.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description259 = internal constant [68 x i8] c"meson_nand.description=Amlogic's Meson NAND Flash Controller driver\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"meson-nand\00", [21 x i8] zeroinitializer }, align 32
@meson_nfc_id_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxl-nfc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_gxl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-axg-nfc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_axg_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amlogic,mmc-syscon\00", [45 x i8] zeroinitializer }, align 32
@meson_nfc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1403, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to lookup clock base\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"meson_nfc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/mtd/nand/raw/meson_nand.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_nfc_probe._entry_ptr = internal global ptr @meson_nfc_probe._entry, section ".printk_index", align 4
@meson_nfc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1413, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialize NAND clock\0A\00", [63 x i8] zeroinitializer }, align 32
@meson_nfc_probe._entry_ptr.9 = internal global ptr @meson_nfc_probe._entry.7, section ".printk_index", align 4
@meson_nfc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1420, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request NFC IRQ\0A\00", [37 x i8] zeroinitializer }, align 32
@meson_nfc_probe._entry_ptr.12 = internal global ptr @meson_nfc_probe._entry.10, section ".printk_index", align 4
@meson_nfc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1427, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to set DMA mask\0A\00", [40 x i8] zeroinitializer }, align 32
@meson_nfc_probe._entry_ptr.15 = internal global ptr @meson_nfc_probe._entry.13, section ".printk_index", align 4
@meson_nfc_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 1435, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to init NAND chips\0A\00", [37 x i8] zeroinitializer }, align 32
@meson_nfc_probe._entry_ptr.18 = internal global ptr @meson_nfc_probe._entry.16, section ".printk_index", align 4
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@meson_nfc_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 995, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get core clock\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"meson_nfc_clk_init\00", [45 x i8] zeroinitializer }, align 32
@meson_nfc_clk_init._entry_ptr = internal global ptr @meson_nfc_clk_init._entry, section ".printk_index", align 4
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@meson_nfc_clk_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.4, i32 1001, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get device clock\0A\00", [36 x i8] zeroinitializer }, align 32
@meson_nfc_clk_init._entry_ptr.27 = internal global ptr @meson_nfc_clk_init._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@meson_nfc_clk_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.23, ptr @.str.4, i32 1007, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to get TX clk\0A\00", [42 x i8] zeroinitializer }, align 32
@meson_nfc_clk_init._entry_ptr.31 = internal global ptr @meson_nfc_clk_init._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@meson_nfc_clk_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str.4, i32 1013, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to get RX clk\0A\00", [42 x i8] zeroinitializer }, align 32
@meson_nfc_clk_init._entry_ptr.35 = internal global ptr @meson_nfc_clk_init._entry.33, section ".printk_index", align 4
@meson_nfc_clk_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.23, ptr @.str.4, i32 1023, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable core clock\0A\00", [35 x i8] zeroinitializer }, align 32
@meson_nfc_clk_init._entry_ptr.38 = internal global ptr @meson_nfc_clk_init._entry.36, section ".printk_index", align 4
@meson_nfc_clk_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.23, ptr @.str.4, i32 1029, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable device clock\0A\00", [33 x i8] zeroinitializer }, align 32
@meson_nfc_clk_init._entry_ptr.41 = internal global ptr @meson_nfc_clk_init._entry.39, section ".printk_index", align 4
@meson_nfc_clk_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.23, ptr @.str.4, i32 1035, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable TX clock\0A\00", [37 x i8] zeroinitializer }, align 32
@meson_nfc_clk_init._entry_ptr.44 = internal global ptr @meson_nfc_clk_init._entry.42, section ".printk_index", align 4
@meson_nfc_clk_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.23, ptr @.str.4, i32 1041, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable RX clock\0A\00", [37 x i8] zeroinitializer }, align 32
@meson_nfc_clk_init._entry_ptr.47 = internal global ptr @meson_nfc_clk_init._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@meson_nfc_nand_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 1244, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid register property size\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"meson_nfc_nand_chip_init\00", [39 x i8] zeroinitializer }, align 32
@meson_nfc_nand_chip_init._entry_ptr = internal global ptr @meson_nfc_nand_chip_init._entry, section ".printk_index", align 4
@meson_nfc_nand_chip_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.4, i32 1259, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"could not retrieve register property: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@meson_nfc_nand_chip_init._entry_ptr.53 = internal global ptr @meson_nfc_nand_chip_init._entry.51, section ".printk_index", align 4
@meson_nfc_nand_chip_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.4, i32 1264, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CS %d already assigned\0A\00", [40 x i8] zeroinitializer }, align 32
@meson_nfc_nand_chip_init._entry_ptr.56 = internal global ptr @meson_nfc_nand_chip_init._entry.54, section ".printk_index", align 4
@meson_nand_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @meson_nand_attach_chip, ptr @meson_nand_detach_chip, ptr @meson_nfc_exec_op, ptr @meson_nfc_setup_interface }, [16 x i8] zeroinitializer }, align 32
@meson_nfc_nand_chip_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.50, ptr @.str.4, i32 1286, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register MTD device: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@meson_nfc_nand_chip_init._entry_ptr.59 = internal global ptr @meson_nfc_nand_chip_init._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s:nand%d\00", [22 x i8] zeroinitializer }, align 32
@meson_nand_attach_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.4, i32 1193, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to ECC init\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"meson_nand_attach_chip\00", [41 x i8] zeroinitializer }, align 32
@meson_nand_attach_chip._entry_ptr = internal global ptr @meson_nand_attach_chip._entry, section ".printk_index", align 4
@meson_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @meson_ooblayout_ecc, ptr @meson_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@meson_nand_attach_chip._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.4, i32 1215, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"16bits bus width not supported\00", [33 x i8] zeroinitializer }, align 32
@meson_nand_attach_chip._entry_ptr.65 = internal global ptr @meson_nand_attach_chip._entry.63, section ".printk_index", align 4
@meson_ecc = internal constant { [6 x %struct.meson_nand_ecc], [48 x i8] } { [6 x %struct.meson_nand_ecc] [%struct.meson_nand_ecc { i32 2, i32 8 }, %struct.meson_nand_ecc { i32 3, i32 24 }, %struct.meson_nand_ecc { i32 4, i32 30 }, %struct.meson_nand_ecc { i32 5, i32 40 }, %struct.meson_nand_ecc { i32 6, i32 50 }, %struct.meson_nand_ecc { i32 7, i32 60 }], [48 x i8] zeroinitializer }, align 32
@meson_nfc_select_chip.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@meson_nfc_select_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.4, i32 240, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set clock rate\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"meson_nfc_select_chip\00", [42 x i8] zeroinitializer }, align 32
@meson_nfc_select_chip._entry_ptr = internal global ptr @meson_nfc_select_chip._entry, section ".printk_index", align 4
@meson_nfc_dma_buffer_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.4, i32 484, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA mapping error\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"meson_nfc_dma_buffer_setup\00", [37 x i8] zeroinitializer }, align 32
@meson_nfc_dma_buffer_setup._entry_ptr = internal global ptr @meson_nfc_dma_buffer_setup._entry, section ".printk_index", align 4
@meson_nfc_dma_buffer_setup._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.4, i32 497, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@meson_nfc_dma_buffer_setup._entry_ptr.71 = internal global ptr @meson_nfc_dma_buffer_setup._entry.70, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@meson_nfc_wait_cmd_finish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.4, i32 319, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wait for empty CMD FIFO time out\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"meson_nfc_wait_cmd_finish\00", [38 x i8] zeroinitializer }, align 32
@meson_nfc_wait_cmd_finish._entry_ptr = internal global ptr @meson_nfc_wait_cmd_finish._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@meson_gxl_data = internal constant { %struct.meson_nfc_data, [28 x i8] } { %struct.meson_nfc_data { ptr @meson_gxl_ecc_caps }, [28 x i8] zeroinitializer }, align 32
@meson_axg_data = internal constant { %struct.meson_nfc_data, [28 x i8] } { %struct.meson_nfc_data { ptr @meson_axg_ecc_caps }, [28 x i8] zeroinitializer }, align 32
@meson_gxl_ecc_caps = internal constant { %struct.nand_ecc_caps, [20 x i8] } { %struct.nand_ecc_caps { ptr @meson_gxl_ecc_caps_stepinfo, i32 1, ptr @meson_nand_calc_ecc_bytes }, [20 x i8] zeroinitializer }, align 32
@meson_gxl_ecc_caps_stepinfo = internal constant { %struct.nand_ecc_step_info, [20 x i8] } { %struct.nand_ecc_step_info { i32 1024, ptr @meson_gxl_ecc_caps_strengths, i32 6 }, [20 x i8] zeroinitializer }, align 32
@meson_gxl_ecc_caps_strengths = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 8, i32 24, i32 30, i32 40, i32 50, i32 60], [40 x i8] zeroinitializer }, align 32
@meson_axg_ecc_caps = internal constant { %struct.nand_ecc_caps, [20 x i8] } { %struct.nand_ecc_caps { ptr @meson_axg_ecc_caps_stepinfo, i32 1, ptr @meson_nand_calc_ecc_bytes }, [20 x i8] zeroinitializer }, align 32
@meson_axg_ecc_caps_stepinfo = internal constant { %struct.nand_ecc_step_info, [20 x i8] } { %struct.nand_ecc_step_info { i32 1024, ptr @meson_axg_ecc_caps_strengths, i32 1 }, [20 x i8] zeroinitializer }, align 32
@meson_axg_ecc_caps_strengths = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 8], [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 8, i64 24, i64 30, i64 40, i64 50, i64 60]
@__sancov_gen_cov_switch_values.77 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"meson_nfc_driver\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1461, i32 31 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1465, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant [19 x i8] c"meson_nfc_id_table\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1361, i32 34 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1401, i32 7 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1403, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1413, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1420, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1427, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1435, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1105, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 87, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 993, i32 41 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 995, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 999, i32 43 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1001, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1005, i32 41 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1007, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1011, i32 41 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1013, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1023, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1029, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1035, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1041, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1242, i32 46 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1244, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1258, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1264, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant [26 x i8] c"meson_nand_controller_ops\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1225, i32 41 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1286, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1178, i32 9 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1193, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant [20 x i8] c"meson_ooblayout_ops\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 983, i32 39 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1215, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant [10 x i8] c"meson_ecc\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 190, i32 30 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 240, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 484, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 497, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 326, i32 6 }
@___asan_gen_.291 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 319, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.301 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 464, i32 31 }
@___asan_gen_.303 = private unnamed_addr constant [15 x i8] c"meson_gxl_data\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1353, i32 36 }
@___asan_gen_.306 = private unnamed_addr constant [15 x i8] c"meson_axg_data\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1357, i32 36 }
@___asan_gen_.309 = private unnamed_addr constant [19 x i8] c"meson_gxl_ecc_caps\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [28 x i8] c"meson_gxl_ecc_caps_stepinfo\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [29 x i8] c"meson_gxl_ecc_caps_strengths\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 212, i32 1 }
@___asan_gen_.318 = private unnamed_addr constant [19 x i8] c"meson_axg_ecc_caps\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [28 x i8] c"meson_axg_ecc_caps_stepinfo\00", align 1
@___asan_gen_.324 = private unnamed_addr constant [29 x i8] c"meson_axg_ecc_caps_strengths\00", align 1
@___asan_gen_.325 = private constant [37 x i8] c"../drivers/mtd/nand/raw/meson_nand.c\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 214, i32 1 }
@llvm.compiler.used = appending global [113 x ptr] [ptr @__UNIQUE_ID_author258, ptr @__UNIQUE_ID_description259, ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_license257, ptr @__exitcall_meson_nfc_driver_exit, ptr @__initcall__kmod_meson_nand__255_1469_meson_nfc_driver_init6, ptr @meson_nand_attach_chip._entry, ptr @meson_nand_attach_chip._entry.63, ptr @meson_nand_attach_chip._entry_ptr, ptr @meson_nand_attach_chip._entry_ptr.65, ptr @meson_nfc_clk_init._entry, ptr @meson_nfc_clk_init._entry.25, ptr @meson_nfc_clk_init._entry.29, ptr @meson_nfc_clk_init._entry.33, ptr @meson_nfc_clk_init._entry.36, ptr @meson_nfc_clk_init._entry.39, ptr @meson_nfc_clk_init._entry.42, ptr @meson_nfc_clk_init._entry.45, ptr @meson_nfc_clk_init._entry_ptr, ptr @meson_nfc_clk_init._entry_ptr.27, ptr @meson_nfc_clk_init._entry_ptr.31, ptr @meson_nfc_clk_init._entry_ptr.35, ptr @meson_nfc_clk_init._entry_ptr.38, ptr @meson_nfc_clk_init._entry_ptr.41, ptr @meson_nfc_clk_init._entry_ptr.44, ptr @meson_nfc_clk_init._entry_ptr.47, ptr @meson_nfc_dma_buffer_setup._entry, ptr @meson_nfc_dma_buffer_setup._entry.70, ptr @meson_nfc_dma_buffer_setup._entry_ptr, ptr @meson_nfc_dma_buffer_setup._entry_ptr.71, ptr @meson_nfc_driver_exit, ptr @meson_nfc_nand_chip_init._entry, ptr @meson_nfc_nand_chip_init._entry.51, ptr @meson_nfc_nand_chip_init._entry.54, ptr @meson_nfc_nand_chip_init._entry.57, ptr @meson_nfc_nand_chip_init._entry_ptr, ptr @meson_nfc_nand_chip_init._entry_ptr.53, ptr @meson_nfc_nand_chip_init._entry_ptr.56, ptr @meson_nfc_nand_chip_init._entry_ptr.59, ptr @meson_nfc_probe._entry, ptr @meson_nfc_probe._entry.10, ptr @meson_nfc_probe._entry.13, ptr @meson_nfc_probe._entry.16, ptr @meson_nfc_probe._entry.7, ptr @meson_nfc_probe._entry_ptr, ptr @meson_nfc_probe._entry_ptr.12, ptr @meson_nfc_probe._entry_ptr.15, ptr @meson_nfc_probe._entry_ptr.18, ptr @meson_nfc_probe._entry_ptr.9, ptr @meson_nfc_select_chip._entry, ptr @meson_nfc_select_chip._entry_ptr, ptr @meson_nfc_wait_cmd_finish._entry, ptr @meson_nfc_wait_cmd_finish._entry_ptr, ptr @meson_nfc_driver, ptr @.str, ptr @meson_nfc_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @nand_controller_init.__key, ptr @.str.19, ptr @init_completion.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @meson_nand_controller_ops, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @meson_ooblayout_ops, ptr @.str.64, ptr @meson_ecc, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @meson_gxl_data, ptr @meson_axg_data, ptr @meson_gxl_ecc_caps, ptr @meson_gxl_ecc_caps_stepinfo, ptr @meson_gxl_ecc_caps_strengths, ptr @meson_axg_ecc_caps, ptr @meson_axg_ecc_caps_stepinfo, ptr @meson_axg_ecc_caps_strengths], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_nfc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_nfc_id_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_nfc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_nfc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_nfc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_nfc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_nfc_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_nfc_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_nfc_clk_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_nfc_clk_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_nfc_clk_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_nfc_clk_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_nfc_clk_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_nfc_clk_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_nfc_clk_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_nfc_nand_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_nfc_nand_chip_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_nfc_nand_chip_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_nand_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_nfc_nand_chip_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_nand_attach_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_nand_attach_chip._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_ecc to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_nfc_select_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_nfc_dma_buffer_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_nfc_dma_buffer_setup._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_nfc_wait_cmd_finish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gxl_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_axg_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gxl_ecc_caps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gxl_ecc_caps_stepinfo to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_gxl_ecc_caps_strengths to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_axg_ecc_caps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_axg_ecc_caps_stepinfo to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_axg_ecc_caps_strengths to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_nfc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_nfc_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_nfc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_nfc_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_nfc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 360, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #11
  %data = getelementptr inbounds %struct.meson_nfc, ptr %call.i, i32 0, i32 12
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %data, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @nand_controller_init.__key) #11
  %chips = getelementptr inbounds %struct.meson_nfc, ptr %call.i, i32 0, i32 11
  %1 = ptrtoint ptr %chips to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %chips, ptr %chips, align 4
  %prev.i = getelementptr inbounds %struct.meson_nfc, ptr %call.i, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %chips, ptr %prev.i, align 4
  %completion = getelementptr inbounds %struct.meson_nfc, ptr %call.i, i32 0, i32 10
  %3 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.meson_nfc, ptr %call.i, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_completion.__key) #11
  %dev8 = getelementptr inbounds %struct.meson_nfc, ptr %call.i, i32 0, i32 7
  %4 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %dev8, align 4
  %call9 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %call10 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call9) #11
  %reg_base = getelementptr inbounds %struct.meson_nfc, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call10, ptr %reg_base, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call17 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %8, ptr noundef nonnull @.str.1) #11
  %reg_clk = getelementptr inbounds %struct.meson_nfc, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %reg_clk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call17, ptr %reg_clk, align 4
  %cmp.i104 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %do.end, label %if.end23

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #14
  %10 = ptrtoint ptr %reg_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_clk, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %call24 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %if.end23.cleanup_crit_edge, label %if.end26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  %13 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev8, align 4
  %call.i105 = tail call ptr @devm_clk_get(ptr noundef %14, ptr noundef nonnull @.str.21) #11
  %core_clk.i = getelementptr inbounds %struct.meson_nfc, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i105, ptr %core_clk.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i105, inttoptr (i32 -4096 to ptr)
  %16 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev8, align 4
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.22) #14
  br label %meson_nfc_clk_init.exit

if.end.i:                                         ; preds = %if.end26
  %call7.i = tail call ptr @devm_clk_get(ptr noundef %17, ptr noundef nonnull @.str.24) #11
  %device_clk.i = getelementptr inbounds %struct.meson_nfc, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %device_clk.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i, ptr %device_clk.i, align 4
  %cmp.i126.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %19 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev8, align 4
  br i1 %cmp.i126.i, label %do.end13.i, label %if.end17.i

do.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.26) #14
  br label %meson_nfc_clk_init.exit

if.end17.i:                                       ; preds = %if.end.i
  %call19.i = tail call ptr @devm_clk_get(ptr noundef %20, ptr noundef nonnull @.str.28) #11
  %phase_tx.i = getelementptr inbounds %struct.meson_nfc, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %phase_tx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call19.i, ptr %phase_tx.i, align 4
  %cmp.i127.i = icmp ugt ptr %call19.i, inttoptr (i32 -4096 to ptr)
  %22 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev8, align 4
  br i1 %cmp.i127.i, label %do.end25.i, label %if.end29.i

do.end25.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.30) #14
  br label %meson_nfc_clk_init.exit

if.end29.i:                                       ; preds = %if.end17.i
  %call31.i = tail call ptr @devm_clk_get(ptr noundef %23, ptr noundef nonnull @.str.32) #11
  %phase_rx.i = getelementptr inbounds %struct.meson_nfc, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %phase_rx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call31.i, ptr %phase_rx.i, align 4
  %cmp.i128.i = icmp ugt ptr %call31.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128.i, label %do.end37.i, label %if.end41.i

do.end37.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.34) #14
  br label %meson_nfc_clk_init.exit

if.end41.i:                                       ; preds = %if.end29.i
  %27 = ptrtoint ptr %reg_clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_clk, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 0, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %29 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %core_clk.i, align 4
  %call.i129.i = tail call i32 @clk_prepare(ptr noundef %30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129.i)
  %tobool.not.i.i = icmp eq i32 %call.i129.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end41.i.do.end48.i_crit_edge

if.end41.i.do.end48.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end48.i

if.end.i.i:                                       ; preds = %if.end41.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end50.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %30) #11
  br label %do.end48.i

do.end48.i:                                       ; preds = %if.then3.i.i, %if.end41.i.do.end48.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i129.i, %if.end41.i.do.end48.i_crit_edge ]
  %31 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.37) #14
  br label %do.end32

if.end50.i:                                       ; preds = %if.end.i.i
  %33 = ptrtoint ptr %device_clk.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device_clk.i, align 4
  %call.i130.i = tail call i32 @clk_prepare(ptr noundef %34) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130.i)
  %tobool.not.i131.i = icmp eq i32 %call.i130.i, 0
  br i1 %tobool.not.i131.i, label %if.end.i134.i, label %if.end50.i.do.end57.i_crit_edge

if.end50.i.do.end57.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end57.i

if.end.i134.i:                                    ; preds = %if.end50.i
  %call1.i132.i = tail call i32 @clk_enable(ptr noundef %34) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i132.i)
  %tobool2.not.i133.i = icmp eq i32 %call1.i132.i, 0
  br i1 %tobool2.not.i133.i, label %if.end59.i, label %if.then3.i135.i

if.then3.i135.i:                                  ; preds = %if.end.i134.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %34) #11
  br label %do.end57.i

do.end57.i:                                       ; preds = %if.then3.i135.i, %if.end50.i.do.end57.i_crit_edge
  %retval.0.i136.ph.i = phi i32 [ %call1.i132.i, %if.then3.i135.i ], [ %call.i130.i, %if.end50.i.do.end57.i_crit_edge ]
  %35 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.40) #14
  br label %err_device_clk.i

if.end59.i:                                       ; preds = %if.end.i134.i
  %37 = ptrtoint ptr %phase_tx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %phase_tx.i, align 4
  %call.i138.i = tail call i32 @clk_prepare(ptr noundef %38) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138.i)
  %tobool.not.i139.i = icmp eq i32 %call.i138.i, 0
  br i1 %tobool.not.i139.i, label %if.end.i142.i, label %if.end59.i.do.end66.i_crit_edge

if.end59.i.do.end66.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end66.i

if.end.i142.i:                                    ; preds = %if.end59.i
  %call1.i140.i = tail call i32 @clk_enable(ptr noundef %38) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i140.i)
  %tobool2.not.i141.i = icmp eq i32 %call1.i140.i, 0
  br i1 %tobool2.not.i141.i, label %if.end68.i, label %if.then3.i143.i

if.then3.i143.i:                                  ; preds = %if.end.i142.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %38) #11
  br label %do.end66.i

do.end66.i:                                       ; preds = %if.then3.i143.i, %if.end59.i.do.end66.i_crit_edge
  %retval.0.i144.ph.i = phi i32 [ %call1.i140.i, %if.then3.i143.i ], [ %call.i138.i, %if.end59.i.do.end66.i_crit_edge ]
  %39 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.43) #14
  br label %err_phase_tx.i

if.end68.i:                                       ; preds = %if.end.i142.i
  %41 = ptrtoint ptr %phase_rx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %phase_rx.i, align 4
  %call.i146.i = tail call i32 @clk_prepare(ptr noundef %42) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146.i)
  %tobool.not.i147.i = icmp eq i32 %call.i146.i, 0
  br i1 %tobool.not.i147.i, label %if.end.i150.i, label %if.end68.i.do.end75.i_crit_edge

if.end68.i.do.end75.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end75.i

if.end.i150.i:                                    ; preds = %if.end68.i
  %call1.i148.i = tail call i32 @clk_enable(ptr noundef %42) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i148.i)
  %tobool2.not.i149.i = icmp eq i32 %call1.i148.i, 0
  br i1 %tobool2.not.i149.i, label %if.end77.i, label %if.then3.i151.i

if.then3.i151.i:                                  ; preds = %if.end.i150.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %42) #11
  br label %do.end75.i

do.end75.i:                                       ; preds = %if.then3.i151.i, %if.end68.i.do.end75.i_crit_edge
  %retval.0.i152.ph.i = phi i32 [ %call1.i148.i, %if.then3.i151.i ], [ %call.i146.i, %if.end68.i.do.end75.i_crit_edge ]
  %43 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.46) #14
  br label %err_phase_rx.i

if.end77.i:                                       ; preds = %if.end.i150.i
  %45 = ptrtoint ptr %device_clk.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device_clk.i, align 4
  %call79.i = tail call i32 @clk_set_rate(ptr noundef %46, i32 noundef 24000000) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool80.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool80.not.i, label %if.end77.i.do.body34_crit_edge, label %err_disable_rx.i

if.end77.i.do.body34_crit_edge:                   ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body34

err_disable_rx.i:                                 ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %phase_rx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %phase_rx.i, align 4
  tail call void @clk_disable(ptr noundef %48) #11
  tail call void @clk_unprepare(ptr noundef %48) #11
  br label %err_phase_rx.i

err_phase_rx.i:                                   ; preds = %err_disable_rx.i, %do.end75.i
  %ret.0.i = phi i32 [ %retval.0.i152.ph.i, %do.end75.i ], [ %call79.i, %err_disable_rx.i ]
  %49 = ptrtoint ptr %phase_tx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %phase_tx.i, align 4
  tail call void @clk_disable(ptr noundef %50) #11
  tail call void @clk_unprepare(ptr noundef %50) #11
  br label %err_phase_tx.i

err_phase_tx.i:                                   ; preds = %err_phase_rx.i, %do.end66.i
  %ret.1.i = phi i32 [ %retval.0.i144.ph.i, %do.end66.i ], [ %ret.0.i, %err_phase_rx.i ]
  %51 = ptrtoint ptr %device_clk.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %device_clk.i, align 4
  tail call void @clk_disable(ptr noundef %52) #11
  tail call void @clk_unprepare(ptr noundef %52) #11
  br label %err_device_clk.i

err_device_clk.i:                                 ; preds = %err_phase_tx.i, %do.end57.i
  %ret.2.i = phi i32 [ %retval.0.i136.ph.i, %do.end57.i ], [ %ret.1.i, %err_phase_tx.i ]
  %53 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %core_clk.i, align 4
  tail call void @clk_disable(ptr noundef %54) #11
  tail call void @clk_unprepare(ptr noundef %54) #11
  br label %do.end32

meson_nfc_clk_init.exit:                          ; preds = %do.end37.i, %do.end25.i, %do.end13.i, %do.end.i
  %retval.0.i.in.in = phi ptr [ %core_clk.i, %do.end.i ], [ %device_clk.i, %do.end13.i ], [ %phase_tx.i, %do.end25.i ], [ %phase_rx.i, %do.end37.i ]
  %55 = ptrtoint ptr %retval.0.i.in.in to i32
  call void @__asan_load4_noabort(i32 %55)
  %retval.0.i.in = load ptr, ptr %retval.0.i.in.in, align 4
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %tobool28.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool28.not, label %meson_nfc_clk_init.exit.do.body34_crit_edge, label %meson_nfc_clk_init.exit.do.end32_crit_edge

meson_nfc_clk_init.exit.do.end32_crit_edge:       ; preds = %meson_nfc_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end32

meson_nfc_clk_init.exit.do.body34_crit_edge:      ; preds = %meson_nfc_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body34

do.end32:                                         ; preds = %meson_nfc_clk_init.exit.do.end32_crit_edge, %err_device_clk.i, %do.end48.i
  %retval.0.i116 = phi i32 [ %retval.0.i, %meson_nfc_clk_init.exit.do.end32_crit_edge ], [ %ret.2.i, %err_device_clk.i ], [ %retval.0.i.ph.i, %do.end48.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #14
  br label %cleanup

do.body34:                                        ; preds = %meson_nfc_clk_init.exit.do.body34_crit_edge, %if.end77.i.do.body34_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @arm_heavy_mb() #11
  %56 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %57, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #11, !srcloc !174
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %58 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %59, null
  br i1 %tobool.not.i, label %if.end.i106, label %do.body34.dev_name.exit_crit_edge

do.body34.dev_name.exit_crit_edge:                ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i106:                                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i106, %do.body34.dev_name.exit_crit_edge
  %retval.0.i107 = phi ptr [ %61, %if.end.i106 ], [ %59, %do.body34.dev_name.exit_crit_edge ]
  %call.i108 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call24, ptr noundef nonnull @meson_nfc_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i107, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool40.not = icmp eq i32 %call.i108, 0
  br i1 %tobool40.not, label %if.end45, label %do.end44

do.end44:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #14
  br label %err_clk

if.end45:                                         ; preds = %dev_name.exit
  %call46 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end52, label %do.end51

do.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #14
  br label %err_clk

if.end52:                                         ; preds = %if.end45
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %62 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %63 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %of_node, align 8
  %call.i109 = tail call ptr @of_get_next_child(ptr noundef %64, ptr noundef null) #11
  %cmp.not24.i = icmp eq ptr %call.i109, null
  br i1 %cmp.not24.i, label %if.end52.cleanup_crit_edge, label %for.body.lr.ph.i

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end52
  %assigned_cs.i.i = getelementptr inbounds %struct.meson_nfc, ptr %call.i, i32 0, i32 18
  %ops.i.i = getelementptr inbounds %struct.nand_controller, ptr %call.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %nand_np.025.i = phi ptr [ %call.i109, %for.body.lr.ph.i ], [ %call3.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #11
  %65 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !175
  %call.i.i110 = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %nand_np.025.i, ptr noundef nonnull @.str.48, i32 noundef 4) #11
  %66 = add i32 %call.i.i110, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %66)
  %67 = icmp ult i32 %66, -2
  br i1 %67, label %do.end.i.i, label %if.end.i.i111

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.49) #14
  br label %do.end58

if.end.i.i111:                                    ; preds = %for.body.i
  %spec.select.i82.i.i = add nuw nsw i32 %call.i.i110, 2216
  %call.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %spec.select.i82.i.i, i32 noundef 3520) #11
  %tobool3.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool3.not.i.i, label %if.end.i.i111.do.end58_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i111.do.end58_crit_edge:                 ; preds = %if.end.i.i111
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end58

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i111
  %nsels6.i.i = getelementptr inbounds %struct.meson_nfc_nand_chip, ptr %call.i.i.i, i32 0, i32 11
  %68 = ptrtoint ptr %nsels6.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call.i.i110, ptr %nsels6.i.i, align 4
  %call8.i.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %nand_np.025.i, ptr noundef nonnull @.str.48, i32 noundef 0, ptr noundef nonnull %tmp.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end14.i.i, label %for.body.lr.ph.i.i.do.end13.i.i_crit_edge

for.body.lr.ph.i.i.do.end13.i.i_crit_edge:        ; preds = %for.body.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13.i.i

for.cond.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i110)
  %exitcond.not.i.i = icmp eq i32 %call.i.i110, 1
  br i1 %exitcond.not.i.i, label %for.cond.i.i.for.end.i.i_crit_edge, label %for.body.i.i.1

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.i.i.1:                                   ; preds = %for.cond.i.i
  %call8.i.i.1 = call i32 @of_property_read_u32_index(ptr noundef nonnull %nand_np.025.i, ptr noundef nonnull @.str.48, i32 noundef 1, ptr noundef nonnull %tmp.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.1)
  %tobool9.not.i.i.1 = icmp eq i32 %call8.i.i.1, 0
  br i1 %tobool9.not.i.i.1, label %if.end14.i.i.1, label %for.body.i.i.1.do.end13.i.i_crit_edge

for.body.i.i.1.do.end13.i.i_crit_edge:            ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13.i.i

if.end14.i.i.1:                                   ; preds = %for.body.i.i.1
  %69 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tmp.i.i, align 4
  %call15.i.i.1 = call i32 @_test_and_set_bit(i32 noundef %70, ptr noundef %assigned_cs.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.1)
  %tobool16.not.i.i.1 = icmp eq i32 %call15.i.i.1, 0
  br i1 %tobool16.not.i.i.1, label %if.end14.i.i.1.for.end.i.i_crit_edge, label %if.end14.i.i.1.do.end20.i.i_crit_edge

if.end14.i.i.1.do.end20.i.i_crit_edge:            ; preds = %if.end14.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20.i.i

if.end14.i.i.1.for.end.i.i_crit_edge:             ; preds = %if.end14.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

do.end13.i.i:                                     ; preds = %for.body.i.i.1.do.end13.i.i_crit_edge, %for.body.lr.ph.i.i.do.end13.i.i_crit_edge
  %call8.i.i.lcssa = phi i32 [ %call8.i.i, %for.body.lr.ph.i.i.do.end13.i.i_crit_edge ], [ %call8.i.i.1, %for.body.i.i.1.do.end13.i.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.52, i32 noundef %call8.i.i.lcssa) #14
  br label %do.end58

if.end14.i.i:                                     ; preds = %for.body.lr.ph.i.i
  %71 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tmp.i.i, align 4
  %call15.i.i = call i32 @_test_and_set_bit(i32 noundef %72, ptr noundef %assigned_cs.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %for.cond.i.i, label %if.end14.i.i.do.end20.i.i_crit_edge

if.end14.i.i.do.end20.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end20.i.i

do.end20.i.i:                                     ; preds = %if.end14.i.i.do.end20.i.i_crit_edge, %if.end14.i.i.1.do.end20.i.i_crit_edge
  %73 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tmp.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.55, i32 noundef %74) #14
  br label %do.end58

for.end.i.i:                                      ; preds = %if.end14.i.i.1.for.end.i.i_crit_edge, %for.cond.i.i.for.end.i.i_crit_edge
  %nand22.i.i = getelementptr inbounds %struct.meson_nfc_nand_chip, ptr %call.i.i.i, i32 0, i32 1
  %controller23.i.i = getelementptr inbounds %struct.meson_nfc_nand_chip, ptr %call.i.i.i, i32 0, i32 1, i32 32
  %75 = ptrtoint ptr %controller23.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i, ptr %controller23.i.i, align 4
  %76 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @meson_nand_controller_ops, ptr %ops.i.i, align 4
  %of_node.i.i.i.i = getelementptr inbounds %struct.meson_nfc_nand_chip, ptr %call.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 27
  %77 = ptrtoint ptr %of_node.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %nand_np.025.i, ptr %of_node.i.i.i.i, align 8
  %name.i.i.i.i = getelementptr inbounds %struct.meson_nfc_nand_chip, ptr %call.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 13
  %78 = ptrtoint ptr %name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %79, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %for.end.i.i.nand_set_flash_node.exit.i.i_crit_edge

for.end.i.i.nand_set_flash_node.exit.i.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nand_set_flash_node.exit.i.i

if.then.i.i.i.i:                                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = call i32 @of_property_read_string(ptr noundef nonnull %nand_np.025.i, ptr noundef nonnull @.str.76, ptr noundef %name.i.i.i.i) #11
  br label %nand_set_flash_node.exit.i.i

nand_set_flash_node.exit.i.i:                     ; preds = %if.then.i.i.i.i, %for.end.i.i.nand_set_flash_node.exit.i.i_crit_edge
  %priv1.i.i.i = getelementptr inbounds %struct.meson_nfc_nand_chip, ptr %call.i.i.i, i32 0, i32 1, i32 34
  %80 = ptrtoint ptr %priv1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call.i, ptr %priv1.i.i.i, align 8
  %options.i.i = getelementptr inbounds %struct.meson_nfc_nand_chip, ptr %call.i.i.i, i32 0, i32 1, i32 6
  %81 = ptrtoint ptr %options.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %options.i.i, align 8
  %or.i.i = or i32 %82, 1048576
  store i32 %or.i.i, ptr %options.i.i, align 8
  %owner.i.i = getelementptr inbounds %struct.meson_nfc_nand_chip, ptr %call.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 55
  %83 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %owner.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.meson_nfc_nand_chip, ptr %call.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 1
  %84 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %dev1, ptr %parent.i.i, align 8
  %call.i80.i.i = call i32 @nand_scan_with_ids(ptr noundef %nand22.i.i, i32 noundef %call.i.i110, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80.i.i)
  %tobool28.not.i.i = icmp eq i32 %call.i80.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end30.i.i, label %nand_set_flash_node.exit.i.i.do.end58_crit_edge

nand_set_flash_node.exit.i.i.do.end58_crit_edge:  ; preds = %nand_set_flash_node.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end58

if.end30.i.i:                                     ; preds = %nand_set_flash_node.exit.i.i
  %call31.i.i = call i32 @mtd_device_parse_register(ptr noundef %nand22.i.i, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %tobool32.not.i.i = icmp eq i32 %call31.i.i, 0
  br i1 %tobool32.not.i.i, label %if.end37.i.i, label %do.end36.i.i

do.end36.i.i:                                     ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.58, i32 noundef %call31.i.i) #14
  call void @nand_cleanup(ptr noundef %nand22.i.i) #11
  br label %do.end58

if.end37.i.i:                                     ; preds = %if.end30.i.i
  %85 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i, align 4
  %call.i.i81.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i.i, ptr noundef %86, ptr noundef %chips) #11
  br i1 %call.i.i81.i.i, label %if.end.i.i.i.i, label %if.end37.i.i.for.inc.i_crit_edge

if.end37.i.i.for.inc.i_crit_edge:                 ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i.i.i.i:                                   ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %87 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call.i.i.i, ptr %prev.i, align 4
  %88 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %chips, ptr %call.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i.i, i32 0, i32 1
  %89 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev3.i.i.i.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %call.i.i.i, ptr %86, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.i.i, %if.end37.i.i.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #11
  %call3.i = call ptr @of_get_next_child(ptr noundef %64, ptr noundef nonnull %nand_np.025.i) #11
  %cmp.not.i = icmp eq ptr %call3.i, null
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end58:                                         ; preds = %do.end36.i.i, %nand_set_flash_node.exit.i.i.do.end58_crit_edge, %do.end20.i.i, %do.end13.i.i, %if.end.i.i111.do.end58_crit_edge, %do.end.i.i
  %retval.0.i.ph.i112 = phi i32 [ %call31.i.i, %do.end36.i.i ], [ -22, %do.end20.i.i ], [ %call8.i.i.lcssa, %do.end13.i.i ], [ -22, %do.end.i.i ], [ -12, %if.end.i.i111.do.end58_crit_edge ], [ %call.i80.i.i, %nand_set_flash_node.exit.i.i.do.end58_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #11
  %call2.i = call fastcc i32 @meson_nfc_nand_chip_cleanup(ptr noundef %call.i) #11
  call void @of_node_put(ptr noundef nonnull %nand_np.025.i) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #14
  br label %err_clk

err_clk:                                          ; preds = %do.end58, %do.end51, %do.end44
  %ret.0 = phi i32 [ -22, %do.end44 ], [ %call46, %do.end51 ], [ %retval.0.i.ph.i112, %do.end58 ]
  call fastcc void @meson_nfc_disable_clk(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %for.inc.i.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %do.end32, %if.end23.cleanup_crit_edge, %do.end, %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then13 ], [ %12, %do.end ], [ %retval.0.i116, %do.end32 ], [ %ret.0, %err_clk ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -22, %if.end23.cleanup_crit_edge ], [ 0, %if.end52.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_nfc_remove(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @meson_nfc_nand_chip_cleanup(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %phase_rx.i = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %phase_rx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phase_rx.i, align 4
  tail call void @clk_disable(ptr noundef %3) #11
  tail call void @clk_unprepare(ptr noundef %3) #11
  %phase_tx.i = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %phase_tx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phase_tx.i, align 4
  tail call void @clk_disable(ptr noundef %5) #11
  tail call void @clk_unprepare(ptr noundef %5) #11
  %device_clk.i = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %device_clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_clk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #11
  tail call void @clk_unprepare(ptr noundef %7) #11
  %core_clk.i = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core_clk.i, align 4
  tail call void @clk_disable(ptr noundef %9) #11
  tail call void @clk_unprepare(ptr noundef %9) #11
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_nfc_irq(i32 noundef %irq, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.meson_nfc, ptr %id, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !176
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !177
  %and = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and2 = and i32 %3, -2097153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !178
  tail call void @arm_heavy_mb() #11
  %4 = tail call i32 @llvm.bswap.i32(i32 %and2)
  %5 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %4) #11, !srcloc !174
  %completion = getelementptr inbounds %struct.meson_nfc, ptr %id, i32 0, i32 10
  tail call void @complete(ptr noundef %completion) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_nfc_disable_clk(ptr nocapture noundef readonly %nfc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %phase_rx = getelementptr inbounds %struct.meson_nfc, ptr %nfc, i32 0, i32 4
  %0 = ptrtoint ptr %phase_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phase_rx, align 4
  tail call void @clk_disable(ptr noundef %1) #11
  tail call void @clk_unprepare(ptr noundef %1) #11
  %phase_tx = getelementptr inbounds %struct.meson_nfc, ptr %nfc, i32 0, i32 3
  %2 = ptrtoint ptr %phase_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phase_tx, align 4
  tail call void @clk_disable(ptr noundef %3) #11
  tail call void @clk_unprepare(ptr noundef %3) #11
  %device_clk = getelementptr inbounds %struct.meson_nfc, ptr %nfc, i32 0, i32 2
  %4 = ptrtoint ptr %device_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #11
  tail call void @clk_unprepare(ptr noundef %5) #11
  %core_clk = getelementptr inbounds %struct.meson_nfc, ptr %nfc, i32 0, i32 1
  %6 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #11
  tail call void @clk_unprepare(ptr noundef %7) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_nfc_nand_chip_cleanup(ptr noundef %nfc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chips = getelementptr inbounds %struct.meson_nfc, ptr %nfc, i32 0, i32 11
  %0 = ptrtoint ptr %chips to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %chips, align 4
  %cmp.i.not14 = icmp eq ptr %1, %chips
  br i1 %cmp.i.not14, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %16, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %nand = getelementptr inbounds %struct.meson_nfc_nand_chip, ptr %2, i32 0, i32 1
  %call3 = tail call i32 @mtd_device_unregister(ptr noundef %nand) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %while.body
  %info_buf.i = getelementptr %struct.meson_nfc_nand_chip, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %info_buf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info_buf.i, align 8
  tail call void @kfree(ptr noundef %4) #11
  %data_buf.i = getelementptr %struct.meson_nfc_nand_chip, ptr %2, i32 0, i32 9
  %5 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data_buf.i, align 4
  tail call void @kfree(ptr noundef %6) #11
  tail call void @nand_cleanup(ptr noundef %nand) #11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %15 = ptrtoint ptr %chips to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %chips, align 4
  %cmp.i.not = icmp eq ptr %16, %chips
  br i1 %cmp.i.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %list_del.exit.cleanup_crit_edge ], [ %call3, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_nand_attach_chip(ptr noundef %nand) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %2 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize, align 4
  %name = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 13
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %if.then.dev_name.exit_crit_edge ]
  %sels = getelementptr i8, ptr %nand, i32 2208
  %12 = ptrtoint ptr %sels to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sels, align 8
  %conv = zext i8 %13 to i32
  %call5 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %7, i32 noundef 3264, ptr noundef nonnull @.str.60, ptr noundef %retval.0.i, i32 noundef %conv) #11
  %14 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5, ptr %name, align 8
  %tobool8.not = icmp eq ptr %call5, null
  br i1 %tobool8.not, label %dev_name.exit.cleanup_crit_edge, label %dev_name.exit.if.end10_crit_edge

dev_name.exit.if.end10_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %dev_name.exit.if.end10_crit_edge, %entry.if.end10_crit_edge
  %bbt_options = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 10
  %15 = ptrtoint ptr %bbt_options to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bbt_options, align 8
  %and = and i32 %16, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end10.if.end14_crit_edge, label %if.then12

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %16, 262144
  %17 = ptrtoint ptr %bbt_options to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or, ptr %bbt_options, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  %options = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 6
  %18 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %options, align 8
  %or15 = or i32 %19, 512
  store i32 %or15, ptr %options, align 8
  %data = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 12
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 6
  %24 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %oobsize, align 4
  %26 = lshr i32 %3, 9
  %mul = and i32 %26, 8388606
  %sub = sub i32 %25, %mul
  %call16 = tail call i32 @nand_ecc_choose_conf(ptr noundef %nand, ptr noundef %23, i32 noundef %sub) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end20, label %do.end

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %dev19 = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.61) #14
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %ooblayout1.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 15
  %29 = ptrtoint ptr %ooblayout1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @meson_ooblayout_ops, ptr %ooblayout1.i, align 8
  %strength.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 7
  %30 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %strength.i, align 4
  %32 = add i32 %31, -61
  call void @__sanitizer_cov_trace_const_cmp4(i32 -53, i32 %32)
  %33 = icmp ult i32 %32, -53
  br i1 %33, label %if.end20.cleanup_crit_edge, label %for.body.preheader.i

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end20
  %34 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %31, label %for.body.preheader.i.cleanup_crit_edge [
    i32 8, label %for.body.preheader.i.if.end24_crit_edge
    i32 24, label %if.then9.fold.split.i
    i32 30, label %if.then9.fold.split22.i
    i32 40, label %if.then9.fold.split23.i
    i32 50, label %if.then9.fold.split24.i
    i32 60, label %if.then9.fold.split25.i
  ]

for.body.preheader.i.if.end24_crit_edge:          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

for.body.preheader.i.cleanup_crit_edge:           ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9.fold.split.i:                            ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then9.fold.split22.i:                          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then9.fold.split23.i:                          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then9.fold.split24.i:                          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then9.fold.split25.i:                          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end24:                                         ; preds = %if.then9.fold.split25.i, %if.then9.fold.split24.i, %if.then9.fold.split23.i, %if.then9.fold.split22.i, %if.then9.fold.split.i, %for.body.preheader.i.if.end24_crit_edge
  %i.020.lcssa.i = phi i32 [ 0, %for.body.preheader.i.if.end24_crit_edge ], [ 1, %if.then9.fold.split.i ], [ 2, %if.then9.fold.split22.i ], [ 3, %if.then9.fold.split23.i ], [ 4, %if.then9.fold.split24.i ], [ 5, %if.then9.fold.split25.i ]
  %arrayidx.i = getelementptr [6 x %struct.meson_nand_ecc], ptr @meson_ecc, i32 0, i32 %i.020.lcssa.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i, align 4
  %bch_mode.i = getelementptr i8, ptr %nand, i32 2192
  %37 = ptrtoint ptr %bch_mode.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %bch_mode.i, align 8
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33
  %38 = ptrtoint ptr %ecc to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3, ptr %ecc, align 8
  %write_page_raw = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 17
  %39 = ptrtoint ptr %write_page_raw to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @meson_nfc_write_page_raw, ptr %write_page_raw, align 4
  %write_page = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 21
  %40 = ptrtoint ptr %write_page to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @meson_nfc_write_page_hwecc, ptr %write_page, align 4
  %write_oob_raw = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 22
  %41 = ptrtoint ptr %write_oob_raw to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @nand_write_oob_std, ptr %write_oob_raw, align 8
  %write_oob = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 25
  %42 = ptrtoint ptr %write_oob to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @nand_write_oob_std, ptr %write_oob, align 4
  %read_page_raw = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 16
  %43 = ptrtoint ptr %read_page_raw to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @meson_nfc_read_page_raw, ptr %read_page_raw, align 8
  %read_page = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 18
  %44 = ptrtoint ptr %read_page to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @meson_nfc_read_page_hwecc, ptr %read_page, align 8
  %read_oob_raw = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 23
  %45 = ptrtoint ptr %read_oob_raw to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @meson_nfc_read_oob_raw, ptr %read_oob_raw, align 4
  %read_oob = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 24
  %46 = ptrtoint ptr %read_oob to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @meson_nfc_read_oob, ptr %read_oob, align 8
  %47 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %options, align 8
  %and34 = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end41, label %do.end39

do.end39:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %dev40 = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 7
  %49 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.64) #14
  br label %cleanup

if.end41:                                         ; preds = %if.end24
  %51 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %writesize, align 4
  %size.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 4
  %53 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size.i, align 8
  %55 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %oobsize, align 4
  %add.i = add i32 %56, %52
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #15
  %data_buf.i = getelementptr i8, ptr %nand, i32 2196
  %57 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call9.i.i, ptr %data_buf.i, align 4
  %tobool.not.i82 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i82, label %if.end41.cleanup_crit_edge, label %if.end8.i52.i

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i52.i:                                    ; preds = %if.end41
  %div.i = udiv i32 %52, %54
  %mul.i = shl i32 %div.i, 3
  %call9.i51.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3264) #15
  %info_buf.i = getelementptr i8, ptr %nand, i32 2200
  %58 = ptrtoint ptr %info_buf.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call9.i51.i, ptr %info_buf.i, align 8
  %tobool7.not.i = icmp eq ptr %call9.i51.i, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end8.i52.i.cleanup_crit_edge

if.end8.i52.i.cleanup_crit_edge:                  ; preds = %if.end8.i52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8.i:                                       ; preds = %if.end8.i52.i
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data_buf.i, align 4
  tail call void @kfree(ptr noundef %60) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then8.i, %if.end8.i52.i.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %do.end39, %for.body.preheader.i.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %do.end, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end39 ], [ -12, %dev_name.exit.cleanup_crit_edge ], [ -12, %if.end41.cleanup_crit_edge ], [ -12, %if.then8.i ], [ 0, %if.end8.i52.i.cleanup_crit_edge ], [ -22, %if.end20.cleanup_crit_edge ], [ -22, %for.body.preheader.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_nand_detach_chip(ptr nocapture noundef readonly %nand) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %info_buf.i = getelementptr i8, ptr %nand, i32 2200
  %0 = ptrtoint ptr %info_buf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info_buf.i, align 8
  tail call void @kfree(ptr noundef %1) #11
  %data_buf.i = getelementptr i8, ptr %nand, i32 2196
  %2 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_buf.i, align 4
  tail call void @kfree(ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_nfc_exec_op(ptr nocapture noundef readonly %nand, ptr nocapture noundef readonly %op, i1 noundef zeroext %check_only) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  br i1 %check_only, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %op, align 4
  tail call fastcc void @meson_nfc_select_chip(ptr noundef %nand, i32 noundef %3)
  %ninstrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 2
  %4 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ninstrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp171.not = icmp eq i32 %5, 0
  br i1 %cmp171.not, label %if.end.for.end53_crit_edge, label %for.body.lr.ph

if.end.for.end53_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end53

for.body.lr.ph:                                   ; preds = %if.end
  %instrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 1
  %level1_divider = getelementptr i8, ptr %nand, i32 2172
  %param.i160 = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 13
  %reg_base.i164 = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc51.for.body_crit_edge, %for.body.lr.ph
  %op_id.0172 = phi i32 [ 0, %for.body.lr.ph ], [ %inc52, %for.inc51.for.body_crit_edge ]
  %6 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %instrs, align 4
  %arrayidx = getelementptr %struct.nand_op_instr, ptr %7, i32 %op_id.0172
  %delay_ns = getelementptr %struct.nand_op_instr, ptr %7, i32 %op_id.0172, i32 2
  %8 = ptrtoint ptr %delay_ns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay_ns, align 4
  %sub = add i32 %9, 999
  %div = udiv i32 %sub, 1000
  %10 = ptrtoint ptr %level1_divider to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %level1_divider, align 4
  %mul = mul i32 %11, 6
  %add3 = add i32 %mul, -1
  %sub4 = add i32 %add3, %div
  %div7 = udiv i32 %sub4, %mul
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %13, label %for.body.for.inc51_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %for.cond11.preheader
    i32 2, label %if.end21.i
    i32 3, label %if.end21.i119
    i32 4, label %sw.bb44
  ]

for.body.for.inc51_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc51

for.cond11.preheader:                             ; preds = %for.body
  %ctx12 = getelementptr %struct.nand_op_instr, ptr %7, i32 %op_id.0172, i32 1
  %15 = ptrtoint ptr %ctx12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctx12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp13169.not = icmp eq i32 %16, 0
  br i1 %cmp13169.not, label %for.cond11.preheader.for.end_crit_edge, label %for.body15.lr.ph

for.cond11.preheader.for.end_crit_edge:           ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body15.lr.ph:                                 ; preds = %for.cond11.preheader
  %addrs = getelementptr inbounds %struct.nand_op_addr_instr, ptr %ctx12, i32 0, i32 1
  br label %for.body15

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %param.i160 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %param.i160, align 4
  %ctx = getelementptr %struct.nand_op_instr, ptr %7, i32 %op_id.0172, i32 1
  %19 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ctx, align 4
  %conv8 = zext i8 %20 to i32
  %or = or i32 %18, %conv8
  %or9 = or i32 %or, 81920
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !179
  tail call void @arm_heavy_mb() #11
  %21 = tail call i32 @llvm.bswap.i32(i32 %or9)
  %22 = ptrtoint ptr %reg_base.i164 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base.i164, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #11, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !180
  tail call void @arm_heavy_mb() #11
  %24 = ptrtoint ptr %param.i160 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %param.i160, align 4
  %and.i = and i32 %div7, 1023
  %or.i = or i32 %and.i, %25
  %or1.i = or i32 %or.i, 196608
  %26 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #11
  %27 = ptrtoint ptr %reg_base.i164 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_base.i164, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #11, !srcloc !174
  br label %for.inc51

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %for.body15.lr.ph
  %i.0170 = phi i32 [ 0, %for.body15.lr.ph ], [ %inc, %for.body15.for.body15_crit_edge ]
  %29 = ptrtoint ptr %param.i160 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %param.i160, align 4
  %31 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %addrs, align 4
  %arrayidx20 = getelementptr i8, ptr %32, i32 %i.0170
  %33 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %34 to i32
  %or18 = or i32 %30, %conv21
  %or23 = or i32 %or18, 98304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !181
  tail call void @arm_heavy_mb() #11
  %35 = tail call i32 @llvm.bswap.i32(i32 %or23)
  %36 = ptrtoint ptr %reg_base.i164 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_base.i164, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #11, !srcloc !174
  %inc = add nuw i32 %i.0170, 1
  %38 = ptrtoint ptr %ctx12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ctx12, align 4
  %cmp13 = icmp ult i32 %inc, %39
  br i1 %cmp13, label %for.body15.for.body15_crit_edge, label %for.body15.for.end_crit_edge

for.body15.for.end_crit_edge:                     ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body15

for.end:                                          ; preds = %for.body15.for.end_crit_edge, %for.cond11.preheader.for.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !180
  tail call void @arm_heavy_mb() #11
  %40 = ptrtoint ptr %param.i160 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %param.i160, align 4
  %and.i104 = and i32 %div7, 1023
  %or.i105 = or i32 %and.i104, %41
  %or1.i106 = or i32 %or.i105, 196608
  %42 = tail call i32 @llvm.bswap.i32(i32 %or1.i106) #11
  %43 = ptrtoint ptr %reg_base.i164 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_base.i164, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #11, !srcloc !174
  br label %for.inc51

if.end21.i:                                       ; preds = %for.body
  %buf.i = getelementptr %struct.nand_op_instr, ptr %7, i32 %op_id.0172, i32 1, i32 0, i32 1
  %45 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buf.i, align 4
  %47 = ptrtoint ptr %46 to i32
  %cmp.i.i = icmp ugt ptr %46, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end21.i.if.end8.i.i.i_crit_edge

if.end21.i.if.end8.i.i.i_crit_edge:               ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i

land.lhs.true.i.i:                                ; preds = %if.end21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %48 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i = icmp ugt ptr %48, %46
  br i1 %cmp1.i.i, label %land.lhs.true2.i.i, label %land.lhs.true.i.i.if.end8.i.i.i_crit_edge

land.lhs.true.i.i.if.end8.i.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %sub.i.i = add i32 %47, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %49 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %49, %shr.i.i
  %call.i.i = tail call i32 @pfn_valid(i32 noundef %add.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true2.i.i.if.end8.i.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true2.i.i.if.end8.i.i.i_crit_edge:       ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true2.i.i
  %50 = tail call i32 @llvm.read_register.i32(metadata !163) #11
  %and.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task.i.i.i, align 8
  %stack1.i.i.i = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %stack1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %stack1.i.i.i, align 4
  %cmp.not.i.i.i = icmp ugt ptr %55, %46
  %add.ptr.i.i.i = getelementptr i8, ptr %55, i32 16384
  %cmp2.i.i.i = icmp ule ptr %add.ptr.i.i.i, %46
  %tobool5.not.i.i = or i1 %cmp.not.i.i.i, %cmp2.i.i.i
  br i1 %tobool5.not.i.i, label %if.then22.i, label %land.lhs.true3.i.i.if.end8.i.i.i_crit_edge

land.lhs.true3.i.i.if.end8.i.i.i_crit_edge:       ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i

if.then22.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buf.i, align 4
  br label %meson_nand_op_get_dma_safe_input_buf.exit

if.end8.i.i.i:                                    ; preds = %land.lhs.true3.i.i.if.end8.i.i.i_crit_edge, %land.lhs.true2.i.i.if.end8.i.i.i_crit_edge, %land.lhs.true.i.i.if.end8.i.i.i_crit_edge, %if.end21.i.if.end8.i.i.i_crit_edge
  %ctx.i = getelementptr %struct.nand_op_instr, ptr %7, i32 %op_id.0172, i32 1
  %58 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ctx.i, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %59, i32 noundef 3520) #15
  br label %meson_nand_op_get_dma_safe_input_buf.exit

meson_nand_op_get_dma_safe_input_buf.exit:        ; preds = %if.end8.i.i.i, %if.then22.i
  %retval.0.i = phi ptr [ %57, %if.then22.i ], [ %call9.i.i.i, %if.end8.i.i.i ]
  %tobool31.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool31.not, label %meson_nand_op_get_dma_safe_input_buf.exit.cleanup_crit_edge, label %if.end33

meson_nand_op_get_dma_safe_input_buf.exit.cleanup_crit_edge: ; preds = %meson_nand_op_get_dma_safe_input_buf.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end33:                                         ; preds = %meson_nand_op_get_dma_safe_input_buf.exit
  %ctx34 = getelementptr %struct.nand_op_instr, ptr %7, i32 %op_id.0172, i32 1
  %60 = ptrtoint ptr %ctx34 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ctx34, align 4
  %62 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %64 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i108 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3520, i32 noundef 8) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i108, null
  br i1 %tobool.not.i, label %if.end33.meson_nfc_read_buf.exit_crit_edge, label %if.end.i

if.end33.meson_nfc_read_buf.exit_crit_edge:       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %meson_nfc_read_buf.exit

if.end.i:                                         ; preds = %if.end33
  %call2.i = tail call fastcc i32 @meson_nfc_dma_buffer_setup(ptr noundef %nand, ptr noundef nonnull %retval.0.i, i32 noundef %61, ptr noundef nonnull %call7.i.i.i108, i32 noundef 8, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.out.i_crit_edge

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %and.i109 = and i32 %61, 63
  %or.i110 = or i32 %and.i109, 2228224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !182
  tail call void @arm_heavy_mb() #11
  %65 = tail call i32 @llvm.bswap.i32(i32 %or.i110) #11
  %reg_base.i111 = getelementptr inbounds %struct.meson_nfc, ptr %63, i32 0, i32 8
  %66 = ptrtoint ptr %reg_base.i111 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_base.i111, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #11, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !180
  tail call void @arm_heavy_mb() #11
  %param.i.i.i = getelementptr inbounds %struct.meson_nfc, ptr %63, i32 0, i32 13
  %68 = ptrtoint ptr %param.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %param.i.i.i, align 4
  %or1.i.i.i = or i32 %69, 196608
  %70 = tail call i32 @llvm.bswap.i32(i32 %or1.i.i.i) #11
  %71 = ptrtoint ptr %reg_base.i111 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg_base.i111, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #11, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !180
  tail call void @arm_heavy_mb() #11
  %73 = ptrtoint ptr %param.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %param.i.i.i, align 4
  %or1.i3.i.i = or i32 %74, 196608
  %75 = tail call i32 @llvm.bswap.i32(i32 %or1.i3.i.i) #11
  %76 = ptrtoint ptr %reg_base.i111 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %reg_base.i111, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #11, !srcloc !174
  %call6.i = tail call fastcc i32 @meson_nfc_wait_cmd_finish(ptr noundef %63, i32 noundef 1000) #11
  %78 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %priv.i, align 8
  %dev.i.i = getelementptr inbounds %struct.meson_nfc, ptr %79, i32 0, i32 7
  %80 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i.i, align 4
  %daddr.i.i = getelementptr inbounds %struct.meson_nfc, ptr %79, i32 0, i32 16
  %82 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %daddr.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %81, i32 noundef %83, i32 noundef %61, i32 noundef 2, i32 noundef 0) #11
  %84 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i.i, align 4
  %iaddr.i.i = getelementptr inbounds %struct.meson_nfc, ptr %79, i32 0, i32 17
  %86 = ptrtoint ptr %iaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %iaddr.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %85, i32 noundef %87, i32 noundef 8, i32 noundef 2, i32 noundef 0) #11
  br label %out.i

out.i:                                            ; preds = %if.end5.i, %if.end.i.out.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i108) #11
  br label %meson_nfc_read_buf.exit

meson_nfc_read_buf.exit:                          ; preds = %out.i, %if.end33.meson_nfc_read_buf.exit_crit_edge
  %88 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %89)
  %cmp.not.i112 = icmp eq i32 %89, 2
  br i1 %cmp.not.i112, label %if.end55.critedge.i, label %do.end.i113, !prof !183

do.end.i113:                                      ; preds = %meson_nfc_read_buf.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 856, i32 noundef 9, ptr noundef null) #11
  br label %for.inc51

if.end55.critedge.i:                              ; preds = %meson_nfc_read_buf.exit
  %90 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %buf.i, align 4
  %cmp57.i = icmp eq ptr %91, %retval.0.i
  br i1 %cmp57.i, label %if.end55.critedge.i.for.inc51_crit_edge, label %if.end59.i

if.end55.critedge.i.for.inc51_crit_edge:          ; preds = %if.end55.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc51

if.end59.i:                                       ; preds = %if.end55.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  %92 = ptrtoint ptr %ctx34 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ctx34, align 4
  %94 = call ptr @memcpy(ptr %91, ptr %retval.0.i, i32 %93)
  tail call void @kfree(ptr noundef nonnull %retval.0.i) #11
  br label %for.inc51

if.end21.i119:                                    ; preds = %for.body
  %buf.i117 = getelementptr %struct.nand_op_instr, ptr %7, i32 %op_id.0172, i32 1, i32 0, i32 1
  %95 = ptrtoint ptr %buf.i117 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %buf.i117, align 4
  %97 = ptrtoint ptr %96 to i32
  %cmp.i.i118 = icmp ugt ptr %96, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i118, label %land.lhs.true.i.i121, label %if.end21.i119.if.end25.i138_crit_edge

if.end21.i119.if.end25.i138_crit_edge:            ; preds = %if.end21.i119
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i138

land.lhs.true.i.i121:                             ; preds = %if.end21.i119
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %98 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i120 = icmp ugt ptr %98, %96
  br i1 %cmp1.i.i120, label %land.lhs.true2.i.i127, label %land.lhs.true.i.i121.if.end25.i138_crit_edge

land.lhs.true.i.i121.if.end25.i138_crit_edge:     ; preds = %land.lhs.true.i.i121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i138

land.lhs.true2.i.i127:                            ; preds = %land.lhs.true.i.i121
  %sub.i.i122 = add i32 %97, 1073741824
  %shr.i.i123 = lshr i32 %sub.i.i122, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %99 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i124 = add i32 %99, %shr.i.i123
  %call.i.i125 = tail call i32 @pfn_valid(i32 noundef %add.i.i124) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i125)
  %tobool.not.i.i126 = icmp eq i32 %call.i.i125, 0
  br i1 %tobool.not.i.i126, label %land.lhs.true2.i.i127.if.end25.i138_crit_edge, label %land.lhs.true3.i.i135

land.lhs.true2.i.i127.if.end25.i138_crit_edge:    ; preds = %land.lhs.true2.i.i127
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i138

land.lhs.true3.i.i135:                            ; preds = %land.lhs.true2.i.i127
  %100 = tail call i32 @llvm.read_register.i32(metadata !163) #11
  %and.i.i.i.i128 = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i.i.i128 to ptr
  %task.i.i.i129 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %task.i.i.i129 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %task.i.i.i129, align 8
  %stack1.i.i.i130 = getelementptr inbounds %struct.task_struct, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %stack1.i.i.i130 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %stack1.i.i.i130, align 4
  %cmp.not.i.i.i131 = icmp ugt ptr %105, %96
  %add.ptr.i.i.i132 = getelementptr i8, ptr %105, i32 16384
  %cmp2.i.i.i133 = icmp ule ptr %add.ptr.i.i.i132, %96
  %tobool5.not.i.i134 = or i1 %cmp.not.i.i.i131, %cmp2.i.i.i133
  br i1 %tobool5.not.i.i134, label %if.then22.i136, label %land.lhs.true3.i.i135.if.end25.i138_crit_edge

land.lhs.true3.i.i135.if.end25.i138_crit_edge:    ; preds = %land.lhs.true3.i.i135
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i138

if.then22.i136:                                   ; preds = %land.lhs.true3.i.i135
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %buf.i117 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %buf.i117, align 4
  br label %meson_nand_op_get_dma_safe_output_buf.exit

if.end25.i138:                                    ; preds = %land.lhs.true3.i.i135.if.end25.i138_crit_edge, %land.lhs.true2.i.i127.if.end25.i138_crit_edge, %land.lhs.true.i.i121.if.end25.i138_crit_edge, %if.end21.i119.if.end25.i138_crit_edge
  %ctx.i137 = getelementptr %struct.nand_op_instr, ptr %7, i32 %op_id.0172, i32 1
  %108 = ptrtoint ptr %buf.i117 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %buf.i117, align 4
  %110 = ptrtoint ptr %ctx.i137 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ctx.i137, align 4
  %call29.i = tail call ptr @kmemdup(ptr noundef %109, i32 noundef %111, i32 noundef 3264) #11
  br label %meson_nand_op_get_dma_safe_output_buf.exit

meson_nand_op_get_dma_safe_output_buf.exit:       ; preds = %if.end25.i138, %if.then22.i136
  %retval.0.i139 = phi ptr [ %107, %if.then22.i136 ], [ %call29.i, %if.end25.i138 ]
  %tobool38.not = icmp eq ptr %retval.0.i139, null
  br i1 %tobool38.not, label %meson_nand_op_get_dma_safe_output_buf.exit.cleanup_crit_edge, label %if.end40

meson_nand_op_get_dma_safe_output_buf.exit.cleanup_crit_edge: ; preds = %meson_nand_op_get_dma_safe_output_buf.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end40:                                         ; preds = %meson_nand_op_get_dma_safe_output_buf.exit
  %ctx41 = getelementptr %struct.nand_op_instr, ptr %7, i32 %op_id.0172, i32 1
  %112 = ptrtoint ptr %ctx41 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ctx41, align 4
  %114 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %priv.i, align 8
  %call1.i = tail call fastcc i32 @meson_nfc_dma_buffer_setup(ptr noundef %nand, ptr noundef nonnull %retval.0.i139, i32 noundef %113, ptr noundef null, i32 noundef 0, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i141 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i141, label %if.end.i151, label %if.end40.meson_nfc_write_buf.exit_crit_edge

if.end40.meson_nfc_write_buf.exit_crit_edge:      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %meson_nfc_write_buf.exit

if.end.i151:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %and.i142 = and i32 %113, 63
  %or.i143 = or i32 %and.i142, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  tail call void @arm_heavy_mb() #11
  %116 = tail call i32 @llvm.bswap.i32(i32 %or.i143) #11
  %reg_base.i144 = getelementptr inbounds %struct.meson_nfc, ptr %115, i32 0, i32 8
  %117 = ptrtoint ptr %reg_base.i144 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %reg_base.i144, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %116) #11, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !180
  tail call void @arm_heavy_mb() #11
  %param.i.i.i145 = getelementptr inbounds %struct.meson_nfc, ptr %115, i32 0, i32 13
  %119 = ptrtoint ptr %param.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %param.i.i.i145, align 4
  %or1.i.i.i146 = or i32 %120, 196608
  %121 = tail call i32 @llvm.bswap.i32(i32 %or1.i.i.i146) #11
  %122 = ptrtoint ptr %reg_base.i144 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %reg_base.i144, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %121) #11, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !180
  tail call void @arm_heavy_mb() #11
  %124 = ptrtoint ptr %param.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %param.i.i.i145, align 4
  %or1.i3.i.i147 = or i32 %125, 196608
  %126 = tail call i32 @llvm.bswap.i32(i32 %or1.i3.i.i147) #11
  %127 = ptrtoint ptr %reg_base.i144 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %reg_base.i144, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %126) #11, !srcloc !174
  %call2.i148 = tail call fastcc i32 @meson_nfc_wait_cmd_finish(ptr noundef %115, i32 noundef 1000) #11
  %129 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %priv.i, align 8
  %dev.i.i149 = getelementptr inbounds %struct.meson_nfc, ptr %130, i32 0, i32 7
  %131 = ptrtoint ptr %dev.i.i149 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev.i.i149, align 4
  %daddr.i.i150 = getelementptr inbounds %struct.meson_nfc, ptr %130, i32 0, i32 16
  %133 = ptrtoint ptr %daddr.i.i150 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %daddr.i.i150, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %132, i32 noundef %134, i32 noundef %113, i32 noundef 1, i32 noundef 0) #11
  br label %meson_nfc_write_buf.exit

meson_nfc_write_buf.exit:                         ; preds = %if.end.i151, %if.end40.meson_nfc_write_buf.exit_crit_edge
  %135 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %136)
  %cmp.not.i152 = icmp eq i32 %136, 3
  br i1 %cmp.not.i152, label %if.end55.critedge.i158, label %do.end.i153, !prof !183

do.end.i153:                                      ; preds = %meson_nfc_write_buf.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 884, i32 noundef 9, ptr noundef null) #11
  br label %for.inc51

if.end55.critedge.i158:                           ; preds = %meson_nfc_write_buf.exit
  %137 = ptrtoint ptr %buf.i117 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %buf.i117, align 4
  %cmp57.not.i = icmp eq ptr %138, %retval.0.i139
  br i1 %cmp57.not.i, label %if.end55.critedge.i158.for.inc51_crit_edge, label %if.then58.i

if.end55.critedge.i158.for.inc51_crit_edge:       ; preds = %if.end55.critedge.i158
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc51

if.then58.i:                                      ; preds = %if.end55.critedge.i158
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %retval.0.i139) #11
  br label %for.inc51

sw.bb44:                                          ; preds = %for.body
  %ctx45 = getelementptr %struct.nand_op_instr, ptr %7, i32 %op_id.0172, i32 1
  %139 = ptrtoint ptr %ctx45 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %ctx45, align 4
  tail call fastcc void @meson_nfc_queue_rb(ptr noundef %1, i32 noundef %140)
  %141 = ptrtoint ptr %delay_ns to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %delay_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool48.not = icmp eq i32 %142, 0
  br i1 %tobool48.not, label %sw.bb44.for.inc51_crit_edge, label %if.then49

sw.bb44.for.inc51_crit_edge:                      ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc51

if.then49:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !180
  tail call void @arm_heavy_mb() #11
  %143 = ptrtoint ptr %param.i160 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %param.i160, align 4
  %and.i161 = and i32 %div7, 1023
  %or.i162 = or i32 %and.i161, %144
  %or1.i163 = or i32 %or.i162, 196608
  %145 = tail call i32 @llvm.bswap.i32(i32 %or1.i163) #11
  %146 = ptrtoint ptr %reg_base.i164 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %reg_base.i164, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %145) #11, !srcloc !174
  br label %for.inc51

for.inc51:                                        ; preds = %if.then49, %sw.bb44.for.inc51_crit_edge, %if.then58.i, %if.end55.critedge.i158.for.inc51_crit_edge, %do.end.i153, %if.end59.i, %if.end55.critedge.i.for.inc51_crit_edge, %do.end.i113, %for.end, %sw.bb, %for.body.for.inc51_crit_edge
  %inc52 = add nuw i32 %op_id.0172, 1
  %148 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %ninstrs, align 4
  %cmp = icmp ult i32 %inc52, %149
  br i1 %cmp, label %for.inc51.for.body_crit_edge, label %for.inc51.for.end53_crit_edge

for.inc51.for.end53_crit_edge:                    ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end53

for.inc51.for.body_crit_edge:                     ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end53:                                        ; preds = %for.inc51.for.end53_crit_edge, %if.end.for.end53_crit_edge
  %call54 = tail call fastcc i32 @meson_nfc_wait_cmd_finish(ptr noundef %1, i32 noundef 1000)
  br label %cleanup

cleanup:                                          ; preds = %for.end53, %meson_nand_op_get_dma_safe_output_buf.exit.cleanup_crit_edge, %meson_nand_op_get_dma_safe_input_buf.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end53 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %meson_nand_op_get_dma_safe_input_buf.exit.cleanup_crit_edge ], [ -12, %meson_nand_op_get_dma_safe_output_buf.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_nfc_setup_interface(ptr nocapture noundef writeonly %nand, i32 noundef %csline, ptr noundef readonly %conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %conf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1
  %retval.0.i = select i1 %cmp.i.i, ptr %2, ptr inttoptr (i32 -22 to ptr)
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %csline)
  %cmp = icmp eq i32 %csline, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end225

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end225:                                        ; preds = %if.end
  %tRC_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 22
  %3 = ptrtoint ptr %tRC_min to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tRC_min, align 8
  %div5 = udiv i32 %4, 1000
  %sub = add nuw nsw i32 %div5, 5
  %div6 = udiv i32 %sub, 6
  %tREA_max = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 23
  %5 = ptrtoint ptr %tREA_max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tREA_max, align 4
  %add7 = add i32 %6, 3000
  %div8 = udiv i32 %add7, %div6
  %tRHOH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 25
  %7 = ptrtoint ptr %tRHOH_min to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tRHOH_min, align 4
  %div11682 = lshr i32 %4, 1
  %add9 = add nuw i32 %div11682, 3000
  %add12 = add i32 %add9, %8
  %div13 = udiv i32 %add12, %div6
  %tWB_max = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 32
  %9 = ptrtoint ptr %tWB_max to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tWB_max, align 8
  %sub15 = add i32 %10, 999
  %div16 = udiv i32 %sub15, 1000
  %mul = mul nuw nsw i32 %div6, 6
  %add18 = add nsw i32 %mul, -1
  %sub19 = add nsw i32 %add18, %div16
  %div21 = udiv i32 %sub19, %mul
  %twb = getelementptr i8, ptr %nand, i32 2180
  %11 = ptrtoint ptr %twb to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div21, ptr %twb, align 4
  %tADL_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 5
  %12 = ptrtoint ptr %tADL_min to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tADL_min, align 4
  %sub24 = add i32 %13, 999
  %div25 = udiv i32 %sub24, 1000
  %sub30 = add nsw i32 %add18, %div25
  %div32 = udiv i32 %sub30, %mul
  %tadl = getelementptr i8, ptr %nand, i32 2184
  %14 = ptrtoint ptr %tadl to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div32, ptr %tadl, align 8
  %15 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %retval.0.i, align 8
  %sub36 = add i64 %16, 999
  %17 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %sub36, i32 0) #17, !srcloc !185
  %asmresult.i = extractvalue { i64, i32 } %17, 0
  %asmresult4.i = extractvalue { i64, i32 } %17, 1
  %18 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %sub36, i64 %asmresult.i, i32 %asmresult4.i) #17, !srcloc !186
  %asmresult10.i = extractvalue { i64, i32 } %18, 0
  %_tmp34.0 = lshr i64 %asmresult10.i, 9
  %conv229 = zext i32 %mul to i64
  %add230 = add nsw i64 %conv229, -1
  %sub231 = add nsw i64 %add230, %_tmp34.0
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub231)
  %cmp434 = icmp ult i64 %sub231, 4294967296
  br i1 %cmp434, label %if.then442, label %if.else448, !prof !183

if.then442:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #13
  %conv443 = trunc i64 %sub231 to i32
  %div446 = udiv i32 %conv443, %mul
  br label %cond.false466

if.else448:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #13
  %19 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %sub231) #17, !srcloc !187
  %asmresult1.i = extractvalue { i64, i64 } %19, 1
  %extract.t732 = trunc i64 %asmresult1.i to i32
  br label %cond.false466

cond.false466:                                    ; preds = %if.else448, %if.then442
  %_tmp.0.off0 = phi i32 [ %div446, %if.then442 ], [ %extract.t732, %if.else448 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %_tmp.0.off0)
  %tobool.not.i.i692 = icmp eq i32 %_tmp.0.off0, 0
  %20 = tail call i32 @llvm.ctlz.i32(i32 %_tmp.0.off0, i1 true) #11, !range !188
  %sub.i.op.i693 = xor i32 %20, 31
  %sub.i694 = select i1 %tobool.not.i.i692, i32 -1, i32 %sub.i.op.i693
  %tbers_max = getelementptr i8, ptr %nand, i32 2188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %_tmp.0.off0)
  %cmp.not.i695 = icmp eq i32 %_tmp.0.off0, 0
  br i1 %cmp.not.i695, label %cond.false466.is_power_of_2.exit698.thread_crit_edge, label %is_power_of_2.exit698

cond.false466.is_power_of_2.exit698.thread_crit_edge: ; preds = %cond.false466
  call void @__sanitizer_cov_trace_pc() #13
  br label %is_power_of_2.exit698.thread

is_power_of_2.exit698:                            ; preds = %cond.false466
  call void @__sanitizer_cov_trace_pc() #13
  %21 = tail call i32 @llvm.ctpop.i32(i32 %_tmp.0.off0) #11, !range !188
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp1.i696 = icmp ugt i32 %21, 1
  %inc = zext i1 %cmp1.i696 to i32
  br label %is_power_of_2.exit698.thread

is_power_of_2.exit698.thread:                     ; preds = %is_power_of_2.exit698, %cond.false466.is_power_of_2.exit698.thread_crit_edge
  %inc.sink = phi i32 [ %inc, %is_power_of_2.exit698 ], [ 1, %cond.false466.is_power_of_2.exit698.thread_crit_edge ]
  %spec.select = add nsw i32 %sub.i694, %inc.sink
  %22 = ptrtoint ptr %tbers_max to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select, ptr %tbers_max, align 4
  %sub475 = add i32 %div8, 999
  %div476 = udiv i32 %sub475, 1000
  %sub478 = add i32 %div13, 999
  %div479 = udiv i32 %sub478, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %div479, i32 %div476)
  %cmp480 = icmp ult i32 %div479, %div476
  br i1 %cmp480, label %is_power_of_2.exit698.thread.cleanup_crit_edge, label %if.end483

is_power_of_2.exit698.thread.cleanup_crit_edge:   ; preds = %is_power_of_2.exit698.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end483:                                        ; preds = %is_power_of_2.exit698.thread
  call void @__sanitizer_cov_trace_pc() #13
  %level1_divider = getelementptr i8, ptr %nand, i32 2172
  %23 = ptrtoint ptr %level1_divider to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div6, ptr %level1_divider, align 4
  %div485 = udiv i32 1000000000, %div6
  %clk_rate = getelementptr i8, ptr %nand, i32 2168
  %24 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div485, ptr %clk_rate, align 8
  %add486 = add nuw nsw i32 %div479, %div476
  %div487684 = lshr i32 %add486, 1
  %add488 = add nuw nsw i32 %div487684, 1
  %bus_timing = getelementptr i8, ptr %nand, i32 2176
  %25 = ptrtoint ptr %bus_timing to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add488, ptr %bus_timing, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end483, %is_power_of_2.exit698.thread.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end483 ], [ -524, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %is_power_of_2.exit698.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_ecc_choose_conf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_nfc_write_page_raw(ptr noundef %nand, ptr noundef readonly %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bytes.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 5
  %0 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bytes.i, align 4
  %add.i = add i32 %1, 2
  %steps.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 3
  %2 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %steps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp26.i = icmp sgt i32 %3, 0
  br i1 %cmp26.i, label %for.body.lr.ph.i, label %entry.meson_nfc_set_data_oob.exit_crit_edge

entry.meson_nfc_set_data_oob.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %meson_nfc_set_data_oob.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 23
  %4 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %oob_poi, align 4
  %size.i.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 4
  %data_buf.i.i = getelementptr i8, ptr %nand, i32 2196
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i20.i, %if.end.i.for.body.i_crit_edge ]
  %oobbuf.addr.028.i = phi ptr [ %5, %for.body.lr.ph.i ], [ %add.ptr6.i, %if.end.i.for.body.i_crit_edge ]
  %buf.addr.027.i = phi ptr [ %buf, %for.body.lr.ph.i ], [ %buf.addr.1.i, %if.end.i.for.body.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %buf.addr.027.i, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i.i, align 8
  %8 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytes.i, align 4
  %add.i.i = add i32 %7, 2
  %add2.i.i = add i32 %add.i.i, %9
  %mul.i.i = mul i32 %add2.i.i, %i.029.i
  %10 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data_buf.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %mul.i.i
  %12 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %buf.addr.027.i, i32 %7)
  %13 = load i32, ptr %size.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %buf.addr.027.i, i32 %13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %buf.addr.1.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %for.body.i.if.end.i_crit_edge ]
  %14 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i.i, align 8
  %add.i20.i = add nuw nsw i32 %i.029.i, 1
  %mul.i21.i = mul i32 %15, %add.i20.i
  %16 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bytes.i, align 4
  %add2.i23.i = add i32 %17, 2
  %mul3.i.i = mul i32 %add2.i23.i, %i.029.i
  %add4.i.i = add i32 %mul3.i.i, %mul.i21.i
  %18 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data_buf.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %19, i32 %add4.i.i
  %20 = call ptr @memcpy(ptr %add.ptr.i25.i, ptr %oobbuf.addr.028.i, i32 %add.i)
  %add.ptr6.i = getelementptr i8, ptr %oobbuf.addr.028.i, i32 %add.i
  %21 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %steps.i, align 4
  %cmp.i = icmp slt i32 %add.i20.i, %22
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.meson_nfc_set_data_oob.exit_crit_edge

if.end.i.meson_nfc_set_data_oob.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %meson_nfc_set_data_oob.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

meson_nfc_set_data_oob.exit:                      ; preds = %if.end.i.meson_nfc_set_data_oob.exit_crit_edge, %entry.meson_nfc_set_data_oob.exit_crit_edge
  %call = tail call fastcc i32 @meson_nfc_write_page_sub(ptr noundef %nand, i32 noundef %page, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_nfc_write_page_hwecc(ptr noundef %nand, ptr nocapture noundef readonly %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 23
  %0 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oob_poi, align 4
  %data_buf = getelementptr i8, ptr %nand, i32 2196
  %2 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_buf, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %4 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize, align 4
  %6 = call ptr @memcpy(ptr %3, ptr %buf, i32 %5)
  %info_buf = getelementptr i8, ptr %nand, i32 2200
  %7 = ptrtoint ptr %info_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info_buf, align 8
  %steps = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 3
  %9 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %steps, align 4
  %mul = shl i32 %10, 3
  %11 = call ptr @memset(ptr %8, i32 0, i32 %mul)
  %12 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp14.i = icmp sgt i32 %12, 0
  br i1 %cmp14.i, label %entry.for.body.i_crit_edge, label %entry.meson_nfc_set_user_byte.exit_crit_edge

entry.meson_nfc_set_user_byte.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %meson_nfc_set_user_byte.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %count.016.i = phi i32 [ %add6.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %i.015.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %info_buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info_buf, align 8
  %arrayidx.i = getelementptr i64, ptr %14, i32 %i.015.i
  %arrayidx1.i = getelementptr i8, ptr %1, i32 %count.016.i
  %15 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx1.i, align 1
  %conv.i = zext i8 %16 to i64
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx.i, align 8
  %or.i = or i64 %18, %conv.i
  store i64 %or.i, ptr %arrayidx.i, align 8
  %add.i = or i32 %count.016.i, 1
  %arrayidx2.i = getelementptr i8, ptr %1, i32 %add.i
  %19 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %20 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 8
  %21 = zext i32 %shl.i to i64
  %or5.i = or i64 %or.i, %21
  store i64 %or5.i, ptr %arrayidx.i, align 8
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %add6.i = add nuw i32 %count.016.i, 2
  %22 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %steps, align 4
  %cmp.i = icmp slt i32 %inc.i, %23
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.meson_nfc_set_user_byte.exit_crit_edge

for.body.i.meson_nfc_set_user_byte.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %meson_nfc_set_user_byte.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

meson_nfc_set_user_byte.exit:                     ; preds = %for.body.i.meson_nfc_set_user_byte.exit_crit_edge, %entry.meson_nfc_set_user_byte.exit_crit_edge
  %call2 = tail call fastcc i32 @meson_nfc_write_page_sub(ptr noundef %nand, i32 noundef %page, i32 noundef 0)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_write_oob_std(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_nfc_read_page_raw(ptr noundef %nand, ptr noundef writeonly %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 23
  %0 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oob_poi, align 4
  %call = tail call fastcc i32 @meson_nfc_read_page_sub(ptr noundef %nand, i32 noundef %page, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %bytes.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 5
  %2 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytes.i, align 4
  %add.i = add i32 %3, 2
  %steps.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 3
  %4 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %steps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp26.i = icmp sgt i32 %5, 0
  br i1 %cmp26.i, label %for.body.lr.ph.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end
  %size.i.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 4
  %data_buf.i.i = getelementptr i8, ptr %nand, i32 2196
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i20.i, %if.end.i.for.body.i_crit_edge ]
  %oobbuf.addr.028.i = phi ptr [ %1, %for.body.lr.ph.i ], [ %add.ptr6.i, %if.end.i.for.body.i_crit_edge ]
  %buf.addr.027.i = phi ptr [ %buf, %for.body.lr.ph.i ], [ %buf.addr.1.i, %if.end.i.for.body.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %buf.addr.027.i, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i.i, align 8
  %8 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytes.i, align 4
  %add.i.i = add i32 %7, 2
  %add2.i.i = add i32 %add.i.i, %9
  %mul.i.i = mul i32 %add2.i.i, %i.029.i
  %10 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data_buf.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %mul.i.i
  %12 = call ptr @memcpy(ptr %buf.addr.027.i, ptr %add.ptr.i.i, i32 %7)
  %13 = load i32, ptr %size.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %buf.addr.027.i, i32 %13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %buf.addr.1.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %for.body.i.if.end.i_crit_edge ]
  %14 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i.i, align 8
  %add.i20.i = add nuw nsw i32 %i.029.i, 1
  %mul.i21.i = mul i32 %15, %add.i20.i
  %16 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bytes.i, align 4
  %add2.i23.i = add i32 %17, 2
  %mul3.i.i = mul i32 %add2.i23.i, %i.029.i
  %add4.i.i = add i32 %mul3.i.i, %mul.i21.i
  %18 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data_buf.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %19, i32 %add4.i.i
  %20 = call ptr @memcpy(ptr %oobbuf.addr.028.i, ptr %add.ptr.i25.i, i32 %add.i)
  %add.ptr6.i = getelementptr i8, ptr %oobbuf.addr.028.i, i32 %add.i
  %21 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %steps.i, align 4
  %cmp.i = icmp slt i32 %add.i20.i, %22
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

cleanup:                                          ; preds = %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_nfc_read_page_hwecc(ptr noundef %nand, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 23
  %0 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oob_poi, align 4
  %call3 = tail call fastcc i32 @meson_nfc_read_page_sub(ptr noundef %nand, i32 noundef %page, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup56_crit_edge

entry.cleanup56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup56

if.end:                                           ; preds = %entry
  %steps.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 3
  %2 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %steps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12.i = icmp sgt i32 %3, 0
  br i1 %cmp12.i, label %for.body.lr.ph.i, label %if.end.if.else46_crit_edge

if.end.if.else46_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else46

for.body.lr.ph.i:                                 ; preds = %if.end
  %info_buf.i = getelementptr i8, ptr %nand, i32 2200
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %count.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add4.i, %for.body.i.for.body.i_crit_edge ]
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %info_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info_buf.i, align 8
  %arrayidx.i = getelementptr i64, ptr %5, i32 %i.013.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.i, align 8
  %conv.i = trunc i64 %7 to i8
  %arrayidx1.i = getelementptr i8, ptr %1, i32 %count.014.i
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %arrayidx1.i, align 1
  %9 = load i64, ptr %arrayidx.i, align 8
  %shr.i = lshr i64 %9, 8
  %conv2.i = trunc i64 %shr.i to i8
  %add.i = or i32 %count.014.i, 1
  %arrayidx3.i = getelementptr i8, ptr %1, i32 %add.i
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv2.i, ptr %arrayidx3.i, align 1
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %add4.i = add nuw i32 %count.014.i, 2
  %11 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %steps.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %12
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %meson_nfc_get_user_byte.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

meson_nfc_get_user_byte.exit:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp60.i = icmp sgt i32 %12, 0
  br i1 %cmp60.i, label %for.body.lr.ph.i110, label %meson_nfc_get_user_byte.exit.if.else46_crit_edge

meson_nfc_get_user_byte.exit.if.else46_crit_edge: ; preds = %meson_nfc_get_user_byte.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else46

for.body.lr.ph.i110:                              ; preds = %meson_nfc_get_user_byte.exit
  %ecc_stats.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 52
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 6
  %strength.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 7
  %13 = ptrtoint ptr %info_buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info_buf.i, align 8
  br label %for.body.i113.outer

for.body.i113.outer:                              ; preds = %for.inc.i.for.body.i113.outer_crit_edge, %for.body.lr.ph.i110
  %correct_bitmap.0.ph = phi i64 [ %correct_bitmap.1, %for.inc.i.for.body.i113.outer_crit_edge ], [ 0, %for.body.lr.ph.i110 ]
  %bitflips.0.ph = phi i32 [ %bitflips.1, %for.inc.i.for.body.i113.outer_crit_edge ], [ 0, %for.body.lr.ph.i110 ]
  %i.062.i.ph = phi i32 [ %inc.i114, %for.inc.i.for.body.i113.outer_crit_edge ], [ 0, %for.body.lr.ph.i110 ]
  %ret.061.i.ph = phi i32 [ %ret.1.i, %for.inc.i.for.body.i113.outer_crit_edge ], [ 0, %for.body.lr.ph.i110 ]
  %arrayidx.i111182 = getelementptr i64, ptr %14, i32 %i.062.i.ph
  %15 = ptrtoint ptr %arrayidx.i111182 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx.i111182, align 8
  %shr.i112183 = lshr i64 %16, 24
  %and.i184 = and i64 %shr.i112183, 63
  call void @__sanitizer_cov_trace_const_cmp8(i64 63, i64 %and.i184)
  %cmp2.not.i185 = icmp eq i64 %and.i184, 63
  %extract.t193 = trunc i64 %and.i184 to i32
  br i1 %cmp2.not.i185, label %if.end.i.preheader, label %for.body.i113.outer.if.then.i_crit_edge

for.body.i113.outer.if.then.i_crit_edge:          ; preds = %for.body.i113.outer
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end.i.preheader:                               ; preds = %for.body.i113.outer
  %17 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %options.i, align 8
  %and13.i = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool.not.i = icmp eq i32 %and13.i, 0
  br label %if.end.i

for.body.i113:                                    ; preds = %for.inc.i.thread
  %arrayidx.i111 = getelementptr i64, ptr %14, i32 %inc.i114145
  %19 = ptrtoint ptr %arrayidx.i111 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx.i111, align 8
  %shr.i112 = lshr i64 %20, 24
  %and.i = and i64 %shr.i112, 63
  %cmp2.not.i = icmp eq i64 %and.i, 63
  br i1 %cmp2.not.i, label %for.body.i113.if.end.i_crit_edge, label %for.body.i113.if.then.i_crit_edge

for.body.i113.if.end.i_crit_edge:                 ; preds = %for.body.i113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.body.i113.if.then.i_crit_edge:                ; preds = %for.body.i113
  call void @__sanitizer_cov_trace_pc() #13
  %extract.t = trunc i64 %and.i to i32
  br label %if.then.i

if.then.i:                                        ; preds = %for.body.i113.if.then.i_crit_edge, %for.body.i113.outer.if.then.i_crit_edge
  %bitflips.0.lcssa = phi i32 [ %39, %for.body.i113.if.then.i_crit_edge ], [ %bitflips.0.ph, %for.body.i113.outer.if.then.i_crit_edge ]
  %i.062.i.lcssa = phi i32 [ %inc.i114145, %for.body.i113.if.then.i_crit_edge ], [ %i.062.i.ph, %for.body.i113.outer.if.then.i_crit_edge ]
  %ret.061.i.lcssa = phi i32 [ -1, %for.body.i113.if.then.i_crit_edge ], [ %ret.061.i.ph, %for.body.i113.outer.if.then.i_crit_edge ]
  %arrayidx.i111.lcssa = phi ptr [ %arrayidx.i111, %for.body.i113.if.then.i_crit_edge ], [ %arrayidx.i111182, %for.body.i113.outer.if.then.i_crit_edge ]
  %and.i.lcssa.off0 = phi i32 [ %extract.t, %for.body.i113.if.then.i_crit_edge ], [ %extract.t193, %for.body.i113.outer.if.then.i_crit_edge ]
  %21 = ptrtoint ptr %ecc_stats.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ecc_stats.i, align 4
  %conv5.i = add i32 %22, %and.i.lcssa.off0
  store i32 %conv5.i, ptr %ecc_stats.i, align 4
  %23 = ptrtoint ptr %arrayidx.i111.lcssa to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx.i111.lcssa, align 8
  %25 = trunc i64 %24 to i32
  %26 = lshr i32 %25, 24
  %conv8.i = and i32 %26, 63
  %27 = tail call i32 @llvm.umax.i32(i32 %bitflips.0.lcssa, i32 %conv8.i) #11
  %shr11.i = lshr i32 1, %i.062.i.lcssa
  %28 = zext i32 %shr11.i to i64
  %or.i = or i64 %correct_bitmap.0.ph, %28
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i113.if.end.i_crit_edge, %if.end.i.preheader
  %29 = phi i64 [ %20, %for.body.i113.if.end.i_crit_edge ], [ %16, %if.end.i.preheader ]
  %arrayidx.i111188 = phi ptr [ %arrayidx.i111, %for.body.i113.if.end.i_crit_edge ], [ %arrayidx.i111182, %if.end.i.preheader ]
  %i.062.i187 = phi i32 [ %inc.i114145, %for.body.i113.if.end.i_crit_edge ], [ %i.062.i.ph, %if.end.i.preheader ]
  %bitflips.0186 = phi i32 [ %39, %for.body.i113.if.end.i_crit_edge ], [ %bitflips.0.ph, %if.end.i.preheader ]
  br i1 %tobool.not.i, label %if.end.i.for.inc.i_crit_edge, label %land.lhs.true.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %shr14.i = lshr i64 %29, 16
  %and15.i = and i64 %shr14.i, 63
  %30 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %strength.i, align 4
  %conv17.i = sext i32 %31 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and15.i, i64 %conv17.i)
  %cmp18.i = icmp ult i64 %and15.i, %conv17.i
  br i1 %cmp18.i, label %for.inc.i.thread, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %if.then.i
  %i.062.i177 = phi i32 [ %i.062.i.lcssa, %if.then.i ], [ %i.062.i187, %if.end.i.for.inc.i_crit_edge ], [ %i.062.i187, %land.lhs.true.i.for.inc.i_crit_edge ]
  %correct_bitmap.1 = phi i64 [ %or.i, %if.then.i ], [ %correct_bitmap.0.ph, %if.end.i.for.inc.i_crit_edge ], [ %correct_bitmap.0.ph, %land.lhs.true.i.for.inc.i_crit_edge ]
  %bitflips.1 = phi i32 [ %27, %if.then.i ], [ %bitflips.0186, %if.end.i.for.inc.i_crit_edge ], [ %bitflips.0186, %land.lhs.true.i.for.inc.i_crit_edge ]
  %ret.1.i = phi i32 [ %ret.061.i.lcssa, %if.then.i ], [ -74, %if.end.i.for.inc.i_crit_edge ], [ -74, %land.lhs.true.i.for.inc.i_crit_edge ]
  %inc.i114 = add nuw nsw i32 %i.062.i177, 1
  %exitcond.not = icmp eq i32 %inc.i114, %12
  br i1 %exitcond.not, label %meson_nfc_ecc_correct.exit, label %for.inc.i.for.body.i113.outer_crit_edge

for.inc.i.for.body.i113.outer_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i113.outer

for.inc.i.thread:                                 ; preds = %land.lhs.true.i
  %32 = ptrtoint ptr %ecc_stats.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ecc_stats.i, align 4
  %34 = trunc i64 %and15.i to i32
  %conv27.i = add i32 %33, %34
  store i32 %conv27.i, ptr %ecc_stats.i, align 4
  %35 = ptrtoint ptr %arrayidx.i111188 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx.i111188, align 8
  %37 = trunc i64 %36 to i32
  %38 = lshr i32 %37, 16
  %conv30.i = and i32 %38, 63
  %39 = tail call i32 @llvm.umax.i32(i32 %bitflips.0186, i32 %conv30.i) #11
  %inc.i114145 = add nuw nsw i32 %i.062.i187, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i114145, i32 %12)
  %exitcond.not146 = icmp eq i32 %inc.i114145, %12
  br i1 %exitcond.not146, label %for.inc.i.thread.if.then5_crit_edge, label %for.body.i113

for.inc.i.thread.if.then5_crit_edge:              ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

meson_nfc_ecc_correct.exit:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.1.i)
  %cmp = icmp eq i32 %ret.1.i, -1
  br i1 %cmp, label %meson_nfc_ecc_correct.exit.if.then5_crit_edge, label %if.else

meson_nfc_ecc_correct.exit.if.then5_crit_edge:    ; preds = %meson_nfc_ecc_correct.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

if.then5:                                         ; preds = %meson_nfc_ecc_correct.exit.if.then5_crit_edge, %for.inc.i.thread.if.then5_crit_edge
  %bitflips.1148154 = phi i32 [ %bitflips.1, %meson_nfc_ecc_correct.exit.if.then5_crit_edge ], [ %39, %for.inc.i.thread.if.then5_crit_edge ]
  %tobool6.not = icmp eq ptr %buf, null
  br i1 %tobool6.not, label %if.then5.if.end8_crit_edge, label %if.then7

if.then5.if.end8_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %40 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %writesize, align 4
  %42 = call ptr @memset(ptr %buf, i32 255, i32 %41)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then5.if.end8_crit_edge
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 6
  %43 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %oobsize, align 4
  %45 = call ptr @memset(ptr %1, i32 255, i32 %44)
  br label %cleanup56

if.else:                                          ; preds = %meson_nfc_ecc_correct.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp9 = icmp slt i32 %ret.1.i, 0
  br i1 %cmp9, label %if.then10, label %if.else.if.else46_crit_edge

if.else.if.else46_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else46

if.then10:                                        ; preds = %if.else
  %46 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %options.i, align 8
  %and = and i32 %47, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp ne i32 %and, 0
  %tobool12.not = icmp eq ptr %buf, null
  %or.cond = or i1 %tobool12.not, %tobool11.not
  br i1 %or.cond, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %failed = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 52, i32 1
  %48 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %failed, align 4
  %inc = add i32 %49, 1
  store i32 %inc, ptr %failed, align 4
  br label %cleanup56

if.end14:                                         ; preds = %if.then10
  %50 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %oob_poi, align 4
  %call.i = tail call fastcc i32 @meson_nfc_read_page_sub(ptr noundef %nand, i32 noundef %page, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i116 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i116, label %if.end.i117, label %if.end14.cleanup56_crit_edge

if.end14.cleanup56_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup56

if.end.i117:                                      ; preds = %if.end14
  %bytes.i.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 5
  %52 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bytes.i.i, align 4
  %add.i.i = add i32 %53, 2
  %54 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %steps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp26.i.i = icmp sgt i32 %55, 0
  br i1 %cmp26.i.i, label %for.body.lr.ph.i.i, label %if.end.i117.cleanup56_crit_edge

if.end.i117.cleanup56_crit_edge:                  ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup56

for.body.lr.ph.i.i:                               ; preds = %if.end.i117
  %size.i.i.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 4
  %data_buf.i.i.i = getelementptr i8, ptr %nand, i32 2196
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.029.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add.i20.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %oobbuf.addr.028.i.i = phi ptr [ %51, %for.body.lr.ph.i.i ], [ %add.ptr6.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %buf.addr.027.i.i = phi ptr [ %buf, %for.body.lr.ph.i.i ], [ %buf.addr.1.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %buf.addr.027.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size.i.i.i, align 8
  %58 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bytes.i.i, align 4
  %add.i.i.i = add i32 %57, 2
  %add2.i.i.i = add i32 %add.i.i.i, %59
  %mul.i.i.i = mul i32 %add2.i.i.i, %i.029.i.i
  %60 = ptrtoint ptr %data_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data_buf.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %61, i32 %mul.i.i.i
  %62 = call ptr @memcpy(ptr %buf.addr.027.i.i, ptr %add.ptr.i.i.i, i32 %57)
  %63 = load i32, ptr %size.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %buf.addr.027.i.i, i32 %63
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.i.if.end.i.i_crit_edge
  %buf.addr.1.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ null, %for.body.i.i.if.end.i.i_crit_edge ]
  %64 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %size.i.i.i, align 8
  %add.i20.i.i = add nuw nsw i32 %i.029.i.i, 1
  %mul.i21.i.i = mul i32 %65, %add.i20.i.i
  %66 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bytes.i.i, align 4
  %add2.i23.i.i = add i32 %67, 2
  %mul3.i.i.i = mul i32 %add2.i23.i.i, %i.029.i.i
  %add4.i.i.i = add i32 %mul3.i.i.i, %mul.i21.i.i
  %68 = ptrtoint ptr %data_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data_buf.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %69, i32 %add4.i.i.i
  %70 = call ptr @memcpy(ptr %oobbuf.addr.028.i.i, ptr %add.ptr.i25.i.i, i32 %add.i.i)
  %add.ptr6.i.i = getelementptr i8, ptr %oobbuf.addr.028.i.i, i32 %add.i.i
  %71 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %steps.i, align 4
  %cmp.i.i = icmp slt i32 %add.i20.i.i, %72
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %meson_nfc_read_page_raw.exit

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

meson_nfc_read_page_raw.exit:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp20138 = icmp sgt i32 %72, 0
  br i1 %cmp20138, label %for.body.lr.ph, label %meson_nfc_read_page_raw.exit.cleanup56_crit_edge

meson_nfc_read_page_raw.exit.cleanup56_crit_edge: ; preds = %meson_nfc_read_page_raw.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup56

for.body.lr.ph:                                   ; preds = %meson_nfc_read_page_raw.exit
  %size = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 4
  %failed36 = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 52, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0140 = phi i32 [ 0, %for.body.lr.ph ], [ %inc45, %cleanup.for.body_crit_edge ]
  %bitflips.3139 = phi i32 [ %bitflips.1, %for.body.lr.ph ], [ %bitflips.4, %cleanup.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.0140
  %conv = sext i32 %shl to i64
  %and24 = and i64 %correct_bitmap.1, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and24)
  %tobool25.not = icmp eq i64 %and24, 0
  br i1 %tobool25.not, label %if.end27, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %for.body
  %73 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %oob_poi, align 4
  %75 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bytes.i.i, align 4
  %add = add i32 %76, 2
  %mul22 = mul i32 %add, %i.0140
  %add.ptr23 = getelementptr i8, ptr %74, i32 %mul22
  %77 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %size, align 4
  %mul = mul i32 %78, %i.0140
  %add.ptr = getelementptr i8, ptr %buf, i32 %mul
  %79 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %strength.i, align 4
  %call31 = tail call i32 @nand_check_erased_ecc_chunk(ptr noundef %add.ptr, i32 noundef %78, ptr noundef %add.ptr23, i32 noundef %add, ptr noundef null, i32 noundef 0, i32 noundef %80) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then34, label %if.else38

if.then34:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %failed36 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %failed36, align 4
  %inc37 = add i32 %82, 1
  store i32 %inc37, ptr %failed36, align 4
  br label %cleanup

if.else38:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %83 = ptrtoint ptr %ecc_stats.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ecc_stats.i, align 4
  %add40 = add i32 %84, %call31
  store i32 %add40, ptr %ecc_stats.i, align 4
  %85 = tail call i32 @llvm.umax.i32(i32 %bitflips.3139, i32 %call31)
  br label %cleanup

cleanup:                                          ; preds = %if.else38, %if.then34, %for.body.cleanup_crit_edge
  %bitflips.4 = phi i32 [ %bitflips.3139, %if.then34 ], [ %85, %if.else38 ], [ %bitflips.3139, %for.body.cleanup_crit_edge ]
  %inc45 = add nuw nsw i32 %i.0140, 1
  %86 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %steps.i, align 4
  %cmp20 = icmp slt i32 %inc45, %87
  br i1 %cmp20, label %cleanup.for.body_crit_edge, label %cleanup.cleanup56_crit_edge

cleanup.cleanup56_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup56

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.else46:                                        ; preds = %if.else.if.else46_crit_edge, %meson_nfc_get_user_byte.exit.if.else46_crit_edge, %if.end.if.else46_crit_edge
  %bitflips.2129135 = phi i32 [ %bitflips.1, %if.else.if.else46_crit_edge ], [ 0, %if.end.if.else46_crit_edge ], [ 0, %meson_nfc_get_user_byte.exit.if.else46_crit_edge ]
  %tobool47.not = icmp eq ptr %buf, null
  br i1 %tobool47.not, label %if.else46.cleanup56_crit_edge, label %land.lhs.true

if.else46.cleanup56_crit_edge:                    ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup56

land.lhs.true:                                    ; preds = %if.else46
  %data_buf = getelementptr i8, ptr %nand, i32 2196
  %88 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data_buf, align 4
  %cmp48.not = icmp eq ptr %89, %buf
  br i1 %cmp48.not, label %land.lhs.true.cleanup56_crit_edge, label %if.then50

land.lhs.true.cleanup56_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup56

if.then50:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %writesize52 = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %90 = ptrtoint ptr %writesize52 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %writesize52, align 4
  %92 = call ptr @memcpy(ptr %buf, ptr %89, i32 %91)
  br label %cleanup56

cleanup56:                                        ; preds = %if.then50, %land.lhs.true.cleanup56_crit_edge, %if.else46.cleanup56_crit_edge, %cleanup.cleanup56_crit_edge, %meson_nfc_read_page_raw.exit.cleanup56_crit_edge, %if.end.i117.cleanup56_crit_edge, %if.end14.cleanup56_crit_edge, %if.then13, %if.end8, %entry.cleanup56_crit_edge
  %retval.0 = phi i32 [ %bitflips.1, %if.then13 ], [ %call3, %entry.cleanup56_crit_edge ], [ %bitflips.1148154, %if.end8 ], [ %bitflips.2129135, %if.else46.cleanup56_crit_edge ], [ %bitflips.2129135, %land.lhs.true.cleanup56_crit_edge ], [ %bitflips.2129135, %if.then50 ], [ %call.i, %if.end14.cleanup56_crit_edge ], [ %bitflips.1, %meson_nfc_read_page_raw.exit.cleanup56_crit_edge ], [ %bitflips.1, %if.end.i117.cleanup56_crit_edge ], [ %bitflips.4, %cleanup.cleanup56_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_nfc_read_oob_raw(ptr noundef %nand, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %oob_poi.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 23
  %0 = ptrtoint ptr %oob_poi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oob_poi.i, align 4
  %call.i = tail call fastcc i32 @meson_nfc_read_page_sub(ptr noundef %nand, i32 noundef %page, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.meson_nfc_read_page_raw.exit_crit_edge

entry.meson_nfc_read_page_raw.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %meson_nfc_read_page_raw.exit

if.end.i:                                         ; preds = %entry
  %bytes.i.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 5
  %2 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytes.i.i, align 4
  %add.i.i = add i32 %3, 2
  %steps.i.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 3
  %4 = ptrtoint ptr %steps.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %steps.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp26.i.i = icmp sgt i32 %5, 0
  br i1 %cmp26.i.i, label %for.body.lr.ph.i.i, label %if.end.i.meson_nfc_read_page_raw.exit_crit_edge

if.end.i.meson_nfc_read_page_raw.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %meson_nfc_read_page_raw.exit

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %size.i.i.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 4
  %data_buf.i.i.i = getelementptr i8, ptr %nand, i32 2196
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i.i.if.end.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.029.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add.i20.i.i, %if.end.i.i.if.end.i.i_crit_edge ]
  %oobbuf.addr.028.i.i = phi ptr [ %1, %for.body.lr.ph.i.i ], [ %add.ptr6.i.i, %if.end.i.i.if.end.i.i_crit_edge ]
  %6 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i.i.i, align 8
  %add.i20.i.i = add nuw nsw i32 %i.029.i.i, 1
  %mul.i21.i.i = mul i32 %7, %add.i20.i.i
  %8 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytes.i.i, align 4
  %add2.i23.i.i = add i32 %9, 2
  %mul3.i.i.i = mul i32 %add2.i23.i.i, %i.029.i.i
  %add4.i.i.i = add i32 %mul3.i.i.i, %mul.i21.i.i
  %10 = ptrtoint ptr %data_buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data_buf.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %11, i32 %add4.i.i.i
  %12 = call ptr @memcpy(ptr %oobbuf.addr.028.i.i, ptr %add.ptr.i25.i.i, i32 %add.i.i)
  %add.ptr6.i.i = getelementptr i8, ptr %oobbuf.addr.028.i.i, i32 %add.i.i
  %13 = ptrtoint ptr %steps.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %steps.i.i, align 4
  %cmp.i.i = icmp slt i32 %add.i20.i.i, %14
  br i1 %cmp.i.i, label %if.end.i.i.if.end.i.i_crit_edge, label %if.end.i.i.meson_nfc_read_page_raw.exit_crit_edge

if.end.i.i.meson_nfc_read_page_raw.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %meson_nfc_read_page_raw.exit

if.end.i.i.if.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

meson_nfc_read_page_raw.exit:                     ; preds = %if.end.i.i.meson_nfc_read_page_raw.exit_crit_edge, %if.end.i.meson_nfc_read_page_raw.exit_crit_edge, %entry.meson_nfc_read_page_raw.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.meson_nfc_read_page_raw.exit_crit_edge ], [ 0, %if.end.i.meson_nfc_read_page_raw.exit_crit_edge ], [ 0, %if.end.i.i.meson_nfc_read_page_raw.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_nfc_read_oob(ptr noundef %nand, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @meson_nfc_read_page_hwecc(ptr noundef %nand, ptr noundef null, i32 noundef 1, i32 noundef %page)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @meson_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %steps = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 3
  %0 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %section)
  %cmp.not = icmp sgt i32 %1, %section
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 5
  %2 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytes, align 4
  %add = add i32 %3, 2
  %mul = mul i32 %add, %section
  %add2 = add i32 %mul, 2
  %4 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add2, ptr %oobregion, align 4
  %5 = load i32, ptr %bytes, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @meson_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %steps = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 3
  %0 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %section)
  %cmp.not = icmp sgt i32 %1, %section
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 5
  %2 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytes, align 4
  %add = add i32 %3, 2
  %mul = mul i32 %add, %section
  %4 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_nfc_write_page_sub(ptr noundef readonly %nand, i32 noundef %page, i32 noundef %raw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %current_interface_config.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 7
  %0 = ptrtoint ptr %current_interface_config.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_interface_config.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 0
  %4 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1
  %retval.0.i = select i1 %cmp.i.i, ptr %4, ptr inttoptr (i32 -22 to ptr)
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 34
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 28
  %7 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cur_cs, align 4
  tail call fastcc void @meson_nfc_select_chip(ptr noundef %nand, i32 noundef %8)
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %9 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %writesize, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 6
  %11 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %oobsize, align 4
  %add = add i32 %12, %10
  %steps = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 3
  %13 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %steps, align 4
  %mul = shl i32 %14, 3
  tail call fastcc void @meson_nfc_rw_cmd_prepare_and_execute(ptr noundef %nand, i32 noundef %page, i1 noundef zeroext false)
  %data_buf = getelementptr i8, ptr %nand, i32 2196
  %15 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data_buf, align 4
  %info_buf = getelementptr i8, ptr %nand, i32 2200
  %17 = ptrtoint ptr %info_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %info_buf, align 8
  %call6 = tail call fastcc i32 @meson_nfc_dma_buffer_setup(ptr noundef %nand, ptr noundef %16, i32 noundef %add, ptr noundef %18, i32 noundef %mul, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %entry
  %options = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 6
  %19 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %options, align 8
  %and = and i32 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  tail call void @arm_heavy_mb() #11
  %and.i = and i32 %page, 32767
  %or.i = add nuw nsw i32 %and.i, 3670210
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %reg_base.i = getelementptr inbounds %struct.meson_nfc, ptr %6, i32 0, i32 8
  %22 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #11, !srcloc !174
  %24 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv.i, align 8
  %26 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %raw)
  %tobool.not.i = icmp eq i32 %raw, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %oobsize, align 4
  %add.i = add i32 %29, %27
  %and.i322 = and i32 %add.i, 63
  %or6.i = or i32 %and.i322, 2621440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %30 = tail call i32 @llvm.bswap.i32(i32 %or6.i) #11
  %reg_base.i323 = getelementptr inbounds %struct.meson_nfc, ptr %25, i32 0, i32 8
  %31 = ptrtoint ptr %reg_base.i323 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_base.i323, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #11, !srcloc !174
  br label %if.end203

if.end.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %size.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 4
  %33 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size.i, align 8
  %bch_mode.i = getelementptr i8, ptr %nand, i32 2192
  %35 = ptrtoint ptr %bch_mode.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bch_mode.i, align 8
  %div.i = sdiv i32 %27, %34
  %shl12.i = shl i32 %36, 14
  %and15.i = shl i32 %34, 6
  %shl16.i = and i32 %and15.i, 8128
  %or13.i = or i32 %shl12.i, %shl16.i
  %and18.i = and i32 %div.i, 63
  %or17.i = or i32 %or13.i, %and18.i
  %or19.i = or i32 %or17.i, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !191
  tail call void @arm_heavy_mb() #11
  %37 = tail call i32 @llvm.bswap.i32(i32 %or19.i) #11
  %reg_base23.i = getelementptr inbounds %struct.meson_nfc, ptr %25, i32 0, i32 8
  %38 = ptrtoint ptr %reg_base23.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_base23.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #11, !srcloc !174
  br label %if.end203

if.else:                                          ; preds = %if.end9
  %40 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv.i, align 8
  %42 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %raw)
  %tobool.not.i326 = icmp eq i32 %raw, 0
  br i1 %tobool.not.i326, label %if.end.i344, label %if.then.i332

if.then.i332:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %oobsize, align 4
  %add.i328 = add i32 %45, %43
  %and.i329 = and i32 %add.i328, 63
  %or6.i330 = or i32 %and.i329, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %46 = tail call i32 @llvm.bswap.i32(i32 %or6.i330) #11
  %reg_base.i331 = getelementptr inbounds %struct.meson_nfc, ptr %41, i32 0, i32 8
  %47 = ptrtoint ptr %reg_base.i331 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_base.i331, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #11, !srcloc !174
  br label %if.end203

if.end.i344:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %size.i333 = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 4
  %49 = ptrtoint ptr %size.i333 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %size.i333, align 8
  %bch_mode.i334 = getelementptr i8, ptr %nand, i32 2192
  %51 = ptrtoint ptr %bch_mode.i334 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bch_mode.i334, align 8
  %div.i335 = sdiv i32 %43, %50
  %shl12.i336 = shl i32 %52, 14
  %and15.i338 = shl i32 %50, 6
  %shl16.i339 = and i32 %and15.i338, 8128
  %or13.i337 = or i32 %shl12.i336, %shl16.i339
  %and18.i341 = and i32 %div.i335, 63
  %or17.i340 = or i32 %or13.i337, %and18.i341
  %or19.i342 = or i32 %or17.i340, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !191
  tail call void @arm_heavy_mb() #11
  %53 = tail call i32 @llvm.bswap.i32(i32 %or19.i342) #11
  %reg_base23.i343 = getelementptr inbounds %struct.meson_nfc, ptr %41, i32 0, i32 8
  %54 = ptrtoint ptr %reg_base23.i343 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_base23.i343, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #11, !srcloc !174
  br label %if.end203

if.end203:                                        ; preds = %if.end.i344, %if.then.i332, %if.end.i, %if.then.i
  %param = getelementptr inbounds %struct.meson_nfc, ptr %6, i32 0, i32 13
  %56 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %param, align 4
  %or13 = or i32 %57, 81936
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !192
  tail call void @arm_heavy_mb() #11
  %58 = tail call i32 @llvm.bswap.i32(i32 %or13)
  %reg_base = getelementptr inbounds %struct.meson_nfc, ptr %6, i32 0, i32 8
  %59 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #11, !srcloc !174
  %tPROG_max = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 2
  %61 = ptrtoint ptr %tPROG_max to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %tPROG_max, align 8
  %sub = add i64 %62, 999999999
  %63 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %sub, i32 0) #17, !srcloc !185
  %asmresult.i = extractvalue { i64, i32 } %63, 0
  %asmresult4.i = extractvalue { i64, i32 } %63, 1
  %64 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %sub, i64 %asmresult.i, i32 %asmresult4.i) #17, !srcloc !186
  %asmresult10.i = extractvalue { i64, i32 } %64, 0
  %extract320 = lshr i64 %asmresult10.i, 29
  %extract.t321 = trunc i64 %extract320 to i32
  tail call fastcc void @meson_nfc_queue_rb(ptr noundef %6, i32 noundef %extract.t321)
  %65 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.meson_nfc, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i, align 4
  %daddr.i = getelementptr inbounds %struct.meson_nfc, ptr %66, i32 0, i32 16
  %69 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %daddr.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %68, i32 noundef %70, i32 noundef %add, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool.not.i347 = icmp eq i32 %mul, 0
  br i1 %tobool.not.i347, label %if.end203.cleanup_crit_edge, label %if.then.i348

if.end203.cleanup_crit_edge:                      ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i348:                                     ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i, align 4
  %iaddr.i = getelementptr inbounds %struct.meson_nfc, ptr %66, i32 0, i32 17
  %73 = ptrtoint ptr %iaddr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %iaddr.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %72, i32 noundef %74, i32 noundef %mul, i32 noundef 1, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i348, %if.end203.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_nfc_select_chip(ptr nocapture noundef readonly %nand, i32 noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %nand, i32 -8
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chip)
  %cmp = icmp slt i32 %chip, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %nsels = getelementptr i8, ptr %nand, i32 2204
  %2 = ptrtoint ptr %nsels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nsels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %chip)
  %cmp2.not = icmp ugt i32 %3, %chip
  br i1 %cmp2.not, label %if.end39, label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false
  %.b112 = load i1, ptr @meson_nfc_select_chip.__already_done, align 1
  br i1 %.b112, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !183

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @meson_nfc_select_chip.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 228, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end39:                                         ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.meson_nfc_nand_chip, ptr %add.ptr.i, i32 0, i32 12, i32 %chip
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool40.not = icmp eq i8 %5, 0
  %cond = select i1 %tobool40.not, i32 14336, i32 13312
  %param = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %param, align 4
  %rb_select = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 13, i32 1
  %7 = ptrtoint ptr %rb_select to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %rb_select, align 4
  %twb = getelementptr i8, ptr %nand, i32 2180
  %8 = ptrtoint ptr %twb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %twb, align 4
  %timing = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %timing to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %timing, align 4
  %tadl = getelementptr i8, ptr %nand, i32 2184
  %11 = ptrtoint ptr %tadl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tadl, align 8
  %tadl46 = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 14, i32 1
  %13 = ptrtoint ptr %tadl46 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tadl46, align 4
  %tbers_max = getelementptr i8, ptr %nand, i32 2188
  %14 = ptrtoint ptr %tbers_max to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tbers_max, align 4
  %tbers_max48 = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 14, i32 2
  %16 = ptrtoint ptr %tbers_max48 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tbers_max48, align 4
  %clk_rate = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clk_rate, align 4
  %clk_rate49 = getelementptr i8, ptr %nand, i32 2168
  %19 = ptrtoint ptr %clk_rate49 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clk_rate49, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp50.not = icmp eq i32 %18, %20
  br i1 %cmp50.not, label %if.end39.if.end63_crit_edge, label %if.then52

if.end39.if.end63_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then52:                                        ; preds = %if.end39
  %device_clk = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %device_clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device_clk, align 4
  %call54 = tail call i32 @clk_set_rate(ptr noundef %22, i32 noundef %20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end60, label %do.end59

do.end59:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.66) #14
  br label %cleanup

if.end60:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %clk_rate49 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %clk_rate49, align 8
  %27 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %clk_rate, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.end60, %if.end39.if.end63_crit_edge
  %bus_timing = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %bus_timing to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bus_timing, align 4
  %bus_timing64 = getelementptr i8, ptr %nand, i32 2176
  %30 = ptrtoint ptr %bus_timing64 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bus_timing64, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp65.not = icmp eq i32 %29, %31
  br i1 %cmp65.not, label %if.end63.cleanup_crit_edge, label %if.then67

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  %shl = shl i32 %31, 5
  %or = or i32 %shl, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !193
  tail call void @arm_heavy_mb() #11
  %32 = tail call i32 @llvm.bswap.i32(i32 %or)
  %reg_base = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 8
  %33 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %32) #11, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !194
  tail call void @arm_heavy_mb() #11
  %35 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 128) #11, !srcloc !174
  %37 = ptrtoint ptr %bus_timing64 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bus_timing64, align 8
  %39 = ptrtoint ptr %bus_timing to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %bus_timing, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %if.end63.cleanup_crit_edge, %do.end59, %if.then, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_nfc_rw_cmd_prepare_and_execute(ptr nocapture noundef readonly %nand, i32 noundef %page, i1 noundef zeroext %in) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %current_interface_config.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 7
  %0 = ptrtoint ptr %current_interface_config.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_interface_config.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 0
  %4 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1
  %retval.0.i = select i1 %cmp.i.i, ptr %4, ptr inttoptr (i32 -22 to ptr)
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 34
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  %cmdfifo = getelementptr inbounds %struct.meson_nfc, ptr %6, i32 0, i32 15
  %addrs4 = getelementptr inbounds %struct.meson_nfc, ptr %6, i32 0, i32 15, i32 0, i32 1
  %param = getelementptr inbounds %struct.meson_nfc, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %param, align 4
  %or = select i1 %in, i32 81920, i32 82048
  %or5 = or i32 %or, %8
  %9 = ptrtoint ptr %cmdfifo to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or5, ptr %cmdfifo, align 4
  %or8 = or i32 %8, 98304
  %10 = ptrtoint ptr %addrs4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or8, ptr %addrs4, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %11 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %12)
  %cmp = icmp ult i32 %12, 513
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx12 = getelementptr %struct.meson_nfc, ptr %6, i32 0, i32 15, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or8, ptr %arrayidx12, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %cmd_num.0 = phi i32 [ 7, %if.else ], [ 6, %entry.if.end_crit_edge ]
  %row_start.0 = phi i32 [ 2, %if.else ], [ 1, %entry.if.end_crit_edge ]
  %and = and i32 %page, 255
  %or14 = or i32 %or8, %and
  %arrayidx15 = getelementptr i32, ptr %addrs4, i32 %row_start.0
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or14, ptr %arrayidx15, align 4
  %15 = lshr i32 %page, 8
  %and18 = and i32 %15, 255
  %or19 = or i32 %or8, %and18
  %add = add nuw nsw i32 %row_start.0, 1
  %arrayidx20 = getelementptr i32, ptr %addrs4, i32 %add
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or19, ptr %arrayidx20, align 4
  %options = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 6
  %17 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %options, align 8
  %and21 = and i32 %18, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else30, label %if.then23

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %19 = lshr i32 %page, 16
  %and26 = and i32 %19, 255
  %or27 = or i32 %or8, %and26
  %add28 = add nuw nsw i32 %row_start.0, 2
  %arrayidx29 = getelementptr i32, ptr %addrs4, i32 %add28
  %20 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or27, ptr %arrayidx29, align 4
  br label %for.body.lr.ph

if.else30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dec31 = add nsw i32 %cmd_num.0, -1
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.else30, %if.then23
  %cmd_num.1 = phi i32 [ %cmd_num.0, %if.then23 ], [ %dec31, %if.else30 ]
  %reg_base = getelementptr inbounds %struct.meson_nfc, ptr %6, i32 0, i32 8
  %21 = add nsw i32 %cmd_num.1, -2
  %22 = ptrtoint ptr %cmdfifo to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cmdfifo, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #11, !srcloc !174
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %exitcond.not = icmp eq i32 %21, 0
  br i1 %exitcond.not, label %for.body.lr.ph.for.end_crit_edge, label %for.body.1

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.1:                                       ; preds = %for.body.lr.ph
  %arrayidx36.1 = getelementptr %struct.meson_nfc, ptr %6, i32 0, i32 15, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx36.1, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #11, !srcloc !174
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %exitcond.not.1 = icmp eq i32 %21, 1
  br i1 %exitcond.not.1, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %arrayidx36.2 = getelementptr %struct.meson_nfc, ptr %6, i32 0, i32 15, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx36.2, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #11, !srcloc !174
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %exitcond.not.2 = icmp eq i32 %21, 2
  br i1 %exitcond.not.2, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %arrayidx36.3 = getelementptr %struct.meson_nfc, ptr %6, i32 0, i32 15, i32 0, i32 3
  %37 = ptrtoint ptr %arrayidx36.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx36.3, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %40 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #11, !srcloc !174
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %exitcond.not.3 = icmp eq i32 %21, 3
  br i1 %exitcond.not.3, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  %arrayidx36.4 = getelementptr %struct.meson_nfc, ptr %6, i32 0, i32 15, i32 0, i32 4
  %42 = ptrtoint ptr %arrayidx36.4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx36.4, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #11, !srcloc !174
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %exitcond.not.4 = icmp eq i32 %21, 4
  br i1 %exitcond.not.4, label %for.body.4.for.end_crit_edge, label %for.body.5

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.5:                                       ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx36.5 = getelementptr %struct.meson_nfc, ptr %6, i32 0, i32 15, i32 0, i32 5
  %47 = ptrtoint ptr %arrayidx36.5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx36.5, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %50 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #11, !srcloc !174
  br label %for.end

for.end:                                          ; preds = %for.body.5, %for.body.4.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.lr.ph.for.end_crit_edge
  br i1 %in, label %if.end237, label %if.else242

if.end237:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %or40 = or i32 %8, 81968
  %cmd1 = getelementptr inbounds %struct.meson_nfc, ptr %6, i32 0, i32 15, i32 0, i32 6
  %52 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or40, ptr %cmd1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !195
  tail call void @arm_heavy_mb() #11
  %53 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cmd1, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %reg_base44 = getelementptr inbounds %struct.meson_nfc, ptr %6, i32 0, i32 8
  %56 = ptrtoint ptr %reg_base44 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg_base44, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #11, !srcloc !174
  %tR_max = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 3
  %58 = ptrtoint ptr %tR_max to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %tR_max, align 8
  %sub = add i64 %59, 999999999
  %60 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %sub, i32 0) #17, !srcloc !185
  %asmresult.i = extractvalue { i64, i32 } %60, 0
  %asmresult4.i = extractvalue { i64, i32 } %60, 1
  %61 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %sub, i64 %asmresult.i, i32 %asmresult4.i) #17, !srcloc !186
  %asmresult10.i = extractvalue { i64, i32 } %61, 0
  %extract2 = lshr i64 %asmresult10.i, 29
  %extract.t3 = trunc i64 %extract2 to i32
  tail call fastcc void @meson_nfc_queue_rb(ptr noundef %6, i32 noundef %extract.t3)
  br label %if.end243

if.else242:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %tadl = getelementptr inbounds %struct.meson_nfc, ptr %6, i32 0, i32 14, i32 1
  %62 = ptrtoint ptr %tadl to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tadl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !180
  tail call void @arm_heavy_mb() #11
  %64 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %param, align 4
  %and.i = and i32 %63, 1023
  %or.i = or i32 %and.i, %65
  %or1.i = or i32 %or.i, 196608
  %66 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #11
  %reg_base.i = getelementptr inbounds %struct.meson_nfc, ptr %6, i32 0, i32 8
  %67 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #11, !srcloc !174
  br label %if.end243

if.end243:                                        ; preds = %if.else242, %if.end237
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_nfc_dma_buffer_setup(ptr nocapture noundef readonly %nand, ptr noundef %databuf, i32 noundef %datalen, ptr noundef %infobuf, i32 noundef %infolen, i32 noundef %dir) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %databuf) #11
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !183

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %3) #11
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.72, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.73, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef %databuf, i32 noundef %datalen) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %8 = load ptr, ptr @mem_map, align 4
  %9 = ptrtoint ptr %databuf to i32
  %sub.i = add i32 %9, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %8, i32 %shr.i
  %and.i = and i32 %9, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %datalen, i32 noundef %dir, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %daddr = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i, ptr %daddr, align 4
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %12, i32 noundef %retval.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.68) #14
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %15 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %daddr, align 4
  %and = and i32 %16, 65535
  %or = or i32 %and, 3145728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !196
  tail call void @arm_heavy_mb() #11
  %17 = tail call i32 @llvm.bswap.i32(i32 %or)
  %reg_base = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #11, !srcloc !174
  %20 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %daddr, align 4
  %shr = lshr i32 %21, 16
  %or12 = or i32 %shr, 3211264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !197
  tail call void @arm_heavy_mb() #11
  %22 = tail call i32 @llvm.bswap.i32(i32 %or12)
  %23 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #11, !srcloc !174
  %tobool18.not = icmp eq ptr %infobuf, null
  br i1 %tobool18.not, label %if.end.cleanup_crit_edge, label %if.then19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then19:                                        ; preds = %if.end
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %call.i84 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %infobuf) #11
  br i1 %call.i84, label %land.rhs.i86, label %if.end39.i99

land.rhs.i86:                                     ; preds = %if.then19
  %.b1.i85 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i85, label %land.rhs.i86.dma_map_single_attrs.exit101_crit_edge, label %if.then.i90, !prof !183

land.rhs.i86.dma_map_single_attrs.exit101_crit_edge: ; preds = %land.rhs.i86
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit101

if.then.i90:                                      ; preds = %land.rhs.i86
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i87 = tail call ptr @dev_driver_string(ptr noundef %26) #11
  %init_name.i.i88 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %init_name.i.i88 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i88, align 8
  %tobool.not.i.i89 = icmp eq ptr %28, null
  br i1 %tobool.not.i.i89, label %if.end.i.i91, label %if.then.i90.dev_name.exit.i93_crit_edge

if.then.i90.dev_name.exit.i93_crit_edge:          ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i93

if.end.i.i91:                                     ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  br label %dev_name.exit.i93

dev_name.exit.i93:                                ; preds = %if.end.i.i91, %if.then.i90.dev_name.exit.i93_crit_edge
  %retval.0.i.i92 = phi ptr [ %30, %if.end.i.i91 ], [ %28, %if.then.i90.dev_name.exit.i93_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.72, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.73, ptr noundef %call16.i87, ptr noundef %retval.0.i.i92) #11
  br label %dma_map_single_attrs.exit101

if.end39.i99:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %26, ptr noundef nonnull %infobuf, i32 noundef %infolen) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %31 = load ptr, ptr @mem_map, align 4
  %32 = ptrtoint ptr %infobuf to i32
  %sub.i94 = add i32 %32, 1073741824
  %shr.i95 = lshr i32 %sub.i94, 12
  %add.ptr.i96 = getelementptr %struct.page, ptr %31, i32 %shr.i95
  %and.i97 = and i32 %32, 4095
  %call41.i98 = tail call i32 @dma_map_page_attrs(ptr noundef %26, ptr noundef %add.ptr.i96, i32 noundef %and.i97, i32 noundef %infolen, i32 noundef %dir, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit101

dma_map_single_attrs.exit101:                     ; preds = %if.end39.i99, %dev_name.exit.i93, %land.rhs.i86.dma_map_single_attrs.exit101_crit_edge
  %retval.0.i100 = phi i32 [ %call41.i98, %if.end39.i99 ], [ -1, %dev_name.exit.i93 ], [ -1, %land.rhs.i86.dma_map_single_attrs.exit101_crit_edge ]
  %iaddr = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 17
  %33 = ptrtoint ptr %iaddr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i100, ptr %iaddr, align 4
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %35, i32 noundef %retval.0.i100) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i100)
  %cmp.i102 = icmp eq i32 %retval.0.i100, -1
  br i1 %cmp.i102, label %do.end29, label %if.end33

do.end29:                                         ; preds = %dma_map_single_attrs.exit101
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.68) #14
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %40 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %daddr, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %39, i32 noundef %41, i32 noundef %datalen, i32 noundef %dir, i32 noundef 0) #11
  br label %cleanup

if.end33:                                         ; preds = %dma_map_single_attrs.exit101
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %iaddr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %iaddr, align 4
  %and35 = and i32 %43, 65535
  %or36 = or i32 %and35, 3276800
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !198
  tail call void @arm_heavy_mb() #11
  %44 = tail call i32 @llvm.bswap.i32(i32 %or36)
  %45 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #11, !srcloc !174
  %47 = ptrtoint ptr %iaddr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %iaddr, align 4
  %shr43 = lshr i32 %48, 16
  %or45 = or i32 %shr43, 3342336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !199
  tail call void @arm_heavy_mb() #11
  %49 = tail call i32 @llvm.bswap.i32(i32 %or45)
  %50 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #11, !srcloc !174
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end29, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ -12, %do.end29 ], [ 0, %if.end33 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_nfc_queue_rb(ptr noundef %nfc, i32 noundef %timeout_ms) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %timing = getelementptr inbounds %struct.meson_nfc, ptr %nfc, i32 0, i32 14
  %0 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timing, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !180
  tail call void @arm_heavy_mb() #11
  %param.i = getelementptr inbounds %struct.meson_nfc, ptr %nfc, i32 0, i32 13
  %2 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %param.i, align 4
  %and.i = and i32 %1, 1023
  %or.i = or i32 %and.i, %3
  %or1.i = or i32 %or.i, 196608
  %4 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #11
  %reg_base.i = getelementptr inbounds %struct.meson_nfc, ptr %nfc, i32 0, i32 8
  %5 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #11, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !180
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %param.i, align 4
  %or1.i.i = or i32 %8, 196608
  %9 = tail call i32 @llvm.bswap.i32(i32 %or1.i.i) #11
  %10 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #11, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !180
  tail call void @arm_heavy_mb() #11
  %12 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %param.i, align 4
  %or1.i3.i = or i32 %13, 196608
  %14 = tail call i32 @llvm.bswap.i32(i32 %or1.i3.i) #11
  %15 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #11, !srcloc !174
  %call = tail call fastcc i32 @meson_nfc_wait_cmd_finish(ptr noundef %nfc, i32 noundef 1000)
  %17 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base.i, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !200
  %20 = or i32 %19, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  tail call void @arm_heavy_mb() #11
  %21 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_base.i, align 4
  %add.ptr4 = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %20) #11, !srcloc !174
  %completion = getelementptr inbounds %struct.meson_nfc, ptr %nfc, i32 0, i32 10
  %23 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %completion, align 4
  %24 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %param.i, align 4
  %tbers_max = getelementptr inbounds %struct.meson_nfc, ptr %nfc, i32 0, i32 14, i32 2
  %26 = ptrtoint ptr %tbers_max to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tbers_max, align 4
  %or5 = or i32 %25, %27
  %or7 = or i32 %or5, 1064960
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !202
  tail call void @arm_heavy_mb() #11
  %28 = tail call i32 @llvm.bswap.i32(i32 %or7)
  %29 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #11, !srcloc !174
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout_ms) #11
  %call15 = tail call i32 @wait_for_completion_timeout(ptr noundef %completion, i32 noundef %call2.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_nfc_wait_cmd_finish(ptr nocapture noundef readonly %nfc, i32 noundef %timeout_ms) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %timeout_ms, 1000
  %conv = zext i32 %mul to i64
  %call = tail call i64 @ktime_get() #11
  %mul.i = mul nuw nsw i64 %conv, 1000
  %add.i = add i64 %call, %mul.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 317) #11
  %reg_base = getelementptr inbounds %struct.meson_nfc, ptr %nfc, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !176
  %3 = and i32 %2, 49159
  %4 = call i32 @llvm.bswap.i32(i32 %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not48 = icmp eq i32 %3, 0
  br i1 %tobool.not48, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true:                                    ; preds = %if.then25.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %if.then17, label %if.then25

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !176
  %8 = and i32 %7, 49159
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  br label %for.end

if.then25:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #11
  %10 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !176
  %13 = and i32 %12, 49159
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.then25.if.end37_crit_edge, label %if.then25.land.lhs.true_crit_edge

if.then25.land.lhs.true_crit_edge:                ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.then25.if.end37_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

for.end:                                          ; preds = %if.then17, %entry.for.end_crit_edge
  %.pre-phi = phi i32 [ %4, %entry.for.end_crit_edge ], [ %9, %if.then17 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre-phi)
  %tobool31.not = icmp eq i32 %.pre-phi, 0
  br i1 %tobool31.not, label %for.end.if.end37_crit_edge, label %do.end36

for.end.if.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

do.end36:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.meson_nfc, ptr %nfc, i32 0, i32 7
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.74) #14
  br label %if.end37

if.end37:                                         ; preds = %do.end36, %for.end.if.end37_crit_edge, %if.then25.if.end37_crit_edge
  %cond = phi i32 [ -110, %do.end36 ], [ 0, %for.end.if.end37_crit_edge ], [ 0, %if.then25.if.end37_crit_edge ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_nfc_read_page_sub(ptr noundef readonly %nand, i32 noundef %page, i32 noundef %raw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 28
  %2 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_cs, align 4
  tail call fastcc void @meson_nfc_select_chip(ptr noundef %nand, i32 noundef %3)
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %4 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 6
  %6 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oobsize, align 4
  %add = add i32 %7, %5
  %steps = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 3
  %8 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %steps, align 4
  %mul = shl i32 %9, 3
  tail call fastcc void @meson_nfc_rw_cmd_prepare_and_execute(ptr noundef %nand, i32 noundef %page, i1 noundef zeroext true)
  %data_buf = getelementptr i8, ptr %nand, i32 2196
  %10 = ptrtoint ptr %data_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data_buf, align 4
  %info_buf = getelementptr i8, ptr %nand, i32 2200
  %12 = ptrtoint ptr %info_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info_buf, align 8
  %call4 = tail call fastcc i32 @meson_nfc_dma_buffer_setup(ptr noundef %nand, ptr noundef %11, i32 noundef %add, ptr noundef %13, i32 noundef %mul, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %entry
  %options = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 6
  %14 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %options, align 8
  %and = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  tail call void @arm_heavy_mb() #11
  %and.i = and i32 %page, 32767
  %or.i = add nuw nsw i32 %and.i, 3670210
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %reg_base.i = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #11, !srcloc !174
  %19 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i, align 8
  %21 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %raw)
  %tobool.not.i = icmp eq i32 %raw, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %oobsize, align 4
  %add.i = add i32 %24, %22
  %and.i42 = and i32 %add.i, 63
  %or6.i = or i32 %and.i42, 2752512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %25 = tail call i32 @llvm.bswap.i32(i32 %or6.i) #11
  %reg_base.i43 = getelementptr inbounds %struct.meson_nfc, ptr %20, i32 0, i32 8
  %26 = ptrtoint ptr %reg_base.i43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_base.i43, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #11, !srcloc !174
  br label %if.end10

if.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %size.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 4
  %28 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size.i, align 8
  %bch_mode.i = getelementptr i8, ptr %nand, i32 2192
  %30 = ptrtoint ptr %bch_mode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bch_mode.i, align 8
  %div.i = sdiv i32 %22, %29
  %shl12.i = shl i32 %31, 14
  %and15.i = shl i32 %29, 6
  %shl16.i = and i32 %and15.i, 8128
  %or13.i = or i32 %shl12.i, %shl16.i
  %and18.i = and i32 %div.i, 63
  %or17.i = or i32 %or13.i, %and18.i
  %or19.i = or i32 %or17.i, 2228224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !191
  tail call void @arm_heavy_mb() #11
  %32 = tail call i32 @llvm.bswap.i32(i32 %or19.i) #11
  %reg_base23.i = getelementptr inbounds %struct.meson_nfc, ptr %20, i32 0, i32 8
  %33 = ptrtoint ptr %reg_base23.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_base23.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #11, !srcloc !174
  br label %if.end10

if.else:                                          ; preds = %if.end7
  %35 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv.i, align 8
  %37 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %raw)
  %tobool.not.i46 = icmp eq i32 %raw, 0
  br i1 %tobool.not.i46, label %if.end.i64, label %if.then.i52

if.then.i52:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %oobsize, align 4
  %add.i48 = add i32 %40, %38
  %and.i49 = and i32 %add.i48, 63
  %or6.i50 = or i32 %and.i49, 2228224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !190
  tail call void @arm_heavy_mb() #11
  %41 = tail call i32 @llvm.bswap.i32(i32 %or6.i50) #11
  %reg_base.i51 = getelementptr inbounds %struct.meson_nfc, ptr %36, i32 0, i32 8
  %42 = ptrtoint ptr %reg_base.i51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_base.i51, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #11, !srcloc !174
  br label %if.end10

if.end.i64:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %size.i53 = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 4
  %44 = ptrtoint ptr %size.i53 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size.i53, align 8
  %bch_mode.i54 = getelementptr i8, ptr %nand, i32 2192
  %46 = ptrtoint ptr %bch_mode.i54 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bch_mode.i54, align 8
  %div.i55 = sdiv i32 %38, %45
  %shl12.i56 = shl i32 %47, 14
  %and15.i58 = shl i32 %45, 6
  %shl16.i59 = and i32 %and15.i58, 8128
  %or13.i57 = or i32 %shl12.i56, %shl16.i59
  %and18.i61 = and i32 %div.i55, 63
  %or17.i60 = or i32 %or13.i57, %and18.i61
  %or19.i62 = or i32 %or17.i60, 2228224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !191
  tail call void @arm_heavy_mb() #11
  %48 = tail call i32 @llvm.bswap.i32(i32 %or19.i62) #11
  %reg_base23.i63 = getelementptr inbounds %struct.meson_nfc, ptr %36, i32 0, i32 8
  %49 = ptrtoint ptr %reg_base23.i63 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg_base23.i63, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #11, !srcloc !174
  br label %if.end10

if.end10:                                         ; preds = %if.end.i64, %if.then.i52, %if.end.i, %if.then.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !180
  tail call void @arm_heavy_mb() #11
  %param.i.i.i = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 13
  %51 = ptrtoint ptr %param.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %param.i.i.i, align 4
  %or1.i.i.i = or i32 %52, 196608
  %53 = tail call i32 @llvm.bswap.i32(i32 %or1.i.i.i) #11
  %reg_base.i.i.i = getelementptr inbounds %struct.meson_nfc, ptr %1, i32 0, i32 8
  %54 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_base.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #11, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !180
  tail call void @arm_heavy_mb() #11
  %56 = ptrtoint ptr %param.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %param.i.i.i, align 4
  %or1.i3.i.i = or i32 %57, 196608
  %58 = tail call i32 @llvm.bswap.i32(i32 %or1.i3.i.i) #11
  %59 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg_base.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #11, !srcloc !174
  %call.i = tail call fastcc i32 @meson_nfc_wait_cmd_finish(ptr noundef %1, i32 noundef 1048576) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %raw)
  %tobool.not.i66 = icmp eq i32 %raw, 0
  br i1 %tobool.not.i66, label %cond.false.i, label %if.end10.cond.end.i_crit_edge

if.end10.cond.end.i_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %steps, align 4
  %phi.bo.i = add i32 %62, -1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end10.cond.end.i_crit_edge
  %cond.i = phi i32 [ %phi.bo.i, %cond.false.i ], [ 0, %if.end10.cond.end.i_crit_edge ]
  %63 = ptrtoint ptr %info_buf to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %info_buf, align 8
  %arrayidx.i = getelementptr i64, ptr %64, i32 %cond.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %cond.end.i
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 15, i32 noundef 2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !203
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx.i, align 8
  %67 = and i64 %66, 2147483648
  %tobool6.not.i = icmp eq i64 %67, 0
  br i1 %tobool6.not.i, label %do.body.i.do.body.i_crit_edge, label %meson_nfc_check_ecc_pages_valid.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

meson_nfc_check_ecc_pages_valid.exit:             ; preds = %do.body.i
  %68 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv.i, align 8
  %dev.i = getelementptr inbounds %struct.meson_nfc, ptr %69, i32 0, i32 7
  %70 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev.i, align 4
  %daddr.i = getelementptr inbounds %struct.meson_nfc, ptr %69, i32 0, i32 16
  %72 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %daddr.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %71, i32 noundef %73, i32 noundef %add, i32 noundef 2, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool.not.i68 = icmp eq i32 %mul, 0
  br i1 %tobool.not.i68, label %meson_nfc_check_ecc_pages_valid.exit.cleanup_crit_edge, label %if.then.i69

meson_nfc_check_ecc_pages_valid.exit.cleanup_crit_edge: ; preds = %meson_nfc_check_ecc_pages_valid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i69:                                      ; preds = %meson_nfc_check_ecc_pages_valid.exit
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i, align 4
  %iaddr.i = getelementptr inbounds %struct.meson_nfc, ptr %69, i32 0, i32 17
  %76 = ptrtoint ptr %iaddr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %iaddr.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %75, i32 noundef %77, i32 noundef %mul, i32 noundef 2, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i69, %meson_nfc_check_ecc_pages_valid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %entry.cleanup_crit_edge ], [ %call.i, %meson_nfc_check_ecc_pages_valid.exit.cleanup_crit_edge ], [ %call.i, %if.then.i69 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_check_erased_ecc_chunk(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @meson_nand_calc_ecc_bytes(i32 noundef %step_size, i32 noundef %strength) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %step_size)
  %cmp = icmp eq i32 %step_size, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %strength)
  %cmp1 = icmp eq i32 %strength, 8
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mul = shl i32 %step_size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool.not.i = icmp eq i32 %mul, 0
  %0 = tail call i32 @llvm.ctlz.i32(i32 %mul, i1 true) #11, !range !188
  %sub.i = sub nuw nsw i32 32, %0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %mul2 = mul i32 %cond.i, %strength
  %sub = add i32 %mul2, 7
  %div = sdiv i32 %sub, 8
  %add3 = add nsw i32 %div, 1
  %and = and i32 %add3, -2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end ], [ 14, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !48, !50, !51, !52, !53, !55, !57, !58, !59, !61, !63, !64, !65, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !110, !112, !113, !114, !115, !117, !118, !119, !121, !123, !125, !127, !128, !129, !130, !132, !133, !134, !135, !137, !138, !140, !141, !142, !144, !145, !146, !147, !149, !151, !153, !155, !156, !157, !159, !161, !162}
!llvm.named.register.sp = !{!163}
!llvm.module.flags = !{!164, !165, !166, !167, !168, !169, !170, !171}
!llvm.ident = !{!172}

!0 = !{ptr @__initcall__kmod_meson_nand__255_1469_meson_nfc_driver_init6, !1, !"__initcall__kmod_meson_nand__255_1469_meson_nfc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1469, i32 1}
!2 = !{ptr @__exitcall_meson_nfc_driver_exit, !1, !"__exitcall_meson_nfc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file256, !4, !"__UNIQUE_ID_file256", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1471, i32 1}
!5 = !{ptr @__UNIQUE_ID_license257, !4, !"__UNIQUE_ID_license257", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author258, !7, !"__UNIQUE_ID_author258", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1472, i32 1}
!8 = !{ptr @__UNIQUE_ID_description259, !9, !"__UNIQUE_ID_description259", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1473, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1465, i32 12}
!12 = !{ptr @meson_nfc_driver, !13, !"meson_nfc_driver", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1461, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1401, i32 7}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1403, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @meson_nfc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @meson_nfc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1413, i32 3}
!26 = !{ptr @meson_nfc_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @meson_nfc_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1420, i32 3}
!30 = !{ptr @meson_nfc_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @meson_nfc_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1427, i32 3}
!34 = !{ptr @meson_nfc_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @meson_nfc_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1435, i32 3}
!38 = !{ptr @meson_nfc_probe._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @meson_nfc_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @nand_controller_init.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @init_completion.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../include/linux/completion.h", i32 87, i32 2}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 993, i32 41}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 995, i32 3}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @meson_nfc_clk_init._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @meson_nfc_clk_init._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 999, i32 43}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1001, i32 3}
!57 = !{ptr @meson_nfc_clk_init._entry.25, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @meson_nfc_clk_init._entry_ptr.27, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1005, i32 41}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1007, i32 3}
!63 = !{ptr @meson_nfc_clk_init._entry.29, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @meson_nfc_clk_init._entry_ptr.31, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1011, i32 41}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1013, i32 3}
!69 = !{ptr @meson_nfc_clk_init._entry.33, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @meson_nfc_clk_init._entry_ptr.35, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1023, i32 3}
!73 = !{ptr @meson_nfc_clk_init._entry.36, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @meson_nfc_clk_init._entry_ptr.38, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1029, i32 3}
!77 = !{ptr @meson_nfc_clk_init._entry.39, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @meson_nfc_clk_init._entry_ptr.41, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1035, i32 3}
!81 = !{ptr @meson_nfc_clk_init._entry.42, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @meson_nfc_clk_init._entry_ptr.44, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1041, i32 3}
!85 = !{ptr @meson_nfc_clk_init._entry.45, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @meson_nfc_clk_init._entry_ptr.47, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1242, i32 46}
!89 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1244, i32 3}
!91 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @meson_nfc_nand_chip_init._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @meson_nfc_nand_chip_init._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1258, i32 4}
!96 = !{ptr @meson_nfc_nand_chip_init._entry.51, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @meson_nfc_nand_chip_init._entry_ptr.53, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1264, i32 4}
!100 = !{ptr @meson_nfc_nand_chip_init._entry.54, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @meson_nfc_nand_chip_init._entry_ptr.56, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1286, i32 3}
!104 = !{ptr @meson_nfc_nand_chip_init._entry.57, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @meson_nfc_nand_chip_init._entry_ptr.59, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @meson_nand_controller_ops, !107, !"meson_nand_controller_ops", i1 false, i1 false}
!107 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1225, i32 41}
!108 = !{ptr @.str.60, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1178, i32 9}
!110 = !{ptr @.str.61, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1193, i32 3}
!112 = !{ptr @.str.62, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @meson_nand_attach_chip._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @meson_nand_attach_chip._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.64, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1215, i32 3}
!117 = !{ptr @meson_nand_attach_chip._entry.63, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @meson_nand_attach_chip._entry_ptr.65, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @meson_ooblayout_ops, !120, !"meson_ooblayout_ops", i1 false, i1 false}
!120 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 983, i32 39}
!121 = !{ptr @meson_ecc, !122, !"meson_ecc", i1 false, i1 false}
!122 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 190, i32 30}
!123 = distinct !{null, !124, !"__already_done", i1 false, i1 false}
!124 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 228, i32 18}
!125 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 240, i32 4}
!127 = !{ptr @.str.67, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @meson_nfc_select_chip._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @meson_nfc_select_chip._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 484, i32 3}
!132 = !{ptr @.str.69, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @meson_nfc_dma_buffer_setup._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @meson_nfc_dma_buffer_setup._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @meson_nfc_dma_buffer_setup._entry.70, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 497, i32 4}
!137 = !{ptr @meson_nfc_dma_buffer_setup._entry_ptr.71, !136, !"_entry_ptr", i1 false, i1 false}
!138 = distinct !{null, !139, !"__already_done", i1 false, i1 false}
!139 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!140 = !{ptr @.str.72, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.73, !139, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.74, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 319, i32 3}
!144 = !{ptr @.str.75, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @meson_nfc_wait_cmd_finish._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @meson_nfc_wait_cmd_finish._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.76, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!149 = !{ptr @meson_nfc_id_table, !150, !"meson_nfc_id_table", i1 false, i1 false}
!150 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1361, i32 34}
!151 = !{ptr @meson_gxl_data, !152, !"meson_gxl_data", i1 false, i1 false}
!152 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1353, i32 36}
!153 = !{ptr @meson_gxl_ecc_caps, !154, !"meson_gxl_ecc_caps", i1 false, i1 false}
!154 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 212, i32 1}
!155 = !{ptr @meson_gxl_ecc_caps_stepinfo, !154, !"meson_gxl_ecc_caps_stepinfo", i1 false, i1 false}
!156 = !{ptr @meson_gxl_ecc_caps_strengths, !154, !"meson_gxl_ecc_caps_strengths", i1 false, i1 false}
!157 = !{ptr @meson_axg_data, !158, !"meson_axg_data", i1 false, i1 false}
!158 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 1357, i32 36}
!159 = !{ptr @meson_axg_ecc_caps, !160, !"meson_axg_ecc_caps", i1 false, i1 false}
!160 = !{!"../drivers/mtd/nand/raw/meson_nand.c", i32 214, i32 1}
!161 = !{ptr @meson_axg_ecc_caps_stepinfo, !160, !"meson_axg_ecc_caps_stepinfo", i1 false, i1 false}
!162 = !{ptr @meson_axg_ecc_caps_strengths, !160, !"meson_axg_ecc_caps_strengths", i1 false, i1 false}
!163 = !{!"sp"}
!164 = !{i32 1, !"wchar_size", i32 2}
!165 = !{i32 1, !"min_enum_size", i32 4}
!166 = !{i32 8, !"branch-target-enforcement", i32 0}
!167 = !{i32 8, !"sign-return-address", i32 0}
!168 = !{i32 8, !"sign-return-address-all", i32 0}
!169 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!170 = !{i32 7, !"uwtable", i32 1}
!171 = !{i32 7, !"frame-pointer", i32 2}
!172 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!173 = !{i64 2154828610}
!174 = !{i64 6265113}
!175 = !{!"auto-init"}
!176 = !{i64 6265531}
!177 = !{i64 2154824319}
!178 = !{i64 2154824709}
!179 = !{i64 2154760973}
!180 = !{i64 2154699624}
!181 = !{i64 2154761385}
!182 = !{i64 2154731392}
!183 = !{!"branch_weights", i32 2000, i32 1}
!184 = !{i64 2154732490}
!185 = !{i64 864434, i64 864461, i64 864483, i64 864511}
!186 = !{i64 864842, i64 864869, i64 864902, i64 864923, i64 864950, i64 864976}
!187 = !{i64 2148349978, i64 2148350258, i64 2148350592, i64 2148350926}
!188 = !{i32 0, i32 33}
!189 = !{i64 2154700245}
!190 = !{i64 2154701534}
!191 = !{i64 2154702291}
!192 = !{i64 2154739768}
!193 = !{i64 2154698732}
!194 = !{i64 2154699144}
!195 = !{i64 2154733444}
!196 = !{i64 2154726816}
!197 = !{i64 2154727311}
!198 = !{i64 2154729485}
!199 = !{i64 2154729980}
!200 = !{i64 2154708421}
!201 = !{i64 2154708727}
!202 = !{i64 2154709295}
!203 = !{i64 2154745815}
