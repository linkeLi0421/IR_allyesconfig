; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nand_bbt_descr = type { i32, [8 x i32], i32, i32, [8 x i8], i32, i32, i32, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.gpmi_devdata = type { i32, i32, i32, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.gpmi_nand_data = type { ptr, ptr, ptr, %struct.resources, %struct.gpmi_nfc_hardware_timing, %struct.bch_geometry, %struct.completion, i8, %struct.boot_rom_geometry, %struct.nand_controller, %struct.nand_chip, [8 x %struct.gpmi_transfer], i32, i8, i32, i32, ptr, ptr, i32, ptr, [8 x ptr], %struct.completion }
%struct.resources = type { ptr, ptr, i32, i32, [5 x ptr] }
%struct.gpmi_nfc_hardware_timing = type { i8, i32, i32, i32, i32 }
%struct.bch_geometry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.boot_rom_geometry = type { i32, i32 }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.80, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
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
%struct.anon.80 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gpmi_transfer = type { [8 x i8], %struct.scatterlist, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_op_instr = type { i32, %union.anon.75, i32 }
%union.anon.75 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.76, i8 }
%union.anon.76 = type { ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.nand_op_addr_instr = type { i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.mtd_oob_region = type { i32, i32 }
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

@__initcall__kmod_gpmi_nand__275_2634_gpmi_nand_driver_init6 = internal global ptr @gpmi_nand_driver_init, section ".initcall6.init", align 4
@gpmi_nand_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gpmi_nand_probe, ptr @gpmi_nand_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gpmi_nand_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpmi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gpmi_nand_driver_exit = internal global ptr @gpmi_nand_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author276 = internal constant [47 x i8] c"gpmi_nand.author=Freescale Semiconductor, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description277 = internal constant [61 x i8] c"gpmi_nand.description=i.MX GPMI NAND Flash Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file278 = internal constant [56 x i8] c"gpmi_nand.file=drivers/mtd/nand/raw/gpmi-nand/gpmi-nand\00", section ".modinfo", align 1
@__UNIQUE_ID_license279 = internal constant [22 x i8] c"gpmi_nand.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpmi-nand\00", [22 x i8] zeroinitializer }, align 32
@gpmi_nand_id_table = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx23-gpmi-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gpmi_devdata_imx23 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx28-gpmi-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gpmi_devdata_imx28 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-gpmi-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gpmi_devdata_imx6q }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-gpmi-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gpmi_devdata_imx6sx }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-gpmi-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gpmi_devdata_imx7d }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@gpmi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @gpmi_pm_suspend, ptr @gpmi_pm_resume, ptr @gpmi_pm_suspend, ptr @gpmi_pm_resume, ptr @gpmi_pm_suspend, ptr @gpmi_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpmi_runtime_suspend, ptr @gpmi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@gpmi_nand_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2536, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"driver registered.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpmi_nand_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gpmi_nand_probe._entry_ptr = internal global ptr @gpmi_nand_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bch\00", [28 x i8] zeroinitializer }, align 32
@acquire_register_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 985, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unknown resource name : %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"acquire_register_block\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@acquire_register_block._entry_ptr = internal global ptr @acquire_register_block._entry, section ".printk_index", align 4
@acquire_bch_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 1002, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error requesting BCH IRQ\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"acquire_bch_irq\00", [16 x i8] zeroinitializer }, align 32
@acquire_bch_irq._entry_ptr = internal global ptr @acquire_bch_irq._entry, section ".printk_index", align 4
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rx-tx\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DMA channel request failed\0A\00", [36 x i8] zeroinitializer }, align 32
@gpmi_get_clks.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 1, i8 7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpmi_nand\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpmi_get_clks\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed in finding the clocks.\0A\00", [33 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@gpmi_reset_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s(%p): module reset timeout\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gpmi_reset_block\00", [47 x i8] zeroinitializer }, align 32
@gpmi_reset_block._entry_ptr = internal global ptr @gpmi_reset_block._entry, section ".printk_index", align 4
@gpmi_bbt_descr = internal global { %struct.nand_bbt_descr, [60 x i8] } { %struct.nand_bbt_descr { i32 0, [8 x i32] zeroinitializer, i32 0, i32 0, [8 x i8] zeroinitializer, i32 1, i32 0, i32 0, ptr @scan_ff_pattern }, [60 x i8] zeroinitializer }, align 32
@gpmi_nand_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @gpmi_nand_attach_chip, ptr null, ptr @gpmi_nfc_exec_op, ptr @gpmi_setup_interface }, [16 x i8] zeroinitializer }, align 32
@scan_ff_pattern = internal global { [1 x i8], [31 x i8] } { [1 x i8] c"\FF", [31 x i8] zeroinitializer }, align 32
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsl,no-blockmark-swap\00", [42 x i8] zeroinitializer }, align 32
@gpmi_nand_attach_chip.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 2, i8 6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gpmi_nand_attach_chip\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Blockmark swapping %sabled\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@gpmi_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @gpmi_ooblayout_ecc, ptr @gpmi_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@gpmi_set_geometry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 2011, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error setting BCH geometry : %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gpmi_set_geometry\00", [46 x i8] zeroinitializer }, align 32
@gpmi_set_geometry._entry_ptr = internal global ptr @gpmi_set_geometry._entry, section ".printk_index", align 4
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsl,use-minimum-ecc\00", [44 x i8] zeroinitializer }, align 32
@set_geometry_by_ecc_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 280, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"unsupported nand chip. ecc bits : %d, ecc size : %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"set_geometry_by_ecc_info\00", [39 x i8] zeroinitializer }, align 32
@set_geometry_by_ecc_info._entry_ptr = internal global ptr @set_geometry_by_ecc_info._entry, section ".printk_index", align 4
@set_geometry_by_ecc_info._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 292, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"unsupported nand chip. ecc size: %d, oob size : %d\0A\00", [44 x i8] zeroinitializer }, align 32
@set_geometry_by_ecc_info._entry_ptr.33 = internal global ptr @set_geometry_by_ecc_info._entry.31, section ".printk_index", align 4
@legacy_set_geometry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 436, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"ecc strength: %d cannot be supported by the controller (%d)\0Atry to use minimum ecc strength that NAND chip required\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"legacy_set_geometry\00", [44 x i8] zeroinitializer }, align 32
@legacy_set_geometry._entry_ptr = internal global ptr @legacy_set_geometry._entry, section ".printk_index", align 4
@gpmi_ecc_write_page.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 1, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gpmi_ecc_write_page\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ecc write page.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/mtd/rawnand.h\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"chip->bits_per_cell is used uninitialized\0A\00", [53 x i8] zeroinitializer }, align 32
@gpmi_ecc_read_subpage.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 1, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gpmi_ecc_read_subpage\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"page:%d, first:%d, last:%d, marker at:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@gpmi_ecc_read_subpage.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.40, ptr @.str.3, ptr @.str.42, i8 1, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"page:%d(%d:%d)%d, chunk:(%d:%d), BCH PG size:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@gpmi_nfc_exec_op.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 2, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gpmi_nfc_exec_op\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: %d instructions\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"  \00", [29 x i8] zeroinitializer }, align 32
@gpmi_nfc_exec_op.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.43, ptr @.str.3, ptr @.str.46, i8 2, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s setup done\0A\00", [17 x i8] zeroinitializer }, align 32
@gpmi_nfc_exec_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.43, ptr @.str.3, i32 2349, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Multiple data instructions not supported\0A\00", [54 x i8] zeroinitializer }, align 32
@gpmi_nfc_exec_op._entry_ptr = internal global ptr @gpmi_nfc_exec_op._entry, section ".printk_index", align 4
@gpmi_nfc_exec_op._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.43, ptr @.str.3, i32 2380, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DMA timeout, last DMA\0A\00", [41 x i8] zeroinitializer }, align 32
@gpmi_nfc_exec_op._entry_ptr.50 = internal global ptr @gpmi_nfc_exec_op._entry.48, section ".printk_index", align 4
@gpmi_nfc_exec_op._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.43, ptr @.str.3, i32 2389, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"BCH timeout, last DMA\0A\00", [41 x i8] zeroinitializer }, align 32
@gpmi_nfc_exec_op._entry_ptr.53 = internal global ptr @gpmi_nfc_exec_op._entry.51, section ".printk_index", align 4
@gpmi_nfc_apply_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 733, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot set clock rate to %lu Hz: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gpmi_nfc_apply_timings\00", [41 x i8] zeroinitializer }, align 32
@gpmi_nfc_apply_timings._entry_ptr = internal global ptr @gpmi_nfc_apply_timings._entry, section ".printk_index", align 4
@nand_op_trace.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.56, ptr @.str.38, ptr @.str.57, i8 1, i8 1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nand_op_trace\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%sCMD      [0x%02x]\0A\00", [43 x i8] zeroinitializer }, align 32
@nand_op_trace.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.56, ptr @.str.38, ptr @.str.58, i8 1, i8 3, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%sADDR     [%d cyc: %*ph]\0A\00", [37 x i8] zeroinitializer }, align 32
@nand_op_trace.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.56, ptr @.str.38, ptr @.str.59, i8 1, i8 5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%sDATA_IN  [%d B%s]\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c", force 8-bit\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@nand_op_trace.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.56, ptr @.str.38, ptr @.str.62, i8 1, i8 6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%sDATA_OUT [%d B%s]\0A\00", [43 x i8] zeroinitializer }, align 32
@nand_op_trace.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.56, ptr @.str.38, ptr @.str.63, i8 1, i8 7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%sWAITRDY  [max %d ms]\0A\00", [40 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@gpmi_dump_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 204, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Show GPMI registers :\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpmi_dump_info\00", [17 x i8] zeroinitializer }, align 32
@gpmi_dump_info._entry_ptr = internal global ptr @gpmi_dump_info._entry, section ".printk_index", align 4
@gpmi_dump_info._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.3, i32 207, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"offset 0x%.3x : 0x%.8x\0A\00", [40 x i8] zeroinitializer }, align 32
@gpmi_dump_info._entry_ptr.69 = internal global ptr @gpmi_dump_info._entry.67, section ".printk_index", align 4
@gpmi_dump_info._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.3, i32 211, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Show BCH registers :\0A\00", [42 x i8] zeroinitializer }, align 32
@gpmi_dump_info._entry_ptr.72 = internal global ptr @gpmi_dump_info._entry.70, section ".printk_index", align 4
@gpmi_dump_info._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.3, i32 214, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@gpmi_dump_info._entry_ptr.74 = internal global ptr @gpmi_dump_info._entry.73, section ".printk_index", align 4
@gpmi_dump_info._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.66, ptr @.str.3, i32 238, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [324 x i8], [92 x i8] } { [324 x i8] c"BCH Geometry :\0AGF length              : %u\0AECC Strength           : %u\0APage Size in Bytes     : %u\0AMetadata Size in Bytes : %u\0AECC Chunk Size in Bytes: %u\0AECC Chunk Count        : %u\0APayload Size in Bytes  : %u\0AAuxiliary Size in Bytes: %u\0AAuxiliary Status Offset: %u\0ABlock Mark Byte Offset : %u\0ABlock Mark Bit Offset  : %u\0A\00", [92 x i8] zeroinitializer }, align 32
@gpmi_dump_info._entry_ptr.77 = internal global ptr @gpmi_dump_info._entry.75, section ".printk_index", align 4
@mx23_boot_init.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.78, ptr @.str.3, ptr @.str.79, i8 1, i8 -26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mx23_boot_init\00", [17 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Transcribing bad block marks...\0A\00", [63 x i8] zeroinitializer }, align 32
@mx23_boot_init.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.78, ptr @.str.3, ptr @.str.80, i8 1, i8 -18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Transcribing mark in block %u\0A\00", [33 x i8] zeroinitializer }, align 32
@mx23_boot_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.78, ptr @.str.3, i32 1982, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to mark block bad with ret %d\0A\00", [58 x i8] zeroinitializer }, align 32
@mx23_boot_init._entry_ptr = internal global ptr @mx23_boot_init._entry, section ".printk_index", align 4
@mx23_check_transcription_stamp.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.82, ptr @.str.3, ptr @.str.83, i8 1, i8 -58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mx23_check_transcription_stamp\00", [33 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Scanning for an NCB fingerprint...\0A\00", [60 x i8] zeroinitializer }, align 32
@mx23_check_transcription_stamp.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.82, ptr @.str.3, ptr @.str.84, i8 1, i8 -57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Looking for a fingerprint in page 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@mx23_check_transcription_stamp.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.82, ptr @.str.3, ptr @.str.85, i8 1, i8 -51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09Found a fingerprint\0A\00", [42 x i8] zeroinitializer }, align 32
@mx23_check_transcription_stamp.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.82, ptr @.str.3, ptr @.str.86, i8 1, i8 -51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\09No fingerprint found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"STMP\00", [27 x i8] zeroinitializer }, align 32
@mx23_write_transcription_stamp.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.88, ptr @.str.3, ptr @.str.89, i8 1, i8 -43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mx23_write_transcription_stamp\00", [33 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Search Area Geometry :\0A\00", [40 x i8] zeroinitializer }, align 32
@mx23_write_transcription_stamp.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.88, ptr @.str.3, ptr @.str.90, i8 1, i8 -43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09in Blocks : %u\0A\00", [47 x i8] zeroinitializer }, align 32
@mx23_write_transcription_stamp.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.88, ptr @.str.3, ptr @.str.91, i8 1, i8 -43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09in Strides: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@mx23_write_transcription_stamp.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.88, ptr @.str.3, ptr @.str.92, i8 1, i8 -42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09in Pages  : %u\0A\00", [47 x i8] zeroinitializer }, align 32
@mx23_write_transcription_stamp.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.88, ptr @.str.3, ptr @.str.93, i8 1, i8 -41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Erasing the search area...\0A\00", [36 x i8] zeroinitializer }, align 32
@mx23_write_transcription_stamp.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.88, ptr @.str.3, ptr @.str.94, i8 1, i8 -40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09Erasing block 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@mx23_write_transcription_stamp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.88, ptr @.str.3, i32 1892, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[%s] Erase failed.\0A\00", [44 x i8] zeroinitializer }, align 32
@mx23_write_transcription_stamp._entry_ptr = internal global ptr @mx23_write_transcription_stamp._entry, section ".printk_index", align 4
@mx23_write_transcription_stamp.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.88, ptr @.str.3, ptr @.str.96, i8 1, i8 -37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Writing NCB fingerprints...\0A\00", [35 x i8] zeroinitializer }, align 32
@mx23_write_transcription_stamp.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.88, ptr @.str.3, ptr @.str.97, i8 1, i8 -36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Writing an NCB fingerprint in page 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@mx23_write_transcription_stamp._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.88, ptr @.str.3, i32 1910, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[%s] Write failed.\0A\00", [44 x i8] zeroinitializer }, align 32
@mx23_write_transcription_stamp._entry_ptr.100 = internal global ptr @mx23_write_transcription_stamp._entry.98, section ".printk_index", align 4
@gpmi_devdata_imx23 = internal constant { %struct.gpmi_devdata, [44 x i8] } { %struct.gpmi_devdata { i32 0, i32 20, i32 16000, ptr @gpmi_clks_for_mx2x, i32 1 }, [44 x i8] zeroinitializer }, align 32
@gpmi_devdata_imx28 = internal constant { %struct.gpmi_devdata, [44 x i8] } { %struct.gpmi_devdata { i32 1, i32 20, i32 16000, ptr @gpmi_clks_for_mx2x, i32 1 }, [44 x i8] zeroinitializer }, align 32
@gpmi_devdata_imx6q = internal constant { %struct.gpmi_devdata, [44 x i8] } { %struct.gpmi_devdata { i32 2, i32 40, i32 12000, ptr @gpmi_clks_for_mx6, i32 5 }, [44 x i8] zeroinitializer }, align 32
@gpmi_devdata_imx6sx = internal constant { %struct.gpmi_devdata, [44 x i8] } { %struct.gpmi_devdata { i32 3, i32 62, i32 12000, ptr @gpmi_clks_for_mx6, i32 5 }, [44 x i8] zeroinitializer }, align 32
@gpmi_devdata_imx7d = internal constant { %struct.gpmi_devdata, [44 x i8] } { %struct.gpmi_devdata { i32 4, i32 62, i32 12000, ptr @gpmi_clks_for_mx7d, i32 2 }, [44 x i8] zeroinitializer }, align 32
@gpmi_clks_for_mx2x = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.101], [28 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpmi_io\00", [24 x i8] zeroinitializer }, align 32
@gpmi_clks_for_mx6 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105], [44 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpmi_apb\00", [23 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpmi_bch\00", [23 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpmi_bch_apb\00", [19 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"per1_bch\00", [23 x i8] zeroinitializer }, align 32
@gpmi_clks_for_mx7d = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.101, ptr @.str.104], [24 x i8] zeroinitializer }, align 32
@gpmi_pm_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.3, i32 2587, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error setting GPMI : %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpmi_pm_resume\00", [17 x i8] zeroinitializer }, align 32
@gpmi_pm_resume._entry_ptr = internal global ptr @gpmi_pm_resume._entry, section ".printk_index", align 4
@gpmi_pm_resume._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.3, i32 2598, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error setting BCH : %d\0A\00", [40 x i8] zeroinitializer }, align 32
@gpmi_pm_resume._entry_ptr.110 = internal global ptr @gpmi_pm_resume._entry.108, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.112 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 254, i64 255]
@__sancov_gen_cov_switch_values.113 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"gpmi_nand_driver\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2625, i32 31 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2627, i32 11 }
@___asan_gen_.120 = private unnamed_addr constant [19 x i8] c"gpmi_nand_id_table\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2487, i32 34 }
@___asan_gen_.123 = private unnamed_addr constant [12 x i8] c"gpmi_pm_ops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2620, i32 32 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2536, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1067, i32 37 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 985, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1002, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1024, i32 42 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1027, i32 9 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1055, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 115, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [15 x i8] c"gpmi_bbt_descr\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 866, i32 30 }
@___asan_gen_.195 = private unnamed_addr constant [25 x i8] c"gpmi_nand_controller_ops\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2424, i32 41 }
@___asan_gen_.198 = private unnamed_addr constant [16 x i8] c"scan_ff_pattern\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 865, i32 16 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1105, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2069, i32 8 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2072, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [19 x i8] c"gpmi_ooblayout_ops\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 916, i32 39 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2011, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 524, i32 49 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 277, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 290, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 432, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1437, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1444, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1385, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1422, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2291, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2296, i32 17 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2346, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2349, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2380, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2389, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 733, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1030, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1034, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1041, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1047, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1053, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.349 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 87, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 204, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 207, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 211, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 214, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 216, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1944, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1977, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1980, i32 5 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1817, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1823, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1845, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1847, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1796, i32 35 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1877, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1878, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1879, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1880, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1885, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1889, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1892, i32 4 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1900, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1906, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1910, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant [19 x i8] c"gpmi_devdata_imx23\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 921, i32 34 }
@___asan_gen_.456 = private unnamed_addr constant [19 x i8] c"gpmi_devdata_imx28\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 929, i32 34 }
@___asan_gen_.459 = private unnamed_addr constant [19 x i8] c"gpmi_devdata_imx6q\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 941, i32 34 }
@___asan_gen_.462 = private unnamed_addr constant [20 x i8] c"gpmi_devdata_imx6sx\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 949, i32 34 }
@___asan_gen_.465 = private unnamed_addr constant [19 x i8] c"gpmi_devdata_imx7d\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 961, i32 34 }
@___asan_gen_.468 = private unnamed_addr constant [19 x i8] c"gpmi_clks_for_mx2x\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 912, i32 27 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 913, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant [18 x i8] c"gpmi_clks_for_mx6\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 937, i32 27 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 938, i32 13 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 938, i32 25 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 938, i32 37 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 938, i32 53 }
@___asan_gen_.489 = private unnamed_addr constant [19 x i8] c"gpmi_clks_for_mx7d\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 957, i32 27 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2587, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.504 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.505 = private constant [46 x i8] c"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2598, i32 3 }
@llvm.compiler.used = appending global [160 x ptr] [ptr @__UNIQUE_ID_author276, ptr @__UNIQUE_ID_description277, ptr @__UNIQUE_ID_file278, ptr @__UNIQUE_ID_license279, ptr @__exitcall_gpmi_nand_driver_exit, ptr @__initcall__kmod_gpmi_nand__275_2634_gpmi_nand_driver_init6, ptr @acquire_bch_irq._entry, ptr @acquire_bch_irq._entry_ptr, ptr @acquire_register_block._entry, ptr @acquire_register_block._entry_ptr, ptr @gpmi_dump_info._entry, ptr @gpmi_dump_info._entry.67, ptr @gpmi_dump_info._entry.70, ptr @gpmi_dump_info._entry.73, ptr @gpmi_dump_info._entry.75, ptr @gpmi_dump_info._entry_ptr, ptr @gpmi_dump_info._entry_ptr.69, ptr @gpmi_dump_info._entry_ptr.72, ptr @gpmi_dump_info._entry_ptr.74, ptr @gpmi_dump_info._entry_ptr.77, ptr @gpmi_nand_driver_exit, ptr @gpmi_nand_probe._entry, ptr @gpmi_nand_probe._entry_ptr, ptr @gpmi_nfc_apply_timings._entry, ptr @gpmi_nfc_apply_timings._entry_ptr, ptr @gpmi_nfc_exec_op._entry, ptr @gpmi_nfc_exec_op._entry.48, ptr @gpmi_nfc_exec_op._entry.51, ptr @gpmi_nfc_exec_op._entry_ptr, ptr @gpmi_nfc_exec_op._entry_ptr.50, ptr @gpmi_nfc_exec_op._entry_ptr.53, ptr @gpmi_pm_resume._entry, ptr @gpmi_pm_resume._entry.108, ptr @gpmi_pm_resume._entry_ptr, ptr @gpmi_pm_resume._entry_ptr.110, ptr @gpmi_reset_block._entry, ptr @gpmi_reset_block._entry_ptr, ptr @gpmi_set_geometry._entry, ptr @gpmi_set_geometry._entry_ptr, ptr @legacy_set_geometry._entry, ptr @legacy_set_geometry._entry_ptr, ptr @mx23_boot_init._entry, ptr @mx23_boot_init._entry_ptr, ptr @mx23_write_transcription_stamp._entry, ptr @mx23_write_transcription_stamp._entry.98, ptr @mx23_write_transcription_stamp._entry_ptr, ptr @mx23_write_transcription_stamp._entry_ptr.100, ptr @set_geometry_by_ecc_info._entry, ptr @set_geometry_by_ecc_info._entry.31, ptr @set_geometry_by_ecc_info._entry_ptr, ptr @set_geometry_by_ecc_info._entry_ptr.33, ptr @gpmi_nand_driver, ptr @.str, ptr @gpmi_nand_id_table, ptr @gpmi_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @gpmi_bbt_descr, ptr @gpmi_nand_controller_ops, ptr @scan_ff_pattern, ptr @nand_controller_init.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @gpmi_ooblayout_ops, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @init_completion.__key, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @gpmi_devdata_imx23, ptr @gpmi_devdata_imx28, ptr @gpmi_devdata_imx6q, ptr @gpmi_devdata_imx6sx, ptr @gpmi_devdata_imx7d, ptr @gpmi_clks_for_mx2x, ptr @.str.101, ptr @gpmi_clks_for_mx6, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @gpmi_clks_for_mx7d, ptr @.str.106, ptr @.str.107, ptr @.str.109], section "llvm.metadata"
@0 = internal global [131 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_nand_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_nand_id_table to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_nand_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acquire_register_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acquire_bch_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_reset_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_bbt_descr to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_nand_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scan_ff_pattern to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_set_geometry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_geometry_by_ecc_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_geometry_by_ecc_info._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_set_geometry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_nfc_exec_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_nfc_exec_op._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_nfc_exec_op._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_nfc_apply_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_dump_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_dump_info._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_dump_info._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_dump_info._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_dump_info._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 324, i32 416, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx23_boot_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx23_write_transcription_stamp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx23_write_transcription_stamp._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_devdata_imx23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_devdata_imx28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_devdata_imx6q to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_devdata_imx6sx to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_devdata_imx7d to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_clks_for_mx2x to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_clks_for_mx6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_clks_for_mx7d to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_pm_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpmi_pm_resume._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmi_nand_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpmi_nand_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpmi_nand_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpmi_nand_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmi_nand_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2824, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #12
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %call.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %pdev3 = getelementptr inbounds %struct.gpmi_nand_data, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %pdev3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %pdev3, align 8
  %dev5 = getelementptr inbounds %struct.gpmi_nand_data, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev5, align 4
  %call6 = tail call fastcc i32 @acquire_resources(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call fastcc i32 @__gpmi_enable_clk(ptr noundef nonnull %call.i, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 500) #12
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #12
  %call.i64 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #12
  tail call void @pm_runtime_enable(ptr noundef %dev) #12
  %call.i65 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #12
  %call21 = tail call fastcc i32 @gpmi_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end13.exit_nfc_init_crit_edge

if.end13.exit_nfc_init_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_nfc_init

if.end24:                                         ; preds = %if.end13
  %nand.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %call.i, i32 0, i32 10
  %name.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %call.i, i32 0, i32 10, i32 0, i32 0, i32 13
  %4 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str, ptr %name.i, align 8
  %5 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev5, align 4
  %parent.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %call.i, i32 0, i32 10, i32 0, i32 0, i32 56, i32 1
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %parent.i, align 8
  %priv1.i.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %call.i, i32 0, i32 10, i32 34
  %8 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %priv1.i.i, align 8
  %9 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev3, align 8
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3, i32 27
  %11 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node.i, align 8
  %of_node.i.i.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %call.i, i32 0, i32 10, i32 0, i32 0, i32 56, i32 27
  %13 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %of_node.i.i.i, align 8
  %block_markbad.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %call.i, i32 0, i32 10, i32 5, i32 12
  %14 = ptrtoint ptr %block_markbad.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @gpmi_block_markbad, ptr %block_markbad.i, align 8
  %badblock_pattern.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %call.i, i32 0, i32 10, i32 15
  %15 = ptrtoint ptr %badblock_pattern.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @gpmi_bbt_descr, ptr %badblock_pattern.i, align 4
  %options.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %call.i, i32 0, i32 10, i32 6
  %16 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %options.i, align 8
  %or.i = or i32 %17, 512
  store i32 %or.i, ptr %options.i, align 8
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp ne i32 %21, 0
  %swap_block_mark.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %call.i, i32 0, i32 7
  %frombool.i = zext i1 %cmp.i to i8
  %22 = ptrtoint ptr %swap_block_mark.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool.i, ptr %swap_block_mark.i, align 8
  %payload_size.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %call.i, i32 0, i32 5, i32 6
  %23 = ptrtoint ptr %payload_size.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1024, ptr %payload_size.i, align 4
  %auxiliary_size.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %call.i, i32 0, i32 5, i32 7
  %24 = ptrtoint ptr %auxiliary_size.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 128, ptr %auxiliary_size.i, align 4
  %call4.i = tail call fastcc i32 @gpmi_alloc_dma_buffer(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end24.exit_nfc_init_crit_edge

if.end24.exit_nfc_init_crit_edge:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_nfc_init

if.end.i:                                         ; preds = %if.end24
  %base.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %call.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %base.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @nand_controller_init.__key) #12
  %ops.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %call.i, i32 0, i32 9, i32 1
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @gpmi_nand_controller_ops, ptr %ops.i, align 4
  %controller.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %call.i, i32 0, i32 10, i32 32
  %26 = ptrtoint ptr %controller.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %base.i, ptr %controller.i, align 4
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %31 = and i32 %30, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %switch.i = icmp eq i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp15.i = icmp eq i32 %30, 4
  %32 = or i1 %cmp15.i, %switch.i
  %33 = select i1 %32, i32 2, i32 1
  %call.i.i = tail call i32 @nand_scan_with_ids(ptr noundef %nand.i, i32 noundef %33, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool17.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end.i.err_out.i_crit_edge

if.end.i.err_out.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out.i

if.end19.i:                                       ; preds = %if.end.i
  %rom_geometry.i.i.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %call.i, i32 0, i32 8
  %34 = ptrtoint ptr %rom_geometry.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 64, ptr %rom_geometry.i.i.i, align 4
  %search_area_stride_exponent.i.i.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %call.i, i32 0, i32 8, i32 1
  %35 = ptrtoint ptr %search_area_stride_exponent.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %search_area_stride_exponent.i.i.i, align 4
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i.i = icmp eq i32 %39, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end19.i.nand_boot_init.exit.i_crit_edge

if.end19.i.nand_boot_init.exit.i_crit_edge:       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nand_boot_init.exit.i

if.then.i.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mx23_boot_init(ptr noundef nonnull %call.i) #12
  br label %nand_boot_init.exit.i

nand_boot_init.exit.i:                            ; preds = %if.then.i.i, %if.end19.i.nand_boot_init.exit.i_crit_edge
  %call24.i = tail call i32 @nand_create_bbt(ptr noundef %nand.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %nand_boot_init.exit.i.err_nand_cleanup.i_crit_edge

nand_boot_init.exit.i.err_nand_cleanup.i_crit_edge: ; preds = %nand_boot_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_nand_cleanup.i

if.end27.i:                                       ; preds = %nand_boot_init.exit.i
  %call28.i = tail call i32 @mtd_device_parse_register(ptr noundef %nand.i, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end28, label %if.end27.i.err_nand_cleanup.i_crit_edge

if.end27.i.err_nand_cleanup.i_crit_edge:          ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_nand_cleanup.i

err_nand_cleanup.i:                               ; preds = %if.end27.i.err_nand_cleanup.i_crit_edge, %nand_boot_init.exit.i.err_nand_cleanup.i_crit_edge
  %ret.0.i = phi i32 [ %call24.i, %nand_boot_init.exit.i.err_nand_cleanup.i_crit_edge ], [ %call28.i, %if.end27.i.err_nand_cleanup.i_crit_edge ]
  tail call void @nand_cleanup(ptr noundef %nand.i) #12
  br label %err_out.i

err_out.i:                                        ; preds = %err_nand_cleanup.i, %if.end.i.err_out.i_crit_edge
  %ret.1.i = phi i32 [ %call.i.i, %if.end.i.err_out.i_crit_edge ], [ %ret.0.i, %err_nand_cleanup.i ]
  tail call fastcc void @gpmi_free_dma_buffer(ptr noundef nonnull %call.i) #12
  br label %exit_nfc_init

if.end28:                                         ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i66 = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %40 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store volatile i64 %call.i66, ptr %last_busy.i, align 8
  %call.i67 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #12
  %41 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull @.str.1) #15
  br label %cleanup

exit_nfc_init:                                    ; preds = %err_out.i, %if.end24.exit_nfc_init_crit_edge, %if.end13.exit_nfc_init_crit_edge
  %ret.0 = phi i32 [ %call21, %if.end13.exit_nfc_init_crit_edge ], [ %call4.i, %if.end24.exit_nfc_init_crit_edge ], [ %ret.1.i, %err_out.i ]
  %call.i68 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #12
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #12
  tail call fastcc void @release_dma_channels(ptr noundef nonnull %call.i) #12
  br label %cleanup

cleanup:                                          ; preds = %exit_nfc_init, %if.end28, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -12, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %ret.0, %exit_nfc_init ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmi_nand_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %nand = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #12
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #12
  %call4 = tail call i32 @mtd_device_unregister(ptr noundef %nand) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !282

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2559, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @nand_cleanup(ptr noundef %nand) #12
  tail call fastcc void @gpmi_free_dma_buffer(ptr noundef %1)
  tail call fastcc void @release_dma_channels(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @acquire_resources(ptr noundef %this) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1.i, align 8
  %call.i = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %1, ptr noundef nonnull @.str) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %acquire_register_block.exit, label %if.then5.i

if.then5.i:                                       ; preds = %entry
  %resources.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 3
  %2 = ptrtoint ptr %resources.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %resources.i, align 4
  %3 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev1.i, align 8
  %call.i29 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %4, ptr noundef nonnull @.str.6) #12
  %cmp.i.i30 = icmp ugt ptr %call.i29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i30, label %acquire_register_block.exit44, label %if.then8.i40

acquire_register_block.exit:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.then8.i40:                                     ; preds = %if.then5.i
  %bch_regs.i39 = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %bch_regs.i39 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i29, ptr %bch_regs.i39, align 4
  %7 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev1.i, align 8
  %call.i46 = tail call i32 @platform_get_irq_byname(ptr noundef %8, ptr noundef nonnull @.str.6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %cmp.i = icmp slt i32 %call.i46, 0
  br i1 %cmp.i, label %if.then8.i40.cleanup_crit_edge, label %if.end.i49

if.then8.i40.cleanup_crit_edge:                   ; preds = %if.then8.i40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

acquire_register_block.exit44:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %call.i29 to i32
  br label %cleanup

if.end.i49:                                       ; preds = %if.then8.i40
  %dev.i47 = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i47 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i47, align 4
  %call.i.i = tail call i32 @devm_request_threaded_irq(ptr noundef %11, i32 noundef %call.i46, ptr noundef nonnull @bch_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef %this) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i48 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i48, label %if.end8, label %do.end.i50

do.end.i50:                                       ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %dev.i47 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.10) #15
  br label %cleanup

if.end8:                                          ; preds = %if.end.i49
  %14 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev1.i, align 8
  %dev.i53 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %call.i54 = tail call ptr @dma_request_chan(ptr noundef %dev.i53, ptr noundef nonnull @.str.12) #12
  %cmp.i.i55 = icmp ugt ptr %call.i54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i55, label %acquire_dma_channels.exit, label %acquire_dma_channels.exit.thread

acquire_dma_channels.exit.thread:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %dma_chans.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 20
  %16 = ptrtoint ptr %dma_chans.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i54, ptr %dma_chans.i, align 8
  br label %if.end12

acquire_dma_channels.exit:                        ; preds = %if.end8
  %17 = ptrtoint ptr %dev.i47 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i47, align 4
  %19 = ptrtoint ptr %call.i54 to i32
  %call5.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %18, i32 noundef %19, ptr noundef nonnull @.str.13) #12
  tail call fastcc void @release_dma_channels(ptr noundef %this) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool10.not = icmp eq i32 %call5.i, 0
  br i1 %tobool10.not, label %acquire_dma_channels.exit.if.end12_crit_edge, label %acquire_dma_channels.exit.cleanup_crit_edge

acquire_dma_channels.exit.cleanup_crit_edge:      ; preds = %acquire_dma_channels.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

acquire_dma_channels.exit.if.end12_crit_edge:     ; preds = %acquire_dma_channels.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end12:                                         ; preds = %acquire_dma_channels.exit.if.end12_crit_edge, %acquire_dma_channels.exit.thread
  %20 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %this, align 8
  %clks_count24.i = getelementptr inbounds %struct.gpmi_devdata, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %clks_count24.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %clks_count24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp25.i = icmp sgt i32 %23, 0
  br i1 %cmp25.i, label %if.end12.for.body.i_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12.for.body.i_crit_edge:                    ; preds = %if.end12
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i64.for.body.i_crit_edge, %if.end12.for.body.i_crit_edge
  %24 = phi ptr [ %34, %if.end.i64.for.body.i_crit_edge ], [ %21, %if.end12.for.body.i_crit_edge ]
  %i.026.i = phi i32 [ %inc.i, %if.end.i64.for.body.i_crit_edge ], [ 0, %if.end12.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %dev.i47 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i47, align 4
  %clks.i = getelementptr inbounds %struct.gpmi_devdata, ptr %24, i32 0, i32 3
  %27 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clks.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %28, i32 %i.026.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %call.i60 = tail call ptr @devm_clk_get(ptr noundef %26, ptr noundef %30) #12
  %cmp.i.i61 = icmp ugt ptr %call.i60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i61, label %if.then.i62, label %if.end.i64

if.then.i62:                                      ; preds = %for.body.i
  %31 = ptrtoint ptr %call.i60 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpmi_get_clks.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@acquire_resources, %if.then8.i65)) #12
          to label %exit_clock [label %if.then8.i65], !srcloc !283

if.end.i64:                                       ; preds = %for.body.i
  %arrayidx4.i = getelementptr %struct.gpmi_nand_data, ptr %this, i32 0, i32 3, i32 4, i32 %i.026.i
  %32 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i60, ptr %arrayidx4.i, align 4
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %33 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %this, align 8
  %clks_count.i = getelementptr inbounds %struct.gpmi_devdata, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %clks_count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %clks_count.i, align 4
  %cmp.i63 = icmp slt i32 %inc.i, %36
  br i1 %cmp.i63, label %if.end.i64.for.body.i_crit_edge, label %if.end.i64.cleanup_crit_edge

if.end.i64.cleanup_crit_edge:                     ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i64.for.body.i_crit_edge:                  ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.then8.i65:                                     ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %dev.i47 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i47, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpmi_get_clks.__UNIQUE_ID_ddebug250, ptr noundef %38, ptr noundef nonnull @.str.16) #12
  br label %exit_clock

exit_clock:                                       ; preds = %if.then8.i65, %if.then.i62
  tail call fastcc void @release_dma_channels(ptr noundef %this)
  br label %cleanup

cleanup:                                          ; preds = %exit_clock, %if.end.i64.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %acquire_dma_channels.exit.cleanup_crit_edge, %do.end.i50, %acquire_register_block.exit44, %if.then8.i40.cleanup_crit_edge, %acquire_register_block.exit
  %retval.0 = phi i32 [ %5, %acquire_register_block.exit ], [ %9, %acquire_register_block.exit44 ], [ %call5.i, %acquire_dma_channels.exit.cleanup_crit_edge ], [ %31, %exit_clock ], [ %call.i.i, %do.end.i50 ], [ %call.i46, %if.then8.i40.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %if.end.i64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__gpmi_enable_clk(ptr nocapture noundef readonly %this, i1 noundef zeroext %v) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.gpmi_nand_data, ptr %this, i32 0, i32 3, i32 4, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %v, label %if.then2, label %for.inc.thread

if.then2:                                         ; preds = %if.end
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then2
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.inc, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

clk_prepare_enable.exit.thread55:                 ; preds = %if.end.i.4.clk_prepare_enable.exit.thread55_crit_edge, %if.end.i.3.clk_prepare_enable.exit.thread55_crit_edge, %if.end.i.2.clk_prepare_enable.exit.thread55_crit_edge, %if.end.i.1.clk_prepare_enable.exit.thread55_crit_edge
  %i.034.lcssa43.ph = phi i32 [ 4, %if.end.i.4.clk_prepare_enable.exit.thread55_crit_edge ], [ 3, %if.end.i.3.clk_prepare_enable.exit.thread55_crit_edge ], [ 2, %if.end.i.2.clk_prepare_enable.exit.thread55_crit_edge ], [ 1, %if.end.i.1.clk_prepare_enable.exit.thread55_crit_edge ]
  %.lcssa41.ph = phi ptr [ %15, %if.end.i.4.clk_prepare_enable.exit.thread55_crit_edge ], [ %11, %if.end.i.3.clk_prepare_enable.exit.thread55_crit_edge ], [ %7, %if.end.i.2.clk_prepare_enable.exit.thread55_crit_edge ], [ %3, %if.end.i.1.clk_prepare_enable.exit.thread55_crit_edge ]
  %call1.i.lcssa.ph = phi i32 [ %call1.i.4, %if.end.i.4.clk_prepare_enable.exit.thread55_crit_edge ], [ %call1.i.3, %if.end.i.3.clk_prepare_enable.exit.thread55_crit_edge ], [ %call1.i.2, %if.end.i.2.clk_prepare_enable.exit.thread55_crit_edge ], [ %call1.i.1, %if.end.i.1.clk_prepare_enable.exit.thread55_crit_edge ]
  tail call void @clk_unprepare(ptr noundef nonnull %.lcssa41.ph) #12
  br label %for.body9

for.inc:                                          ; preds = %if.end.i
  %arrayidx.1 = getelementptr %struct.gpmi_nand_data, ptr %this, i32 0, i32 3, i32 4, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %3, null
  br i1 %tobool.not.1, label %for.inc.cleanup_crit_edge, label %if.then2.1.critedge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.thread:                                   ; preds = %if.end
  tail call void @clk_disable(ptr noundef nonnull %1) #12
  tail call void @clk_unprepare(ptr noundef nonnull %1) #12
  %arrayidx.160 = getelementptr %struct.gpmi_nand_data, ptr %this, i32 0, i32 3, i32 4, i32 1
  %4 = ptrtoint ptr %arrayidx.160 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.160, align 4
  %tobool.not.161 = icmp eq ptr %5, null
  br i1 %tobool.not.161, label %for.inc.thread.cleanup_crit_edge, label %for.inc.1.thread

for.inc.thread.cleanup_crit_edge:                 ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2.1.critedge:                              ; preds = %for.inc
  %call.i.1 = tail call i32 @clk_prepare(ptr noundef nonnull %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %if.then2.1.critedge.for.body9_crit_edge

if.then2.1.critedge.for.body9_crit_edge:          ; preds = %if.then2.1.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body9

if.end.i.1:                                       ; preds = %if.then2.1.critedge
  %call1.i.1 = tail call i32 @clk_enable(ptr noundef nonnull %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool2.not.i.1 = icmp eq i32 %call1.i.1, 0
  br i1 %tobool2.not.i.1, label %for.inc.1, label %if.end.i.1.clk_prepare_enable.exit.thread55_crit_edge

if.end.i.1.clk_prepare_enable.exit.thread55_crit_edge: ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit.thread55

for.inc.1:                                        ; preds = %if.end.i.1
  %arrayidx.2 = getelementptr %struct.gpmi_nand_data, ptr %this, i32 0, i32 3, i32 4, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %7, null
  br i1 %tobool.not.2, label %for.inc.1.cleanup_crit_edge, label %if.then2.2.critedge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.1.thread:                                 ; preds = %for.inc.thread
  tail call void @clk_disable(ptr noundef nonnull %5) #12
  tail call void @clk_unprepare(ptr noundef nonnull %5) #12
  %arrayidx.262 = getelementptr %struct.gpmi_nand_data, ptr %this, i32 0, i32 3, i32 4, i32 2
  %8 = ptrtoint ptr %arrayidx.262 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.262, align 4
  %tobool.not.263 = icmp eq ptr %9, null
  br i1 %tobool.not.263, label %for.inc.1.thread.cleanup_crit_edge, label %for.inc.2.thread

for.inc.1.thread.cleanup_crit_edge:               ; preds = %for.inc.1.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2.2.critedge:                              ; preds = %for.inc.1
  %call.i.2 = tail call i32 @clk_prepare(ptr noundef nonnull %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.i.2, label %if.end.i.2, label %if.then2.2.critedge.for.body9_crit_edge

if.then2.2.critedge.for.body9_crit_edge:          ; preds = %if.then2.2.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body9

if.end.i.2:                                       ; preds = %if.then2.2.critedge
  %call1.i.2 = tail call i32 @clk_enable(ptr noundef nonnull %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2)
  %tobool2.not.i.2 = icmp eq i32 %call1.i.2, 0
  br i1 %tobool2.not.i.2, label %for.inc.2, label %if.end.i.2.clk_prepare_enable.exit.thread55_crit_edge

if.end.i.2.clk_prepare_enable.exit.thread55_crit_edge: ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit.thread55

for.inc.2:                                        ; preds = %if.end.i.2
  %arrayidx.3 = getelementptr %struct.gpmi_nand_data, ptr %this, i32 0, i32 3, i32 4, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %11, null
  br i1 %tobool.not.3, label %for.inc.2.cleanup_crit_edge, label %if.end.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.2.thread:                                 ; preds = %for.inc.1.thread
  tail call void @clk_disable(ptr noundef nonnull %9) #12
  tail call void @clk_unprepare(ptr noundef nonnull %9) #12
  %arrayidx.364 = getelementptr %struct.gpmi_nand_data, ptr %this, i32 0, i32 3, i32 4, i32 3
  %12 = ptrtoint ptr %arrayidx.364 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.364, align 4
  %tobool.not.365 = icmp eq ptr %13, null
  br i1 %tobool.not.365, label %for.inc.2.thread.cleanup_crit_edge, label %for.inc.2.thread.for.inc.3.thread_crit_edge

for.inc.2.thread.for.inc.3.thread_crit_edge:      ; preds = %for.inc.2.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3.thread

for.inc.2.thread.cleanup_crit_edge:               ; preds = %for.inc.2.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.3:                                         ; preds = %for.inc.2
  br i1 %v, label %if.then2.3, label %if.end.3.for.inc.3.thread_crit_edge

if.end.3.for.inc.3.thread_crit_edge:              ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3.thread

if.then2.3:                                       ; preds = %if.end.3
  %call.i.3 = tail call i32 @clk_prepare(ptr noundef nonnull %11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool.not.i.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool.not.i.3, label %if.end.i.3, label %if.then2.3.for.body9_crit_edge

if.then2.3.for.body9_crit_edge:                   ; preds = %if.then2.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body9

if.end.i.3:                                       ; preds = %if.then2.3
  %call1.i.3 = tail call i32 @clk_enable(ptr noundef nonnull %11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.3)
  %tobool2.not.i.3 = icmp eq i32 %call1.i.3, 0
  br i1 %tobool2.not.i.3, label %for.inc.3, label %if.end.i.3.clk_prepare_enable.exit.thread55_crit_edge

if.end.i.3.clk_prepare_enable.exit.thread55_crit_edge: ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit.thread55

for.inc.3:                                        ; preds = %if.end.i.3
  %arrayidx.4 = getelementptr %struct.gpmi_nand_data, ptr %this, i32 0, i32 3, i32 4, i32 4
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %15, null
  br i1 %tobool.not.4, label %for.inc.3.cleanup_crit_edge, label %if.then2.4

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.3.thread:                                 ; preds = %if.end.3.for.inc.3.thread_crit_edge, %for.inc.2.thread.for.inc.3.thread_crit_edge
  %16 = phi ptr [ %11, %if.end.3.for.inc.3.thread_crit_edge ], [ %13, %for.inc.2.thread.for.inc.3.thread_crit_edge ]
  tail call void @clk_disable(ptr noundef nonnull %16) #12
  tail call void @clk_unprepare(ptr noundef nonnull %16) #12
  %arrayidx.466 = getelementptr %struct.gpmi_nand_data, ptr %this, i32 0, i32 3, i32 4, i32 4
  %17 = ptrtoint ptr %arrayidx.466 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.466, align 4
  %tobool.not.467 = icmp eq ptr %18, null
  br i1 %tobool.not.467, label %for.inc.3.thread.cleanup_crit_edge, label %if.else.4

for.inc.3.thread.cleanup_crit_edge:               ; preds = %for.inc.3.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else.4:                                        ; preds = %for.inc.3.thread
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_disable(ptr noundef nonnull %18) #12
  br label %cleanup.sink.split

if.then2.4:                                       ; preds = %for.inc.3
  %call.i.4 = tail call i32 @clk_prepare(ptr noundef nonnull %15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %tobool.not.i.4 = icmp eq i32 %call.i.4, 0
  br i1 %tobool.not.i.4, label %if.end.i.4, label %if.then2.4.for.body9_crit_edge

if.then2.4.for.body9_crit_edge:                   ; preds = %if.then2.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body9

if.end.i.4:                                       ; preds = %if.then2.4
  %call1.i.4 = tail call i32 @clk_enable(ptr noundef nonnull %15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.4)
  %tobool2.not.i.4 = icmp eq i32 %call1.i.4, 0
  br i1 %tobool2.not.i.4, label %if.end.i.4.cleanup_crit_edge, label %if.end.i.4.clk_prepare_enable.exit.thread55_crit_edge

if.end.i.4.clk_prepare_enable.exit.thread55_crit_edge: ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %clk_prepare_enable.exit.thread55

if.end.i.4.cleanup_crit_edge:                     ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body9:                                        ; preds = %if.then2.4.for.body9_crit_edge, %if.then2.3.for.body9_crit_edge, %if.then2.2.critedge.for.body9_crit_edge, %if.then2.1.critedge.for.body9_crit_edge, %clk_prepare_enable.exit.thread55
  %retval.0.i49 = phi i32 [ %call1.i.lcssa.ph, %clk_prepare_enable.exit.thread55 ], [ %call.i.4, %if.then2.4.for.body9_crit_edge ], [ %call.i.3, %if.then2.3.for.body9_crit_edge ], [ %call.i.2, %if.then2.2.critedge.for.body9_crit_edge ], [ %call.i.1, %if.then2.1.critedge.for.body9_crit_edge ]
  %i.0344448 = phi i32 [ %i.034.lcssa43.ph, %clk_prepare_enable.exit.thread55 ], [ 4, %if.then2.4.for.body9_crit_edge ], [ 3, %if.then2.3.for.body9_crit_edge ], [ 2, %if.then2.2.critedge.for.body9_crit_edge ], [ 1, %if.then2.1.critedge.for.body9_crit_edge ]
  %sub = add nsw i32 %i.0344448, -1
  %arrayidx12 = getelementptr %struct.gpmi_nand_data, ptr %this, i32 0, i32 3, i32 4, i32 %sub
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx12, align 4
  tail call void @clk_disable(ptr noundef %20) #12
  tail call void @clk_unprepare(ptr noundef %20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0344448)
  %cmp8 = icmp ugt i32 %i.0344448, 1
  br i1 %cmp8, label %for.body9.1, label %for.body9.cleanup_crit_edge

for.body9.cleanup_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body9.1:                                      ; preds = %for.body9
  %sub.1 = add nsw i32 %i.0344448, -2
  %arrayidx12.1 = getelementptr %struct.gpmi_nand_data, ptr %this, i32 0, i32 3, i32 4, i32 %sub.1
  %21 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx12.1, align 4
  tail call void @clk_disable(ptr noundef %22) #12
  tail call void @clk_unprepare(ptr noundef %22) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp8.1 = icmp ugt i32 %sub, 1
  br i1 %cmp8.1, label %for.body9.2, label %for.body9.1.cleanup_crit_edge

for.body9.1.cleanup_crit_edge:                    ; preds = %for.body9.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body9.2:                                      ; preds = %for.body9.1
  %sub.2 = add nsw i32 %i.0344448, -3
  %arrayidx12.2 = getelementptr %struct.gpmi_nand_data, ptr %this, i32 0, i32 3, i32 4, i32 %sub.2
  %23 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx12.2, align 4
  tail call void @clk_disable(ptr noundef %24) #12
  tail call void @clk_unprepare(ptr noundef %24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.1)
  %cmp8.2 = icmp ugt i32 %sub.1, 1
  br i1 %cmp8.2, label %for.body9.3, label %for.body9.2.cleanup_crit_edge

for.body9.2.cleanup_crit_edge:                    ; preds = %for.body9.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body9.3:                                      ; preds = %for.body9.2
  call void @__sanitizer_cov_trace_pc() #14
  %sub.3 = add nsw i32 %i.0344448, -4
  %arrayidx12.3 = getelementptr %struct.gpmi_nand_data, ptr %this, i32 0, i32 3, i32 4, i32 %sub.3
  %25 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx12.3, align 4
  tail call void @clk_disable(ptr noundef %26) #12
  tail call void @clk_unprepare(ptr noundef %26) #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else.4, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %18, %if.else.4 ], [ %1, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.else.4 ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef nonnull %.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.body9.3, %for.body9.2.cleanup_crit_edge, %for.body9.1.cleanup_crit_edge, %for.body9.cleanup_crit_edge, %if.end.i.4.cleanup_crit_edge, %for.inc.3.thread.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %for.inc.2.thread.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.inc.1.thread.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.thread.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i.4.cleanup_crit_edge ], [ 0, %for.inc.3.thread.cleanup_crit_edge ], [ 0, %for.inc.2.thread.cleanup_crit_edge ], [ 0, %for.inc.1.thread.cleanup_crit_edge ], [ 0, %for.inc.thread.cleanup_crit_edge ], [ 0, %for.inc.3.cleanup_crit_edge ], [ 0, %for.inc.2.cleanup_crit_edge ], [ 0, %for.inc.1.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.then2.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ %retval.0.i49, %for.body9.3 ], [ %retval.0.i49, %for.body9.2.cleanup_crit_edge ], [ %retval.0.i49, %for.body9.1.cleanup_crit_edge ], [ %retval.0.i49, %for.body9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpmi_init(ptr nocapture noundef readonly %this) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resources = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 3
  %dev = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !284
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #12, !srcloc !285
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !286
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %resources to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resources, align 4
  %call2 = tail call fastcc i32 @gpmi_reset_block(ptr noundef %6, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.err_out_crit_edge

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out

if.end4:                                          ; preds = %if.end
  %bch_regs = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %bch_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bch_regs, align 4
  %9 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %this, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %13 = icmp ult i32 %12, 2
  %call9 = tail call fastcc i32 @gpmi_reset_block(ptr noundef %8, i1 noundef zeroext %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body, label %if.end4.err_out_crit_edge

if.end4.err_out_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out

do.body:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !287
  tail call void @arm_heavy_mb() #12
  %14 = ptrtoint ptr %resources to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resources, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #12, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !289
  tail call void @arm_heavy_mb() #12
  %16 = ptrtoint ptr %resources to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %resources, align 4
  %add.ptr18 = getelementptr i8, ptr %17, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 67108864) #12, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !290
  tail call void @arm_heavy_mb() #12
  %18 = ptrtoint ptr %resources to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resources, align 4
  %add.ptr23 = getelementptr i8, ptr %19, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 134217728) #12, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !291
  tail call void @arm_heavy_mb() #12
  %20 = ptrtoint ptr %resources to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resources, align 4
  %add.ptr28 = getelementptr i8, ptr %21, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 1024) #12, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !292
  tail call void @arm_heavy_mb() #12
  %22 = ptrtoint ptr %resources to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %resources, align 4
  %add.ptr33 = getelementptr i8, ptr %23, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 2049) #12, !srcloc !288
  br label %err_out

err_out:                                          ; preds = %do.body, %if.end4.err_out_crit_edge, %if.end.err_out_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.err_out_crit_edge ], [ %call9, %if.end4.err_out_crit_edge ], [ 0, %do.body ]
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %call.i54 = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 12, i32 22
  %26 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store volatile i64 %call.i54, ptr %last_busy.i, align 8
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %call.i55 = tail call i32 @__pm_runtime_suspend(ptr noundef %28, i32 noundef 13) #12
  br label %cleanup

cleanup:                                          ; preds = %err_out, %do.end11.i.i.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_out ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bch_irq(i32 noundef %irq, ptr noundef %cookie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !293
  tail call void @arm_heavy_mb() #12
  %bch_regs.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %cookie, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %bch_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bch_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #12, !srcloc !288
  %bch_done = getelementptr inbounds %struct.gpmi_nand_data, ptr %cookie, i32 0, i32 6
  tail call void @complete(ptr noundef %bch_done) #12
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @release_dma_channels(ptr nocapture noundef %this) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.gpmi_nand_data, ptr %this, i32 0, i32 20, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dma_release_channel(ptr noundef nonnull %1) #12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.gpmi_nand_data, ptr %this, i32 0, i32 20, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %4, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dma_release_channel(ptr noundef nonnull %4) #12
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.gpmi_nand_data, ptr %this, i32 0, i32 20, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %7, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dma_release_channel(ptr noundef nonnull %7) #12
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.gpmi_nand_data, ptr %this, i32 0, i32 20, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %10, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dma_release_channel(ptr noundef nonnull %10) #12
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.gpmi_nand_data, ptr %this, i32 0, i32 20, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %13, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dma_release_channel(ptr noundef nonnull %13) #12
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.gpmi_nand_data, ptr %this, i32 0, i32 20, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %16, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dma_release_channel(ptr noundef nonnull %16) #12
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.gpmi_nand_data, ptr %this, i32 0, i32 20, i32 6
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %19, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dma_release_channel(ptr noundef nonnull %19) #12
  %20 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx.6, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.gpmi_nand_data, ptr %this, i32 0, i32 20, i32 7
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %22, null
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dma_release_channel(ptr noundef nonnull %22) #12
  %23 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx.7, align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpmi_reset_block(ptr noundef %reset_addr, i1 noundef zeroext %just_enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !294
  tail call void @arm_heavy_mb() #12
  %add.ptr.i = getelementptr i8, ptr %reset_addr, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 128) #12, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748) #12
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 1024, %entry ], [ %dec.i, %land.rhs.i.while.cond.i_crit_edge ]
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reset_addr) #12, !srcloc !295
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !296
  %.mask = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not.i = icmp eq i32 %.mask, 0
  br i1 %tobool.not.i, label %clear_poll_bit.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %while.cond.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %land.rhs.i.do.end47_crit_edge, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

land.rhs.i.do.end47_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47

clear_poll_bit.exit:                              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %tobool3.not.i.not = icmp eq i32 %timeout.0.i, 0
  br i1 %tobool3.not.i.not, label %clear_poll_bit.exit.do.end47_crit_edge, label %do.body, !prof !297

clear_poll_bit.exit.do.end47_crit_edge:           ; preds = %clear_poll_bit.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47

do.body:                                          ; preds = %clear_poll_bit.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !298
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 64) #12, !srcloc !288
  br i1 %just_enable, label %do.body.if.end24_crit_edge, label %do.body5

do.body.if.end24_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

do.body5:                                         ; preds = %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !299
  tail call void @arm_heavy_mb() #12
  %add.ptr8 = getelementptr i8, ptr %reset_addr, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 128) #12, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #12
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %do.body5
  %timeout.0 = phi i32 [ 1024, %do.body5 ], [ %dec, %land.rhs.while.cond_crit_edge ]
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reset_addr) #12, !srcloc !295
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !300
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool11.not = icmp eq i32 %4, 0
  br i1 %tobool11.not, label %land.rhs, label %while.cond.if.end24_crit_edge

while.cond.if.end24_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

land.rhs:                                         ; preds = %while.cond
  %dec = add nsw i32 %timeout.0, -1
  %tobool12.not = icmp eq i32 %dec, 0
  br i1 %tobool12.not, label %land.rhs.do.end47_crit_edge, label %land.rhs.while.cond_crit_edge

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

land.rhs.do.end47_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47

if.end24:                                         ; preds = %while.cond.if.end24_crit_edge, %do.body.if.end24_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !294
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 128) #12, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #12
  br label %while.cond.i64

while.cond.i64:                                   ; preds = %land.rhs.i67.while.cond.i64_crit_edge, %if.end24
  %timeout.0.i61 = phi i32 [ 1024, %if.end24 ], [ %dec.i65, %land.rhs.i67.while.cond.i64_crit_edge ]
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reset_addr) #12, !srcloc !295
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !296
  %.mask98 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask98)
  %tobool.not.i63 = icmp eq i32 %.mask98, 0
  br i1 %tobool.not.i63, label %clear_poll_bit.exit71, label %land.rhs.i67

land.rhs.i67:                                     ; preds = %while.cond.i64
  %dec.i65 = add nsw i32 %timeout.0.i61, -1
  %tobool2.not.i66 = icmp eq i32 %dec.i65, 0
  br i1 %tobool2.not.i66, label %land.rhs.i67.do.end47_crit_edge, label %land.rhs.i67.while.cond.i64_crit_edge

land.rhs.i67.while.cond.i64_crit_edge:            ; preds = %land.rhs.i67
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i64

land.rhs.i67.do.end47_crit_edge:                  ; preds = %land.rhs.i67
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47

clear_poll_bit.exit71:                            ; preds = %while.cond.i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i61)
  %tobool3.not.i69.not = icmp eq i32 %timeout.0.i61, 0
  br i1 %tobool3.not.i69.not, label %clear_poll_bit.exit71.do.end47_crit_edge, label %if.end34, !prof !297

clear_poll_bit.exit71.do.end47_crit_edge:         ; preds = %clear_poll_bit.exit71
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47

if.end34:                                         ; preds = %clear_poll_bit.exit71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !294
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 64) #12, !srcloc !288
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #12
  br label %while.cond.i76

while.cond.i76:                                   ; preds = %land.rhs.i79.while.cond.i76_crit_edge, %if.end34
  %timeout.0.i73 = phi i32 [ 1024, %if.end34 ], [ %dec.i77, %land.rhs.i79.while.cond.i76_crit_edge ]
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reset_addr) #12, !srcloc !295
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !296
  %9 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i75 = icmp eq i32 %9, 0
  br i1 %tobool.not.i75, label %clear_poll_bit.exit83, label %land.rhs.i79

land.rhs.i79:                                     ; preds = %while.cond.i76
  %dec.i77 = add nsw i32 %timeout.0.i73, -1
  %tobool2.not.i78 = icmp eq i32 %dec.i77, 0
  br i1 %tobool2.not.i78, label %land.rhs.i79.do.end47_crit_edge, label %land.rhs.i79.while.cond.i76_crit_edge

land.rhs.i79.while.cond.i76_crit_edge:            ; preds = %land.rhs.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i76

land.rhs.i79.do.end47_crit_edge:                  ; preds = %land.rhs.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47

clear_poll_bit.exit83:                            ; preds = %while.cond.i76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i73)
  %tobool3.not.i81.not = icmp eq i32 %timeout.0.i73, 0
  br i1 %tobool3.not.i81.not, label %clear_poll_bit.exit83.do.end47_crit_edge, label %clear_poll_bit.exit83.cleanup_crit_edge, !prof !297

clear_poll_bit.exit83.cleanup_crit_edge:          ; preds = %clear_poll_bit.exit83
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

clear_poll_bit.exit83.do.end47_crit_edge:         ; preds = %clear_poll_bit.exit83
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47

do.end47:                                         ; preds = %clear_poll_bit.exit83.do.end47_crit_edge, %land.rhs.i79.do.end47_crit_edge, %clear_poll_bit.exit71.do.end47_crit_edge, %land.rhs.i67.do.end47_crit_edge, %land.rhs.do.end47_crit_edge, %clear_poll_bit.exit.do.end47_crit_edge, %land.rhs.i.do.end47_crit_edge
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %reset_addr) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %clear_poll_bit.exit83.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end47 ], [ 0, %clear_poll_bit.exit83.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmi_block_markbad(ptr noundef %chip, i64 noundef %ofs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %chip_shift = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 19
  %2 = ptrtoint ptr %chip_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_shift, align 4
  %sh_prom = zext i32 %3 to i64
  %shr = ashr i64 %ofs, %sh_prom
  %conv = trunc i64 %shr to i32
  tail call void @nand_select_target(ptr noundef %chip, i32 noundef %conv) #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %8 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %writesize, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %9, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %data_buffer_dma = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %data_buffer_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data_buffer_dma, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %11, align 1
  %page_shift = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 17
  %13 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %page_shift, align 4
  %sh_prom3 = zext i32 %14 to i64
  %shr4 = ashr i64 %ofs, %sh_prom3
  %conv5 = trunc i64 %shr4 to i32
  %call6 = tail call i32 @nand_prog_page_op(ptr noundef %chip, i32 noundef %conv5, i32 noundef %cond, ptr noundef %11, i32 noundef 1) #12
  tail call void @nand_deselect_target(ptr noundef %chip) #12
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpmi_alloc_dma_buffer(ptr noundef %this) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %writesize = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 0, i32 0, i32 4
  %2 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %. = select i1 %tobool.not, i32 4096, i32 %3
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %., i32 noundef 3521) #16
  %data_buffer_dma = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 16
  %4 = ptrtoint ptr %data_buffer_dma to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i.i, ptr %data_buffer_dma, align 8
  %cmp = icmp eq ptr %call9.i.i, null
  br i1 %cmp, label %entry.error_alloc_crit_edge, label %if.end

entry.error_alloc_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_alloc

if.end:                                           ; preds = %entry
  %auxiliary_size = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 7
  %5 = ptrtoint ptr %auxiliary_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %auxiliary_size, align 4
  %auxiliary_phys = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 18
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %1, i32 noundef %6, ptr noundef %auxiliary_phys, i32 noundef 1, i32 noundef 0) #12
  %auxiliary_virt = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 17
  %7 = ptrtoint ptr %auxiliary_virt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %auxiliary_virt, align 4
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.error_alloc_crit_edge, label %if.end8.i.i59

if.end.error_alloc_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_alloc

if.end8.i.i59:                                    ; preds = %if.end
  %8 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  %.22 = select i1 %tobool10.not, i32 4096, i32 %9
  %oobsize = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 0, i32 0, i32 6
  %10 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %oobsize, align 4
  %add = add i32 %.22, %11
  %call9.i.i58 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #16
  %raw_buffer = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 19
  %12 = ptrtoint ptr %raw_buffer to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i.i58, ptr %raw_buffer, align 4
  %tobool17.not = icmp eq ptr %call9.i.i58, null
  br i1 %tobool17.not, label %if.end8.i.i59.error_alloc_crit_edge, label %if.end8.i.i59.cleanup_crit_edge

if.end8.i.i59.cleanup_crit_edge:                  ; preds = %if.end8.i.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i.i59.error_alloc_crit_edge:              ; preds = %if.end8.i.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_alloc

error_alloc:                                      ; preds = %if.end8.i.i59.error_alloc_crit_edge, %if.end.error_alloc_crit_edge, %entry.error_alloc_crit_edge
  tail call fastcc void @gpmi_free_dma_buffer(ptr noundef %this)
  br label %cleanup

cleanup:                                          ; preds = %error_alloc, %if.end8.i.i59.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %error_alloc ], [ 0, %if.end8.i.i59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_create_bbt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpmi_free_dma_buffer(ptr nocapture noundef %this) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %auxiliary_virt = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 17
  %2 = ptrtoint ptr %auxiliary_virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %auxiliary_virt, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  %cmp = icmp ugt ptr %3, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %5 = load ptr, ptr @high_memory, align 4
  %cmp5 = icmp ult ptr %3, %5
  br i1 %cmp5, label %land.lhs.true6, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %sub = add i32 %4, 1073741824
  %shr = lshr i32 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %6 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %6, %shr
  %call = tail call i32 @pfn_valid(i32 noundef %add) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %land.lhs.true6.if.end_crit_edge, label %if.then

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  %auxiliary_size = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 7
  %7 = ptrtoint ptr %auxiliary_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %auxiliary_size, align 4
  %9 = ptrtoint ptr %auxiliary_virt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %auxiliary_virt, align 4
  %auxiliary_phys = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 18
  %11 = ptrtoint ptr %auxiliary_phys to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %auxiliary_phys, align 8
  tail call void @dma_free_attrs(ptr noundef %1, i32 noundef %8, ptr noundef %10, i32 noundef %12, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true6.if.end_crit_edge, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %data_buffer_dma = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 16
  %13 = ptrtoint ptr %data_buffer_dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data_buffer_dma, align 8
  tail call void @kfree(ptr noundef %14) #12
  %raw_buffer = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 19
  %15 = ptrtoint ptr %raw_buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %raw_buffer, align 4
  tail call void @kfree(ptr noundef %16) #12
  %17 = ptrtoint ptr %data_buffer_dma to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %data_buffer_dma, align 8
  %18 = ptrtoint ptr %raw_buffer to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %raw_buffer, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_select_target(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_deselect_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmi_nand_attach_chip(ptr nocapture noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %bbt_options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 10
  %2 = ptrtoint ptr %bbt_options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bbt_options, align 8
  %and = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then:                                          ; preds = %entry
  %or = or i32 %3, 262144
  %4 = ptrtoint ptr %bbt_options to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %bbt_options, align 8
  %dev = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %8, ptr noundef nonnull @.str.21, ptr noundef null) #12
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.then.do.body_crit_edge, label %if.then3

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %swap_block_mark = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %swap_block_mark to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %swap_block_mark, align 8
  br label %do.body

do.body:                                          ; preds = %if.then3, %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpmi_nand_attach_chip.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gpmi_nand_attach_chip, %if.then9)) #12
          to label %do.end [label %if.then9], !srcloc !283

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev10 = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev10, align 4
  %swap_block_mark11 = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %swap_block_mark11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %swap_block_mark11, align 8, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not = icmp eq i8 %13, 0
  %cond = select i1 %tobool12.not, ptr @.str.25, ptr @.str.24
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpmi_nand_attach_chip.__UNIQUE_ID_ddebug272, ptr noundef %11, ptr noundef nonnull @.str.23, ptr noundef nonnull %cond) #12
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %bch_geometry.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5
  tail call fastcc void @gpmi_free_dma_buffer(ptr noundef %1) #12
  %call.i.i = tail call fastcc i32 @bch_set_geometry(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %gpmi_set_geometry.exit.i, label %gpmi_set_geometry.exit.thread.i

gpmi_set_geometry.exit.thread.i:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.26, i32 noundef %call.i.i) #15
  br label %cleanup

gpmi_set_geometry.exit.i:                         ; preds = %do.end
  %call1.i.i = tail call fastcc i32 @gpmi_alloc_dma_buffer(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %gpmi_set_geometry.exit.i.cleanup_crit_edge

gpmi_set_geometry.exit.i.cleanup_crit_edge:       ; preds = %gpmi_set_geometry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %gpmi_set_geometry.exit.i
  %ecc1.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 10, i32 33
  %read_page.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 10, i32 33, i32 18
  %16 = ptrtoint ptr %read_page.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @gpmi_ecc_read_page, ptr %read_page.i, align 4
  %write_page.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 10, i32 33, i32 21
  %17 = ptrtoint ptr %write_page.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @gpmi_ecc_write_page, ptr %write_page.i, align 4
  %read_oob.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 10, i32 33, i32 24
  %18 = ptrtoint ptr %read_oob.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @gpmi_ecc_read_oob, ptr %read_oob.i, align 4
  %write_oob.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 10, i32 33, i32 25
  %19 = ptrtoint ptr %write_oob.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @gpmi_ecc_write_oob, ptr %write_oob.i, align 4
  %read_page_raw.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 10, i32 33, i32 16
  %20 = ptrtoint ptr %read_page_raw.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @gpmi_ecc_read_page_raw, ptr %read_page_raw.i, align 4
  %write_page_raw.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 10, i32 33, i32 17
  %21 = ptrtoint ptr %write_page_raw.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @gpmi_ecc_write_page_raw, ptr %write_page_raw.i, align 4
  %read_oob_raw.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 10, i32 33, i32 23
  %22 = ptrtoint ptr %read_oob_raw.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @gpmi_ecc_read_oob_raw, ptr %read_oob_raw.i, align 4
  %write_oob_raw.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 10, i32 33, i32 22
  %23 = ptrtoint ptr %write_oob_raw.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @gpmi_ecc_write_oob_raw, ptr %write_oob_raw.i, align 4
  %24 = ptrtoint ptr %ecc1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %ecc1.i, align 4
  %ecc_chunk_size.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 4
  %25 = ptrtoint ptr %ecc_chunk_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ecc_chunk_size.i, align 4
  %size.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 10, i32 33, i32 4
  %27 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %size.i, align 4
  %ecc_strength.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 1
  %28 = ptrtoint ptr %ecc_strength.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ecc_strength.i, align 4
  %strength.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 10, i32 33, i32 7
  %30 = ptrtoint ptr %strength.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %strength.i, align 4
  %ooblayout1.i.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 15
  %31 = ptrtoint ptr %ooblayout1.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @gpmi_ooblayout_ops, ptr %ooblayout1.i.i, align 8
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %.off.i = add i32 %35, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %land.lhs.true.i, label %if.end.i.if.end17_crit_edge

if.end.i.if.end17_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true.i:                                  ; preds = %if.end.i
  %36 = ptrtoint ptr %bch_geometry.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bch_geometry.i, align 4
  %mul.i = mul i32 %37, %29
  %rem.i = and i32 %mul.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp11.i = icmp eq i32 %rem.i, 0
  br i1 %cmp11.i, label %if.then12.i, label %land.lhs.true.i.if.end17_crit_edge

land.lhs.true.i.if.end17_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then12.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %read_subpage.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 10, i32 33, i32 19
  %38 = ptrtoint ptr %read_subpage.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @gpmi_ecc_read_subpage, ptr %read_subpage.i, align 4
  %options.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 10, i32 6
  %39 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %options.i, align 8
  %or.i = or i32 %40, 4096
  store i32 %or.i, ptr %options.i, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then12.i, %land.lhs.true.i.if.end17_crit_edge, %if.end.i.if.end17_crit_edge
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %41 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %options, align 8
  %or18 = or i32 %42, 65536
  store i32 %or18, ptr %options, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %gpmi_set_geometry.exit.i.cleanup_crit_edge, %gpmi_set_geometry.exit.thread.i
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %call1.i.i, %gpmi_set_geometry.exit.i.cleanup_crit_edge ], [ %call.i.i, %gpmi_set_geometry.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmi_nfc_exec_op(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %op, i1 noundef zeroext %check_only) #2 align 64 {
entry:
  %pio.i300 = alloca [6 x i32], align 4
  %pio.i280 = alloca [6 x i32], align 4
  %pio.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  br i1 %check_only, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ntransfers = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ntransfers to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ntransfers, align 8
  %direction = getelementptr %struct.gpmi_nand_data, ptr %1, i32 0, i32 11, i32 0, i32 2
  %3 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %direction, align 4
  %direction.1 = getelementptr %struct.gpmi_nand_data, ptr %1, i32 0, i32 11, i32 1, i32 2
  %4 = ptrtoint ptr %direction.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %direction.1, align 4
  %direction.2 = getelementptr %struct.gpmi_nand_data, ptr %1, i32 0, i32 11, i32 2, i32 2
  %5 = ptrtoint ptr %direction.2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %direction.2, align 4
  %direction.3 = getelementptr %struct.gpmi_nand_data, ptr %1, i32 0, i32 11, i32 3, i32 2
  %6 = ptrtoint ptr %direction.3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %direction.3, align 4
  %direction.4 = getelementptr %struct.gpmi_nand_data, ptr %1, i32 0, i32 11, i32 4, i32 2
  %7 = ptrtoint ptr %direction.4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %direction.4, align 4
  %direction.5 = getelementptr %struct.gpmi_nand_data, ptr %1, i32 0, i32 11, i32 5, i32 2
  %8 = ptrtoint ptr %direction.5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %direction.5, align 4
  %direction.6 = getelementptr %struct.gpmi_nand_data, ptr %1, i32 0, i32 11, i32 6, i32 2
  %9 = ptrtoint ptr %direction.6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %direction.6, align 4
  %direction.7 = getelementptr %struct.gpmi_nand_data, ptr %1, i32 0, i32 11, i32 7, i32 2
  %10 = ptrtoint ptr %direction.7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %direction.7, align 4
  %dev = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !284
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #12
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #12, !srcloc !285
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then3.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !286
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %hw = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hw, align 8, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool6.not = icmp eq i8 %17, 0
  br i1 %tobool6.not, label %if.end5.do.body_crit_edge, label %if.then7

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then7:                                         ; preds = %if.end5
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %hw, align 8
  %resources.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %resources.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resources.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %25 = and i32 %24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %switch.i = icmp eq i32 %25, 2
  br i1 %switch.i, label %if.then.i, label %if.then7.if.end.i_crit_edge

if.then7.if.end.i_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %clock.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 3, i32 4
  %26 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clock.i, align 4
  tail call void @clk_disable(ptr noundef %27) #12
  tail call void @clk_unprepare(ptr noundef %27) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then7.if.end.i_crit_edge
  %clock6.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 3, i32 4
  %28 = ptrtoint ptr %clock6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clock6.i, align 4
  %clk_rate.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %clk_rate.i, align 4
  %call.i277 = tail call i32 @clk_set_rate(ptr noundef %29, i32 noundef %31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i277)
  %tobool.not.i = icmp eq i32 %call.i277, 0
  br i1 %tobool.not.i, label %if.end10.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %34 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %clk_rate.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.54, i32 noundef %35, i32 noundef %call.i277) #15
  br label %out_pm

if.end10.i:                                       ; preds = %if.end.i
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %40 = and i32 %39, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %switch81.i = icmp eq i32 %40, 2
  br i1 %switch81.i, label %if.then18.i, label %if.end10.i.do.body26.i_crit_edge

if.end10.i.do.body26.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body26.i

if.then18.i:                                      ; preds = %if.end10.i
  %41 = ptrtoint ptr %clock6.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clock6.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %42) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then18.i.out_pm_crit_edge

if.then18.i.out_pm_crit_edge:                     ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_pm

if.end.i.i:                                       ; preds = %if.then18.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %42) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.do.body26.i_crit_edge, label %if.then3.i.i

if.end.i.i.do.body26.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body26.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %42) #12
  br label %out_pm

do.body26.i:                                      ; preds = %if.end.i.i.do.body26.i_crit_edge, %if.end10.i.do.body26.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !302
  tail call void @arm_heavy_mb() #12
  %timing0.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 4, i32 2
  %43 = ptrtoint ptr %timing0.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %timing0.i, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #12
  %add.ptr.i = getelementptr i8, ptr %20, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %45) #12, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !303
  tail call void @arm_heavy_mb() #12
  %timing1.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 4, i32 3
  %46 = ptrtoint ptr %timing1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %timing1.i, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #12
  %add.ptr32.i = getelementptr i8, ptr %20, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %48) #12, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !304
  tail call void @arm_heavy_mb() #12
  %add.ptr36.i = getelementptr i8, ptr %20, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 15778560) #12, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !305
  tail call void @arm_heavy_mb() #12
  %ctrl1n.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 4, i32 4
  %49 = ptrtoint ptr %ctrl1n.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ctrl1n.i, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #12
  %add.ptr40.i = getelementptr i8, ptr %20, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %51) #12, !srcloc !288
  %52 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %clk_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %53)
  %tobool42.not.i = icmp ugt i32 %53, 1000000
  %div.i = udiv i32 1000000, %53
  %mul.i = shl nuw nsw i32 %div.i, 6
  %spec.store.select.i = select i1 %tobool42.not.i, i32 1, i32 %mul.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %54(i32 noundef %spec.store.select.i) #12
  br label %do.body

do.body:                                          ; preds = %do.body26.i, %if.end5.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpmi_nfc_exec_op.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gpmi_nfc_exec_op, %if.then20)) #12
          to label %do.end [label %if.then20], !srcloc !283

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  %ninstrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 2
  %57 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ninstrs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpmi_nfc_exec_op.__UNIQUE_ID_ddebug273, ptr noundef %56, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, i32 noundef %58) #12
  br label %do.end

do.end:                                           ; preds = %if.then20, %do.body
  %ninstrs24 = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 2
  %59 = ptrtoint ptr %ninstrs24 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ninstrs24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp25369.not = icmp eq i32 %60, 0
  br i1 %cmp25369.not, label %do.end.do.body67_crit_edge, label %for.body26.lr.ph

do.end.do.body67_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body67

for.body26.lr.ph:                                 ; preds = %do.end
  %instrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 1
  %dma_chans.i.i301 = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 20
  %61 = getelementptr inbounds i8, ptr %pio.i300, i32 4
  %cur_cs.i310 = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 10, i32 28
  %bch.i318 = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 13
  %arrayidx10.i321 = getelementptr inbounds [6 x i32], ptr %pio.i300, i32 0, i32 2
  %arrayidx11.i322 = getelementptr inbounds [6 x i32], ptr %pio.i300, i32 0, i32 3
  %arrayidx13.i324 = getelementptr inbounds [6 x i32], ptr %pio.i300, i32 0, i32 4
  %auxiliary_phys.i325 = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 18
  %arrayidx14.i326 = getelementptr inbounds [6 x i32], ptr %pio.i300, i32 0, i32 5
  %62 = getelementptr inbounds i8, ptr %pio.i280, i32 4
  %arrayidx10.i = getelementptr inbounds [6 x i32], ptr %pio.i280, i32 0, i32 2
  %arrayidx11.i = getelementptr inbounds [6 x i32], ptr %pio.i280, i32 0, i32 3
  %arrayidx13.i = getelementptr inbounds [6 x i32], ptr %pio.i280, i32 0, i32 4
  %arrayidx14.i = getelementptr inbounds [6 x i32], ptr %pio.i280, i32 0, i32 5
  %63 = getelementptr inbounds [2 x i32], ptr %pio.i, i32 0, i32 1
  br label %for.body26

for.body26:                                       ; preds = %for.inc64.for.body26_crit_edge, %for.body26.lr.ph
  %desc.0379 = phi ptr [ null, %for.body26.lr.ph ], [ %desc.2, %for.inc64.for.body26_crit_edge ]
  %buf_read.0378 = phi ptr [ null, %for.body26.lr.ph ], [ %buf_read.2, %for.inc64.for.body26_crit_edge ]
  %cmd.0377 = phi i8 [ 0, %for.body26.lr.ph ], [ %cmd.2, %for.inc64.for.body26_crit_edge ]
  %nbufs.0376 = phi i32 [ 0, %for.body26.lr.ph ], [ %nbufs.2, %for.inc64.for.body26_crit_edge ]
  %buf_len.0375 = phi i32 [ 0, %for.body26.lr.ph ], [ %buf_len.2, %for.inc64.for.body26_crit_edge ]
  %i.1372 = phi i32 [ 0, %for.body26.lr.ph ], [ %inc65.pre-phi, %for.inc64.for.body26_crit_edge ]
  %direct.0370 = phi i8 [ 0, %for.body26.lr.ph ], [ %direct.3, %for.inc64.for.body26_crit_edge ]
  %64 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %instrs, align 4
  %arrayidx27 = getelementptr %struct.nand_op_instr, ptr %65, i32 %i.1372
  call fastcc void @nand_op_trace(ptr noundef %arrayidx27)
  %66 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx27, align 4
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values)
  switch i32 %67, label %for.body26.sw.epilog_crit_edge [
    i32 4, label %sw.bb
    i32 0, label %sw.bb29
    i32 1, label %sw.bb40
    i32 3, label %sw.bb44
    i32 2, label %sw.bb49
  ]

for.body26.sw.epilog_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body26
  %69 = ptrtoint ptr %dma_chans.i.i301 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dma_chans.i.i301, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pio.i) #12
  %71 = ptrtoint ptr %cur_cs.i310 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cur_cs.i310, align 4
  %shl.i = shl i32 %72, 20
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i = icmp eq i32 %76, 0
  %cond.i = select i1 %cmp.i, i32 3145728, i32 7340032
  %and.i = and i32 %cond.i, %shl.i
  %or.i = or i32 %and.i, 58720256
  %77 = ptrtoint ptr %pio.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or.i, ptr %pio.i, align 4
  %78 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %63, align 4
  %tobool.not.i.i.i = icmp eq ptr %70, null
  br i1 %tobool.not.i.i.i, label %sw.bb.gpmi_chain_wait_ready.exit_crit_edge, label %lor.lhs.false.i.i.i

sw.bb.gpmi_chain_wait_ready.exit_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpmi_chain_wait_ready.exit

lor.lhs.false.i.i.i:                              ; preds = %sw.bb
  %79 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %70, align 4
  %tobool1.not.i.i.i = icmp eq ptr %80, null
  br i1 %tobool1.not.i.i.i, label %lor.lhs.false.i.i.i.gpmi_chain_wait_ready.exit_crit_edge, label %lor.lhs.false2.i.i.i

lor.lhs.false.i.i.i.gpmi_chain_wait_ready.exit_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpmi_chain_wait_ready.exit

lor.lhs.false2.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %device_prep_slave_sg.i.i.i = getelementptr inbounds %struct.dma_device, ptr %80, i32 0, i32 39
  %81 = ptrtoint ptr %device_prep_slave_sg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %device_prep_slave_sg.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %82, null
  br i1 %tobool4.not.i.i.i, label %lor.lhs.false2.i.i.i.gpmi_chain_wait_ready.exit_crit_edge, label %if.end.i.i.i

lor.lhs.false2.i.i.i.gpmi_chain_wait_ready.exit_crit_edge: ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpmi_chain_wait_ready.exit

if.end.i.i.i:                                     ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i279 = call ptr %82(ptr noundef nonnull %70, ptr noundef nonnull %pio.i, i32 noundef 2, i32 noundef 4, i32 noundef -1073741824, ptr noundef null) #12
  br label %gpmi_chain_wait_ready.exit

gpmi_chain_wait_ready.exit:                       ; preds = %if.end.i.i.i, %lor.lhs.false2.i.i.i.gpmi_chain_wait_ready.exit_crit_edge, %lor.lhs.false.i.i.i.gpmi_chain_wait_ready.exit_crit_edge, %sw.bb.gpmi_chain_wait_ready.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %call.i.i.i279, %if.end.i.i.i ], [ null, %lor.lhs.false2.i.i.i.gpmi_chain_wait_ready.exit_crit_edge ], [ null, %lor.lhs.false.i.i.i.gpmi_chain_wait_ready.exit_crit_edge ], [ null, %sw.bb.gpmi_chain_wait_ready.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pio.i) #12
  br label %sw.epilog

sw.bb29:                                          ; preds = %for.body26
  %ctx = getelementptr %struct.nand_op_instr, ptr %65, i32 %i.1372, i32 1
  %83 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %ctx, align 4
  %add = add nuw i32 %i.1372, 1
  %85 = ptrtoint ptr %ninstrs24 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ninstrs24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %86)
  %cmp31.not = icmp eq i32 %add, %86
  br i1 %cmp31.not, label %sw.bb29.if.end38_crit_edge, label %land.lhs.true

sw.bb29.if.end38_crit_edge:                       ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

land.lhs.true:                                    ; preds = %sw.bb29
  %87 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %instrs, align 4
  %arrayidx34 = getelementptr %struct.nand_op_instr, ptr %88, i32 %add
  %89 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp36 = icmp eq i32 %90, 1
  br i1 %cmp36, label %land.lhs.true.for.inc64_crit_edge, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

land.lhs.true.for.inc64_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc64

if.end38:                                         ; preds = %land.lhs.true.if.end38_crit_edge, %sw.bb29.if.end38_crit_edge
  %call39 = call fastcc ptr @gpmi_chain_command(ptr noundef %1, i8 noundef zeroext %84, ptr noundef null, i32 noundef 0)
  br label %sw.epilog

sw.bb40:                                          ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #14
  %ctx41 = getelementptr %struct.nand_op_instr, ptr %65, i32 %i.1372, i32 1
  %addrs = getelementptr inbounds %struct.nand_op_addr_instr, ptr %ctx41, i32 0, i32 1
  %91 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %addrs, align 4
  %93 = ptrtoint ptr %ctx41 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ctx41, align 4
  %call43 = call fastcc ptr @gpmi_chain_command(ptr noundef %1, i8 noundef zeroext %cmd.0377, ptr noundef %92, i32 noundef %94)
  br label %sw.epilog

sw.bb44:                                          ; preds = %for.body26
  %ctx45 = getelementptr %struct.nand_op_instr, ptr %65, i32 %i.1372, i32 1
  %buf = getelementptr inbounds %struct.nand_op_data_instr, ptr %ctx45, i32 0, i32 1
  %95 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %buf, align 4
  %97 = ptrtoint ptr %ctx45 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ctx45, align 4
  %inc47 = add i32 %nbufs.0376, 1
  %99 = ptrtoint ptr %dma_chans.i.i301 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dma_chans.i.i301, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pio.i280) #12
  %101 = call ptr @memset(ptr %62, i32 0, i32 20)
  %102 = ptrtoint ptr %ntransfers to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ntransfers, align 8
  %inc.i.i = add i32 %103, 1
  store i32 %inc.i.i, ptr %ntransfers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i.i)
  %cmp.i.i = icmp eq i32 %inc.i.i, 8
  %arrayidx.i.i = getelementptr %struct.gpmi_nand_data, ptr %1, i32 0, i32 11, i32 %103
  %tobool.not51.i = icmp eq ptr %arrayidx.i.i, null
  %tobool.not.i282 = or i1 %cmp.i.i, %tobool.not51.i
  br i1 %tobool.not.i282, label %sw.bb44.gpmi_chain_data_write.exit_crit_edge, label %if.end.i289

sw.bb44.gpmi_chain_data_write.exit_crit_edge:     ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpmi_chain_data_write.exit

if.end.i289:                                      ; preds = %sw.bb44
  %direction.i = getelementptr %struct.gpmi_nand_data, ptr %1, i32 0, i32 11, i32 %103, i32 2
  %104 = ptrtoint ptr %direction.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %direction.i, align 4
  %sgl.i = getelementptr %struct.gpmi_nand_data, ptr %1, i32 0, i32 11, i32 %103, i32 1
  %call2.i = call fastcc zeroext i1 @prepare_data_dma(ptr noundef %1, ptr noundef %96, i32 noundef %98, ptr noundef %sgl.i, i32 noundef 1) #12
  %105 = ptrtoint ptr %cur_cs.i310 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %cur_cs.i310, align 4
  %shl.i284 = shl i32 %106, 20
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %1, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp.i285 = icmp eq i32 %110, 0
  %cond.i286 = select i1 %cmp.i285, i32 3145728, i32 7340032
  %and.i287 = and i32 %cond.i286, %shl.i284
  %and6.i = and i32 %98, 65535
  %or.i288 = or i32 %and6.i, %and.i287
  %or7.i = or i32 %or.i288, 8388608
  %111 = ptrtoint ptr %pio.i280 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %or7.i, ptr %pio.i280, align 4
  %112 = ptrtoint ptr %bch.i318 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %bch.i318, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool8.not.i = icmp eq i8 %113, 0
  br i1 %tobool8.not.i, label %if.end.i289.if.end15.i_crit_edge, label %if.then9.i

if.end.i289.if.end15.i_crit_edge:                 ; preds = %if.end.i289
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

if.then9.i:                                       ; preds = %if.end.i289
  call void @__sanitizer_cov_trace_pc() #14
  %114 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 12799, ptr %arrayidx10.i, align 4
  %115 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %98, ptr %arrayidx11.i, align 4
  %dma_address.i = getelementptr %struct.gpmi_nand_data, ptr %1, i32 0, i32 11, i32 %103, i32 1, i32 3
  %116 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %dma_address.i, align 4
  %118 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %arrayidx13.i, align 4
  %119 = ptrtoint ptr %auxiliary_phys.i325 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %auxiliary_phys.i325, align 8
  %121 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %arrayidx14.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then9.i, %if.end.i289.if.end15.i_crit_edge
  %cond18.i = phi i32 [ -2147483648, %if.then9.i ], [ 0, %if.end.i289.if.end15.i_crit_edge ]
  %tobool.not.i.i.i290 = icmp eq ptr %100, null
  br i1 %tobool.not.i.i.i290, label %if.end15.i.gpmi_chain_data_write.exit_crit_edge, label %lor.lhs.false.i.i.i292

if.end15.i.gpmi_chain_data_write.exit_crit_edge:  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpmi_chain_data_write.exit

lor.lhs.false.i.i.i292:                           ; preds = %if.end15.i
  %122 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %100, align 4
  %tobool1.not.i.i.i291 = icmp eq ptr %123, null
  br i1 %tobool1.not.i.i.i291, label %lor.lhs.false.i.i.i292.gpmi_chain_data_write.exit_crit_edge, label %lor.lhs.false2.i.i.i295

lor.lhs.false.i.i.i292.gpmi_chain_data_write.exit_crit_edge: ; preds = %lor.lhs.false.i.i.i292
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpmi_chain_data_write.exit

lor.lhs.false2.i.i.i295:                          ; preds = %lor.lhs.false.i.i.i292
  %device_prep_slave_sg.i.i.i293 = getelementptr inbounds %struct.dma_device, ptr %123, i32 0, i32 39
  %124 = ptrtoint ptr %device_prep_slave_sg.i.i.i293 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %device_prep_slave_sg.i.i.i293, align 4
  %tobool4.not.i.i.i294 = icmp eq ptr %125, null
  br i1 %tobool4.not.i.i.i294, label %lor.lhs.false2.i.i.i295.gpmi_chain_data_write.exit_crit_edge, label %mxs_dmaengine_prep_pio.exit.i

lor.lhs.false2.i.i.i295.gpmi_chain_data_write.exit_crit_edge: ; preds = %lor.lhs.false2.i.i.i295
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpmi_chain_data_write.exit

mxs_dmaengine_prep_pio.exit.i:                    ; preds = %lor.lhs.false2.i.i.i295
  %call.i.i.i296 = call ptr %125(ptr noundef nonnull %100, ptr noundef nonnull %pio.i280, i32 noundef 6, i32 noundef 4, i32 noundef %cond18.i, ptr noundef null) #12
  %tobool20.not.i = icmp eq ptr %call.i.i.i296, null
  br i1 %tobool20.not.i, label %mxs_dmaengine_prep_pio.exit.i.gpmi_chain_data_write.exit_crit_edge, label %if.end22.i

mxs_dmaengine_prep_pio.exit.i.gpmi_chain_data_write.exit_crit_edge: ; preds = %mxs_dmaengine_prep_pio.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpmi_chain_data_write.exit

if.end22.i:                                       ; preds = %mxs_dmaengine_prep_pio.exit.i
  %126 = ptrtoint ptr %bch.i318 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %bch.i318, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool24.not.i = icmp eq i8 %127, 0
  br i1 %tobool24.not.i, label %lor.lhs.false.i.i, label %if.end22.i.gpmi_chain_data_write.exit_crit_edge

if.end22.i.gpmi_chain_data_write.exit_crit_edge:  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpmi_chain_data_write.exit

lor.lhs.false.i.i:                                ; preds = %if.end22.i
  %128 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %100, align 4
  %tobool1.not.i.i = icmp eq ptr %129, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.gpmi_chain_data_write.exit_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.gpmi_chain_data_write.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpmi_chain_data_write.exit

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %129, i32 0, i32 39
  %130 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %131, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.gpmi_chain_data_write.exit_crit_edge, label %if.end.i.i298

lor.lhs.false2.i.i.gpmi_chain_data_write.exit_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpmi_chain_data_write.exit

if.end.i.i298:                                    ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i297 = call ptr %131(ptr noundef nonnull %100, ptr noundef %sgl.i, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648, ptr noundef null) #12
  br label %gpmi_chain_data_write.exit

gpmi_chain_data_write.exit:                       ; preds = %if.end.i.i298, %lor.lhs.false2.i.i.gpmi_chain_data_write.exit_crit_edge, %lor.lhs.false.i.i.gpmi_chain_data_write.exit_crit_edge, %if.end22.i.gpmi_chain_data_write.exit_crit_edge, %mxs_dmaengine_prep_pio.exit.i.gpmi_chain_data_write.exit_crit_edge, %lor.lhs.false2.i.i.i295.gpmi_chain_data_write.exit_crit_edge, %lor.lhs.false.i.i.i292.gpmi_chain_data_write.exit_crit_edge, %if.end15.i.gpmi_chain_data_write.exit_crit_edge, %sw.bb44.gpmi_chain_data_write.exit_crit_edge
  %retval.0.i299 = phi ptr [ null, %sw.bb44.gpmi_chain_data_write.exit_crit_edge ], [ null, %mxs_dmaengine_prep_pio.exit.i.gpmi_chain_data_write.exit_crit_edge ], [ %call.i.i.i296, %if.end22.i.gpmi_chain_data_write.exit_crit_edge ], [ %call.i.i297, %if.end.i.i298 ], [ null, %lor.lhs.false2.i.i.gpmi_chain_data_write.exit_crit_edge ], [ null, %lor.lhs.false.i.i.gpmi_chain_data_write.exit_crit_edge ], [ null, %lor.lhs.false2.i.i.i295.gpmi_chain_data_write.exit_crit_edge ], [ null, %lor.lhs.false.i.i.i292.gpmi_chain_data_write.exit_crit_edge ], [ null, %if.end15.i.gpmi_chain_data_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pio.i280) #12
  br label %sw.epilog

sw.bb49:                                          ; preds = %for.body26
  %ctx50 = getelementptr %struct.nand_op_instr, ptr %65, i32 %i.1372, i32 1
  %132 = ptrtoint ptr %ctx50 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %ctx50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool52.not = icmp eq i32 %133, 0
  br i1 %tobool52.not, label %sw.bb49.sw.epilog_crit_edge, label %if.end54

sw.bb49.sw.epilog_crit_edge:                      ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end54:                                         ; preds = %sw.bb49
  %buf56 = getelementptr inbounds %struct.nand_op_data_instr, ptr %ctx50, i32 0, i32 1
  %134 = ptrtoint ptr %buf56 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %buf56, align 4
  %inc59 = add i32 %nbufs.0376, 1
  %136 = ptrtoint ptr %dma_chans.i.i301 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dma_chans.i.i301, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pio.i300) #12
  %138 = call ptr @memset(ptr %61, i32 0, i32 20)
  %139 = ptrtoint ptr %ntransfers to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %ntransfers, align 8
  %inc.i.i303 = add i32 %140, 1
  store i32 %inc.i.i303, ptr %ntransfers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i.i303)
  %cmp.i.i304 = icmp eq i32 %inc.i.i303, 8
  %arrayidx.i.i305 = getelementptr %struct.gpmi_nand_data, ptr %1, i32 0, i32 11, i32 %140
  %tobool.not47.i = icmp eq ptr %arrayidx.i.i305, null
  %tobool.not.i306 = or i1 %cmp.i.i304, %tobool.not47.i
  br i1 %tobool.not.i306, label %if.end54.gpmi_chain_data_read.exit_crit_edge, label %if.end.i320

if.end54.gpmi_chain_data_read.exit_crit_edge:     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpmi_chain_data_read.exit

if.end.i320:                                      ; preds = %if.end54
  %direction.i307 = getelementptr %struct.gpmi_nand_data, ptr %1, i32 0, i32 11, i32 %140, i32 2
  %141 = ptrtoint ptr %direction.i307 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 2, ptr %direction.i307, align 4
  %sgl.i308 = getelementptr %struct.gpmi_nand_data, ptr %1, i32 0, i32 11, i32 %140, i32 1
  %call2.i309 = call fastcc zeroext i1 @prepare_data_dma(ptr noundef %1, ptr noundef %135, i32 noundef %133, ptr noundef %sgl.i308, i32 noundef 2) #12
  %frombool.i = zext i1 %call2.i309 to i8
  %142 = ptrtoint ptr %cur_cs.i310 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %cur_cs.i310, align 4
  %shl.i311 = shl i32 %143, 20
  %144 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %1, align 8
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %145, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp.i312 = icmp eq i32 %147, 0
  %cond.i313 = select i1 %cmp.i312, i32 3145728, i32 7340032
  %and.i314 = and i32 %cond.i313, %shl.i311
  %and6.i315 = and i32 %133, 65535
  %or.i316 = or i32 %and6.i315, %and.i314
  %or7.i317 = or i32 %or.i316, 25165824
  %148 = ptrtoint ptr %pio.i300 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %or7.i317, ptr %pio.i300, align 4
  %149 = ptrtoint ptr %bch.i318 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %bch.i318, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool8.not.i319 = icmp eq i8 %150, 0
  br i1 %tobool8.not.i319, label %if.end.i320.if.end15.i329_crit_edge, label %if.then9.i327

if.end.i320.if.end15.i329_crit_edge:              ; preds = %if.end.i320
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i329

if.then9.i327:                                    ; preds = %if.end.i320
  call void @__sanitizer_cov_trace_pc() #14
  %151 = ptrtoint ptr %arrayidx10.i321 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 4607, ptr %arrayidx10.i321, align 4
  %152 = ptrtoint ptr %arrayidx11.i322 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %133, ptr %arrayidx11.i322, align 4
  %dma_address.i323 = getelementptr %struct.gpmi_nand_data, ptr %1, i32 0, i32 11, i32 %140, i32 1, i32 3
  %153 = ptrtoint ptr %dma_address.i323 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %dma_address.i323, align 4
  %155 = ptrtoint ptr %arrayidx13.i324 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %arrayidx13.i324, align 4
  %156 = ptrtoint ptr %auxiliary_phys.i325 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %auxiliary_phys.i325, align 8
  %158 = ptrtoint ptr %arrayidx14.i326 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %arrayidx14.i326, align 4
  br label %if.end15.i329

if.end15.i329:                                    ; preds = %if.then9.i327, %if.end.i320.if.end15.i329_crit_edge
  %tobool.not.i.i.i328 = icmp eq ptr %137, null
  br i1 %tobool.not.i.i.i328, label %if.end15.i329.gpmi_chain_data_read.exit_crit_edge, label %lor.lhs.false.i.i.i331

if.end15.i329.gpmi_chain_data_read.exit_crit_edge: ; preds = %if.end15.i329
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpmi_chain_data_read.exit

lor.lhs.false.i.i.i331:                           ; preds = %if.end15.i329
  %159 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %137, align 4
  %tobool1.not.i.i.i330 = icmp eq ptr %160, null
  br i1 %tobool1.not.i.i.i330, label %lor.lhs.false.i.i.i331.gpmi_chain_data_read.exit_crit_edge, label %lor.lhs.false2.i.i.i334

lor.lhs.false.i.i.i331.gpmi_chain_data_read.exit_crit_edge: ; preds = %lor.lhs.false.i.i.i331
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpmi_chain_data_read.exit

lor.lhs.false2.i.i.i334:                          ; preds = %lor.lhs.false.i.i.i331
  %device_prep_slave_sg.i.i.i332 = getelementptr inbounds %struct.dma_device, ptr %160, i32 0, i32 39
  %161 = ptrtoint ptr %device_prep_slave_sg.i.i.i332 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %device_prep_slave_sg.i.i.i332, align 4
  %tobool4.not.i.i.i333 = icmp eq ptr %162, null
  br i1 %tobool4.not.i.i.i333, label %lor.lhs.false2.i.i.i334.gpmi_chain_data_read.exit_crit_edge, label %mxs_dmaengine_prep_pio.exit.i336

lor.lhs.false2.i.i.i334.gpmi_chain_data_read.exit_crit_edge: ; preds = %lor.lhs.false2.i.i.i334
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpmi_chain_data_read.exit

mxs_dmaengine_prep_pio.exit.i336:                 ; preds = %lor.lhs.false2.i.i.i334
  %call.i.i.i335 = call ptr %162(ptr noundef nonnull %137, ptr noundef nonnull %pio.i300, i32 noundef 6, i32 noundef 4, i32 noundef 0, ptr noundef null) #12
  %tobool17.not.i = icmp eq ptr %call.i.i.i335, null
  br i1 %tobool17.not.i, label %mxs_dmaengine_prep_pio.exit.i336.gpmi_chain_data_read.exit_crit_edge, label %if.end19.i

mxs_dmaengine_prep_pio.exit.i336.gpmi_chain_data_read.exit_crit_edge: ; preds = %mxs_dmaengine_prep_pio.exit.i336
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpmi_chain_data_read.exit

if.end19.i:                                       ; preds = %mxs_dmaengine_prep_pio.exit.i336
  %163 = ptrtoint ptr %bch.i318 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %bch.i318, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool21.not.i = icmp eq i8 %164, 0
  br i1 %tobool21.not.i, label %lor.lhs.false.i.i338, label %if.end19.i.gpmi_chain_data_read.exit_crit_edge

if.end19.i.gpmi_chain_data_read.exit_crit_edge:   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpmi_chain_data_read.exit

lor.lhs.false.i.i338:                             ; preds = %if.end19.i
  %165 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %137, align 4
  %tobool1.not.i.i337 = icmp eq ptr %166, null
  br i1 %tobool1.not.i.i337, label %lor.lhs.false.i.i338.gpmi_chain_data_read.exit_crit_edge, label %lor.lhs.false2.i.i341

lor.lhs.false.i.i338.gpmi_chain_data_read.exit_crit_edge: ; preds = %lor.lhs.false.i.i338
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpmi_chain_data_read.exit

lor.lhs.false2.i.i341:                            ; preds = %lor.lhs.false.i.i338
  %device_prep_slave_sg.i.i339 = getelementptr inbounds %struct.dma_device, ptr %166, i32 0, i32 39
  %167 = ptrtoint ptr %device_prep_slave_sg.i.i339 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %device_prep_slave_sg.i.i339, align 4
  %tobool4.not.i.i340 = icmp eq ptr %168, null
  br i1 %tobool4.not.i.i340, label %lor.lhs.false2.i.i341.gpmi_chain_data_read.exit_crit_edge, label %if.end.i.i343

lor.lhs.false2.i.i341.gpmi_chain_data_read.exit_crit_edge: ; preds = %lor.lhs.false2.i.i341
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpmi_chain_data_read.exit

if.end.i.i343:                                    ; preds = %lor.lhs.false2.i.i341
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i342 = call ptr %168(ptr noundef nonnull %137, ptr noundef %sgl.i308, i32 noundef 1, i32 noundef 2, i32 noundef -2147483648, ptr noundef null) #12
  br label %gpmi_chain_data_read.exit

gpmi_chain_data_read.exit:                        ; preds = %if.end.i.i343, %lor.lhs.false2.i.i341.gpmi_chain_data_read.exit_crit_edge, %lor.lhs.false.i.i338.gpmi_chain_data_read.exit_crit_edge, %if.end19.i.gpmi_chain_data_read.exit_crit_edge, %mxs_dmaengine_prep_pio.exit.i336.gpmi_chain_data_read.exit_crit_edge, %lor.lhs.false2.i.i.i334.gpmi_chain_data_read.exit_crit_edge, %lor.lhs.false.i.i.i331.gpmi_chain_data_read.exit_crit_edge, %if.end15.i329.gpmi_chain_data_read.exit_crit_edge, %if.end54.gpmi_chain_data_read.exit_crit_edge
  %direct.1 = phi i8 [ %direct.0370, %if.end54.gpmi_chain_data_read.exit_crit_edge ], [ %frombool.i, %if.end15.i329.gpmi_chain_data_read.exit_crit_edge ], [ %frombool.i, %lor.lhs.false.i.i.i331.gpmi_chain_data_read.exit_crit_edge ], [ %frombool.i, %lor.lhs.false2.i.i.i334.gpmi_chain_data_read.exit_crit_edge ], [ %frombool.i, %mxs_dmaengine_prep_pio.exit.i336.gpmi_chain_data_read.exit_crit_edge ], [ %frombool.i, %lor.lhs.false.i.i338.gpmi_chain_data_read.exit_crit_edge ], [ %frombool.i, %lor.lhs.false2.i.i341.gpmi_chain_data_read.exit_crit_edge ], [ %frombool.i, %if.end.i.i343 ], [ %frombool.i, %if.end19.i.gpmi_chain_data_read.exit_crit_edge ]
  %retval.0.i344 = phi ptr [ null, %if.end54.gpmi_chain_data_read.exit_crit_edge ], [ null, %if.end15.i329.gpmi_chain_data_read.exit_crit_edge ], [ null, %lor.lhs.false.i.i.i331.gpmi_chain_data_read.exit_crit_edge ], [ null, %lor.lhs.false2.i.i.i334.gpmi_chain_data_read.exit_crit_edge ], [ null, %mxs_dmaengine_prep_pio.exit.i336.gpmi_chain_data_read.exit_crit_edge ], [ null, %lor.lhs.false.i.i338.gpmi_chain_data_read.exit_crit_edge ], [ null, %lor.lhs.false2.i.i341.gpmi_chain_data_read.exit_crit_edge ], [ %call.i.i342, %if.end.i.i343 ], [ %call.i.i.i335, %if.end19.i.gpmi_chain_data_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pio.i300) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %gpmi_chain_data_read.exit, %sw.bb49.sw.epilog_crit_edge, %gpmi_chain_data_write.exit, %sw.bb40, %if.end38, %gpmi_chain_wait_ready.exit, %for.body26.sw.epilog_crit_edge
  %direct.2 = phi i8 [ %direct.0370, %for.body26.sw.epilog_crit_edge ], [ %direct.0370, %sw.bb49.sw.epilog_crit_edge ], [ %direct.1, %gpmi_chain_data_read.exit ], [ %direct.0370, %gpmi_chain_data_write.exit ], [ %direct.0370, %sw.bb40 ], [ %direct.0370, %if.end38 ], [ %direct.0370, %gpmi_chain_wait_ready.exit ]
  %buf_len.1 = phi i32 [ %buf_len.0375, %for.body26.sw.epilog_crit_edge ], [ %buf_len.0375, %sw.bb49.sw.epilog_crit_edge ], [ %133, %gpmi_chain_data_read.exit ], [ %98, %gpmi_chain_data_write.exit ], [ %buf_len.0375, %sw.bb40 ], [ %buf_len.0375, %if.end38 ], [ %buf_len.0375, %gpmi_chain_wait_ready.exit ]
  %nbufs.1 = phi i32 [ %nbufs.0376, %for.body26.sw.epilog_crit_edge ], [ %nbufs.0376, %sw.bb49.sw.epilog_crit_edge ], [ %inc59, %gpmi_chain_data_read.exit ], [ %inc47, %gpmi_chain_data_write.exit ], [ %nbufs.0376, %sw.bb40 ], [ %nbufs.0376, %if.end38 ], [ %nbufs.0376, %gpmi_chain_wait_ready.exit ]
  %cmd.1 = phi i8 [ %cmd.0377, %for.body26.sw.epilog_crit_edge ], [ %cmd.0377, %sw.bb49.sw.epilog_crit_edge ], [ %cmd.0377, %gpmi_chain_data_read.exit ], [ %cmd.0377, %gpmi_chain_data_write.exit ], [ %cmd.0377, %sw.bb40 ], [ %84, %if.end38 ], [ %cmd.0377, %gpmi_chain_wait_ready.exit ]
  %buf_read.1 = phi ptr [ %buf_read.0378, %for.body26.sw.epilog_crit_edge ], [ %buf_read.0378, %sw.bb49.sw.epilog_crit_edge ], [ %135, %gpmi_chain_data_read.exit ], [ %buf_read.0378, %gpmi_chain_data_write.exit ], [ %buf_read.0378, %sw.bb40 ], [ %buf_read.0378, %if.end38 ], [ %buf_read.0378, %gpmi_chain_wait_ready.exit ]
  %desc.1 = phi ptr [ %desc.0379, %for.body26.sw.epilog_crit_edge ], [ %desc.0379, %sw.bb49.sw.epilog_crit_edge ], [ %retval.0.i344, %gpmi_chain_data_read.exit ], [ %retval.0.i299, %gpmi_chain_data_write.exit ], [ %call43, %sw.bb40 ], [ %call39, %if.end38 ], [ %retval.0.i.i.i, %gpmi_chain_wait_ready.exit ]
  %tobool61.not = icmp eq ptr %desc.1, null
  br i1 %tobool61.not, label %sw.epilog.unmap_crit_edge, label %sw.epilog.for.inc64_crit_edge

sw.epilog.unmap_crit_edge:                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %unmap

sw.epilog.for.inc64_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %.pre = add nuw i32 %i.1372, 1
  br label %for.inc64

for.inc64:                                        ; preds = %sw.epilog.for.inc64_crit_edge, %land.lhs.true.for.inc64_crit_edge
  %inc65.pre-phi = phi i32 [ %.pre, %sw.epilog.for.inc64_crit_edge ], [ %add, %land.lhs.true.for.inc64_crit_edge ]
  %direct.3 = phi i8 [ %direct.2, %sw.epilog.for.inc64_crit_edge ], [ %direct.0370, %land.lhs.true.for.inc64_crit_edge ]
  %buf_len.2 = phi i32 [ %buf_len.1, %sw.epilog.for.inc64_crit_edge ], [ %buf_len.0375, %land.lhs.true.for.inc64_crit_edge ]
  %nbufs.2 = phi i32 [ %nbufs.1, %sw.epilog.for.inc64_crit_edge ], [ %nbufs.0376, %land.lhs.true.for.inc64_crit_edge ]
  %cmd.2 = phi i8 [ %cmd.1, %sw.epilog.for.inc64_crit_edge ], [ %84, %land.lhs.true.for.inc64_crit_edge ]
  %buf_read.2 = phi ptr [ %buf_read.1, %sw.epilog.for.inc64_crit_edge ], [ %buf_read.0378, %land.lhs.true.for.inc64_crit_edge ]
  %desc.2 = phi ptr [ %desc.1, %sw.epilog.for.inc64_crit_edge ], [ %desc.0379, %land.lhs.true.for.inc64_crit_edge ]
  %169 = ptrtoint ptr %ninstrs24 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %ninstrs24, align 4
  %cmp25 = icmp ult i32 %inc65.pre-phi, %170
  br i1 %cmp25, label %for.inc64.for.body26_crit_edge, label %for.inc64.do.body67_crit_edge

for.inc64.do.body67_crit_edge:                    ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body67

for.inc64.for.body26_crit_edge:                   ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body26

do.body67:                                        ; preds = %for.inc64.do.body67_crit_edge, %do.end.do.body67_crit_edge
  %direct.0.lcssa = phi i8 [ 0, %do.end.do.body67_crit_edge ], [ %direct.3, %for.inc64.do.body67_crit_edge ]
  %buf_len.0.lcssa = phi i32 [ 0, %do.end.do.body67_crit_edge ], [ %buf_len.2, %for.inc64.do.body67_crit_edge ]
  %nbufs.0.lcssa = phi i32 [ 0, %do.end.do.body67_crit_edge ], [ %nbufs.2, %for.inc64.do.body67_crit_edge ]
  %buf_read.0.lcssa = phi ptr [ null, %do.end.do.body67_crit_edge ], [ %buf_read.2, %for.inc64.do.body67_crit_edge ]
  %desc.0.lcssa = phi ptr [ null, %do.end.do.body67_crit_edge ], [ %desc.2, %for.inc64.do.body67_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpmi_nfc_exec_op.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gpmi_nfc_exec_op, %if.then79)) #12
          to label %do.end83 [label %if.then79], !srcloc !283

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #14
  %171 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpmi_nfc_exec_op.__UNIQUE_ID_ddebug274, ptr noundef %172, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.43) #12
  br label %do.end83

do.end83:                                         ; preds = %if.then79, %do.body67
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nbufs.0.lcssa)
  %cmp84 = icmp sgt i32 %nbufs.0.lcssa, 1
  br i1 %cmp84, label %do.end88, label %if.end90

do.end88:                                         ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #14
  %173 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %174, ptr noundef nonnull @.str.47) #15
  br label %unmap

if.end90:                                         ; preds = %do.end83
  %bch = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 13
  %175 = ptrtoint ptr %bch to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %bch, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool91.not = icmp eq i8 %176, 0
  br i1 %tobool91.not, label %if.end90.if.end102_crit_edge, label %do.body93

if.end90.if.end102_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102

do.body93:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !306
  call void @arm_heavy_mb() #12
  %bch_flashlayout0 = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 14
  %177 = ptrtoint ptr %bch_flashlayout0 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %bch_flashlayout0, align 8
  %179 = call i32 @llvm.bswap.i32(i32 %178)
  %bch_regs = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 3, i32 1
  %180 = ptrtoint ptr %bch_regs to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %bch_regs, align 4
  %add.ptr = getelementptr i8, ptr %181, i32 128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %179) #12, !srcloc !288
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !307
  call void @arm_heavy_mb() #12
  %bch_flashlayout1 = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 15
  %182 = ptrtoint ptr %bch_flashlayout1 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %bch_flashlayout1, align 4
  %184 = call i32 @llvm.bswap.i32(i32 %183)
  %185 = ptrtoint ptr %bch_regs to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %bch_regs, align 4
  %add.ptr101 = getelementptr i8, ptr %186, i32 144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 %184) #12, !srcloc !288
  br label %if.end102

if.end102:                                        ; preds = %do.body93, %if.end90.if.end102_crit_edge
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %desc.0.lcssa, i32 0, i32 6
  %187 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr @dma_irq_callback, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %desc.0.lcssa, i32 0, i32 8
  %188 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %1, ptr %callback_param, align 4
  %dma_done = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 21
  %189 = ptrtoint ptr %dma_done to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 0, ptr %dma_done, align 4
  %wait.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 21, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.64, ptr noundef nonnull @init_completion.__key) #12
  %190 = ptrtoint ptr %bch to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %bch, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool104.not = icmp eq i8 %191, 0
  %tobool106.not = icmp eq ptr %buf_read.0.lcssa, null
  %or.cond = select i1 %tobool104.not, i1 true, i1 %tobool106.not
  br i1 %or.cond, label %if.end102.if.end114_crit_edge, label %do.body108

if.end102.if.end114_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114

do.body108:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !308
  call void @arm_heavy_mb() #12
  %bch_regs112 = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 3, i32 1
  %192 = ptrtoint ptr %bch_regs112 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %bch_regs112, align 4
  %add.ptr113 = getelementptr i8, ptr %193, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 65536) #12, !srcloc !288
  %bch_done = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 6
  %194 = ptrtoint ptr %bch_done to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 0, ptr %bch_done, align 4
  %wait.i345 = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 6, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i345, ptr noundef nonnull @.str.64, ptr noundef nonnull @init_completion.__key) #12
  br label %if.end114

if.end114:                                        ; preds = %do.body108, %if.end102.if.end114_crit_edge
  %bch_completion.0 = phi ptr [ %bch_done, %do.body108 ], [ null, %if.end102.if.end114_crit_edge ]
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %desc.0.lcssa, i32 0, i32 4
  %195 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %tx_submit.i, align 4
  %call.i346 = call i32 %196(ptr noundef %desc.0.lcssa) #12
  %dma_chans.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 20
  %197 = ptrtoint ptr %dma_chans.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %dma_chans.i, align 8
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %198, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %200, i32 0, i32 50
  %201 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %device_issue_pending.i, align 4
  call void %202(ptr noundef %198) #12
  %call118 = call i32 @wait_for_completion_timeout(ptr noundef %dma_done, i32 noundef 100) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %do.end123, label %if.end125

do.end123:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #14
  %203 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %204, ptr noundef nonnull @.str.49) #15
  call fastcc void @gpmi_dump_info(ptr noundef %1)
  br label %unmap

if.end125:                                        ; preds = %if.end114
  %205 = ptrtoint ptr %bch to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %bch, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool127.not = icmp eq i8 %206, 0
  %or.cond272 = select i1 %tobool127.not, i1 true, i1 %tobool106.not
  br i1 %or.cond272, label %if.end125.do.body141_crit_edge, label %if.then130

if.end125.do.body141_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body141

if.then130:                                       ; preds = %if.end125
  %call132 = call i32 @wait_for_completion_timeout(ptr noundef %bch_completion.0, i32 noundef 100) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %do.end137, label %if.then130.do.body141_crit_edge

if.then130.do.body141_crit_edge:                  ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body141

do.end137:                                        ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #14
  %207 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %208, ptr noundef nonnull @.str.52) #15
  call fastcc void @gpmi_dump_info(ptr noundef %1)
  br label %unmap

do.body141:                                       ; preds = %if.then130.do.body141_crit_edge, %if.end125.do.body141_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !309
  call void @arm_heavy_mb() #12
  %bch_regs145 = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 3, i32 1
  %209 = ptrtoint ptr %bch_regs145 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %bch_regs145, align 4
  %add.ptr146 = getelementptr i8, ptr %210, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr146, i32 65536) #12, !srcloc !288
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !293
  call void @arm_heavy_mb() #12
  %211 = ptrtoint ptr %bch_regs145 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %bch_regs145, align 4
  %add.ptr.i347 = getelementptr i8, ptr %212, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i347, i32 16777216) #12, !srcloc !288
  br label %unmap

unmap:                                            ; preds = %do.body141, %do.end137, %do.end123, %do.end88, %sw.epilog.unmap_crit_edge
  %direct.4 = phi i8 [ %direct.0.lcssa, %do.end88 ], [ %direct.0.lcssa, %do.end123 ], [ %direct.0.lcssa, %do.body141 ], [ %direct.0.lcssa, %do.end137 ], [ %direct.2, %sw.epilog.unmap_crit_edge ]
  %tobool162.not = phi i1 [ false, %do.end88 ], [ false, %do.end123 ], [ true, %do.body141 ], [ false, %do.end137 ], [ false, %sw.epilog.unmap_crit_edge ]
  %ret.0 = phi i32 [ -22, %do.end88 ], [ -110, %do.end123 ], [ 0, %do.body141 ], [ -110, %do.end137 ], [ -6, %sw.epilog.unmap_crit_edge ]
  %buf_len.3 = phi i32 [ %buf_len.0.lcssa, %do.end88 ], [ %buf_len.0.lcssa, %do.end123 ], [ %buf_len.0.lcssa, %do.body141 ], [ %buf_len.0.lcssa, %do.end137 ], [ %buf_len.1, %sw.epilog.unmap_crit_edge ]
  %buf_read.3 = phi ptr [ %buf_read.0.lcssa, %do.end88 ], [ %buf_read.0.lcssa, %do.end123 ], [ %buf_read.0.lcssa, %do.body141 ], [ %buf_read.0.lcssa, %do.end137 ], [ %buf_read.1, %sw.epilog.unmap_crit_edge ]
  %213 = ptrtoint ptr %ntransfers to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %ntransfers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %cmp149384 = icmp sgt i32 %214, 0
  br i1 %cmp149384, label %unmap.for.body150_crit_edge, label %unmap.for.end161_crit_edge

unmap.for.end161_crit_edge:                       ; preds = %unmap
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end161

unmap.for.body150_crit_edge:                      ; preds = %unmap
  br label %for.body150

for.body150:                                      ; preds = %if.end158.for.body150_crit_edge, %unmap.for.body150_crit_edge
  %i.2385 = phi i32 [ %inc160, %if.end158.for.body150_crit_edge ], [ 0, %unmap.for.body150_crit_edge ]
  %direction153 = getelementptr %struct.gpmi_nand_data, ptr %1, i32 0, i32 11, i32 %i.2385, i32 2
  %215 = ptrtoint ptr %direction153 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %direction153, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %216)
  %cmp154.not = icmp eq i32 %216, 3
  br i1 %cmp154.not, label %for.body150.if.end158_crit_edge, label %if.then155

for.body150.if.end158_crit_edge:                  ; preds = %for.body150
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

if.then155:                                       ; preds = %for.body150
  call void @__sanitizer_cov_trace_pc() #14
  %217 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dev, align 4
  %sgl = getelementptr %struct.gpmi_nand_data, ptr %1, i32 0, i32 11, i32 %i.2385, i32 1
  call void @dma_unmap_sg_attrs(ptr noundef %218, ptr noundef %sgl, i32 noundef 1, i32 noundef %216, i32 noundef 0) #12
  br label %if.end158

if.end158:                                        ; preds = %if.then155, %for.body150.if.end158_crit_edge
  %inc160 = add nuw nsw i32 %i.2385, 1
  %219 = ptrtoint ptr %ntransfers to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %ntransfers, align 8
  %cmp149 = icmp slt i32 %inc160, %220
  br i1 %cmp149, label %if.end158.for.body150_crit_edge, label %if.end158.for.end161_crit_edge

if.end158.for.end161_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end161

if.end158.for.body150_crit_edge:                  ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body150

for.end161:                                       ; preds = %if.end158.for.end161_crit_edge, %unmap.for.end161_crit_edge
  %tobool164.not = icmp ne ptr %buf_read.3, null
  %or.cond273 = select i1 %tobool162.not, i1 %tobool164.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %direct.4)
  %tobool166.not = icmp eq i8 %direct.4, 0
  %or.cond359 = select i1 %or.cond273, i1 %tobool166.not, i1 false
  br i1 %or.cond359, label %if.then167, label %for.end161.if.end169_crit_edge

for.end161.if.end169_crit_edge:                   ; preds = %for.end161
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end169

if.then167:                                       ; preds = %for.end161
  %data_buffer_dma = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 16
  %221 = ptrtoint ptr %data_buffer_dma to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %data_buffer_dma, align 8
  %bch.i348 = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 13
  %223 = ptrtoint ptr %bch.i348 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %bch.i348, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool.not.i349 = icmp eq i8 %224, 0
  br i1 %tobool.not.i349, label %if.then167.gpmi_raw_len_to_len.exit_crit_edge, label %if.then.i351

if.then167.gpmi_raw_len_to_len.exit_crit_edge:    ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpmi_raw_len_to_len.exit

if.then.i351:                                     ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #14
  %ecc_chunk_size.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 4
  %225 = ptrtoint ptr %ecc_chunk_size.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %ecc_chunk_size.i, align 4
  %neg.i = sub i32 0, %226
  %and.i350 = and i32 %buf_len.3, %neg.i
  br label %gpmi_raw_len_to_len.exit

gpmi_raw_len_to_len.exit:                         ; preds = %if.then.i351, %if.then167.gpmi_raw_len_to_len.exit_crit_edge
  %retval.0.i352 = phi i32 [ %and.i350, %if.then.i351 ], [ %buf_len.3, %if.then167.gpmi_raw_len_to_len.exit_crit_edge ]
  %227 = call ptr @memcpy(ptr %buf_read.3, ptr %222, i32 %retval.0.i352)
  br label %if.end169

if.end169:                                        ; preds = %gpmi_raw_len_to_len.exit, %for.end161.if.end169_crit_edge
  %bch170 = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 13
  %228 = ptrtoint ptr %bch170 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 0, ptr %bch170, align 4
  br label %out_pm

out_pm:                                           ; preds = %if.end169, %if.then3.i.i, %if.then18.i.out_pm_crit_edge, %do.end.i
  %ret.1 = phi i32 [ %ret.0, %if.end169 ], [ %call.i277, %do.end.i ], [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.then18.i.out_pm_crit_edge ]
  %229 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dev, align 4
  %call.i353 = call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %230, i32 0, i32 12, i32 22
  %231 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %231)
  store volatile i64 %call.i353, ptr %last_busy.i, align 8
  %232 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %dev, align 4
  %call.i354 = call i32 @__pm_runtime_suspend(ptr noundef %233, i32 noundef 13) #12
  br label %cleanup

cleanup:                                          ; preds = %out_pm, %do.end11.i.i.i.i, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_pm ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.then3.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmi_setup_interface(ptr nocapture noundef readonly %chip, i32 noundef %chipnr, ptr noundef %conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %conf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 0
  %4 = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1
  %retval.0.i = select i1 %cmp.i.i, ptr %4, ptr inttoptr (i32 -22 to ptr)
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tRC_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 22
  %6 = ptrtoint ptr %tRC_min to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tRC_min, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25001, i32 %7)
  %cmp = icmp ult i32 %7, 25001
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %.off = add i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chipnr)
  %cmp14 = icmp slt i32 %chipnr, 0
  br i1 %cmp14, label %if.end13.cleanup_crit_edge, label %if.end16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %max_chain_delay.i = getelementptr inbounds %struct.gpmi_devdata, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %max_chain_delay.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_chain_delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29999, i32 %7)
  %cmp.i25 = icmp ugt i32 %7, 29999
  br i1 %cmp.i25, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %clk_rate.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 22000000, ptr %clk_rate.i, align 4
  br label %if.else174.i.i.i

if.else.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 24999, i32 %7)
  %cmp3.i = icmp ugt i32 %7, 24999
  %clk_rate5.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 4, i32 1
  br i1 %cmp3.i, label %if.then4.i, label %if.else6.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %clk_rate5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 80000000, ptr %clk_rate5.i, align 4
  br label %if.else174.i.i.i

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %clk_rate5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 100000000, ptr %clk_rate5.i, align 4
  br label %if.else174.i.i.i

if.else174.i.i.i:                                 ; preds = %if.else6.i, %if.then4.i, %if.then.i
  %wrn_dly_sel.0.i = phi i32 [ 0, %if.then.i ], [ 12582912, %if.then4.i ], [ 12582912, %if.else6.i ]
  %clk_rate9.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %clk_rate9.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clk_rate9.i, align 4
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %20, i64 1000000000000) #17, !srcloc !310
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %21, 1
  %conv.i = trunc i64 %asmresult1.i.i.i.i to i32
  %tALS_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 6
  %22 = ptrtoint ptr %tALS_min.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tALS_min.i, align 8
  %conv10.i = zext i32 %23 to i64
  %conv11.i = and i64 %asmresult1.i.i.i.i, 4294967295
  %add.i = add nsw i64 %conv11.i, -1
  %sub.i = add nsw i64 %add.i, %conv10.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp184.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp184.i, label %if.then188.i, label %if.else194.i, !prof !282

if.then188.i:                                     ; preds = %if.else174.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv189.i = trunc i64 %sub.i to i32
  %div192.i = udiv i32 %conv189.i, %conv.i
  br label %if.else406.i

if.else194.i:                                     ; preds = %if.else174.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i, i64 %sub.i) #17, !srcloc !310
  %asmresult1.i.i = extractvalue { i64, i64 } %24, 1
  %extract.t1547.i = trunc i64 %asmresult1.i.i to i32
  br label %if.else406.i

if.else406.i:                                     ; preds = %if.else194.i, %if.then188.i
  %_tmp.0.off0.i = phi i32 [ %div192.i, %if.then188.i ], [ %extract.t1547.i, %if.else194.i ]
  %tDS_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 18
  %25 = ptrtoint ptr %tDS_min.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tDS_min.i, align 8
  %conv203.i = zext i32 %26 to i64
  %sub206.i = add nsw i64 %add.i, %conv203.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub206.i)
  %cmp408.i = icmp ult i64 %sub206.i, 4294967296
  br i1 %cmp408.i, label %if.then416.i, label %if.else422.i, !prof !282

if.then416.i:                                     ; preds = %if.else406.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv417.i = trunc i64 %sub206.i to i32
  %div420.i = udiv i32 %conv417.i, %conv.i
  br label %if.else634.i

if.else422.i:                                     ; preds = %if.else406.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i, i64 %sub206.i) #17, !srcloc !310
  %asmresult1.i1307.i = extractvalue { i64, i64 } %27, 1
  %extract.t1549.i = trunc i64 %asmresult1.i1307.i to i32
  br label %if.else634.i

if.else634.i:                                     ; preds = %if.else422.i, %if.then416.i
  %_tmp202.0.off0.i = phi i32 [ %div420.i, %if.then416.i ], [ %extract.t1549.i, %if.else422.i ]
  %tDH_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 17
  %28 = ptrtoint ptr %tDH_min.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tDH_min.i, align 4
  %conv431.i = zext i32 %29 to i64
  %sub434.i = add nsw i64 %add.i, %conv431.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub434.i)
  %cmp636.i = icmp ult i64 %sub434.i, 4294967296
  br i1 %cmp636.i, label %if.then644.i, label %if.else650.i, !prof !282

if.then644.i:                                     ; preds = %if.else634.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv645.i = trunc i64 %sub434.i to i32
  %div648.i = udiv i32 %conv645.i, %conv.i
  br label %if.else863.i

if.else650.i:                                     ; preds = %if.else634.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i, i64 %sub434.i) #17, !srcloc !310
  %asmresult1.i1335.i = extractvalue { i64, i64 } %30, 1
  %extract.t1540.i = trunc i64 %asmresult1.i1335.i to i32
  br label %if.else863.i

if.else863.i:                                     ; preds = %if.else650.i, %if.then644.i
  %_tmp430.0.off0.ph.i = phi i32 [ %extract.t1540.i, %if.else650.i ], [ %div648.i, %if.then644.i ]
  %tWB_max1595.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 32
  %31 = ptrtoint ptr %tWB_max1595.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tWB_max1595.i, align 8
  %conv6591596.i = zext i32 %32 to i64
  %tR_max1597.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 3
  %33 = ptrtoint ptr %tR_max1597.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %tR_max1597.i, align 8
  %add6621598.i = add nsw i64 %add.i, %conv6591596.i
  %sub6631599.i = add i64 %add6621598.i, %34
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub6631599.i)
  %cmp865.i = icmp ult i64 %sub6631599.i, 4294967296
  br i1 %cmp865.i, label %if.then873.i, label %if.else879.i, !prof !282

if.then873.i:                                     ; preds = %if.else863.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv874.i = trunc i64 %sub6631599.i to i32
  %div877.i = udiv i32 %conv874.i, %conv.i
  br label %if.end883.i

if.else879.i:                                     ; preds = %if.else863.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i, i64 %sub6631599.i) #17, !srcloc !310
  %asmresult1.i1363.i = extractvalue { i64, i64 } %35, 1
  %extract.t1544.i = trunc i64 %asmresult1.i1363.i to i32
  br label %if.end883.i

if.end883.i:                                      ; preds = %if.else879.i, %if.then873.i
  %_tmp658.0.off0.i = phi i32 [ %div877.i, %if.then873.i ], [ %extract.t1544.i, %if.else879.i ]
  %shl887.i = shl i32 %_tmp.0.off0.i, 16
  %and888.i = and i32 %shl887.i, 16711680
  %shl889.i = shl i32 %_tmp430.0.off0.ph.i, 8
  %and890.i = and i32 %shl889.i, 65280
  %and893.i = and i32 %_tmp202.0.off0.i, 255
  %or891.i = or i32 %and893.i, %and890.i
  %or894.i = or i32 %or891.i, %and888.i
  %timing0.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 4, i32 2
  %36 = ptrtoint ptr %timing0.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or894.i, ptr %timing0.i, align 4
  %conv895.i = shl i32 %_tmp658.0.off0.i, 28
  %timing1.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 4, i32 3
  %37 = ptrtoint ptr %timing1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv895.i, ptr %timing1.i, align 4
  %mul905.i = mul i32 %_tmp202.0.off0.i, %conv.i
  %tREA_max.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 23
  %38 = ptrtoint ptr %tREA_max.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tREA_max.i, align 4
  %add906.i = sub i32 4000, %mul905.i
  %sub907.i = add i32 %add906.i, %39
  %mul908.i = shl i32 %sub907.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul908.i)
  %cmp909.i = icmp sgt i32 %mul908.i, 0
  br i1 %cmp909.i, label %if.end914.i, label %if.end883.i.if.end914.thread.i_crit_edge

if.end883.i.if.end914.thread.i_crit_edge:         ; preds = %if.end883.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end914.thread.i

if.end914.i:                                      ; preds = %if.end883.i
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv.i)
  %cmp899.i = icmp ult i32 %15, %conv.i
  %div9021275.i = zext i1 %cmp899.i to i32
  %reference_period_ps.0.i = lshr i32 %conv.i, %div9021275.i
  %use_half_period.0.off0.i = select i1 %cmp899.i, i32 65536, i32 0
  %div912.i = udiv i32 %mul908.i, %reference_period_ps.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %reference_period_ps.0.i, i32 %mul908.i)
  %tobool918.not.i = icmp ugt i32 %reference_period_ps.0.i, %mul908.i
  %shl920.i = shl i32 %div912.i, 12
  %and921.i = and i32 %shl920.i, 61440
  %or922.i = or i32 %wrn_dly_sel.0.i, %use_half_period.0.off0.i
  %or926.i = or i32 %or922.i, %and921.i
  %or928.i = or i32 %or926.i, 131072
  br i1 %tobool918.not.i, label %if.end914.i.if.end914.thread.i_crit_edge, label %if.end914.i.gpmi_nfc_compute_timings.exit_crit_edge

if.end914.i.gpmi_nfc_compute_timings.exit_crit_edge: ; preds = %if.end914.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpmi_nfc_compute_timings.exit

if.end914.i.if.end914.thread.i_crit_edge:         ; preds = %if.end914.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end914.thread.i

if.end914.thread.i:                               ; preds = %if.end914.i.if.end914.thread.i_crit_edge, %if.end883.i.if.end914.thread.i_crit_edge
  br label %gpmi_nfc_compute_timings.exit

gpmi_nfc_compute_timings.exit:                    ; preds = %if.end914.thread.i, %if.end914.i.gpmi_nfc_compute_timings.exit_crit_edge
  %40 = phi i32 [ %wrn_dly_sel.0.i, %if.end914.thread.i ], [ %or928.i, %if.end914.i.gpmi_nfc_compute_timings.exit_crit_edge ]
  %ctrl1n.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 4, i32 4
  %41 = ptrtoint ptr %ctrl1n.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %ctrl1n.i, align 4
  %hw = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %hw, align 8
  br label %cleanup

cleanup:                                          ; preds = %gpmi_nfc_compute_timings.exit, %if.end13.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ 0, %gpmi_nfc_compute_timings.exit ], [ -524, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmi_ecc_read_page(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %bch_geometry.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5
  %ecc_strength1.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %ecc_strength1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ecc_strength1.i, align 4
  %shr.i = lshr i32 %3, 1
  %4 = ptrtoint ptr %bch_geometry.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bch_geometry.i, align 4
  %ecc_chunk_size.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 4
  %6 = ptrtoint ptr %ecc_chunk_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ecc_chunk_size.i, align 4
  %ecc_chunk_count.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 5
  %8 = ptrtoint ptr %ecc_chunk_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ecc_chunk_count.i, align 4
  %sub.i = shl i32 %9, 24
  %shl.i = add i32 %sub.i, -16777216
  %metadata_size.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 3
  %10 = ptrtoint ptr %metadata_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %metadata_size.i, align 4
  %shl3.i = shl i32 %11, 16
  %and4.i = and i32 %shl3.i, 16711680
  %or.i = or i32 %and4.i, %shl.i
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %.off.i = add i32 %15, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  %shl12.i = shl i32 %shr.i, 11
  %and13.i = and i32 %shl12.i, 63488
  %shl14.i = shl i32 %shr.i, 12
  %and15.i = and i32 %shl14.i, 61440
  %cond.i = select i1 %switch.i, i32 %and13.i, i32 %and15.i
  %or16.i = or i32 %cond.i, %or.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %5)
  %cmp28.i = icmp eq i32 %5, 14
  %phi.sel.i = select i1 %cmp28.i, i32 1024, i32 0
  %16 = select i1 %switch.i, i32 %phi.sel.i, i32 0
  %or30.i = or i32 %or16.i, %16
  %shr43.i = lshr i32 %7, 2
  %and44.i = and i32 %shr43.i, 1023
  %and46.i = and i32 %7, 4095
  %cond48.i = select i1 %switch.i, i32 %and44.i, i32 %and46.i
  %or49.i = or i32 %or30.i, %cond48.i
  %bch_flashlayout0.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 14
  %17 = ptrtoint ptr %bch_flashlayout0.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or49.i, ptr %bch_flashlayout0.i, align 8
  %page_size.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 2
  %18 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %page_size.i, align 4
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %13, align 4
  %.off153.i = add i32 %21, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off153.i)
  %switch154.i = icmp ult i32 %.off153.i, 3
  %cond70.i = select i1 %switch154.i, i32 %and13.i, i32 %and15.i
  %22 = select i1 %switch154.i, i32 %phi.sel.i, i32 0
  %cond105.i = select i1 %switch154.i, i32 %and44.i, i32 %and46.i
  %shl50.i = shl i32 %19, 16
  %or71.i = or i32 %cond70.i, %shl50.i
  %or87.i = or i32 %or71.i, %22
  %or106.i = or i32 %or87.i, %cond105.i
  %bch_flashlayout1.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 15
  %23 = ptrtoint ptr %bch_flashlayout1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or106.i, ptr %bch_flashlayout1.i, align 4
  %bch = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 13
  %24 = ptrtoint ptr %bch to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %bch, align 4
  %call2 = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef %buf, i32 noundef %19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %25 = ptrtoint ptr %ecc_chunk_count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ecc_chunk_count.i, align 4
  %auxiliary_status_offset = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 8
  %27 = ptrtoint ptr %auxiliary_status_offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %auxiliary_status_offset, align 4
  %call3 = tail call fastcc i32 @gpmi_count_bitflips(ptr noundef %chip, ptr noundef %buf, i32 noundef 0, i32 noundef %26, i32 noundef %28)
  %auxiliary_virt = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 17
  %swap_block_mark.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 7
  %29 = ptrtoint ptr %swap_block_mark.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %swap_block_mark.i, align 8, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.end.block_mark_swapping.exit_crit_edge, label %if.end.i

if.end.block_mark_swapping.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %block_mark_swapping.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %auxiliary_virt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %auxiliary_virt, align 4
  %block_mark_bit_offset.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 10
  %33 = ptrtoint ptr %block_mark_bit_offset.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %block_mark_bit_offset.i, align 4
  %block_mark_byte_offset.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 9
  %35 = ptrtoint ptr %block_mark_byte_offset.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %block_mark_byte_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %36
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %add.ptr.i, align 1
  %conv.i = zext i8 %38 to i32
  %shr.i29 = lshr i32 %conv.i, %34
  %arrayidx1.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %39 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %40 to i32
  %sub.i30 = sub i32 8, %34
  %shl.i31 = shl i32 %conv2.i, %sub.i30
  %or.i32 = or i32 %shl.i31, %shr.i29
  %conv3.i = trunc i32 %or.i32 to i8
  %41 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %32, align 1
  store i8 %conv3.i, ptr %32, align 1
  %notmask.i = shl nsw i32 -1, %34
  %43 = load i8, ptr %add.ptr.i, align 1
  %conv10.i = zext i8 %43 to i32
  %conv11.i = xor i32 %notmask.i, -1
  %and.i = and i32 %conv10.i, %conv11.i
  %conv12.i = zext i8 %42 to i32
  %shl13.i = shl i32 %conv12.i, %34
  %or14.i = or i32 %and.i, %shl13.i
  %conv15.i = trunc i32 %or14.i to i8
  store i8 %conv15.i, ptr %add.ptr.i, align 1
  %44 = load i8, ptr %arrayidx1.i, align 1
  %conv20.i = zext i8 %44 to i32
  %and22.i = and i32 %notmask.i, %conv20.i
  %shr25.i = lshr i32 %conv12.i, %sub.i30
  %or26.i = or i32 %and22.i, %shr25.i
  %conv27.i = trunc i32 %or26.i to i8
  store i8 %conv27.i, ptr %arrayidx1.i, align 1
  br label %block_mark_swapping.exit

block_mark_swapping.exit:                         ; preds = %if.end.i, %if.end.block_mark_swapping.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool4.not = icmp eq i32 %oob_required, 0
  br i1 %tobool4.not, label %block_mark_swapping.exit.cleanup_crit_edge, label %if.then5

block_mark_swapping.exit.cleanup_crit_edge:       ; preds = %block_mark_swapping.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %block_mark_swapping.exit
  call void @__sanitizer_cov_trace_pc() #14
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %45 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %47 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %oobsize, align 4
  %49 = call ptr @memset(ptr %46, i32 255, i32 %48)
  %50 = ptrtoint ptr %auxiliary_virt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %auxiliary_virt, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 1
  %54 = load ptr, ptr %oob_poi, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %53, ptr %54, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %block_mark_swapping.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %call3, %if.then5 ], [ %call3, %block_mark_swapping.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmi_ecc_write_page(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpmi_ecc_write_page.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gpmi_ecc_write_page, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !283

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpmi_ecc_write_page.__UNIQUE_ID_ddebug257, ptr noundef %3, ptr noundef nonnull @.str.37) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bch_geometry.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5
  %ecc_strength1.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %ecc_strength1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ecc_strength1.i, align 4
  %shr.i = lshr i32 %5, 1
  %6 = ptrtoint ptr %bch_geometry.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bch_geometry.i, align 4
  %ecc_chunk_size.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 4
  %8 = ptrtoint ptr %ecc_chunk_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ecc_chunk_size.i, align 4
  %ecc_chunk_count.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 5
  %10 = ptrtoint ptr %ecc_chunk_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ecc_chunk_count.i, align 4
  %sub.i = shl i32 %11, 24
  %shl.i = add i32 %sub.i, -16777216
  %metadata_size.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 3
  %12 = ptrtoint ptr %metadata_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %metadata_size.i, align 4
  %shl3.i = shl i32 %13, 16
  %and4.i = and i32 %shl3.i, 16711680
  %or.i = or i32 %and4.i, %shl.i
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %.off.i = add i32 %17, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  %shl12.i = shl i32 %shr.i, 11
  %and13.i = and i32 %shl12.i, 63488
  %shl14.i = shl i32 %shr.i, 12
  %and15.i = and i32 %shl14.i, 61440
  %cond.i = select i1 %switch.i, i32 %and13.i, i32 %and15.i
  %or16.i = or i32 %cond.i, %or.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %7)
  %cmp28.i = icmp eq i32 %7, 14
  %phi.sel.i = select i1 %cmp28.i, i32 1024, i32 0
  %18 = select i1 %switch.i, i32 %phi.sel.i, i32 0
  %or30.i = or i32 %or16.i, %18
  %shr43.i = lshr i32 %9, 2
  %and44.i = and i32 %shr43.i, 1023
  %and46.i = and i32 %9, 4095
  %cond48.i = select i1 %switch.i, i32 %and44.i, i32 %and46.i
  %or49.i = or i32 %or30.i, %cond48.i
  %bch_flashlayout0.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %bch_flashlayout0.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or49.i, ptr %bch_flashlayout0.i, align 8
  %page_size.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 2
  %20 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %page_size.i, align 4
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %15, align 4
  %.off153.i = add i32 %23, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off153.i)
  %switch154.i = icmp ult i32 %.off153.i, 3
  %cond70.i = select i1 %switch154.i, i32 %and13.i, i32 %and15.i
  %24 = select i1 %switch154.i, i32 %phi.sel.i, i32 0
  %cond105.i = select i1 %switch154.i, i32 %and44.i, i32 %and46.i
  %shl50.i = shl i32 %21, 16
  %or71.i = or i32 %cond70.i, %shl50.i
  %or87.i = or i32 %or71.i, %24
  %or106.i = or i32 %or87.i, %cond105.i
  %bch_flashlayout1.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 15
  %25 = ptrtoint ptr %bch_flashlayout1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or106.i, ptr %bch_flashlayout1.i, align 4
  %bch = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %bch to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %bch, align 4
  %auxiliary_virt = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 17
  %27 = ptrtoint ptr %auxiliary_virt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %auxiliary_virt, align 4
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %29 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %oob_poi, align 4
  %auxiliary_size = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 7
  %31 = ptrtoint ptr %auxiliary_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %auxiliary_size, align 4
  %33 = call ptr @memcpy(ptr %28, ptr %30, i32 %32)
  %swap_block_mark = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %swap_block_mark to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %swap_block_mark, align 8, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool5.not = icmp eq i8 %35, 0
  br i1 %tobool5.not, label %do.end.if.end10_crit_edge, label %if.then6

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then6:                                         ; preds = %do.end
  %data_buffer_dma = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 16
  %36 = ptrtoint ptr %data_buffer_dma to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data_buffer_dma, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %38 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %writesize, align 4
  %40 = call ptr @memcpy(ptr %37, ptr %buf, i32 %39)
  %41 = load ptr, ptr %data_buffer_dma, align 8
  %42 = ptrtoint ptr %swap_block_mark to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %swap_block_mark, align 8, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i, label %if.then6.if.end10_crit_edge, label %if.end.i

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %auxiliary_virt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %auxiliary_virt, align 4
  %block_mark_bit_offset.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 10
  %46 = ptrtoint ptr %block_mark_bit_offset.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %block_mark_bit_offset.i, align 4
  %block_mark_byte_offset.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 9
  %48 = ptrtoint ptr %block_mark_byte_offset.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %block_mark_byte_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %41, i32 %49
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %add.ptr.i, align 1
  %conv.i = zext i8 %51 to i32
  %shr.i27 = lshr i32 %conv.i, %47
  %arrayidx1.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %52 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %53 to i32
  %sub.i28 = sub i32 8, %47
  %shl.i29 = shl i32 %conv2.i, %sub.i28
  %or.i30 = or i32 %shl.i29, %shr.i27
  %conv3.i = trunc i32 %or.i30 to i8
  %54 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %45, align 1
  store i8 %conv3.i, ptr %45, align 1
  %notmask.i = shl nsw i32 -1, %47
  %56 = load i8, ptr %add.ptr.i, align 1
  %conv10.i = zext i8 %56 to i32
  %conv11.i = xor i32 %notmask.i, -1
  %and.i = and i32 %conv10.i, %conv11.i
  %conv12.i = zext i8 %55 to i32
  %shl13.i = shl i32 %conv12.i, %47
  %or14.i = or i32 %and.i, %shl13.i
  %conv15.i = trunc i32 %or14.i to i8
  store i8 %conv15.i, ptr %add.ptr.i, align 1
  %57 = load i8, ptr %arrayidx1.i, align 1
  %conv20.i = zext i8 %57 to i32
  %and22.i = and i32 %notmask.i, %conv20.i
  %shr25.i = lshr i32 %conv12.i, %sub.i28
  %or26.i = or i32 %and22.i, %shr25.i
  %conv27.i = trunc i32 %or26.i to i8
  store i8 %conv27.i, ptr %arrayidx1.i, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.end.i, %if.then6.if.end10_crit_edge, %do.end.if.end10_crit_edge
  %buf.addr.0 = phi ptr [ %buf, %do.end.if.end10_crit_edge ], [ %41, %if.then6.if.end10_crit_edge ], [ %41, %if.end.i ]
  %58 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %page_size.i, align 4
  %call11 = tail call i32 @nand_prog_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef %buf.addr.0, i32 noundef %59) #12
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmi_ecc_read_oob(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %2 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %4 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oobsize, align 4
  %6 = call ptr @memset(ptr %3, i32 255, i32 %5)
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %7 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %writesize, align 4
  %9 = load ptr, ptr %oob_poi, align 4
  %10 = load i32, ptr %oobsize, align 4
  %call4 = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef %8, ptr noundef %9, i32 noundef %10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then5, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then5:                                         ; preds = %if.end
  %15 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %oob_poi, align 4
  %call7 = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef %16, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then5.if.end11_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.end11:                                         ; preds = %if.then5.if.end11_crit_edge, %if.end.if.end11_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %call4, %entry.cleanup_crit_edge ], [ %call7, %if.then5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmi_ecc_write_oob(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  %of = alloca %struct.mtd_oob_region, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %of) #12
  %0 = ptrtoint ptr %of to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %of, align 8
  %call1 = call i32 @mtd_ooblayout_free(ptr noundef %chip, i32 noundef 0, ptr noundef nonnull %of) #12
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %of, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %memorg.i.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1
  %3 = ptrtoint ptr %memorg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %memorg.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.nand_is_slc.exit_crit_edge, !prof !297

if.end.nand_is_slc.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %nand_is_slc.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 1445, i32 noundef 9, ptr noundef nonnull @.str.39) #12
  %5 = ptrtoint ptr %memorg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load i32, ptr %memorg.i.i, align 8
  br label %nand_is_slc.exit

nand_is_slc.exit:                                 ; preds = %do.end.i, %if.end.nand_is_slc.exit_crit_edge
  %6 = phi i32 [ %4, %if.end.nand_is_slc.exit_crit_edge ], [ %.pr, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp21.i = icmp eq i32 %6, 1
  br i1 %cmp21.i, label %if.end4, label %nand_is_slc.exit.cleanup_crit_edge

nand_is_slc.exit.cleanup_crit_edge:               ; preds = %nand_is_slc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %nand_is_slc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %7 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %writesize, align 4
  %9 = ptrtoint ptr %of to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %of, align 8
  %add = add i32 %10, %8
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %11 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %oob_poi, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %10
  %13 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length, align 4
  %call7 = call i32 @nand_prog_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef %add, ptr noundef %add.ptr, i32 noundef %14) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %nand_is_slc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end4 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %nand_is_slc.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %of) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmi_ecc_read_page_raw(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %bch_geometry = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5
  %ecc_chunk_size = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 4
  %2 = ptrtoint ptr %ecc_chunk_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ecc_chunk_size, align 4
  %ecc_strength = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %ecc_strength to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ecc_strength, align 4
  %6 = ptrtoint ptr %bch_geometry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bch_geometry, align 4
  %mul = mul i32 %7, %5
  %raw_buffer = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %raw_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %raw_buffer, align 4
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %10 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %oob_poi, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %12 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %writesize, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %14 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %oobsize, align 4
  %add = add i32 %15, %13
  %call2 = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef %9, i32 noundef %add) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %swap_block_mark = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %swap_block_mark to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %swap_block_mark, align 8, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool3.not = icmp eq i8 %17, 0
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %do.body

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %9, align 1
  %20 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %writesize, align 4
  %arrayidx6 = getelementptr i8, ptr %9, i32 %21
  %22 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx6, align 1
  store i8 %23, ptr %9, align 1
  %24 = load i32, ptr %writesize, align 4
  %arrayidx9 = getelementptr i8, ptr %9, i32 %24
  %25 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %19, ptr %arrayidx9, align 1
  br label %if.end10

if.end10:                                         ; preds = %do.body, %if.end.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool11.not = icmp eq i32 %oob_required, 0
  br i1 %tobool11.not, label %if.end10.if.end13_crit_edge, label %if.then12

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %metadata_size = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 3
  %26 = ptrtoint ptr %metadata_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %metadata_size, align 4
  %28 = call ptr @memcpy(ptr %11, ptr %9, i32 %27)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge
  %metadata_size14 = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 3
  %29 = ptrtoint ptr %metadata_size14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %metadata_size14, align 4
  %mul15 = shl i32 %30, 3
  %ecc_chunk_count = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 5
  %31 = ptrtoint ptr %ecc_chunk_count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ecc_chunk_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp115.not = icmp eq i32 %32, 0
  br i1 %cmp115.not, label %if.end13.for.end_crit_edge, label %for.body.lr.ph

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end13
  %tobool16.not = icmp eq ptr %buf, null
  %mul18 = shl i32 %3, 3
  br label %for.body

for.body:                                         ; preds = %if.end36.for.body_crit_edge, %for.body.lr.ph
  %step.0119 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end36.for.body_crit_edge ]
  %oob_bit_off.0118 = phi i32 [ %mul15, %for.body.lr.ph ], [ %add38, %if.end36.for.body_crit_edge ]
  %src_bit_off.0117 = phi i32 [ %mul15, %for.body.lr.ph ], [ %add37, %if.end36.for.body_crit_edge ]
  %eccbits.0116 = phi i32 [ %mul, %for.body.lr.ph ], [ %eccbits.1, %if.end36.for.body_crit_edge ]
  br i1 %tobool16.not, label %for.body.if.end21_crit_edge, label %if.then17

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %mul19 = mul i32 %mul18, %step.0119
  tail call void @nand_extract_bits(ptr noundef nonnull %buf, i32 noundef %mul19, ptr noundef %9, i32 noundef %src_bit_off.0117, i32 noundef %mul18) #12
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %for.body.if.end21_crit_edge
  %add23 = add i32 %src_bit_off.0117, %mul18
  %33 = ptrtoint ptr %ecc_chunk_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ecc_chunk_count, align 4
  %sub = add i32 %34, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %step.0119, i32 %sub)
  %cmp25 = icmp eq i32 %step.0119, %sub
  br i1 %cmp25, label %land.lhs.true, label %if.end21.if.end33_crit_edge

if.end21.if.end33_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end21
  %add26 = add i32 %oob_bit_off.0118, %eccbits.0116
  %rem = and i32 %add26, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool27.not = icmp eq i32 %rem, 0
  br i1 %tobool27.not, label %land.lhs.true.if.end33_crit_edge, label %if.then28

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %sub31 = add i32 %eccbits.0116, 8
  %add32 = sub i32 %sub31, %rem
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %land.lhs.true.if.end33_crit_edge, %if.end21.if.end33_crit_edge
  %eccbits.1 = phi i32 [ %add32, %if.then28 ], [ %eccbits.0116, %land.lhs.true.if.end33_crit_edge ], [ %eccbits.0116, %if.end21.if.end33_crit_edge ]
  br i1 %tobool11.not, label %if.end33.if.end36_crit_edge, label %if.then35

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nand_extract_bits(ptr noundef %11, i32 noundef %oob_bit_off.0118, ptr noundef %9, i32 noundef %add23, i32 noundef %eccbits.1) #12
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end33.if.end36_crit_edge
  %add37 = add i32 %eccbits.1, %add23
  %add38 = add i32 %eccbits.1, %oob_bit_off.0118
  %inc = add nuw i32 %step.0119, 1
  %35 = ptrtoint ptr %ecc_chunk_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ecc_chunk_count, align 4
  %cmp = icmp ult i32 %inc, %36
  br i1 %cmp, label %if.end36.for.body_crit_edge, label %if.end36.for.end_crit_edge

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end36.for.end_crit_edge, %if.end13.for.end_crit_edge
  %oob_bit_off.0.lcssa = phi i32 [ %mul15, %if.end13.for.end_crit_edge ], [ %add38, %if.end36.for.end_crit_edge ]
  br i1 %tobool11.not, label %for.end.cleanup_crit_edge, label %if.then40

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then40:                                        ; preds = %for.end
  %div114 = lshr i32 %oob_bit_off.0.lcssa, 3
  %37 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %oobsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %div114)
  %cmp42 = icmp ugt i32 %38, %div114
  br i1 %cmp42, label %if.then43, label %if.then40.cleanup_crit_edge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then43:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %11, i32 %div114
  %39 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %writesize, align 4
  %add.ptr45 = getelementptr i8, ptr %9, i32 %40
  %add.ptr46 = getelementptr i8, ptr %add.ptr45, i32 %div114
  %sub48 = sub i32 %38, %div114
  %41 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr46, i32 %sub48)
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %if.then40.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ 0, %if.then40.cleanup_crit_edge ], [ 0, %if.then43 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmi_ecc_write_page_raw(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %bch_geometry = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5
  %ecc_chunk_size = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 4
  %2 = ptrtoint ptr %ecc_chunk_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ecc_chunk_size, align 4
  %ecc_strength = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %ecc_strength to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ecc_strength, align 4
  %6 = ptrtoint ptr %bch_geometry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bch_geometry, align 4
  %mul = mul i32 %7, %5
  %raw_buffer = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %raw_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %raw_buffer, align 4
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %10 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %oob_poi, align 4
  %tobool.not = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool2.not = icmp eq i32 %oob_required, 0
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %12 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %writesize, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %14 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %oobsize, align 4
  %add = add i32 %15, %13
  %16 = call ptr @memset(ptr %9, i32 255, i32 %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %metadata_size = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 3
  %17 = ptrtoint ptr %metadata_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %metadata_size, align 4
  %19 = call ptr @memcpy(ptr %9, ptr %11, i32 %18)
  %20 = load i32, ptr %metadata_size, align 4
  %mul4 = shl i32 %20, 3
  %ecc_chunk_count = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 5
  %21 = ptrtoint ptr %ecc_chunk_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ecc_chunk_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp107.not = icmp eq i32 %22, 0
  br i1 %cmp107.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %mul7 = shl i32 %3, 3
  br label %for.body

for.body:                                         ; preds = %if.end25.for.body_crit_edge, %for.body.lr.ph
  %step.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end25.for.body_crit_edge ]
  %oob_bit_off.0110 = phi i32 [ %mul4, %for.body.lr.ph ], [ %add27, %if.end25.for.body_crit_edge ]
  %dst_bit_off.0109 = phi i32 [ %mul4, %for.body.lr.ph ], [ %add26, %if.end25.for.body_crit_edge ]
  %eccbits.0108 = phi i32 [ %mul, %for.body.lr.ph ], [ %eccbits.1, %if.end25.for.body_crit_edge ]
  br i1 %tobool.not, label %for.body.if.end10_crit_edge, label %if.then6

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %mul8 = mul i32 %mul7, %step.0111
  tail call void @nand_extract_bits(ptr noundef %9, i32 noundef %dst_bit_off.0109, ptr noundef nonnull %buf, i32 noundef %mul8, i32 noundef %mul7) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %for.body.if.end10_crit_edge
  %add12 = add i32 %dst_bit_off.0109, %mul7
  %23 = ptrtoint ptr %ecc_chunk_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ecc_chunk_count, align 4
  %sub = add i32 %24, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %step.0111, i32 %sub)
  %cmp14 = icmp eq i32 %step.0111, %sub
  br i1 %cmp14, label %land.lhs.true, label %if.end10.if.end22_crit_edge

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end10
  %add15 = add i32 %oob_bit_off.0110, %eccbits.0108
  %rem = and i32 %add15, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool16.not = icmp eq i32 %rem, 0
  br i1 %tobool16.not, label %land.lhs.true.if.end22_crit_edge, label %if.then17

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %sub20 = add i32 %eccbits.0108, 8
  %add21 = sub i32 %sub20, %rem
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %land.lhs.true.if.end22_crit_edge, %if.end10.if.end22_crit_edge
  %eccbits.1 = phi i32 [ %add21, %if.then17 ], [ %eccbits.0108, %land.lhs.true.if.end22_crit_edge ], [ %eccbits.0108, %if.end10.if.end22_crit_edge ]
  br i1 %tobool2.not, label %if.end22.if.end25_crit_edge, label %if.then24

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nand_extract_bits(ptr noundef %9, i32 noundef %add12, ptr noundef %11, i32 noundef %oob_bit_off.0110, i32 noundef %eccbits.1) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22.if.end25_crit_edge
  %add26 = add i32 %eccbits.1, %add12
  %add27 = add i32 %eccbits.1, %oob_bit_off.0110
  %inc = add nuw i32 %step.0111, 1
  %25 = ptrtoint ptr %ecc_chunk_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ecc_chunk_count, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %if.end25.for.body_crit_edge, label %if.end25.for.end_crit_edge

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end25.for.end_crit_edge, %if.end.for.end_crit_edge
  %oob_bit_off.0.lcssa = phi i32 [ %mul4, %if.end.for.end_crit_edge ], [ %add27, %if.end25.for.end_crit_edge ]
  %div106 = lshr i32 %oob_bit_off.0.lcssa, 3
  br i1 %tobool2.not, label %for.end.if.end38_crit_edge, label %land.lhs.true29

for.end.if.end38_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

land.lhs.true29:                                  ; preds = %for.end
  %oobsize30 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %27 = ptrtoint ptr %oobsize30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %oobsize30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %div106)
  %cmp31 = icmp ugt i32 %28, %div106
  br i1 %cmp31, label %if.then32, label %land.lhs.true29.if.end38_crit_edge

land.lhs.true29.if.end38_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then32:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  %writesize33 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %29 = ptrtoint ptr %writesize33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %writesize33, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %30
  %add.ptr34 = getelementptr i8, ptr %add.ptr, i32 %div106
  %add.ptr35 = getelementptr i8, ptr %11, i32 %div106
  %sub37 = sub i32 %28, %div106
  %31 = call ptr @memcpy(ptr %add.ptr34, ptr %add.ptr35, i32 %sub37)
  br label %if.end38

if.end38:                                         ; preds = %if.then32, %land.lhs.true29.if.end38_crit_edge, %for.end.if.end38_crit_edge
  %swap_block_mark = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 7
  %32 = ptrtoint ptr %swap_block_mark to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %swap_block_mark, align 8, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool39.not = icmp eq i8 %33, 0
  br i1 %tobool39.not, label %if.end38.if.end46_crit_edge, label %do.body

if.end38.if.end46_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

do.body:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %9, align 1
  %writesize41 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %36 = ptrtoint ptr %writesize41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %writesize41, align 4
  %arrayidx42 = getelementptr i8, ptr %9, i32 %37
  %38 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx42, align 1
  store i8 %39, ptr %9, align 1
  %40 = load i32, ptr %writesize41, align 4
  %arrayidx45 = getelementptr i8, ptr %9, i32 %40
  %41 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %35, ptr %arrayidx45, align 1
  br label %if.end46

if.end46:                                         ; preds = %do.body, %if.end38.if.end46_crit_edge
  %writesize47 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %42 = ptrtoint ptr %writesize47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %writesize47, align 4
  %oobsize48 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %44 = ptrtoint ptr %oobsize48 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %oobsize48, align 4
  %add49 = add i32 %45, %43
  %call50 = tail call i32 @nand_prog_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef %9, i32 noundef %add49) #12
  ret i32 %call50
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmi_ecc_read_oob_raw(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gpmi_ecc_read_page_raw(ptr noundef %chip, ptr noundef null, i32 noundef 1, i32 noundef %page)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmi_ecc_write_oob_raw(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gpmi_ecc_write_page_raw(ptr noundef %chip, ptr noundef null, i32 noundef 1, i32 noundef %page)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmi_ecc_read_subpage(ptr noundef %chip, i32 noundef %offs, i32 noundef %len, ptr noundef %buf, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %bch_geometry = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5
  %size1 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %2 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size1, align 8
  %4 = ptrtoint ptr %bch_geometry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bch_geometry, align 4
  %ecc_strength2 = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %ecc_strength2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ecc_strength2, align 4
  %mul = mul i32 %7, %5
  %div263 = lshr i32 %mul, 3
  %div3 = udiv i32 %offs, %3
  %add = add i32 %offs, -1
  %sub = add i32 %add, %len
  %div4 = udiv i32 %sub, %3
  %swap_block_mark = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %swap_block_mark to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %swap_block_mark, align 8, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then:                                          ; preds = %entry
  %block_mark_byte_offset = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 9
  %10 = ptrtoint ptr %block_mark_byte_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %block_mark_byte_offset, align 4
  %div5 = udiv i32 %11, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %div4, i32 %div5)
  %cmp.not = icmp slt i32 %div4, %div5
  call void @__sanitizer_cov_trace_cmp4(i32 %div3, i32 %div5)
  %cmp6.not = icmp sgt i32 %div3, %div5
  %or.cond = or i1 %cmp.not, %cmp6.not
  br i1 %or.cond, label %if.then.if.end15_crit_edge, label %do.body

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpmi_ecc_read_subpage.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gpmi_ecc_read_subpage, %if.then12)) #12
          to label %do.end [label %if.then12], !srcloc !283

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpmi_ecc_read_subpage.__UNIQUE_ID_ddebug255, ptr noundef %13, ptr noundef nonnull @.str.41, i32 noundef %page, i32 noundef %div3, i32 noundef %div4, i32 noundef %div5) #12
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %call13 = tail call i32 @gpmi_ecc_read_page(ptr noundef %chip, ptr noundef %buf, i32 noundef 0, i32 noundef %page)
  br label %cleanup

if.end15:                                         ; preds = %if.then.if.end15_crit_edge, %entry.if.end15_crit_edge
  %metadata_size = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 3
  %14 = ptrtoint ptr %metadata_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %metadata_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %offs)
  %tobool16.not = icmp ugt i32 %3, %offs
  %add18 = add i32 %div263, %3
  %mul19 = mul i32 %add18, %div3
  %add20 = add i32 %15, %mul19
  %mul21 = mul i32 %div3, %3
  %meta.0 = select i1 %tobool16.not, i32 %15, i32 0
  %col.0 = select i1 %tobool16.not, i32 0, i32 %add20
  %buf.addr.0.idx = select i1 %tobool16.not, i32 0, i32 %mul21
  %buf.addr.0 = getelementptr i8, ptr %buf, i32 %buf.addr.0.idx
  %sub27 = sub i32 %div4, %div3
  %add28 = add i32 %sub27, 1
  %mul30 = mul i32 %add28, %add18
  %add31 = add i32 %meta.0, %mul30
  %shr = lshr i32 %7, 1
  %shl = shl i32 %sub27, 24
  %shl34 = shl i32 %meta.0, 16
  %and35 = and i32 %shl34, 16711680
  %or = or i32 %and35, %shl
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %.off272 = add i32 %19, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off272)
  %switch273 = icmp ult i32 %.off272, 3
  %shl44 = shl i32 %shr, 11
  %and45 = and i32 %shl44, 63488
  %shl46 = shl i32 %shr, 12
  %and47 = and i32 %shl46, 61440
  %cond = select i1 %switch273, i32 %and45, i32 %and47
  %or48 = or i32 %cond, %or
  br i1 %switch273, label %cond.true75, label %cond.false78

cond.true75:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %5)
  %cmp61 = icmp eq i32 %5, 14
  %phi.sel = select i1 %cmp61, i32 1024, i32 0
  %or63280 = or i32 %or48, %phi.sel
  %ecc_chunk_size = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 4
  %20 = ptrtoint ptr %ecc_chunk_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ecc_chunk_size, align 4
  %shr76 = lshr i32 %21, 2
  %and77 = and i32 %shr76, 1023
  br label %cond.end81

cond.false78:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %ecc_chunk_size79 = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 4
  %22 = ptrtoint ptr %ecc_chunk_size79 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ecc_chunk_size79, align 4
  %and80 = and i32 %23, 4095
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false78, %cond.true75
  %or63281 = phi i32 [ %or63280, %cond.true75 ], [ %or48, %cond.false78 ]
  %cond82 = phi i32 [ %and77, %cond.true75 ], [ %and80, %cond.false78 ]
  %or83 = or i32 %cond82, %or63281
  %bch_flashlayout0 = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 14
  %24 = ptrtoint ptr %bch_flashlayout0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or83, ptr %bch_flashlayout0, align 8
  %shl84 = shl i32 %add31, 16
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %17, align 4
  %.off268 = add i32 %26, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off268)
  %switch269 = icmp ult i32 %.off268, 3
  %cond104 = select i1 %switch269, i32 %and45, i32 %and47
  %or105 = or i32 %cond104, %shl84
  br i1 %switch269, label %cond.true134, label %cond.false138

cond.true134:                                     ; preds = %cond.end81
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %5)
  %cmp119 = icmp eq i32 %5, 14
  %phi.sel265 = select i1 %cmp119, i32 1024, i32 0
  %or122283 = or i32 %or105, %phi.sel265
  %ecc_chunk_size135 = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 4
  %27 = ptrtoint ptr %ecc_chunk_size135 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ecc_chunk_size135, align 4
  %shr136 = lshr i32 %28, 2
  %and137 = and i32 %shr136, 1023
  br label %cond.end141

cond.false138:                                    ; preds = %cond.end81
  call void @__sanitizer_cov_trace_pc() #14
  %ecc_chunk_size139 = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 4
  %29 = ptrtoint ptr %ecc_chunk_size139 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ecc_chunk_size139, align 4
  %and140 = and i32 %30, 4095
  br label %cond.end141

cond.end141:                                      ; preds = %cond.false138, %cond.true134
  %or122284 = phi i32 [ %or122283, %cond.true134 ], [ %or105, %cond.false138 ]
  %cond142 = phi i32 [ %and137, %cond.true134 ], [ %and140, %cond.false138 ]
  %or143 = or i32 %cond142, %or122284
  %bch_flashlayout1 = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 15
  %31 = ptrtoint ptr %bch_flashlayout1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or143, ptr %bch_flashlayout1, align 4
  %bch = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 13
  %32 = ptrtoint ptr %bch to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %bch, align 4
  %call144 = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef %col.0, ptr noundef %buf.addr.0, i32 noundef %add31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %do.body148, label %cond.end141.cleanup_crit_edge

cond.end141.cleanup_crit_edge:                    ; preds = %cond.end141
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body148:                                       ; preds = %cond.end141
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpmi_ecc_read_subpage.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gpmi_ecc_read_subpage, %if.then160)) #12
          to label %do.end164 [label %if.then160], !srcloc !283

if.then160:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #14
  %dev161 = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %dev161 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev161, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpmi_ecc_read_subpage.__UNIQUE_ID_ddebug256, ptr noundef %34, ptr noundef nonnull @.str.42, i32 noundef %page, i32 noundef %offs, i32 noundef %len, i32 noundef %col.0, i32 noundef %div3, i32 noundef %add28, i32 noundef %add31) #12
  br label %do.end164

do.end164:                                        ; preds = %if.then160, %do.body148
  %call165 = tail call fastcc i32 @gpmi_count_bitflips(ptr noundef %chip, ptr noundef %buf.addr.0, i32 noundef %div3, i32 noundef %div4, i32 noundef %meta.0)
  br label %cleanup

cleanup:                                          ; preds = %do.end164, %cond.end141.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call13, %do.end ], [ %call165, %do.end164 ], [ %call144, %cond.end141.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bch_set_geometry(ptr noundef %this) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %strength.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 33, i32 7
  %0 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %strength.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp sgt i32 %1, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %size.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 33, i32 4
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.i = icmp sgt i32 %3, 0
  br i1 %cmp2.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call7.i = tail call fastcc i32 @set_geometry_by_ecc_info(ptr noundef %this, i32 noundef %1, i32 noundef %3) #12
  br label %common_nfc_set_geometry.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %dev.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.28, ptr noundef null) #12
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %lor.lhs.false.i, label %if.end.i.if.then10.i_crit_edge

if.end.i.if.then10.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %bch_geometry.i.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5
  %metadata_size1.i.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 3
  %8 = ptrtoint ptr %metadata_size1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10, ptr %metadata_size1.i.i, align 4
  %9 = ptrtoint ptr %bch_geometry.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 13, ptr %bch_geometry.i.i, align 4
  %ecc_chunk_size.i.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 4
  %10 = ptrtoint ptr %ecc_chunk_size.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 512, ptr %ecc_chunk_size.i.i, align 4
  %oobsize.i.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 0, i32 0, i32 6
  %11 = ptrtoint ptr %oobsize.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %oobsize.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %12)
  %cmp85.i.i = icmp ugt i32 %12, 512
  br i1 %cmp85.i.i, label %while.body.lr.ph.i.i, label %lor.lhs.false.i.while.end.i.i_crit_edge

lor.lhs.false.i.while.end.i.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

while.body.lr.ph.i.i:                             ; preds = %lor.lhs.false.i
  %13 = ptrtoint ptr %bch_geometry.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 14, ptr %bch_geometry.i.i, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %14 = phi i32 [ 512, %while.body.lr.ph.i.i ], [ %mul.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %mul.i.i = shl i32 %14, 1
  %cmp.i.i = icmp ult i32 %mul.i.i, %12
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.cond.while.end_crit_edge.i.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %ecc_chunk_size.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul.i.i, ptr %ecc_chunk_size.i.i, align 4
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.while.end_crit_edge.i.i, %lor.lhs.false.i.while.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %mul.i.i, %while.cond.while.end_crit_edge.i.i ], [ 512, %lor.lhs.false.i.while.end.i.i_crit_edge ]
  %writesize.i.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 0, i32 0, i32 4
  %16 = ptrtoint ptr %writesize.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %writesize.i.i, align 4
  %div.i.i = udiv i32 %17, %.lcssa.i.i
  %ecc_chunk_count.i.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 5
  %18 = ptrtoint ptr %ecc_chunk_count.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div.i.i, ptr %ecc_chunk_count.i.i, align 4
  %sub.i.i.i = shl i32 %12, 3
  %mul.i.i.i = add i32 %sub.i.i.i, -80
  %19 = ptrtoint ptr %bch_geometry.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bch_geometry.i.i, align 4
  %mul1.i.i.i = mul i32 %20, %div.i.i
  %div.i.i.i = udiv i32 %mul.i.i.i, %mul1.i.i.i
  %and.i.i.i = and i32 %div.i.i.i, -2
  %ecc_strength.i.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %ecc_strength.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and.i.i.i, ptr %ecc_strength.i.i, align 4
  %22 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %this, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %switch.i.i.i = icmp ult i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %20)
  %cmp4.i.i.i = icmp eq i32 %20, 14
  %or.cond.i.i = select i1 %switch.i.i.i, i1 %cmp4.i.i.i, i1 false
  br i1 %or.cond.i.i, label %while.end.i.i.legacy_set_geometry.exit.i_crit_edge, label %gpmi_check_ecc.exit.i.i

while.end.i.i.legacy_set_geometry.exit.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %legacy_set_geometry.exit.i

gpmi_check_ecc.exit.i.i:                          ; preds = %while.end.i.i
  %bch_max_ecc_strength.i.i.i = getelementptr inbounds %struct.gpmi_devdata, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %bch_max_ecc_strength.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bch_max_ecc_strength.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i, i32 %27)
  %cmp8.i.not.i.i = icmp ugt i32 %and.i.i.i, %27
  br i1 %cmp8.i.not.i.i, label %gpmi_check_ecc.exit.i.i.legacy_set_geometry.exit.i_crit_edge, label %if.end.i.i

gpmi_check_ecc.exit.i.i.legacy_set_geometry.exit.i_crit_edge: ; preds = %gpmi_check_ecc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %legacy_set_geometry.exit.i

if.end.i.i:                                       ; preds = %gpmi_check_ecc.exit.i.i
  %add.i.i = add i32 %17, 10
  %mul13.i.i = mul i32 %and.i.i.i, %20
  %mul15.i.i = mul i32 %mul13.i.i, %div.i.i
  %div1681.i.i = lshr i32 %mul15.i.i, 3
  %add17.i.i = add i32 %add.i.i, %div1681.i.i
  %page_size.i.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 2
  %28 = ptrtoint ptr %page_size.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add17.i.i, ptr %page_size.i.i, align 4
  %payload_size.i.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 6
  %29 = ptrtoint ptr %payload_size.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %17, ptr %payload_size.i.i, align 4
  %30 = add i32 %div.i.i, 15
  %add24.i.i = and i32 %30, -4
  %auxiliary_size.i.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 7
  %31 = ptrtoint ptr %auxiliary_size.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add24.i.i, ptr %auxiliary_size.i.i, align 4
  %auxiliary_status_offset.i.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 8
  %32 = ptrtoint ptr %auxiliary_status_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 12, ptr %auxiliary_status_offset.i.i, align 4
  %swap_block_mark.i.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 7
  %33 = ptrtoint ptr %swap_block_mark.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %swap_block_mark.i.i, align 8, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end_crit_edge, label %if.end26.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end26.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul28.i.i = shl i32 %17, 3
  %sub.neg.i.i = sub i32 1, %div.i.i
  %mul33.neg87.i.i = mul i32 %mul13.i.i, %sub.neg.i.i
  %add36.neg.i.i = add i32 %mul28.i.i, -80
  %sub37.i.i = add i32 %add36.neg.i.i, %mul33.neg87.i.i
  %div3882.i.i = lshr i32 %sub37.i.i, 3
  %block_mark_byte_offset.i.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 9
  %35 = ptrtoint ptr %block_mark_byte_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div3882.i.i, ptr %block_mark_byte_offset.i.i, align 4
  %rem.i.i = and i32 %sub37.i.i, 6
  %block_mark_bit_offset39.i.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 10
  %36 = ptrtoint ptr %block_mark_bit_offset39.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %rem.i.i, ptr %block_mark_bit_offset39.i.i, align 4
  br label %if.end

legacy_set_geometry.exit.i:                       ; preds = %gpmi_check_ecc.exit.i.i.legacy_set_geometry.exit.i_crit_edge, %while.end.i.i.legacy_set_geometry.exit.i_crit_edge
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  %bch_max_ecc_strength.i.i = getelementptr inbounds %struct.gpmi_devdata, ptr %23, i32 0, i32 1
  %39 = ptrtoint ptr %bch_max_ecc_strength.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bch_max_ecc_strength.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.34, i32 noundef %and.i.i.i, i32 noundef %40) #15
  br label %if.then10.i

if.then10.i:                                      ; preds = %legacy_set_geometry.exit.i, %if.end.i.if.then10.i_crit_edge
  %strength11.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 0, i32 2, i32 1, i32 3
  %41 = ptrtoint ptr %strength11.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %strength11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp12.not.i = icmp eq i32 %42, 0
  br i1 %cmp12.not.i, label %if.then10.i.cleanup_crit_edge, label %land.lhs.true13.i

if.then10.i.cleanup_crit_edge:                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true13.i:                                ; preds = %if.then10.i
  %step_size.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 0, i32 2, i32 1, i32 4
  %43 = ptrtoint ptr %step_size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %step_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp14.not.i = icmp eq i32 %44, 0
  br i1 %cmp14.not.i, label %land.lhs.true13.i.cleanup_crit_edge, label %if.end16.i

land.lhs.true13.i.cleanup_crit_edge:              ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16.i:                                       ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #14
  %call19.i = tail call fastcc i32 @set_geometry_by_ecc_info(ptr noundef %this, i32 noundef %42, i32 noundef %44) #12
  br label %common_nfc_set_geometry.exit

common_nfc_set_geometry.exit:                     ; preds = %if.end16.i, %if.then.i
  %retval.0.i = phi i32 [ %call7.i, %if.then.i ], [ %call19.i, %if.end16.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %common_nfc_set_geometry.exit.if.end_crit_edge, label %common_nfc_set_geometry.exit.cleanup_crit_edge

common_nfc_set_geometry.exit.cleanup_crit_edge:   ; preds = %common_nfc_set_geometry.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

common_nfc_set_geometry.exit.if.end_crit_edge:    ; preds = %common_nfc_set_geometry.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %common_nfc_set_geometry.exit.if.end_crit_edge, %if.end26.i.i, %if.end.i.i.if.end_crit_edge
  %dev = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 1
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %46, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup.sink.split_crit_edge, label %if.end5

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %bch_regs = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %bch_regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bch_regs, align 4
  %49 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %this, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %53 = icmp ult i32 %52, 2
  %call10 = tail call fastcc i32 @gpmi_reset_block(ptr noundef %48, i1 noundef zeroext %53)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body, label %if.end5.err_out_crit_edge

if.end5.err_out_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out

do.body:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !311
  tail call void @arm_heavy_mb() #12
  %54 = ptrtoint ptr %bch_regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bch_regs, align 4
  %add.ptr = getelementptr i8, ptr %55, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #12, !srcloc !288
  br label %err_out

err_out:                                          ; preds = %do.body, %if.end5.err_out_crit_edge
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  %call.i33 = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 12, i32 22
  %58 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store volatile i64 %call.i33, ptr %last_busy.i, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_out, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call10, %err_out ], [ %call.i, %if.end.cleanup.sink.split_crit_edge ]
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  %call.i34 = tail call i32 @__pm_runtime_suspend(ptr noundef %60, i32 noundef 13) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %common_nfc_set_geometry.exit.cleanup_crit_edge, %land.lhs.true13.i.cleanup_crit_edge, %if.then10.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %common_nfc_set_geometry.exit.cleanup_crit_edge ], [ -22, %land.lhs.true13.i.cleanup_crit_edge ], [ -22, %if.then10.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_geometry_by_ecc_info(ptr nocapture noundef %this, i32 noundef %ecc_strength, i32 noundef %ecc_step) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bch_geometry = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5
  %0 = zext i32 %ecc_step to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %ecc_step, label %do.end [
    i32 512, label %entry.sw.epilog_crit_edge
    i32 1024, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %strength = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 0, i32 2, i32 1, i32 3
  %3 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %strength, align 4
  %step_size = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 0, i32 2, i32 1, i32 4
  %5 = ptrtoint ptr %step_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %step_size, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.29, i32 noundef %4, i32 noundef %6) #15
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %cmp4.i = phi i1 [ false, %entry.sw.epilog_crit_edge ], [ true, %sw.bb1 ]
  %storemerge = phi i32 [ 13, %entry.sw.epilog_crit_edge ], [ 14, %sw.bb1 ]
  %7 = ptrtoint ptr %bch_geometry to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %bch_geometry, align 4
  %ecc_chunk_size = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 4
  %8 = ptrtoint ptr %ecc_chunk_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %ecc_step, ptr %ecc_chunk_size, align 4
  %sub = add i32 %ecc_strength, -1
  %or = or i32 %sub, 1
  %add = add i32 %or, 1
  %ecc_strength6 = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %ecc_strength6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %ecc_strength6, align 4
  %10 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %this, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %switch.i = icmp ult i32 %13, 2
  %or.cond = and i1 %cmp4.i, %switch.i
  br i1 %or.cond, label %sw.epilog.cleanup_crit_edge, label %gpmi_check_ecc.exit

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

gpmi_check_ecc.exit:                              ; preds = %sw.epilog
  %bch_max_ecc_strength.i = getelementptr inbounds %struct.gpmi_devdata, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %bch_max_ecc_strength.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bch_max_ecc_strength.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %15)
  %cmp8.i.not = icmp ugt i32 %add, %15
  br i1 %cmp8.i.not, label %gpmi_check_ecc.exit.cleanup_crit_edge, label %if.end

gpmi_check_ecc.exit.cleanup_crit_edge:            ; preds = %gpmi_check_ecc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %gpmi_check_ecc.exit
  %oobsize = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 0, i32 0, i32 6
  %16 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %oobsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %ecc_step)
  %cmp = icmp ugt i32 %17, %ecc_step
  br i1 %cmp, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev13 = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 1
  %18 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.32, i32 noundef %ecc_step, i32 noundef %17) #15
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %metadata_size = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 3
  %20 = ptrtoint ptr %metadata_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 10, ptr %metadata_size, align 4
  %writesize = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 0, i32 0, i32 4
  %21 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %writesize, align 4
  %div = udiv i32 %22, %ecc_step
  %ecc_chunk_count = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 5
  %23 = ptrtoint ptr %ecc_chunk_count to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div, ptr %ecc_chunk_count, align 4
  %add19 = add i32 %22, 10
  %mul = mul i32 %storemerge, %add
  %mul23 = mul i32 %div, %mul
  %div2494 = lshr i32 %mul23, 3
  %add25 = add i32 %add19, %div2494
  %page_size = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 2
  %24 = ptrtoint ptr %page_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add25, ptr %page_size, align 4
  %payload_size = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 6
  %25 = ptrtoint ptr %payload_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %payload_size, align 4
  %auxiliary_status_offset = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 8
  %26 = ptrtoint ptr %auxiliary_status_offset to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 12, ptr %auxiliary_status_offset, align 4
  %27 = add nuw nsw i32 %div, 15
  %add35 = and i32 %27, -4
  %auxiliary_size = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 7
  %28 = ptrtoint ptr %auxiliary_size to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add35, ptr %auxiliary_size, align 4
  %swap_block_mark = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 7
  %29 = ptrtoint ptr %swap_block_mark to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %swap_block_mark, align 8, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not = icmp eq i8 %30, 0
  br i1 %tobool.not, label %if.end15.cleanup_crit_edge, label %if.end37

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end37:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %mul39 = shl i32 %22, 3
  %sub44.neg = sub nsw i32 1, %div
  %mul45.neg98 = mul i32 %sub44.neg, %mul
  %add48.neg = add i32 %mul39, -80
  %sub49 = add i32 %add48.neg, %mul45.neg98
  %div5095 = lshr i32 %sub49, 3
  %block_mark_byte_offset = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 9
  %31 = ptrtoint ptr %block_mark_byte_offset to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div5095, ptr %block_mark_byte_offset, align 4
  %rem = and i32 %sub49, 6
  %block_mark_bit_offset51 = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 10
  %32 = ptrtoint ptr %block_mark_bit_offset51 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %rem, ptr %block_mark_bit_offset51, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end15.cleanup_crit_edge, %do.end12, %gpmi_check_ecc.exit.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end12 ], [ 0, %if.end37 ], [ -22, %gpmi_check_ecc.exit.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpmi_count_bitflips(ptr noundef %chip, ptr noundef %buf, i32 noundef %first, i32 noundef %last, i32 noundef %meta) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %bch_geometry = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5
  %auxiliary_virt = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 17
  call void @__sanitizer_cov_trace_cmp4(i32 %first, i32 %last)
  %cmp153 = icmp slt i32 %first, %last
  br i1 %cmp153, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %auxiliary_virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %auxiliary_virt, align 4
  %add = add i32 %meta, 3
  %and = and i32 %add, -4
  %add.ptr = getelementptr i8, ptr %3, i32 %and
  %ecc_strength = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 1
  %raw_buffer = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 19
  %metadata_size = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 3
  %ecc_chunk_size = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 4
  %failed = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  %ecc_stats = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %max_bitflips.0159 = phi i32 [ 0, %for.body.lr.ph ], [ %max_bitflips.2, %for.inc.for.body_crit_edge ]
  %status.0157 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %i.0154 = phi i32 [ %first, %for.body.lr.ph ], [ %inc89, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %status.0157 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status.0157, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.112)
  switch i8 %5, label %if.end76 [
    i8 0, label %for.body.for.inc_crit_edge
    i8 -1, label %for.body.for.inc_crit_edge160
    i8 -2, label %if.then10
  ]

for.body.for.inc_crit_edge160:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then10:                                        ; preds = %for.body
  %7 = ptrtoint ptr %ecc_strength to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ecc_strength, align 4
  %9 = ptrtoint ptr %bch_geometry to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bch_geometry, align 4
  %mul = mul i32 %10, %8
  %11 = ptrtoint ptr %raw_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %raw_buffer, align 4
  %13 = ptrtoint ptr %metadata_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %metadata_size, align 4
  %mul11 = shl i32 %14, 3
  %15 = ptrtoint ptr %ecc_chunk_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ecc_chunk_size, align 4
  %mul12 = shl i32 %16, 3
  %add13 = add i32 %mul12, %mul
  %add14 = add nsw i32 %i.0154, 1
  %mul15 = mul i32 %add13, %add14
  %add16 = add i32 %mul15, %mul11
  %sub = sub i32 %add16, %mul
  %sub.frozen = freeze i32 %sub
  %div20 = sdiv i32 %sub.frozen, 8
  %17 = mul i32 %div20, 8
  %rem.decomposed = sub i32 %sub.frozen, %17
  %sub19 = add i32 %add16, 7
  %div = sdiv i32 %sub19, 8
  %sub21 = sub nsw i32 %div, %div20
  %call22 = tail call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef %div20, ptr noundef %12, i32 noundef %sub21, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool.not, label %if.then10.if.end30_crit_edge, label %if.then23

if.then10.if.end30_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then23:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %sub25 = sub nsw i32 32, %rem.decomposed
  %shr = lshr i32 -1, %sub25
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %12, align 1
  %20 = trunc i32 %shr to i8
  %conv29 = or i8 %19, %20
  store i8 %conv29, ptr %12, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then23, %if.then10.if.end30_crit_edge
  %add31 = add i32 %rem.decomposed, %mul
  %rem32 = srem i32 %add31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem32)
  %tobool33.not = icmp eq i32 %rem32, 0
  br i1 %tobool33.not, label %if.end30.if.end44_crit_edge, label %if.then34

if.end30.if.end44_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %shl.neg = shl nsw i32 -1, %rem32
  %sub39 = add nsw i32 %sub21, -1
  %arrayidx40 = getelementptr i8, ptr %12, i32 %sub39
  %21 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx40, align 1
  %23 = trunc i32 %shl.neg to i8
  %conv43 = or i8 %22, %23
  store i8 %conv43, ptr %arrayidx40, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then34, %if.end30.if.end44_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0154)
  %cmp45 = icmp eq i32 %i.0154, 0
  %24 = ptrtoint ptr %ecc_chunk_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ecc_chunk_size, align 4
  br i1 %cmp45, label %if.then47, label %if.else

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %auxiliary_virt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %auxiliary_virt, align 4
  %28 = ptrtoint ptr %metadata_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %metadata_size, align 4
  %30 = ptrtoint ptr %ecc_strength to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ecc_strength, align 4
  %call55 = tail call i32 @nand_check_erased_ecc_chunk(ptr noundef %buf, i32 noundef %25, ptr noundef %12, i32 noundef %sub21, ptr noundef %27, i32 noundef %29, i32 noundef %31) #12
  br label %if.end62

if.else:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %mul57 = mul i32 %25, %i.0154
  %add.ptr58 = getelementptr i8, ptr %buf, i32 %mul57
  %32 = ptrtoint ptr %ecc_strength to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ecc_strength, align 4
  %call61 = tail call i32 @nand_check_erased_ecc_chunk(ptr noundef %add.ptr58, i32 noundef %25, ptr noundef %12, i32 noundef %sub21, ptr noundef null, i32 noundef 0, i32 noundef %33) #12
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then47
  %flips.0 = phi i32 [ %call55, %if.then47 ], [ %call61, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flips.0)
  %cmp63 = icmp sgt i32 %flips.0, 0
  br i1 %cmp63, label %if.then65, label %if.end69

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %34 = tail call i32 @llvm.umax.i32(i32 %max_bitflips.0159, i32 %flips.0)
  %35 = ptrtoint ptr %ecc_stats to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ecc_stats, align 4
  %add68 = add i32 %36, %flips.0
  store i32 %add68, ptr %ecc_stats, align 4
  br label %for.inc

if.end69:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %failed, align 4
  %inc = add i32 %38, 1
  store i32 %inc, ptr %failed, align 4
  br label %for.inc

if.end76:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %5 to i32
  %39 = ptrtoint ptr %ecc_stats to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ecc_stats, align 4
  %add80 = add i32 %40, %conv
  store i32 %add80, ptr %ecc_stats, align 4
  %41 = ptrtoint ptr %status.0157 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %status.0157, align 1
  %conv81 = zext i8 %42 to i32
  %43 = tail call i32 @llvm.umax.i32(i32 %max_bitflips.0159, i32 %conv81)
  br label %for.inc

for.inc:                                          ; preds = %if.end76, %if.end69, %if.then65, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge160
  %max_bitflips.2 = phi i32 [ %max_bitflips.0159, %for.body.for.inc_crit_edge ], [ %43, %if.end76 ], [ %max_bitflips.0159, %for.body.for.inc_crit_edge160 ], [ %34, %if.then65 ], [ %max_bitflips.0159, %if.end69 ]
  %inc89 = add nsw i32 %i.0154, 1
  %incdec.ptr = getelementptr i8, ptr %status.0157, i32 1
  %exitcond.not = icmp eq i32 %inc89, %last
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %max_bitflips.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %max_bitflips.2, %for.inc.for.end_crit_edge ]
  ret i32 %max_bitflips.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_read_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_check_erased_ecc_chunk(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_free(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_extract_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gpmi_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %oobregion, align 4
  %page_size = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 2
  %3 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %page_size, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %5 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %writesize, align 4
  %sub = sub i32 %4, %6
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gpmi_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %page_size = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_size, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %4 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %6 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oobsize, align 4
  %add = add i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add)
  %cmp = icmp ult i32 %3, %add
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 %3, %5
  %8 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %oobregion, align 4
  %9 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %oobsize, align 4
  %sub7 = sub i32 %10, %sub
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %11 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub7, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %entry.cleanup_crit_edge ], [ 0, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nand_op_trace(ptr nocapture noundef readonly %instr) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %instr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %instr, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body4
    i32 2, label %do.body27
    i32 3, label %do.body48
    i32 4, label %do.body71
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nand_op_trace.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nand_op_trace, %if.then)) #12
          to label %sw.epilog [label %if.then], !srcloc !283

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %ctx = getelementptr inbounds %struct.nand_op_instr, ptr %instr, i32 0, i32 1
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ctx, align 4
  %conv = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nand_op_trace.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.45, i32 noundef %conv) #12
  br label %sw.epilog

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nand_op_trace.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nand_op_trace, %if.then16)) #12
          to label %sw.epilog [label %if.then16], !srcloc !283

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  %ctx17 = getelementptr inbounds %struct.nand_op_instr, ptr %instr, i32 0, i32 1
  %5 = ptrtoint ptr %ctx17 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctx17, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 64)
  %addrs = getelementptr inbounds %struct.nand_op_instr, ptr %instr, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addrs, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nand_op_trace.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.45, i32 noundef %6, i32 noundef %7, ptr noundef %9) #12
  br label %sw.epilog

do.body27:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nand_op_trace.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nand_op_trace, %if.then39)) #12
          to label %sw.epilog [label %if.then39], !srcloc !283

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14
  %ctx40 = getelementptr inbounds %struct.nand_op_instr, ptr %instr, i32 0, i32 1
  %10 = ptrtoint ptr %ctx40 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx40, align 4
  %force_8bit = getelementptr inbounds %struct.nand_op_instr, ptr %instr, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %force_8bit to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %force_8bit, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool42.not = icmp eq i8 %13, 0
  %cond44 = select i1 %tobool42.not, ptr @.str.61, ptr @.str.60
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nand_op_trace.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.45, i32 noundef %11, ptr noundef nonnull %cond44) #12
  br label %sw.epilog

do.body48:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nand_op_trace.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nand_op_trace, %if.then60)) #12
          to label %sw.epilog [label %if.then60], !srcloc !283

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #14
  %ctx61 = getelementptr inbounds %struct.nand_op_instr, ptr %instr, i32 0, i32 1
  %14 = ptrtoint ptr %ctx61 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctx61, align 4
  %force_8bit64 = getelementptr inbounds %struct.nand_op_instr, ptr %instr, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %force_8bit64 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %force_8bit64, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool65.not = icmp eq i8 %17, 0
  %cond67 = select i1 %tobool65.not, ptr @.str.61, ptr @.str.60
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nand_op_trace.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.45, i32 noundef %15, ptr noundef nonnull %cond67) #12
  br label %sw.epilog

do.body71:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nand_op_trace.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nand_op_trace, %if.then83)) #12
          to label %sw.epilog [label %if.then83], !srcloc !283

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #14
  %ctx84 = getelementptr inbounds %struct.nand_op_instr, ptr %instr, i32 0, i32 1
  %18 = ptrtoint ptr %ctx84 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctx84, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nand_op_trace.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.45, i32 noundef %19) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then83, %do.body71, %if.then60, %do.body48, %if.then39, %do.body27, %if.then16, %do.body4, %if.then, %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gpmi_chain_command(ptr noundef %this, i8 noundef zeroext %cmd, ptr nocapture noundef readonly %addr, i32 noundef %naddr) unnamed_addr #2 align 64 {
entry:
  %pio = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_chans.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 20
  %0 = ptrtoint ptr %dma_chans.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_chans.i, align 8
  %cur_cs = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 28
  %2 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_cs, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pio) #12
  %4 = getelementptr inbounds [3 x i32], ptr %pio, i32 0, i32 1
  %5 = getelementptr inbounds [3 x i32], ptr %pio, i32 0, i32 2
  %shl = shl i32 %3, 20
  %6 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %this, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  %cond = select i1 %cmp, i32 3145728, i32 7340032
  %and = and i32 %cond, %shl
  %add = add i32 %naddr, 1
  %and5 = and i32 %add, 65535
  %or3 = or i32 %and5, %and
  %or6 = or i32 %or3, 8585216
  %10 = ptrtoint ptr %pio to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or6, ptr %pio, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %4, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %5, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %entry
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %tobool1.not.i.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 39
  %15 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %16, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.cleanup_crit_edge, label %mxs_dmaengine_prep_pio.exit

lor.lhs.false2.i.i.cleanup_crit_edge:             ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

mxs_dmaengine_prep_pio.exit:                      ; preds = %lor.lhs.false2.i.i
  %call.i.i = call ptr %16(ptr noundef nonnull %1, ptr noundef nonnull %pio, i32 noundef 3, i32 noundef 4, i32 noundef 0, ptr noundef null) #12
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %mxs_dmaengine_prep_pio.exit.cleanup_crit_edge, label %if.end

mxs_dmaengine_prep_pio.exit.cleanup_crit_edge:    ; preds = %mxs_dmaengine_prep_pio.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %mxs_dmaengine_prep_pio.exit
  %ntransfers.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 12
  %17 = ptrtoint ptr %ntransfers.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ntransfers.i, align 8
  %inc.i = add i32 %18, 1
  store i32 %inc.i, ptr %ntransfers.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i)
  %cmp.i = icmp eq i32 %inc.i, 8
  %arrayidx.i = getelementptr %struct.gpmi_nand_data, ptr %this, i32 0, i32 11, i32 %18
  %tobool11.not50 = icmp eq ptr %arrayidx.i, null
  %tobool11.not = or i1 %cmp.i, %tobool11.not50
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %cmd, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %naddr)
  %tobool15.not = icmp eq i32 %naddr, 0
  br i1 %tobool15.not, label %if.end13.lor.lhs.false.i_crit_edge, label %if.then16

if.end13.lor.lhs.false.i_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx18 = getelementptr [8 x i8], ptr %arrayidx.i, i32 0, i32 1
  %20 = call ptr @memcpy(ptr %arrayidx18, ptr %addr, i32 %naddr)
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then16, %if.end13.lor.lhs.false.i_crit_edge
  %sgl = getelementptr %struct.gpmi_nand_data, ptr %this, i32 0, i32 11, i32 %18, i32 1
  call void @sg_init_one(ptr noundef %sgl, ptr noundef nonnull %arrayidx.i, i32 noundef %add) #12
  %dev = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 1
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %call24 = call i32 @dma_map_sg_attrs(ptr noundef %22, ptr noundef %sgl, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %direction = getelementptr %struct.gpmi_nand_data, ptr %this, i32 0, i32 11, i32 %18, i32 2
  %23 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %direction, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %tobool1.not.i = icmp eq ptr %25, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 39
  %26 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %27, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = call ptr %27(ptr noundef nonnull %1, ptr noundef %sgl, i32 noundef 1, i32 noundef 1, i32 noundef -2147483648, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mxs_dmaengine_prep_pio.exit.cleanup_crit_edge, %lor.lhs.false2.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %mxs_dmaengine_prep_pio.exit.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call.i, %if.end.i ], [ null, %lor.lhs.false2.i.cleanup_crit_edge ], [ null, %lor.lhs.false.i.cleanup_crit_edge ], [ null, %lor.lhs.false2.i.i.cleanup_crit_edge ], [ null, %lor.lhs.false.i.i.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pio) #12
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_irq_callback(ptr noundef %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_done = getelementptr inbounds %struct.gpmi_nand_data, ptr %param, i32 0, i32 21
  tail call void @complete(ptr noundef %dma_done) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpmi_dump_info(ptr nocapture noundef readonly %this) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resources = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 3
  %dev = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.65) #15
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.058 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %resources to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resources, align 4
  %mul = shl i32 %i.058, 4
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !295
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !312
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.68, i32 noundef %mul, i32 noundef %5) #15
  %inc = add nuw nsw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %do.end9, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.end9:                                          ; preds = %for.body
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.71) #15
  %bch_regs = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 3, i32 1
  br label %for.body13

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %do.end9
  %i.159 = phi i32 [ 0, %do.end9 ], [ %inc27, %for.body13.for.body13_crit_edge ]
  %10 = ptrtoint ptr %bch_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bch_regs, align 4
  %mul16 = shl i32 %i.159, 4
  %add.ptr17 = getelementptr i8, ptr %11, i32 %mul16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #12, !srcloc !295
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !313
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.68, i32 noundef %mul16, i32 noundef %13) #15
  %inc27 = add nuw nsw i32 %i.159, 1
  %exitcond60.not = icmp eq i32 %inc27, 24
  br i1 %exitcond60.not, label %do.end31, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body13

do.end31:                                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #14
  %bch_geometry = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %18 = ptrtoint ptr %bch_geometry to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bch_geometry, align 4
  %ecc_strength = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %ecc_strength to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ecc_strength, align 4
  %page_size = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %page_size, align 4
  %metadata_size = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 3
  %24 = ptrtoint ptr %metadata_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %metadata_size, align 4
  %ecc_chunk_size = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 4
  %26 = ptrtoint ptr %ecc_chunk_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ecc_chunk_size, align 4
  %ecc_chunk_count = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 5
  %28 = ptrtoint ptr %ecc_chunk_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ecc_chunk_count, align 4
  %payload_size = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 6
  %30 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %payload_size, align 4
  %auxiliary_size = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 7
  %32 = ptrtoint ptr %auxiliary_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %auxiliary_size, align 4
  %auxiliary_status_offset = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 8
  %34 = ptrtoint ptr %auxiliary_status_offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %auxiliary_status_offset, align 4
  %block_mark_byte_offset = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 9
  %36 = ptrtoint ptr %block_mark_byte_offset to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %block_mark_byte_offset, align 4
  %block_mark_bit_offset = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 10
  %38 = ptrtoint ptr %block_mark_bit_offset to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %block_mark_bit_offset, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.76, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @prepare_data_dma(ptr nocapture noundef readonly %this, ptr noundef %buf, i32 noundef %raw_len, ptr noundef %sgl, i32 noundef %dr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bch.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 13
  %0 = ptrtoint ptr %bch.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bch.i, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.gpmi_raw_len_to_len.exit_crit_edge, label %if.then.i

entry.gpmi_raw_len_to_len.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %gpmi_raw_len_to_len.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ecc_chunk_size.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 5, i32 4
  %2 = ptrtoint ptr %ecc_chunk_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ecc_chunk_size.i, align 4
  %neg.i = sub i32 0, %3
  %and.i = and i32 %neg.i, %raw_len
  br label %gpmi_raw_len_to_len.exit

gpmi_raw_len_to_len.exit:                         ; preds = %if.then.i, %entry.gpmi_raw_len_to_len.exit_crit_edge
  %retval.0.i = phi i32 [ %and.i, %if.then.i ], [ %raw_len, %entry.gpmi_raw_len_to_len.exit_crit_edge ]
  %4 = ptrtoint ptr %buf to i32
  %cmp = icmp ugt ptr %buf, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp, label %land.lhs.true, label %gpmi_raw_len_to_len.exit.map_fail_crit_edge

gpmi_raw_len_to_len.exit.map_fail_crit_edge:      ; preds = %gpmi_raw_len_to_len.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %map_fail

land.lhs.true:                                    ; preds = %gpmi_raw_len_to_len.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %5 = load ptr, ptr @high_memory, align 4
  %cmp1 = icmp ugt ptr %5, %buf
  br i1 %cmp1, label %land.lhs.true2, label %land.lhs.true.map_fail_crit_edge

land.lhs.true.map_fail_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %map_fail

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sub = add i32 %4, 1073741824
  %shr = lshr i32 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %6 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %6, %shr
  %call3 = tail call i32 @pfn_valid(i32 noundef %add) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true2.map_fail_crit_edge, label %land.lhs.true4

land.lhs.true2.map_fail_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %map_fail

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %7 = tail call i32 @llvm.read_register.i32(metadata !272) #12
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %stack1.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %stack1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stack1.i, align 4
  %cmp.not.i = icmp ugt ptr %12, %buf
  %add.ptr.i = getelementptr i8, ptr %12, i32 16384
  %cmp2.i = icmp ule ptr %add.ptr.i, %buf
  %tobool6.not = or i1 %cmp.not.i, %cmp2.i
  br i1 %tobool6.not, label %if.then, label %land.lhs.true4.map_fail_crit_edge

land.lhs.true4.map_fail_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %map_fail

if.then:                                          ; preds = %land.lhs.true4
  tail call void @sg_init_one(ptr noundef %sgl, ptr noundef nonnull %buf, i32 noundef %retval.0.i) #12
  %dev = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %call7 = tail call i32 @dma_map_sg_attrs(ptr noundef %14, ptr noundef %sgl, i32 noundef 1, i32 noundef %dr, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then.map_fail_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.map_fail_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %map_fail

map_fail:                                         ; preds = %if.then.map_fail_crit_edge, %land.lhs.true4.map_fail_crit_edge, %land.lhs.true2.map_fail_crit_edge, %land.lhs.true.map_fail_crit_edge, %gpmi_raw_len_to_len.exit.map_fail_crit_edge
  %data_buffer_dma = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 16
  %15 = ptrtoint ptr %data_buffer_dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data_buffer_dma, align 8
  tail call void @sg_init_one(ptr noundef %sgl, ptr noundef %16, i32 noundef %retval.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dr)
  %cmp11 = icmp eq i32 %dr, 1
  br i1 %cmp11, label %land.lhs.true12, label %map_fail.if.end17_crit_edge

map_fail.if.end17_crit_edge:                      ; preds = %map_fail
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true12:                                  ; preds = %map_fail
  %17 = ptrtoint ptr %data_buffer_dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data_buffer_dma, align 8
  %cmp14.not = icmp eq ptr %18, %buf
  br i1 %cmp14.not, label %land.lhs.true12.if.end17_crit_edge, label %if.then15

land.lhs.true12.if.end17_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then15:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  %19 = call ptr @memcpy(ptr %18, ptr %buf, i32 %retval.0.i)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %land.lhs.true12.if.end17_crit_edge, %map_fail.if.end17_crit_edge
  %dev18 = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 1
  %20 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev18, align 4
  %call19 = tail call i32 @dma_map_sg_attrs(ptr noundef %21, ptr noundef %sgl, i32 noundef 1, i32 noundef %dr, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end17 ], [ true, %if.then.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mx23_boot_init(ptr noundef %this) unnamed_addr #2 align 64 {
entry:
  %block_mark = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %nand = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %block_mark) #12
  %2 = ptrtoint ptr %block_mark to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %block_mark, align 1, !annotation !314
  %call2 = tail call fastcc i32 @mx23_check_transcription_stamp(ptr noundef %this)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx23_boot_init.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx23_boot_init, %if.then7)) #12
          to label %do.end [label %if.then7], !srcloc !283

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx23_boot_init.__UNIQUE_ID_ddebug270, ptr noundef %1, ptr noundef nonnull @.str.79) #12
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %eraseblocks_per_lun.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %eraseblocks_per_lun.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %eraseblocks_per_lun.i, align 8
  %luns_per_target.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 0, i32 1, i32 7
  %5 = ptrtoint ptr %luns_per_target.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %luns_per_target.i, align 4
  %mul.i = mul i32 %6, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp6.not = icmp eq i32 %mul.i, 0
  br i1 %cmp6.not, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %chip_shift = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 19
  %phys_erase_shift = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 18
  %page_shift = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 17
  %writesize = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 0, i32 0, i32 4
  %block_markbad = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 5, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %block.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %chip_shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chip_shift, align 4
  %9 = ptrtoint ptr %phys_erase_shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phys_erase_shift, align 8
  %sub = sub i32 %8, %10
  %shr = lshr i32 %block.07, %sub
  %11 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %page_shift, align 4
  %sub11 = sub i32 %10, %12
  %shl = shl i32 %block.07, %sub11
  %shl13 = shl i32 %block.07, %10
  %conv = zext i32 %shl13 to i64
  call void @nand_select_target(ptr noundef %nand, i32 noundef %shr) #12
  %13 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %writesize, align 4
  %call14 = call i32 @nand_read_page_op(ptr noundef %nand, i32 noundef %shl, i32 noundef %14, ptr noundef nonnull %block_mark, i32 noundef 1) #12
  call void @nand_deselect_target(ptr noundef %nand) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end17:                                         ; preds = %for.body
  %15 = ptrtoint ptr %block_mark to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %block_mark, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp19.not = icmp eq i8 %16, -1
  br i1 %cmp19.not, label %if.end17.for.inc_crit_edge, label %do.body22

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.body22:                                        ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx23_boot_init.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx23_boot_init, %if.then34)) #12
          to label %do.end37 [label %if.then34], !srcloc !283

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx23_boot_init.__UNIQUE_ID_ddebug271, ptr noundef %1, ptr noundef nonnull @.str.80, i32 noundef %block.07) #12
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %do.body22
  %17 = ptrtoint ptr %block_markbad to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %block_markbad, align 8
  %call38 = call i32 %18(ptr noundef %nand, i64 noundef %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %do.end37.for.inc_crit_edge, label %do.end43

do.end37.for.inc_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.end43:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.81, i32 noundef %call38) #15
  br label %for.inc

for.inc:                                          ; preds = %do.end43, %do.end37.for.inc_crit_edge, %if.end17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %block.07, 1
  %exitcond.not = icmp eq i32 %inc, %mul.i
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  call fastcc void @mx23_write_transcription_stamp(ptr noundef %this)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %block_mark) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mx23_check_transcription_stamp(ptr noundef %this) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rom_geometry = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 8
  %dev1 = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %nand = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10
  %page.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 24, i32 1
  %2 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %page.i, align 4
  %data_buf.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 22
  %3 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data_buf.i, align 8
  %search_area_stride_exponent = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %search_area_stride_exponent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %search_area_stride_exponent, align 4
  tail call void @nand_select_target(ptr noundef %nand, i32 noundef 0) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx23_check_transcription_stamp.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx23_check_transcription_stamp, %if.then)) #12
          to label %for.body [label %if.then], !srcloc !283

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx23_check_transcription_stamp.__UNIQUE_ID_ddebug258, ptr noundef %1, ptr noundef nonnull @.str.83) #12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then, %entry
  %stride.096 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry ], [ 0, %if.then ]
  %7 = ptrtoint ptr %rom_geometry to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rom_geometry, align 4
  %mul = mul i32 %8, %stride.096
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx23_check_transcription_stamp.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx23_check_transcription_stamp, %if.then17)) #12
          to label %do.end20 [label %if.then17], !srcloc !283

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx23_check_transcription_stamp.__UNIQUE_ID_ddebug259, ptr noundef %1, ptr noundef nonnull @.str.84, i32 noundef %mul) #12
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %for.body
  %call22 = tail call i32 @nand_read_page_op(ptr noundef %nand, i32 noundef %mul, i32 noundef 12, ptr noundef %4, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %do.end20.for.inc_crit_edge

do.end20.for.inc_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end25:                                         ; preds = %do.end20
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %4, ptr noundef nonnull dereferenceable(4) @.str.87, i32 4) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool28.not = icmp eq i32 %bcmp, 0
  br i1 %tobool28.not, label %do.body33, label %if.end25.for.inc_crit_edge

if.end25.for.inc_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %if.end25.for.inc_crit_edge, %do.end20.for.inc_crit_edge
  %inc = add i32 %stride.096, 1
  %stride.0.highbits = lshr i32 %inc, %6
  %cmp = icmp eq i32 %stride.0.highbits, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %do.body49

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.body33:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nand_deselect_target(ptr noundef %nand) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx23_check_transcription_stamp.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx23_check_transcription_stamp, %if.then45)) #12
          to label %if.end65 [label %if.then45], !srcloc !283

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx23_check_transcription_stamp.__UNIQUE_ID_ddebug260, ptr noundef %1, ptr noundef nonnull @.str.85) #12
  br label %if.end65

do.body49:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nand_deselect_target(ptr noundef %nand) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx23_check_transcription_stamp.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx23_check_transcription_stamp, %if.then61)) #12
          to label %if.end65 [label %if.then61], !srcloc !283

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx23_check_transcription_stamp.__UNIQUE_ID_ddebug261, ptr noundef %1, ptr noundef nonnull @.str.86) #12
  br label %if.end65

if.end65:                                         ; preds = %if.then61, %do.body49, %if.then45, %do.body33
  %found_an_ncb_fingerprint.092 = phi i32 [ 0, %if.then61 ], [ 1, %if.then45 ], [ 1, %do.body33 ], [ 0, %do.body49 ]
  ret i32 %found_an_ncb_fingerprint.092
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mx23_write_transcription_stamp(ptr noundef %this) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %rom_geometry = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 8
  %nand = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10
  %page.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 24, i32 1
  %2 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %page.i, align 4
  %data_buf.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 22
  %3 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data_buf.i, align 8
  %erasesize = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 0, i32 0, i32 3
  %5 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %erasesize, align 8
  %writesize = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 0, i32 0, i32 4
  %7 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %writesize, align 4
  %div = udiv i32 %6, %8
  %search_area_stride_exponent = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %search_area_stride_exponent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %search_area_stride_exponent, align 4
  %shl = shl nuw i32 1, %10
  %11 = ptrtoint ptr %rom_geometry to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rom_geometry, align 4
  %mul = shl i32 %12, %10
  %sub = add i32 %div, -1
  %add = add i32 %sub, %mul
  %div3 = udiv i32 %add, %div
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx23_write_transcription_stamp.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx23_write_transcription_stamp, %if.then)) #12
          to label %do.body7 [label %if.then], !srcloc !283

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx23_write_transcription_stamp.__UNIQUE_ID_ddebug262, ptr noundef %1, ptr noundef nonnull @.str.89) #12
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx23_write_transcription_stamp.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx23_write_transcription_stamp, %if.then19)) #12
          to label %do.body23 [label %if.then19], !srcloc !283

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx23_write_transcription_stamp.__UNIQUE_ID_ddebug263, ptr noundef %1, ptr noundef nonnull @.str.90, i32 noundef %div3) #12
  br label %do.body23

do.body23:                                        ; preds = %if.then19, %do.body7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx23_write_transcription_stamp.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx23_write_transcription_stamp, %if.then35)) #12
          to label %do.body39 [label %if.then35], !srcloc !283

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx23_write_transcription_stamp.__UNIQUE_ID_ddebug264, ptr noundef %1, ptr noundef nonnull @.str.91, i32 noundef %shl) #12
  br label %do.body39

do.body39:                                        ; preds = %if.then35, %do.body23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx23_write_transcription_stamp.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx23_write_transcription_stamp, %if.then51)) #12
          to label %do.end54 [label %if.then51], !srcloc !283

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx23_write_transcription_stamp.__UNIQUE_ID_ddebug265, ptr noundef %1, ptr noundef nonnull @.str.92, i32 noundef %mul) #12
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %do.body39
  tail call void @nand_select_target(ptr noundef %nand, i32 noundef 0) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx23_write_transcription_stamp.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx23_write_transcription_stamp, %if.then67)) #12
          to label %do.end70 [label %if.then67], !srcloc !283

if.then67:                                        ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx23_write_transcription_stamp.__UNIQUE_ID_ddebug266, ptr noundef %1, ptr noundef nonnull @.str.93) #12
  br label %do.end70

do.end70:                                         ; preds = %if.then67, %do.end54
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %add)
  %cmp30.not = icmp ugt i32 %div, %add
  br i1 %cmp30.not, label %do.end70.for.end_crit_edge, label %do.body71.preheader

do.end70.for.end_crit_edge:                       ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body71.preheader:                              ; preds = %do.end70
  %umax = call i32 @llvm.umax.i32(i32 %div3, i32 1)
  br label %do.body71

do.body71:                                        ; preds = %for.inc.do.body71_crit_edge, %do.body71.preheader
  %block.031 = phi i32 [ %inc, %for.inc.do.body71_crit_edge ], [ 0, %do.body71.preheader ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx23_write_transcription_stamp.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx23_write_transcription_stamp, %if.then83)) #12
          to label %do.end86 [label %if.then83], !srcloc !283

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx23_write_transcription_stamp.__UNIQUE_ID_ddebug267, ptr noundef %1, ptr noundef nonnull @.str.94, i32 noundef %block.031) #12
  br label %do.end86

do.end86:                                         ; preds = %if.then83, %do.body71
  %call87 = tail call i32 @nand_erase_op(ptr noundef %nand, i32 noundef %block.031) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %do.end86.for.inc_crit_edge, label %do.end92

do.end86.for.inc_crit_edge:                       ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.end92:                                         ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.88) #15
  br label %for.inc

for.inc:                                          ; preds = %do.end92, %do.end86.for.inc_crit_edge
  %inc = add nuw i32 %block.031, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.do.body71_crit_edge

for.inc.do.body71_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body71

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end70.for.end_crit_edge
  %13 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %writesize, align 4
  %15 = call ptr @memset(ptr %4, i32 255, i32 %14)
  %add.ptr = getelementptr i8, ptr %4, i32 12
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 1398033744, ptr %add.ptr, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx23_write_transcription_stamp.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx23_write_transcription_stamp, %if.then108)) #12
          to label %do.end111 [label %if.then108], !srcloc !283

if.then108:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx23_write_transcription_stamp.__UNIQUE_ID_ddebug268, ptr noundef %1, ptr noundef nonnull @.str.96) #12
  br label %do.end111

do.end111:                                        ; preds = %if.then108, %for.end
  %write_page_raw = getelementptr inbounds %struct.gpmi_nand_data, ptr %this, i32 0, i32 10, i32 33, i32 17
  br label %for.body114

for.body114:                                      ; preds = %for.inc140.for.body114_crit_edge, %do.end111
  %stride.033 = phi i32 [ 0, %do.end111 ], [ %inc141, %for.inc140.for.body114_crit_edge ]
  %17 = ptrtoint ptr %rom_geometry to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rom_geometry, align 4
  %mul116 = mul i32 %18, %stride.033
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mx23_write_transcription_stamp.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mx23_write_transcription_stamp, %if.then129)) #12
          to label %do.end132 [label %if.then129], !srcloc !283

if.then129:                                       ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mx23_write_transcription_stamp.__UNIQUE_ID_ddebug269, ptr noundef %1, ptr noundef nonnull @.str.97, i32 noundef %mul116) #12
  br label %do.end132

do.end132:                                        ; preds = %if.then129, %for.body114
  %19 = ptrtoint ptr %write_page_raw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_page_raw, align 4
  %call133 = tail call i32 %20(ptr noundef %nand, ptr noundef %4, i32 noundef 0, i32 noundef %mul116) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %do.end132.for.inc140_crit_edge, label %do.end138

do.end132.for.inc140_crit_edge:                   ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc140

do.end138:                                        ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.88) #15
  br label %for.inc140

for.inc140:                                       ; preds = %do.end138, %do.end132.for.inc140_crit_edge
  %inc141 = add nuw i32 %stride.033, 1
  %exitcond35.not = icmp eq i32 %inc141, %shl
  br i1 %exitcond35.not, label %for.end142, label %for.inc140.for.body114_crit_edge

for.inc140.for.body114_crit_edge:                 ; preds = %for.inc140
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body114

for.end142:                                       ; preds = %for.inc140
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nand_deselect_target(ptr noundef %nand) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_erase_op(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmi_pm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @release_dma_channels(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmi_pm_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdev1.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1.i, align 8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call.i = tail call ptr @dma_request_chan(ptr noundef %dev.i, ptr noundef nonnull @.str.12) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %acquire_dma_channels.exit, label %acquire_dma_channels.exit.thread

acquire_dma_channels.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dma_chans.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %dma_chans.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %dma_chans.i, align 8
  br label %if.end

acquire_dma_channels.exit:                        ; preds = %entry
  %dev3.i = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev3.i, align 4
  %7 = ptrtoint ptr %call.i to i32
  %call5.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %6, i32 noundef %7, ptr noundef nonnull @.str.13) #12
  tail call fastcc void @release_dma_channels(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp = icmp slt i32 %call5.i, 0
  br i1 %cmp, label %acquire_dma_channels.exit.cleanup_crit_edge, label %acquire_dma_channels.exit.if.end_crit_edge

acquire_dma_channels.exit.if.end_crit_edge:       ; preds = %acquire_dma_channels.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

acquire_dma_channels.exit.cleanup_crit_edge:      ; preds = %acquire_dma_channels.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %acquire_dma_channels.exit.if.end_crit_edge, %acquire_dma_channels.exit.thread
  %call2 = tail call fastcc i32 @gpmi_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev4 = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.106, i32 noundef %call2) #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %clk_rate = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %hw = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %hw, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %call10 = tail call fastcc i32 @bch_set_geometry(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %do.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %dev16 = getelementptr inbounds %struct.gpmi_nand_data, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.109, i32 noundef %call10) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.end9.cleanup_crit_edge, %do.end, %acquire_dma_channels.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call10, %do.end15 ], [ %call5.i, %acquire_dma_channels.exit.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmi_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @__gpmi_enable_clk(ptr noundef %1, i1 noundef zeroext false)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpmi_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @__gpmi_enable_clk(ptr noundef %1, i1 noundef zeroext true)
  ret i32 %call1
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readnone }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !53, !55, !57, !58, !60, !62, !64, !65, !66, !67, !68, !70, !71, !72, !73, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !98, !100, !101, !102, !104, !105, !107, !108, !109, !111, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !140, !141, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !192, !193, !195, !196, !198, !200, !202, !203, !204, !206, !207, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !223, !225, !226, !228, !229, !231, !232, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !266, !267, !268, !270, !271}
!llvm.named.register.sp = !{!272}
!llvm.module.flags = !{!273, !274, !275, !276, !277, !278, !279, !280}
!llvm.ident = !{!281}

!0 = !{ptr @__initcall__kmod_gpmi_nand__275_2634_gpmi_nand_driver_init6, !1, !"__initcall__kmod_gpmi_nand__275_2634_gpmi_nand_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 2634, i32 1}
!2 = !{ptr @__exitcall_gpmi_nand_driver_exit, !1, !"__exitcall_gpmi_nand_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author276, !4, !"__UNIQUE_ID_author276", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 2636, i32 1}
!5 = !{ptr @__UNIQUE_ID_description277, !6, !"__UNIQUE_ID_description277", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 2637, i32 1}
!7 = !{ptr @__UNIQUE_ID_file278, !8, !"__UNIQUE_ID_file278", i1 false, i1 false}
!8 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 2638, i32 1}
!9 = !{ptr @__UNIQUE_ID_license279, !8, !"__UNIQUE_ID_license279", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 2627, i32 11}
!12 = !{ptr @gpmi_nand_driver, !13, !"gpmi_nand_driver", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 2625, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 2536, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @gpmi_nand_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @gpmi_nand_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1067, i32 37}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 985, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @acquire_register_block._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @acquire_register_block._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1002, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @acquire_bch_irq._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @acquire_bch_irq._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1024, i32 42}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1027, i32 9}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1055, i32 2}
!41 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @gpmi_get_clks.__UNIQUE_ID_ddebug250, !40, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 115, i32 2}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @gpmi_reset_block._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @gpmi_reset_block._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = distinct !{null, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!51 = !{ptr @gpmi_bbt_descr, !52, !"gpmi_bbt_descr", i1 false, i1 false}
!52 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 866, i32 30}
!53 = !{ptr @scan_ff_pattern, !54, !"scan_ff_pattern", i1 false, i1 false}
!54 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 865, i32 16}
!55 = !{ptr @nand_controller_init.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!57 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @gpmi_nand_controller_ops, !59, !"gpmi_nand_controller_ops", i1 false, i1 false}
!59 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 2424, i32 41}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 2069, i32 8}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 2072, i32 2}
!64 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @gpmi_nand_attach_chip.__UNIQUE_ID_ddebug272, !63, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!66 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 2011, i32 3}
!70 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @gpmi_set_geometry._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @gpmi_set_geometry._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 524, i32 49}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 277, i32 3}
!77 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @set_geometry_by_ecc_info._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @set_geometry_by_ecc_info._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 290, i32 3}
!82 = !{ptr @set_geometry_by_ecc_info._entry.31, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @set_geometry_by_ecc_info._entry_ptr.33, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 432, i32 3}
!86 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @legacy_set_geometry._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @legacy_set_geometry._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1437, i32 2}
!91 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @gpmi_ecc_write_page.__UNIQUE_ID_ddebug257, !90, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../include/linux/mtd/rawnand.h", i32 1444, i32 2}
!95 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @gpmi_ooblayout_ops, !97, !"gpmi_ooblayout_ops", i1 false, i1 false}
!97 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 916, i32 39}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1385, i32 4}
!100 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @gpmi_ecc_read_subpage.__UNIQUE_ID_ddebug255, !99, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1422, i32 2}
!104 = !{ptr @gpmi_ecc_read_subpage.__UNIQUE_ID_ddebug256, !103, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 2291, i32 2}
!107 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @gpmi_nfc_exec_op.__UNIQUE_ID_ddebug273, !106, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 2296, i32 17}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 2346, i32 2}
!113 = !{ptr @gpmi_nfc_exec_op.__UNIQUE_ID_ddebug274, !112, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 2349, i32 3}
!116 = !{ptr @gpmi_nfc_exec_op._entry, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @gpmi_nfc_exec_op._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 2380, i32 3}
!120 = !{ptr @gpmi_nfc_exec_op._entry.48, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @gpmi_nfc_exec_op._entry_ptr.50, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 2389, i32 4}
!124 = !{ptr @gpmi_nfc_exec_op._entry.51, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @gpmi_nfc_exec_op._entry_ptr.53, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.54, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 733, i32 3}
!128 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @gpmi_nfc_apply_timings._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @gpmi_nfc_apply_timings._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.56, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../include/linux/mtd/rawnand.h", i32 1030, i32 3}
!133 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @nand_op_trace.__UNIQUE_ID_ddebug243, !132, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!135 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../include/linux/mtd/rawnand.h", i32 1034, i32 3}
!137 = !{ptr @nand_op_trace.__UNIQUE_ID_ddebug244, !136, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../include/linux/mtd/rawnand.h", i32 1041, i32 3}
!140 = !{ptr @nand_op_trace.__UNIQUE_ID_ddebug245, !139, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!141 = !{ptr @.str.60, !139, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../include/linux/mtd/rawnand.h", i32 1047, i32 3}
!145 = !{ptr @nand_op_trace.__UNIQUE_ID_ddebug246, !144, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../include/linux/mtd/rawnand.h", i32 1053, i32 3}
!148 = !{ptr @nand_op_trace.__UNIQUE_ID_ddebug247, !147, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!149 = !{ptr @init_completion.__key, !150, !"__key", i1 false, i1 false}
!150 = !{!"../include/linux/completion.h", i32 87, i32 2}
!151 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.65, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 204, i32 2}
!154 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @gpmi_dump_info._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @gpmi_dump_info._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.68, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 207, i32 3}
!159 = !{ptr @gpmi_dump_info._entry.67, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @gpmi_dump_info._entry_ptr.69, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 211, i32 2}
!163 = !{ptr @gpmi_dump_info._entry.70, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @gpmi_dump_info._entry_ptr.72, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @gpmi_dump_info._entry.73, !166, !"_entry", i1 false, i1 false}
!166 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 214, i32 3}
!167 = !{ptr @gpmi_dump_info._entry_ptr.74, !166, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 216, i32 2}
!170 = !{ptr @gpmi_dump_info._entry.75, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @gpmi_dump_info._entry_ptr.77, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.78, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1944, i32 2}
!174 = !{ptr @.str.79, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @mx23_boot_init.__UNIQUE_ID_ddebug270, !173, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1977, i32 4}
!178 = !{ptr @mx23_boot_init.__UNIQUE_ID_ddebug271, !177, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!179 = !{ptr @.str.81, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1980, i32 5}
!181 = !{ptr @mx23_boot_init._entry, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @mx23_boot_init._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.82, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1817, i32 2}
!185 = !{ptr @.str.83, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @mx23_check_transcription_stamp.__UNIQUE_ID_ddebug258, !184, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!187 = !{ptr @.str.84, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1823, i32 3}
!189 = !{ptr @mx23_check_transcription_stamp.__UNIQUE_ID_ddebug259, !188, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!190 = !{ptr @.str.85, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1845, i32 3}
!192 = !{ptr @mx23_check_transcription_stamp.__UNIQUE_ID_ddebug260, !191, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!193 = !{ptr @.str.86, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1847, i32 3}
!195 = !{ptr @mx23_check_transcription_stamp.__UNIQUE_ID_ddebug261, !194, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!196 = !{ptr @.str.87, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1796, i32 35}
!198 = distinct !{null, !199, !"fingerprint", i1 false, i1 false}
!199 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1796, i32 21}
!200 = !{ptr @.str.88, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1877, i32 2}
!202 = !{ptr @.str.89, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @mx23_write_transcription_stamp.__UNIQUE_ID_ddebug262, !201, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!204 = !{ptr @.str.90, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1878, i32 2}
!206 = !{ptr @mx23_write_transcription_stamp.__UNIQUE_ID_ddebug263, !205, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!207 = !{ptr @.str.91, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1879, i32 2}
!209 = !{ptr @mx23_write_transcription_stamp.__UNIQUE_ID_ddebug264, !208, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!210 = !{ptr @.str.92, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1880, i32 2}
!212 = !{ptr @mx23_write_transcription_stamp.__UNIQUE_ID_ddebug265, !211, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!213 = !{ptr @.str.93, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1885, i32 2}
!215 = !{ptr @mx23_write_transcription_stamp.__UNIQUE_ID_ddebug266, !214, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!216 = !{ptr @.str.94, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1889, i32 3}
!218 = !{ptr @mx23_write_transcription_stamp.__UNIQUE_ID_ddebug267, !217, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!219 = !{ptr @.str.95, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1892, i32 4}
!221 = !{ptr @mx23_write_transcription_stamp._entry, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @mx23_write_transcription_stamp._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.96, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1900, i32 2}
!225 = !{ptr @mx23_write_transcription_stamp.__UNIQUE_ID_ddebug268, !224, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!226 = !{ptr @.str.97, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1906, i32 3}
!228 = !{ptr @mx23_write_transcription_stamp.__UNIQUE_ID_ddebug269, !227, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!229 = !{ptr @.str.99, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 1910, i32 4}
!231 = !{ptr @mx23_write_transcription_stamp._entry.98, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @mx23_write_transcription_stamp._entry_ptr.100, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @gpmi_nand_id_table, !234, !"gpmi_nand_id_table", i1 false, i1 false}
!234 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 2487, i32 34}
!235 = !{ptr @gpmi_devdata_imx23, !236, !"gpmi_devdata_imx23", i1 false, i1 false}
!236 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 921, i32 34}
!237 = !{ptr @.str.101, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 913, i32 2}
!239 = !{ptr @gpmi_clks_for_mx2x, !240, !"gpmi_clks_for_mx2x", i1 false, i1 false}
!240 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 912, i32 27}
!241 = !{ptr @gpmi_devdata_imx28, !242, !"gpmi_devdata_imx28", i1 false, i1 false}
!242 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 929, i32 34}
!243 = !{ptr @gpmi_devdata_imx6q, !244, !"gpmi_devdata_imx6q", i1 false, i1 false}
!244 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 941, i32 34}
!245 = !{ptr @.str.102, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 938, i32 13}
!247 = !{ptr @.str.103, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 938, i32 25}
!249 = !{ptr @.str.104, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 938, i32 37}
!251 = !{ptr @.str.105, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 938, i32 53}
!253 = !{ptr @gpmi_clks_for_mx6, !254, !"gpmi_clks_for_mx6", i1 false, i1 false}
!254 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 937, i32 27}
!255 = !{ptr @gpmi_devdata_imx6sx, !256, !"gpmi_devdata_imx6sx", i1 false, i1 false}
!256 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 949, i32 34}
!257 = !{ptr @gpmi_devdata_imx7d, !258, !"gpmi_devdata_imx7d", i1 false, i1 false}
!258 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 961, i32 34}
!259 = !{ptr @gpmi_clks_for_mx7d, !260, !"gpmi_clks_for_mx7d", i1 false, i1 false}
!260 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 957, i32 27}
!261 = !{ptr @gpmi_pm_ops, !262, !"gpmi_pm_ops", i1 false, i1 false}
!262 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 2620, i32 32}
!263 = !{ptr @.str.106, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 2587, i32 3}
!265 = !{ptr @.str.107, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @gpmi_pm_resume._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @gpmi_pm_resume._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.109, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/mtd/nand/raw/gpmi-nand/gpmi-nand.c", i32 2598, i32 3}
!270 = !{ptr @gpmi_pm_resume._entry.108, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @gpmi_pm_resume._entry_ptr.110, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{!"sp"}
!273 = !{i32 1, !"wchar_size", i32 2}
!274 = !{i32 1, !"min_enum_size", i32 4}
!275 = !{i32 8, !"branch-target-enforcement", i32 0}
!276 = !{i32 8, !"sign-return-address", i32 0}
!277 = !{i32 8, !"sign-return-address-all", i32 0}
!278 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!279 = !{i32 7, !"uwtable", i32 1}
!280 = !{i32 7, !"frame-pointer", i32 2}
!281 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!282 = !{!"branch_weights", i32 2000, i32 1}
!283 = !{i64 2148795877, i64 2148795882, i64 2148795895, i64 2148795939, i64 2148795973, i64 2148795994}
!284 = !{i64 2148313481}
!285 = !{i64 798304, i64 798329, i64 798351, i64 798367, i64 798379, i64 798399, i64 798423, i64 798439, i64 798451}
!286 = !{i64 2148313669}
!287 = !{i64 2154776799}
!288 = !{i64 4768893}
!289 = !{i64 2154777244}
!290 = !{i64 2154777689}
!291 = !{i64 2154778136}
!292 = !{i64 2154778635}
!293 = !{i64 2154828641}
!294 = !{i64 2154771631}
!295 = !{i64 4769311}
!296 = !{i64 2154772772}
!297 = !{!"branch_weights", i32 1, i32 2000}
!298 = !{i64 2154773046}
!299 = !{i64 2154773471}
!300 = !{i64 2154774657}
!301 = !{i8 0, i8 2}
!302 = !{i64 2154825574}
!303 = !{i64 2154826016}
!304 = !{i64 2154826785}
!305 = !{i64 2154827364}
!306 = !{i64 2154915739}
!307 = !{i64 2154916255}
!308 = !{i64 2154916778}
!309 = !{i64 2154920455}
!310 = !{i64 2148704596, i64 2148704876, i64 2148705210, i64 2148705544}
!311 = !{i64 2154800885}
!312 = !{i64 2154780995}
!313 = !{i64 2154784738}
!314 = !{!"auto-init"}
