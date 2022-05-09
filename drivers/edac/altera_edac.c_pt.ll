; ModuleID = '/llk/IR_all_yes/drivers/edac/altera_edac.c_pt.bc'
source_filename = "../drivers/edac/altera_edac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.altr_sdram_prv_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32 }
%struct.edac_device_prv_data = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, i8 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.edac_mc_layer = type { i32, i32, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mem_ctl_info = type { %struct.device, ptr, %struct.list_head, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.completion, ptr, %struct.delayed_work, %struct.edac_raw_error_desc, i32, ptr, [3 x i8], i8, i16 }
%struct.edac_raw_error_desc = type { [256 x i8], [296 x i8], i32, i16, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.altr_sdram_mc_data = type { ptr, i32, i32, ptr }
%struct.dimm_info = type { %struct.device, [32 x i8], [3 x i32], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.altr_edac_device_dev = type { %struct.list_head, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.device, i32 }
%struct.edac_device_ctl_info = type { %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.completion, [32 x i8], i32, ptr, %struct.edac_device_counter, %struct.kobject }
%struct.edac_device_counter = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }
%struct.altr_arria10_edac = type { ptr, ptr, i32, i32, ptr, %struct.irq_chip, %struct.list_head, %struct.notifier_block }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_altera_edac__238_502_altr_sdram_edac_driver_init6 = internal global ptr @altr_sdram_edac_driver_init, section ".initcall6.init", align 4
@altr_sdram_edac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @altr_sdram_probe, ptr @altr_sdram_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @altr_sdram_ctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @altr_sdram_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_altr_sdram_edac_driver_exit = internal global ptr @altr_sdram_edac_driver_exit, section ".exitcall.exit", align 4
@__initcall__kmod_altera_edac__239_530_altr_edac_driver_init6 = internal global ptr @altr_edac_driver_init, section ".initcall6.init", align 4
@altr_edac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @altr_edac_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.67, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @altr_edac_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_altr_edac_driver_exit = internal global ptr @altr_edac_driver_exit, section ".exitcall.exit", align 4
@__initcall__kmod_altera_edac__242_835_altr_edac_device_driver_init6 = internal global ptr @altr_edac_device_driver_init, section ".initcall6.init", align 4
@altr_edac_device_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @altr_edac_device_probe, ptr @altr_edac_device_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.86, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @altr_edac_device_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_altr_edac_device_driver_exit = internal global ptr @altr_edac_device_driver_exit, section ".exitcall.exit", align 4
@__initcall__kmod_altera_edac__243_2189_altr_edac_a10_driver_init6 = internal global ptr @altr_edac_a10_driver_init, section ".initcall6.init", align 4
@altr_edac_a10_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @altr_edac_a10_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.103, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @altr_edac_a10_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_altr_edac_a10_driver_exit = internal global ptr @altr_edac_a10_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file244 = internal constant [42 x i8] c"altera_edac.file=drivers/edac/altera_edac\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [27 x i8] c"altera_edac.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author246 = internal constant [31 x i8] c"altera_edac.author=Thor Thayer\00", section ".modinfo", align 1
@__UNIQUE_ID_description247 = internal constant [56 x i8] c"altera_edac.description=EDAC Driver for Altera Memories\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"altr_sdram_edac\00", [16 x i8] zeroinitializer }, align 32
@altr_sdram_ctrl_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,sdram-edac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @c5_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,sdram-edac-a10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @a10_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@altr_sdram_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @altr_sdram_prepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"altr,sdr-syscon\00", [16 x i8] zeroinitializer }, align 32
@altr_sdram_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013EDAC MC: regmap for altr,sdr-syscon lookup failed.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"altr_sdram_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/edac/altera_edac.c\00", [37 x i8] zeroinitializer }, align 32
@altr_sdram_probe._entry_ptr = internal global ptr @altr_sdram_probe._entry, section ".printk_index", align 4
@altr_sdram_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013EDAC MC: No ECC/ECC disabled [0x%08X]\0A\00", [55 x i8] zeroinitializer }, align 32
@altr_sdram_probe._entry_ptr.7 = internal global ptr @altr_sdram_probe._entry.5, section ".printk_index", align 4
@altr_sdram_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013EDAC MC: Unable to calculate memory size\0A\00", [52 x i8] zeroinitializer }, align 32
@altr_sdram_probe._entry_ptr.10 = internal global ptr @altr_sdram_probe._entry.8, section ".printk_index", align 4
@altr_sdram_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013EDAC MC: Error disabling SDRAM ECC IRQ\0A\00", [54 x i8] zeroinitializer }, align 32
@altr_sdram_probe._entry_ptr.13 = internal global ptr @altr_sdram_probe._entry.11, section ".printk_index", align 4
@altr_sdram_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013EDAC MC: Error clearing SDRAM ECC count\0A\00", [53 x i8] zeroinitializer }, align 32
@altr_sdram_probe._entry_ptr.16 = internal global ptr @altr_sdram_probe._entry.14, section ".printk_index", align 4
@altr_sdram_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@altr_sdram_probe._entry_ptr.18 = internal global ptr @altr_sdram_probe._entry.17, section ".printk_index", align 4
@altr_sdram_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013EDAC MC: No irq %d in DT\0A\00", [36 x i8] zeroinitializer }, align 32
@altr_sdram_probe._entry_ptr.21 = internal global ptr @altr_sdram_probe._entry.19, section ".printk_index", align 4
@altr_sdram_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013EDAC MC: Unable to get managed device resource\0A\00", [46 x i8] zeroinitializer }, align 32
@altr_sdram_probe._entry_ptr.24 = internal global ptr @altr_sdram_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"altera_edac\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"altr,socfpga-arria10\00", [43 x i8] zeroinitializer }, align 32
@altr_sdram_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013EDAC MC%d: Unable to request irq %d\0A\00", [57 x i8] zeroinitializer }, align 32
@altr_sdram_probe._entry_ptr.29 = internal global ptr @altr_sdram_probe._entry.27, section ".printk_index", align 4
@altr_sdram_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@altr_sdram_probe._entry_ptr.31 = internal global ptr @altr_sdram_probe._entry.30, section ".printk_index", align 4
@altr_sdram_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.3, ptr @.str.4, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013EDAC MC%d: Error enabling SDRAM ECC IRQ\0A\00", [53 x i8] zeroinitializer }, align 32
@altr_sdram_probe._entry_ptr.34 = internal global ptr @altr_sdram_probe._entry.32, section ".printk_index", align 4
@altr_sdram_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.3, ptr @.str.4, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013EDAC MC: EDAC Probe Failed; Error %d\0A\00", [56 x i8] zeroinitializer }, align 32
@altr_sdram_probe._entry_ptr.37 = internal global ptr @altr_sdram_probe._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memory\00", [25 x i8] zeroinitializer }, align 32
@edac_debug_level = external dso_local local_unnamed_addr global i32, align 4
@get_total_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017EDAC DEBUG: %s: total_mem 0x%lx\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"get_total_mem\00", [18 x i8] zeroinitializer }, align 32
@get_total_mem._entry_ptr = internal global ptr @get_total_mem._entry, section ".printk_index", align 4
@a10_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013EDAC MC: Error setting SB IRQ mode\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"a10_init\00", [23 x i8] zeroinitializer }, align 32
@a10_init._entry_ptr = internal global ptr @a10_init._entry, section ".printk_index", align 4
@a10_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.4, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013EDAC MC: Error setting trigger count\0A\00", [56 x i8] zeroinitializer }, align 32
@a10_init._entry_ptr.45 = internal global ptr @a10_init._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\0AEDAC: [%d Uncorrectable errors @ 0x%08X]\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@a10_unmask_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013EDAC MC: Unable to request mem region\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"a10_unmask_irq\00", [17 x i8] zeroinitializer }, align 32
@a10_unmask_irq._entry_ptr = internal global ptr @a10_unmask_irq._entry, section ".printk_index", align 4
@a10_unmask_irq._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.4, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013EDAC MC: Unable to ioremap device\0A\00", [59 x i8] zeroinitializer }, align 32
@a10_unmask_irq._entry_ptr.52 = internal global ptr @a10_unmask_irq._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"altr_trigger\00", [19 x i8] zeroinitializer }, align 32
@altr_sdr_mc_debug_inject_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @altr_sdr_mc_err_inject_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@altr_sdr_mc_err_inject_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013EDAC MC: Inject: Buffer Allocation error\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"altr_sdr_mc_err_inject_write\00", [35 x i8] zeroinitializer }, align 32
@altr_sdr_mc_err_inject_write._entry_ptr = internal global ptr @altr_sdr_mc_err_inject_write._entry, section ".printk_index", align 4
@altr_sdr_mc_err_inject_write._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.4, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\011EDAC MC: Inject Double bit error\0A\00", [60 x i8] zeroinitializer }, align 32
@altr_sdr_mc_err_inject_write._entry_ptr.58 = internal global ptr @altr_sdr_mc_err_inject_write._entry.56, section ".printk_index", align 4
@altr_sdr_mc_err_inject_write._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.4, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\011EDAC MC: Inject Single bit error\0A\00", [60 x i8] zeroinitializer }, align 32
@altr_sdr_mc_err_inject_write._entry_ptr.61 = internal global ptr @altr_sdr_mc_err_inject_write._entry.59, section ".printk_index", align 4
@altr_sdr_mc_err_inject_write._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.55, ptr @.str.4, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\011EDAC MC: Read Data [0x%X, 0x%X]\0A\00", [61 x i8] zeroinitializer }, align 32
@altr_sdr_mc_err_inject_write._entry_ptr.64 = internal global ptr @altr_sdr_mc_err_inject_write._entry.62, section ".printk_index", align 4
@c5_data = internal constant { %struct.altr_sdram_prv_data, [48 x i8] } { %struct.altr_sdram_prv_data { i32 0, i32 1024, i32 64, i32 68, i32 56, i32 4, i32 8, i32 72, i32 72, i32 60, i32 1, i32 60, i32 17, i32 60, i32 16, ptr null, i32 0, i32 8192, i32 16384, i32 0 }, [48 x i8] zeroinitializer }, align 32
@a10_data = internal constant { %struct.altr_sdram_prv_data, [48 x i8] } { %struct.altr_sdram_prv_data { i32 0, i32 1, i32 0, i32 0, i32 32, i32 1, i32 2, i32 48, i32 44, i32 16, i32 3, i32 32, i32 3, i32 0, i32 272, ptr null, i32 0, i32 1, i32 256, i32 36 }, [48 x i8] zeroinitializer }, align 32
@altr_sdram_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.4, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Suspend not allowed when EDAC is enabled.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"altr_sdram_prepare\00", [45 x i8] zeroinitializer }, align 32
@altr_sdram_prepare._entry_ptr = internal global ptr @altr_sdram_prepare._entry, section ".printk_index", align 4
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"socfpga_ecc_manager\00", [44 x i8] zeroinitializer }, align 32
@altr_edac_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-ecc-manager\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@altr_edac_device_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-l2-ecc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @l2ecc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-ocram-ecc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ocramecc_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@l2ecc_data = internal constant { %struct.edac_device_prv_data, [36 x i8] } { %struct.edac_device_prv_data { ptr @altr_l2_check_deps, i32 0, i32 0, i32 0, ptr @l2_alloc_mem, ptr @l2_free_mem, i32 1, i32 0, i32 3, i32 5, i32 0, ptr null, i32 4096, ptr @altr_edac_device_inject_fops, i8 0 }, [36 x i8] zeroinitializer }, align 32
@ocramecc_data = internal constant { %struct.edac_device_prv_data, [36 x i8] } { %struct.edac_device_prv_data { ptr @altr_check_ecc_deps, i32 9, i32 17, i32 0, ptr @ocram_alloc_mem, ptr @ocram_free_mem, i32 1, i32 0, i32 3, i32 5, i32 0, ptr null, i32 128, ptr @altr_edac_device_inject_fops, i8 0 }, [36 x i8] zeroinitializer }, align 32
@altr_edac_device_inject_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @altr_edac_device_trig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@altr_l2_check_deps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.4, i32 1249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013EDAC Altera: L2: No ECC present, or ECC disabled\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"altr_l2_check_deps\00", [45 x i8] zeroinitializer }, align 32
@altr_l2_check_deps._entry_ptr = internal global ptr @altr_l2_check_deps._entry, section ".printk_index", align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@altr_edac_device_trig._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.4, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013EDAC Altera: Inject: Buffer Allocation error\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"altr_edac_device_trig\00", [42 x i8] zeroinitializer }, align 32
@altr_edac_device_trig._entry_ptr = internal global ptr @altr_edac_device_trig._entry, section ".printk_index", align 4
@altr_edac_device_trig._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.4, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\011EDAC Altera: Trigger Error Mask (0x%X)\0A\00", [54 x i8] zeroinitializer }, align 32
@altr_edac_device_trig._entry_ptr.75 = internal global ptr @altr_edac_device_trig._entry.73, section ".printk_index", align 4
@altr_edac_device_trig._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.72, ptr @.str.4, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013EDAC Altera: Mem Not Cleared\0A\00", [32 x i8] zeroinitializer }, align 32
@altr_edac_device_trig._entry_ptr.78 = internal global ptr @altr_edac_device_trig._entry.76, section ".printk_index", align 4
@altr_edac_device_trig._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.72, ptr @.str.4, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013EDAC Altera: Read doesn't match written data\0A\00", [48 x i8] zeroinitializer }, align 32
@altr_edac_device_trig._entry_ptr.81 = internal global ptr @altr_edac_device_trig._entry.79, section ".printk_index", align 4
@altr_check_ecc_deps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.4, i32 856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013EDAC Altera: %s: No ECC present or ECC disabled.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"altr_check_ecc_deps\00", [44 x i8] zeroinitializer }, align 32
@altr_check_ecc_deps._entry_ptr = internal global ptr @altr_check_ecc_deps._entry, section ".printk_index", align 4
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"altr,socfpga-ocram-ecc\00", [41 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iram\00", [27 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"altr_edac_device\00", [47 x i8] zeroinitializer }, align 32
@altr_edac_device_probe.dev_instance = internal global { i32, [28 x i8] } zeroinitializer, align 32
@altr_edac_device_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.4, i32 726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013EDAC Altera: Unable to open devm\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"altr_edac_device_probe\00", [41 x i8] zeroinitializer }, align 32
@altr_edac_device_probe._entry_ptr = internal global ptr @altr_edac_device_probe._entry, section ".printk_index", align 4
@altr_edac_device_probe._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.4, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013EDAC Altera: Unable to get mem resource\0A\00", [53 x i8] zeroinitializer }, align 32
@altr_edac_device_probe._entry_ptr.91 = internal global ptr @altr_edac_device_probe._entry.89, section ".printk_index", align 4
@altr_edac_device_probe._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.88, ptr @.str.4, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013EDAC Altera: %s:Error requesting mem region\0A\00", [49 x i8] zeroinitializer }, align 32
@altr_edac_device_probe._entry_ptr.94 = internal global ptr @altr_edac_device_probe._entry.92, section ".printk_index", align 4
@altr_edac_device_probe._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.88, ptr @.str.4, i32 752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013EDAC Altera: %s: Unable to allocate EDAC device\0A\00", [45 x i8] zeroinitializer }, align 32
@altr_edac_device_probe._entry_ptr.97 = internal global ptr @altr_edac_device_probe._entry.95, section ".printk_index", align 4
@.str.98 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Altera ECC Manager\00", [45 x i8] zeroinitializer }, align 32
@altr_edac_device_probe._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.88, ptr @.str.4, i32 810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013EDAC Altera: %s:Error setting up EDAC device: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@altr_edac_device_probe._entry_ptr.101 = internal global ptr @altr_edac_device_probe._entry.99, section ".printk_index", align 4
@.str.102 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\0AEDAC:ECC_DEVICE[Uncorrectable errors]\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"socfpga_a10_ecc_manager\00", [40 x i8] zeroinitializer }, align 32
@altr_edac_a10_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-a10-ecc-manager\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-s10-ecc-manager\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"altr,sysmgr-syscon\00", [45 x i8] zeroinitializer }, align 32
@altr_edac_a10_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.4, i32 2099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013EDAC Altera: Unable to get syscon altr,sysmgr-syscon\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"altr_edac_a10_probe\00", [44 x i8] zeroinitializer }, align 32
@altr_edac_a10_probe._entry_ptr = internal global ptr @altr_edac_a10_probe._entry, section ".printk_index", align 4
@a10_eccmgr_ic_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @a10_eccmgr_irqdomain_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@altr_edac_a10_probe._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.4, i32 2109, ptr @.str.109, ptr @.str.110 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error adding IRQ domain\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@altr_edac_a10_probe._entry_ptr.111 = internal global ptr @altr_edac_a10_probe._entry.107, section ".printk_index", align 4
@altr_edac_a10_probe._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.106, ptr @.str.4, i32 2115, ptr @.str.109, ptr @.str.110 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No SBERR IRQ resource\0A\00", [41 x i8] zeroinitializer }, align 32
@altr_edac_a10_probe._entry_ptr.114 = internal global ptr @altr_edac_a10_probe._entry.112, section ".printk_index", align 4
@altr_edac_a10_probe._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.106, ptr @.str.4, i32 2150, ptr @.str.109, ptr @.str.110 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No DBERR IRQ resource\0A\00", [41 x i8] zeroinitializer }, align 32
@altr_edac_a10_probe._entry_ptr.117 = internal global ptr @altr_edac_a10_probe._entry.115, section ".printk_index", align 4
@altr_edac_a10_device_of_match = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-a10-l2-ecc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @a10_l2ecc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-a10-ocram-ecc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @a10_ocramecc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-eth-mac-ecc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @a10_enetecc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-nand-ecc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @a10_nandecc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-dma-ecc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @a10_dmaecc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-usb-ecc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @a10_usbecc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-qspi-ecc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @a10_qspiecc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-sdmmc-ecc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @a10_sdmmcecca_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,sdram-edac-s10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s10_sdramecc_data }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"altr,sdram-edac-a10\00", [44 x i8] zeroinitializer }, align 32
@a10_l2ecc_data = internal constant { %struct.edac_device_prv_data, [36 x i8] } { %struct.edac_device_prv_data { ptr @altr_l2_check_deps, i32 32768, i32 -2147483648, i32 1, ptr @l2_alloc_mem, ptr @l2_free_mem, i32 1, i32 0, i32 257, i32 65793, i32 0, ptr @altr_edac_a10_l2_irq, i32 4096, ptr @altr_edac_device_inject_fops, i8 0 }, [36 x i8] zeroinitializer }, align 32
@a10_ocramecc_data = internal constant { %struct.edac_device_prv_data, [36 x i8] } { %struct.edac_device_prv_data { ptr @altr_check_ocram_deps_init, i32 1, i32 256, i32 2, ptr null, ptr null, i32 3, i32 8, i32 1, i32 256, i32 36, ptr @altr_edac_a10_ecc_irq, i32 0, ptr @altr_edac_a10_device_inject2_fops, i8 1 }, [36 x i8] zeroinitializer }, align 32
@a10_enetecc_data = internal constant { %struct.edac_device_prv_data, [36 x i8] } { %struct.edac_device_prv_data { ptr @socfpga_init_ethernet_ecc, i32 1, i32 256, i32 0, ptr null, ptr null, i32 1, i32 8, i32 1, i32 256, i32 36, ptr @altr_edac_a10_ecc_irq, i32 0, ptr @altr_edac_a10_device_inject2_fops, i8 0 }, [36 x i8] zeroinitializer }, align 32
@a10_nandecc_data = internal constant { %struct.edac_device_prv_data, [36 x i8] } { %struct.edac_device_prv_data { ptr @socfpga_init_nand_ecc, i32 1, i32 256, i32 0, ptr null, ptr null, i32 1, i32 8, i32 1, i32 256, i32 36, ptr @altr_edac_a10_ecc_irq, i32 0, ptr @altr_edac_a10_device_inject_fops, i8 0 }, [36 x i8] zeroinitializer }, align 32
@a10_dmaecc_data = internal constant { %struct.edac_device_prv_data, [36 x i8] } { %struct.edac_device_prv_data { ptr @socfpga_init_dma_ecc, i32 1, i32 256, i32 0, ptr null, ptr null, i32 1, i32 8, i32 1, i32 256, i32 36, ptr @altr_edac_a10_ecc_irq, i32 0, ptr @altr_edac_a10_device_inject_fops, i8 0 }, [36 x i8] zeroinitializer }, align 32
@a10_usbecc_data = internal constant { %struct.edac_device_prv_data, [36 x i8] } { %struct.edac_device_prv_data { ptr @socfpga_init_usb_ecc, i32 1, i32 256, i32 0, ptr null, ptr null, i32 1, i32 8, i32 1, i32 256, i32 36, ptr @altr_edac_a10_ecc_irq, i32 0, ptr @altr_edac_a10_device_inject2_fops, i8 0 }, [36 x i8] zeroinitializer }, align 32
@a10_qspiecc_data = internal constant { %struct.edac_device_prv_data, [36 x i8] } { %struct.edac_device_prv_data { ptr @socfpga_init_qspi_ecc, i32 1, i32 256, i32 0, ptr null, ptr null, i32 1, i32 8, i32 1, i32 256, i32 36, ptr @altr_edac_a10_ecc_irq, i32 0, ptr @altr_edac_a10_device_inject_fops, i8 0 }, [36 x i8] zeroinitializer }, align 32
@a10_sdmmcecca_data = internal constant { %struct.edac_device_prv_data, [36 x i8] } { %struct.edac_device_prv_data { ptr @socfpga_init_sdmmc_ecc, i32 1, i32 256, i32 0, ptr null, ptr null, i32 1, i32 8, i32 1, i32 256, i32 36, ptr @altr_edac_a10_ecc_irq, i32 0, ptr @altr_edac_a10_device_inject_fops, i8 0 }, [36 x i8] zeroinitializer }, align 32
@s10_sdramecc_data = internal constant { %struct.edac_device_prv_data, [36 x i8] } { %struct.edac_device_prv_data { ptr @altr_check_ecc_deps, i32 1, i32 256, i32 0, ptr null, ptr null, i32 1, i32 0, i32 1, i32 256, i32 36, ptr @altr_edac_a10_ecc_irq, i32 0, ptr @altr_edac_a10_device_inject_fops, i8 0 }, [36 x i8] zeroinitializer }, align 32
@altr_edac_a10_device_inject2_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @altr_edac_a10_device_trig2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"altr,socfpga-eth-mac-ecc\00", [39 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"altr,socfpga-a10-ecc-manager\00", [35 x i8] zeroinitializer }, align 32
@altr_init_a10_ecc_device_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.4, i32 1044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013EDAC Altera: ECC Manager not found\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"altr_init_a10_ecc_device_type\00", [34 x i8] zeroinitializer }, align 32
@altr_init_a10_ecc_device_type._entry_ptr = internal global ptr @altr_init_a10_ecc_device_type._entry, section ".printk_index", align 4
@.str.123 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"altr,sdram-edac-s10\00", [44 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"altr,ecc-parent\00", [16 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"interrupts\00", [21 x i8] zeroinitializer }, align 32
@altr_init_a10_ecc_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.126, ptr @.str.4, i32 980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"altr_init_a10_ecc_block\00", [40 x i8] zeroinitializer }, align 32
@altr_init_a10_ecc_block._entry_ptr = internal global ptr @altr_init_a10_ecc_block._entry, section ".printk_index", align 4
@altr_init_a10_ecc_block._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.4, i32 988, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013EDAC Altera: Unable to map %s ECC block\0A\00", [53 x i8] zeroinitializer }, align 32
@altr_init_a10_ecc_block._entry_ptr.129 = internal global ptr @altr_init_a10_ecc_block._entry.127, section ".printk_index", align 4
@altr_init_a10_ecc_block._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.126, ptr @.str.4, i32 1004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013EDAC Altera: ECC: cannot init %s PORTA memory\0A\00", [47 x i8] zeroinitializer }, align 32
@altr_init_a10_ecc_block._entry_ptr.132 = internal global ptr @altr_init_a10_ecc_block._entry.130, section ".printk_index", align 4
@altr_init_a10_ecc_block._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.126, ptr @.str.4, i32 1013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013EDAC Altera: ECC: cannot init %s PORTB memory\0A\00", [47 x i8] zeroinitializer }, align 32
@altr_init_a10_ecc_block._entry_ptr.135 = internal global ptr @altr_init_a10_ecc_block._entry.133, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@altr_edac_a10_device_inject_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @altr_edac_a10_device_trig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"altr,socfpga-nand-ecc\00", [42 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"altr,socfpga-dma-ecc\00", [43 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"altr,socfpga-usb-ecc\00", [43 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"altr,socfpga-qspi-ecc\00", [42 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"altr,socfpga-sdmmc-ecc\00", [41 x i8] zeroinitializer }, align 32
@a10_sdmmceccb_data = internal constant { %struct.edac_device_prv_data, [36 x i8] } { %struct.edac_device_prv_data { ptr @socfpga_init_sdmmc_ecc, i32 65536, i32 16777216, i32 0, ptr null, ptr null, i32 1, i32 8, i32 65536, i32 16777216, i32 36, ptr @altr_edac_a10_ecc_irq_portb, i32 0, ptr @altr_edac_a10_device_inject_fops, i8 0 }, [36 x i8] zeroinitializer }, align 32
@altr_edac_a10_ecc_irq_portb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.141 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unhandled IRQ%d on Port B.\00", [37 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdmmcb-ecc\00", [21 x i8] zeroinitializer }, align 32
@altr_portb_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.4, i32 1481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014EDAC Altera: SDMMC node not found\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"altr_portb_setup\00", [47 x i8] zeroinitializer }, align 32
@altr_portb_setup._entry_ptr = internal global ptr @altr_portb_setup._entry, section ".printk_index", align 4
@altr_portb_setup._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.4, i32 1492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013EDAC Altera: %s: Unable to allocate PortB EDAC device\0A\00", [39 x i8] zeroinitializer }, align 32
@altr_portb_setup._entry_ptr.147 = internal global ptr @altr_portb_setup._entry.145, section ".printk_index", align 4
@altr_portb_setup._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.144, ptr @.str.4, i32 1525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013EDAC Altera: Error PortB SBIRQ alloc\0A\00", [56 x i8] zeroinitializer }, align 32
@altr_portb_setup._entry_ptr.150 = internal global ptr @altr_portb_setup._entry.148, section ".printk_index", align 4
@altr_portb_setup._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.144, ptr @.str.4, i32 1534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013EDAC Altera: PortB SBERR IRQ error\0A\00", [58 x i8] zeroinitializer }, align 32
@altr_portb_setup._entry_ptr.153 = internal global ptr @altr_portb_setup._entry.151, section ".printk_index", align 4
@altr_portb_setup._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.144, ptr @.str.4, i32 1549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013EDAC Altera: Error PortB DBIRQ alloc\0A\00", [56 x i8] zeroinitializer }, align 32
@altr_portb_setup._entry_ptr.156 = internal global ptr @altr_portb_setup._entry.154, section ".printk_index", align 4
@altr_portb_setup._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.144, ptr @.str.4, i32 1558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013EDAC Altera: PortB DBERR IRQ error\0A\00", [58 x i8] zeroinitializer }, align 32
@altr_portb_setup._entry_ptr.159 = internal global ptr @altr_portb_setup._entry.157, section ".printk_index", align 4
@altr_portb_setup._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.144, ptr @.str.4, i32 1566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013EDAC Altera: edac_device_add_device portB failed\0A\00", [44 x i8] zeroinitializer }, align 32
@altr_portb_setup._entry_ptr.162 = internal global ptr @altr_portb_setup._entry.160, section ".printk_index", align 4
@altr_portb_setup._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.144, ptr @.str.4, i32 1582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@altr_portb_setup._entry_ptr.164 = internal global ptr @altr_portb_setup._entry.163, section ".printk_index", align 4
@altr_edac_a10_device_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.166, ptr @.str.4, i32 1889, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013EDAC Altera: %s: no resource address\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"altr_edac_a10_device_add\00", [39 x i8] zeroinitializer }, align 32
@altr_edac_a10_device_add._entry_ptr = internal global ptr @altr_edac_a10_device_add._entry, section ".printk_index", align 4
@altr_edac_a10_device_add._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.166, ptr @.str.4, i32 1900, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@altr_edac_a10_device_add._entry_ptr.168 = internal global ptr @altr_edac_a10_device_add._entry.167, section ".printk_index", align 4
@altr_edac_a10_device_add._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.166, ptr @.str.4, i32 1933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013EDAC Altera: Error allocating SBIRQ\0A\00", [57 x i8] zeroinitializer }, align 32
@altr_edac_a10_device_add._entry_ptr.171 = internal global ptr @altr_edac_a10_device_add._entry.169, section ".printk_index", align 4
@altr_edac_a10_device_add._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.166, ptr @.str.4, i32 1941, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013EDAC Altera: No SBERR IRQ resource\0A\00", [58 x i8] zeroinitializer }, align 32
@altr_edac_a10_device_add._entry_ptr.174 = internal global ptr @altr_edac_a10_device_add._entry.172, section ".printk_index", align 4
@altr_edac_a10_device_add._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.166, ptr @.str.4, i32 1956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013EDAC Altera: Error allocating DBIRQ\0A\00", [57 x i8] zeroinitializer }, align 32
@altr_edac_a10_device_add._entry_ptr.177 = internal global ptr @altr_edac_a10_device_add._entry.175, section ".printk_index", align 4
@altr_edac_a10_device_add._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.166, ptr @.str.4, i32 1964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013EDAC Altera: No DBERR IRQ resource\0A\00", [58 x i8] zeroinitializer }, align 32
@altr_edac_a10_device_add._entry_ptr.180 = internal global ptr @altr_edac_a10_device_add._entry.178, section ".printk_index", align 4
@altr_edac_a10_device_add._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.166, ptr @.str.4, i32 1971, ptr @.str.109, ptr @.str.110 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"edac_device_add_device failed\0A\00", [33 x i8] zeroinitializer }, align 32
@altr_edac_a10_device_add._entry_ptr.183 = internal global ptr @altr_edac_a10_device_add._entry.181, section ".printk_index", align 4
@altr_edac_a10_device_add._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.166, ptr @.str.4, i32 1989, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@altr_edac_a10_device_add._entry_ptr.185 = internal global ptr @altr_edac_a10_device_add._entry.184, section ".printk_index", align 4
@___asan_gen_.186 = private unnamed_addr constant [23 x i8] c"altr_sdram_edac_driver\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 490, i32 31 }
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"altr_edac_driver\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 523, i32 31 }
@___asan_gen_.192 = private unnamed_addr constant [24 x i8] c"altr_edac_device_driver\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 827, i32 31 }
@___asan_gen_.195 = private unnamed_addr constant [21 x i8] c"altr_edac_a10_driver\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2182, i32 31 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 494, i32 11 }
@___asan_gen_.201 = private unnamed_addr constant [25 x i8] c"altr_sdram_ctrl_of_match\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 224, i32 34 }
@___asan_gen_.204 = private unnamed_addr constant [18 x i8] c"altr_sdram_pm_ops\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 485, i32 32 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 299, i32 10 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 301, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 313, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 321, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 328, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 337, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 344, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 351, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 377, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 386, i32 18 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 403, i32 31 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 413, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 429, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 438, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 456, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 213, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 220, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 235, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 241, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 95, i32 9 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 107, i32 35 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 256, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 263, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 201, i32 27 }
@___asan_gen_.339 = private unnamed_addr constant [30 x i8] c"altr_sdr_mc_debug_inject_fops\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 187, i32 37 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 131, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 145, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 152, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 179, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant [8 x i8] c"c5_data\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 36, i32 41 }
@___asan_gen_.372 = private unnamed_addr constant [9 x i8] c"a10_data\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 57, i32 41 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 480, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 526, i32 11 }
@___asan_gen_.387 = private unnamed_addr constant [19 x i8] c"altr_edac_of_match\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 510, i32 34 }
@___asan_gen_.390 = private unnamed_addr constant [26 x i8] c"altr_edac_device_of_match\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 695, i32 34 }
@___asan_gen_.393 = private unnamed_addr constant [11 x i8] c"l2ecc_data\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1279, i32 42 }
@___asan_gen_.396 = private unnamed_addr constant [14 x i8] c"ocramecc_data\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1138, i32 42 }
@___asan_gen_.399 = private unnamed_addr constant [29 x i8] c"altr_edac_device_inject_fops\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 651, i32 37 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1248, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 606, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 616, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 637, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 642, i32 4 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 854, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1110, i32 43 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1114, i32 27 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 831, i32 11 }
@___asan_gen_.456 = private unnamed_addr constant [13 x i8] c"dev_instance\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 722, i32 13 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 725, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 732, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 740, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 751, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 792, i32 18 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 809, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 571, i32 9 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2185, i32 11 }
@___asan_gen_.501 = private unnamed_addr constant [23 x i8] c"altr_edac_a10_of_match\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2175, i32 34 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2095, i32 12 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2098, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant [18 x i8] c"a10_eccmgr_ic_ops\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2022, i32 36 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2109, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2115, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2150, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant [30 x i8] c"altr_edac_a10_device_of_match\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1667, i32 34 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 2165, i32 43 }
@___asan_gen_.549 = private unnamed_addr constant [15 x i8] c"a10_l2ecc_data\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1293, i32 42 }
@___asan_gen_.552 = private unnamed_addr constant [18 x i8] c"a10_ocramecc_data\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1176, i32 42 }
@___asan_gen_.555 = private unnamed_addr constant [17 x i8] c"a10_enetecc_data\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1326, i32 42 }
@___asan_gen_.558 = private unnamed_addr constant [17 x i8] c"a10_nandecc_data\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1356, i32 42 }
@___asan_gen_.561 = private unnamed_addr constant [16 x i8] c"a10_dmaecc_data\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1386, i32 42 }
@___asan_gen_.564 = private unnamed_addr constant [16 x i8] c"a10_usbecc_data\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1416, i32 42 }
@___asan_gen_.567 = private unnamed_addr constant [17 x i8] c"a10_qspiecc_data\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1446, i32 42 }
@___asan_gen_.570 = private unnamed_addr constant [19 x i8] c"a10_sdmmcecca_data\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1638, i32 42 }
@___asan_gen_.573 = private unnamed_addr constant [18 x i8] c"s10_sdramecc_data\00", align 1
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1086, i32 42 }
@___asan_gen_.576 = private unnamed_addr constant [34 x i8] c"altr_edac_a10_device_inject2_fops\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 671, i32 37 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1319, i32 38 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1042, i32 10 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1044, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1827, i32 34 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1831, i32 32 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 891, i32 42 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 979, i32 3 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 987, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1003, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1011, i32 4 }
@___asan_gen_.627 = private unnamed_addr constant [33 x i8] c"altr_edac_a10_device_inject_fops\00", align 1
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 661, i32 37 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1349, i32 38 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1379, i32 38 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1409, i32 38 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1439, i32 38 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1591, i32 46 }
@___asan_gen_.645 = private unnamed_addr constant [19 x i8] c"a10_sdmmceccb_data\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1651, i32 42 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1633, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1470, i32 19 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1481, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1490, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1525, i32 3 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1534, i32 3 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1549, i32 3 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1558, i32 3 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1565, i32 3 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1581, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1888, i32 3 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1899, i32 3 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1933, i32 3 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1941, i32 3 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1956, i32 3 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1964, i32 3 }
@___asan_gen_.741 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1971, i32 3 }
@___asan_gen_.744 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.745 = private constant [30 x i8] c"../drivers/edac/altera_edac.c\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.745, i32 1988, i32 2 }
@llvm.compiler.used = appending global [261 x ptr] [ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_altr_edac_a10_driver_exit, ptr @__exitcall_altr_edac_device_driver_exit, ptr @__exitcall_altr_edac_driver_exit, ptr @__exitcall_altr_sdram_edac_driver_exit, ptr @__initcall__kmod_altera_edac__238_502_altr_sdram_edac_driver_init6, ptr @__initcall__kmod_altera_edac__239_530_altr_edac_driver_init6, ptr @__initcall__kmod_altera_edac__242_835_altr_edac_device_driver_init6, ptr @__initcall__kmod_altera_edac__243_2189_altr_edac_a10_driver_init6, ptr @a10_init._entry, ptr @a10_init._entry.43, ptr @a10_init._entry_ptr, ptr @a10_init._entry_ptr.45, ptr @a10_unmask_irq._entry, ptr @a10_unmask_irq._entry.50, ptr @a10_unmask_irq._entry_ptr, ptr @a10_unmask_irq._entry_ptr.52, ptr @altr_check_ecc_deps._entry, ptr @altr_check_ecc_deps._entry_ptr, ptr @altr_edac_a10_device_add._entry, ptr @altr_edac_a10_device_add._entry.167, ptr @altr_edac_a10_device_add._entry.169, ptr @altr_edac_a10_device_add._entry.172, ptr @altr_edac_a10_device_add._entry.175, ptr @altr_edac_a10_device_add._entry.178, ptr @altr_edac_a10_device_add._entry.181, ptr @altr_edac_a10_device_add._entry.184, ptr @altr_edac_a10_device_add._entry_ptr, ptr @altr_edac_a10_device_add._entry_ptr.168, ptr @altr_edac_a10_device_add._entry_ptr.171, ptr @altr_edac_a10_device_add._entry_ptr.174, ptr @altr_edac_a10_device_add._entry_ptr.177, ptr @altr_edac_a10_device_add._entry_ptr.180, ptr @altr_edac_a10_device_add._entry_ptr.183, ptr @altr_edac_a10_device_add._entry_ptr.185, ptr @altr_edac_a10_driver_exit, ptr @altr_edac_a10_probe._entry, ptr @altr_edac_a10_probe._entry.107, ptr @altr_edac_a10_probe._entry.112, ptr @altr_edac_a10_probe._entry.115, ptr @altr_edac_a10_probe._entry_ptr, ptr @altr_edac_a10_probe._entry_ptr.111, ptr @altr_edac_a10_probe._entry_ptr.114, ptr @altr_edac_a10_probe._entry_ptr.117, ptr @altr_edac_device_driver_exit, ptr @altr_edac_device_probe._entry, ptr @altr_edac_device_probe._entry.89, ptr @altr_edac_device_probe._entry.92, ptr @altr_edac_device_probe._entry.95, ptr @altr_edac_device_probe._entry.99, ptr @altr_edac_device_probe._entry_ptr, ptr @altr_edac_device_probe._entry_ptr.101, ptr @altr_edac_device_probe._entry_ptr.91, ptr @altr_edac_device_probe._entry_ptr.94, ptr @altr_edac_device_probe._entry_ptr.97, ptr @altr_edac_device_trig._entry, ptr @altr_edac_device_trig._entry.73, ptr @altr_edac_device_trig._entry.76, ptr @altr_edac_device_trig._entry.79, ptr @altr_edac_device_trig._entry_ptr, ptr @altr_edac_device_trig._entry_ptr.75, ptr @altr_edac_device_trig._entry_ptr.78, ptr @altr_edac_device_trig._entry_ptr.81, ptr @altr_edac_driver_exit, ptr @altr_init_a10_ecc_block._entry, ptr @altr_init_a10_ecc_block._entry.127, ptr @altr_init_a10_ecc_block._entry.130, ptr @altr_init_a10_ecc_block._entry.133, ptr @altr_init_a10_ecc_block._entry_ptr, ptr @altr_init_a10_ecc_block._entry_ptr.129, ptr @altr_init_a10_ecc_block._entry_ptr.132, ptr @altr_init_a10_ecc_block._entry_ptr.135, ptr @altr_init_a10_ecc_device_type._entry, ptr @altr_init_a10_ecc_device_type._entry_ptr, ptr @altr_l2_check_deps._entry, ptr @altr_l2_check_deps._entry_ptr, ptr @altr_portb_setup._entry, ptr @altr_portb_setup._entry.145, ptr @altr_portb_setup._entry.148, ptr @altr_portb_setup._entry.151, ptr @altr_portb_setup._entry.154, ptr @altr_portb_setup._entry.157, ptr @altr_portb_setup._entry.160, ptr @altr_portb_setup._entry.163, ptr @altr_portb_setup._entry_ptr, ptr @altr_portb_setup._entry_ptr.147, ptr @altr_portb_setup._entry_ptr.150, ptr @altr_portb_setup._entry_ptr.153, ptr @altr_portb_setup._entry_ptr.156, ptr @altr_portb_setup._entry_ptr.159, ptr @altr_portb_setup._entry_ptr.162, ptr @altr_portb_setup._entry_ptr.164, ptr @altr_sdr_mc_err_inject_write._entry, ptr @altr_sdr_mc_err_inject_write._entry.56, ptr @altr_sdr_mc_err_inject_write._entry.59, ptr @altr_sdr_mc_err_inject_write._entry.62, ptr @altr_sdr_mc_err_inject_write._entry_ptr, ptr @altr_sdr_mc_err_inject_write._entry_ptr.58, ptr @altr_sdr_mc_err_inject_write._entry_ptr.61, ptr @altr_sdr_mc_err_inject_write._entry_ptr.64, ptr @altr_sdram_edac_driver_exit, ptr @altr_sdram_prepare._entry, ptr @altr_sdram_prepare._entry_ptr, ptr @altr_sdram_probe._entry, ptr @altr_sdram_probe._entry.11, ptr @altr_sdram_probe._entry.14, ptr @altr_sdram_probe._entry.17, ptr @altr_sdram_probe._entry.19, ptr @altr_sdram_probe._entry.22, ptr @altr_sdram_probe._entry.27, ptr @altr_sdram_probe._entry.30, ptr @altr_sdram_probe._entry.32, ptr @altr_sdram_probe._entry.35, ptr @altr_sdram_probe._entry.5, ptr @altr_sdram_probe._entry.8, ptr @altr_sdram_probe._entry_ptr, ptr @altr_sdram_probe._entry_ptr.10, ptr @altr_sdram_probe._entry_ptr.13, ptr @altr_sdram_probe._entry_ptr.16, ptr @altr_sdram_probe._entry_ptr.18, ptr @altr_sdram_probe._entry_ptr.21, ptr @altr_sdram_probe._entry_ptr.24, ptr @altr_sdram_probe._entry_ptr.29, ptr @altr_sdram_probe._entry_ptr.31, ptr @altr_sdram_probe._entry_ptr.34, ptr @altr_sdram_probe._entry_ptr.37, ptr @altr_sdram_probe._entry_ptr.7, ptr @get_total_mem._entry, ptr @get_total_mem._entry_ptr, ptr @altr_sdram_edac_driver, ptr @altr_edac_driver, ptr @altr_edac_device_driver, ptr @altr_edac_a10_driver, ptr @.str, ptr @altr_sdram_ctrl_of_match, ptr @altr_sdram_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @altr_sdr_mc_debug_inject_fops, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @c5_data, ptr @a10_data, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @altr_edac_of_match, ptr @altr_edac_device_of_match, ptr @l2ecc_data, ptr @ocramecc_data, ptr @altr_edac_device_inject_fops, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @altr_edac_device_probe.dev_instance, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @altr_edac_a10_of_match, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @a10_eccmgr_ic_ops, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @altr_edac_a10_device_of_match, ptr @.str.118, ptr @a10_l2ecc_data, ptr @a10_ocramecc_data, ptr @a10_enetecc_data, ptr @a10_nandecc_data, ptr @a10_dmaecc_data, ptr @a10_usbecc_data, ptr @a10_qspiecc_data, ptr @a10_sdmmcecca_data, ptr @s10_sdramecc_data, ptr @altr_edac_a10_device_inject2_fops, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @altr_edac_a10_device_inject_fops, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @a10_sdmmceccb_data, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.146, ptr @.str.149, ptr @.str.152, ptr @.str.155, ptr @.str.158, ptr @.str.161, ptr @.str.165, ptr @.str.166, ptr @.str.170, ptr @.str.173, ptr @.str.176, ptr @.str.179, ptr @.str.182], section "llvm.metadata"
@0 = internal global [187 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_sdram_edac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_device_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_a10_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_sdram_ctrl_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_sdram_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_sdram_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_sdram_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_sdram_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_sdram_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_sdram_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_sdram_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_sdram_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_sdram_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_sdram_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_sdram_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_sdram_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_sdram_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_total_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a10_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a10_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a10_unmask_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a10_unmask_irq._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_sdr_mc_debug_inject_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_sdr_mc_err_inject_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_sdr_mc_err_inject_write._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_sdr_mc_err_inject_write._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_sdr_mc_err_inject_write._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c5_data to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a10_data to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_sdram_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_device_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2ecc_data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocramecc_data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_device_inject_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_l2_check_deps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_device_trig._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_device_trig._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_device_trig._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_device_trig._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_check_ecc_deps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_device_probe.dev_instance to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_device_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_device_probe._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_device_probe._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_device_probe._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_device_probe._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_a10_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_a10_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a10_eccmgr_ic_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_a10_probe._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_a10_probe._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_a10_probe._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_a10_device_of_match to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a10_l2ecc_data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a10_ocramecc_data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a10_enetecc_data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a10_nandecc_data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a10_dmaecc_data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a10_usbecc_data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a10_qspiecc_data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a10_sdmmcecca_data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s10_sdramecc_data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_a10_device_inject2_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_init_a10_ecc_device_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_init_a10_ecc_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_init_a10_ecc_block._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_init_a10_ecc_block._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_init_a10_ecc_block._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_a10_device_inject_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a10_sdmmceccb_data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_portb_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_portb_setup._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_portb_setup._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_portb_setup._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_portb_setup._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_portb_setup._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_portb_setup._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_portb_setup._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_a10_device_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_a10_device_add._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_a10_device_add._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_a10_device_add._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_a10_device_add._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_a10_device_add._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_a10_device_add._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altr_edac_a10_device_add._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_sdram_edac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @altr_sdram_edac_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @altr_sdram_edac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @altr_sdram_edac_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_edac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @altr_edac_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @altr_edac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @altr_edac_driver) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_edac_device_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @altr_edac_device_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @altr_edac_device_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @altr_edac_device_driver) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_edac_a10_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @altr_edac_a10_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @altr_edac_a10_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @altr_edac_a10_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_sdram_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res.i = alloca %struct.resource, align 4
  %layers = alloca [2 x %struct.edac_mc_layer], align 4
  %read_reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %layers) #9
  %0 = call ptr @memset(ptr %layers, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_reg) #9
  %1 = ptrtoint ptr %read_reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %read_reg, align 4, !annotation !392
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @altr_sdram_ctrl_of_match, ptr noundef %dev) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call2 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %3, ptr noundef nonnull @.str.1) #9
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call9 = tail call ptr @of_match_node(ptr noundef nonnull @altr_sdram_ctrl_of_match, ptr noundef %5) #9
  %data = getelementptr inbounds %struct.of_device_id, ptr %call9, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %call10 = call i32 @regmap_read(ptr noundef %call2, i32 noundef %9, ptr noundef nonnull %read_reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %if.end6.do.end16_crit_edge

if.end6.do.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

lor.lhs.false:                                    ; preds = %if.end6
  %10 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %read_reg, align 4
  %ecc_ctl_en_mask = getelementptr inbounds %struct.altr_sdram_prv_data, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %ecc_ctl_en_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ecc_ctl_en_mask, align 4
  %and = and i32 %13, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %13)
  %cmp.not = icmp eq i32 %and, %13
  br i1 %cmp.not, label %if.end19, label %lor.lhs.false.do.end16_crit_edge

lor.lhs.false.do.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

do.end16:                                         ; preds = %lor.lhs.false.do.end16_crit_edge, %if.end6.do.end16_crit_edge
  %14 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %read_reg, align 4
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %15) #12
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #9
  %16 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 1
  %17 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  %call.i = call ptr @of_find_node_by_type(ptr noundef null, ptr noundef nonnull @.str.38) #9
  %tobool.not15.i = icmp eq ptr %call.i, null
  br i1 %tobool.not15.i, label %if.end19.do.body.i_crit_edge, label %if.end19.for.body.i_crit_edge

if.end19.for.body.i_crit_edge:                    ; preds = %if.end19
  br label %for.body.i

if.end19.do.body.i_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end19.for.body.i_crit_edge
  %np.017.i = phi ptr [ %call4.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %if.end19.for.body.i_crit_edge ]
  %total_mem.016.i = phi i32 [ %total_mem.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end19.for.body.i_crit_edge ]
  %call1.i = call i32 @of_address_to_resource(ptr noundef nonnull %np.017.i, i32 noundef 0, ptr noundef nonnull %res.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %16, align 4
  %20 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %res.i, align 4
  %sub.i.i = add i32 %total_mem.016.i, 1
  %add.i.i = add i32 %sub.i.i, %19
  %add.i = sub i32 %add.i.i, %21
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %total_mem.1.i = phi i32 [ %total_mem.016.i, %for.body.i.for.inc.i_crit_edge ], [ %add.i, %if.end.i ]
  %call4.i = call ptr @of_find_node_by_type(ptr noundef nonnull %np.017.i, ptr noundef nonnull @.str.38) #9
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %for.inc.i.do.body.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %if.end19.do.body.i_crit_edge
  %total_mem.0.lcssa.i = phi i32 [ 0, %if.end19.do.body.i_crit_edge ], [ %total_mem.1.i, %for.inc.i.do.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %22 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp.i249 = icmp sgt i32 %22, -1
  br i1 %cmp.i249, label %do.end.i, label %do.body.i.get_total_mem.exit_crit_edge

do.body.i.get_total_mem.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_total_mem.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef %total_mem.0.lcssa.i) #12
  br label %get_total_mem.exit

get_total_mem.exit:                               ; preds = %do.end.i, %do.body.i.get_total_mem.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_mem.0.lcssa.i)
  %tobool21.not = icmp eq i32 %total_mem.0.lcssa.i, 0
  br i1 %tobool21.not, label %do.end25, label %if.end28

do.end25:                                         ; preds = %get_total_mem.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.end28:                                         ; preds = %get_total_mem.exit
  %ecc_irq_en_offset = getelementptr inbounds %struct.altr_sdram_prv_data, ptr %7, i32 0, i32 9
  %23 = ptrtoint ptr %ecc_irq_en_offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ecc_irq_en_offset, align 4
  %ecc_irq_en_mask = getelementptr inbounds %struct.altr_sdram_prv_data, ptr %7, i32 0, i32 10
  %25 = ptrtoint ptr %ecc_irq_en_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ecc_irq_en_mask, align 4
  %call.i250 = call i32 @regmap_update_bits_base(ptr noundef %call2, i32 noundef %24, i32 noundef %26, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i250)
  %tobool30.not = icmp eq i32 %call.i250, 0
  br i1 %tobool30.not, label %if.end37, label %do.end34

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #12
  br label %cleanup

if.end37:                                         ; preds = %if.end28
  %ecc_cnt_rst_offset = getelementptr inbounds %struct.altr_sdram_prv_data, ptr %7, i32 0, i32 13
  %27 = ptrtoint ptr %ecc_cnt_rst_offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ecc_cnt_rst_offset, align 4
  %ecc_cnt_rst_mask = getelementptr inbounds %struct.altr_sdram_prv_data, ptr %7, i32 0, i32 14
  %29 = ptrtoint ptr %ecc_cnt_rst_mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ecc_cnt_rst_mask, align 4
  %call.i251 = call i32 @regmap_update_bits_base(ptr noundef %call2, i32 noundef %28, i32 noundef %30, i32 noundef %30, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251)
  %tobool40.not = icmp eq i32 %call.i251, 0
  br i1 %tobool40.not, label %if.end47, label %do.end44

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #12
  br label %cleanup

if.end47:                                         ; preds = %if.end37
  %31 = ptrtoint ptr %ecc_cnt_rst_offset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ecc_cnt_rst_offset, align 4
  %33 = ptrtoint ptr %ecc_cnt_rst_mask to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ecc_cnt_rst_mask, align 4
  %call.i252 = call i32 @regmap_update_bits_base(ptr noundef %call2, i32 noundef %32, i32 noundef %34, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i252)
  %tobool51.not = icmp eq i32 %call.i252, 0
  br i1 %tobool51.not, label %if.end58, label %do.end55

do.end55:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #12
  br label %cleanup

if.end58:                                         ; preds = %if.end47
  %call59 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %do.end64, label %if.end67

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %call59) #12
  br label %cleanup

if.end67:                                         ; preds = %if.end58
  %call68 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #9
  %35 = ptrtoint ptr %layers to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %layers, align 4
  %size = getelementptr inbounds %struct.edac_mc_layer, ptr %layers, i32 0, i32 1
  %36 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %size, align 4
  %is_virt_csrow = getelementptr inbounds %struct.edac_mc_layer, ptr %layers, i32 0, i32 2
  %37 = ptrtoint ptr %is_virt_csrow to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %is_virt_csrow, align 4
  %arrayidx71 = getelementptr inbounds [2 x %struct.edac_mc_layer], ptr %layers, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %arrayidx71, align 4
  %size74 = getelementptr inbounds [2 x %struct.edac_mc_layer], ptr %layers, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %size74 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %size74, align 4
  %is_virt_csrow76 = getelementptr inbounds [2 x %struct.edac_mc_layer], ptr %layers, i32 0, i32 1, i32 2
  %40 = ptrtoint ptr %is_virt_csrow76 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %is_virt_csrow76, align 4
  %call77 = call ptr @edac_mc_alloc(i32 noundef 0, i32 noundef 2, ptr noundef nonnull %layers, i32 noundef 16) #9
  %tobool78.not = icmp eq ptr %call77, null
  br i1 %tobool78.not, label %if.end67.cleanup_crit_edge, label %if.end80

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end80:                                         ; preds = %if.end67
  %pdev82 = getelementptr inbounds %struct.mem_ctl_info, ptr %call77, i32 0, i32 22
  %41 = ptrtoint ptr %pdev82 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %dev, ptr %pdev82, align 8
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %call77, i32 0, i32 26
  %42 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pvt_info, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call2, ptr %43, align 4
  %data84 = getelementptr inbounds %struct.altr_sdram_mc_data, ptr %43, i32 0, i32 3
  %45 = ptrtoint ptr %data84 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %7, ptr %data84, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %46 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call77, ptr %driver_data.i.i, align 4
  %call86 = call ptr @devres_open_group(ptr noundef %dev, ptr noundef null, i32 noundef 3264) #9
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %do.end91, label %if.end94

do.end91:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #12
  br label %free

if.end94:                                         ; preds = %if.end80
  %mtype_cap = getelementptr inbounds %struct.mem_ctl_info, ptr %call77, i32 0, i32 4
  %47 = ptrtoint ptr %mtype_cap to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 32768, ptr %mtype_cap, align 8
  %edac_ctl_cap = getelementptr inbounds %struct.mem_ctl_info, ptr %call77, i32 0, i32 5
  %48 = ptrtoint ptr %edac_ctl_cap to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 34, ptr %edac_ctl_cap, align 4
  %edac_cap = getelementptr inbounds %struct.mem_ctl_info, ptr %call77, i32 0, i32 6
  %49 = ptrtoint ptr %edac_cap to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 32, ptr %edac_cap, align 8
  %mod_name = getelementptr inbounds %struct.mem_ctl_info, ptr %call77, i32 0, i32 23
  %50 = ptrtoint ptr %mod_name to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.25, ptr %mod_name, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %51 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i253 = icmp eq ptr %52, null
  br i1 %tobool.not.i253, label %if.end.i254, label %if.end94.dev_name.exit_crit_edge

if.end94.dev_name.exit_crit_edge:                 ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i254:                                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i254, %if.end94.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %54, %if.end.i254 ], [ %52, %if.end94.dev_name.exit_crit_edge ]
  %ctl_name = getelementptr inbounds %struct.mem_ctl_info, ptr %call77, i32 0, i32 24
  %55 = ptrtoint ptr %ctl_name to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %retval.0.i, ptr %ctl_name, align 8
  %scrub_mode = getelementptr inbounds %struct.mem_ctl_info, ptr %call77, i32 0, i32 8
  %56 = ptrtoint ptr %scrub_mode to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 3, ptr %scrub_mode, align 8
  %57 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i256 = icmp eq ptr %58, null
  br i1 %tobool.not.i256, label %if.end.i257, label %dev_name.exit.dev_name.exit259_crit_edge

dev_name.exit.dev_name.exit259_crit_edge:         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit259

if.end.i257:                                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  br label %dev_name.exit259

dev_name.exit259:                                 ; preds = %if.end.i257, %dev_name.exit.dev_name.exit259_crit_edge
  %retval.0.i258 = phi ptr [ %60, %if.end.i257 ], [ %58, %dev_name.exit.dev_name.exit259_crit_edge ]
  %dev_name = getelementptr inbounds %struct.mem_ctl_info, ptr %call77, i32 0, i32 25
  %61 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %retval.0.i258, ptr %dev_name, align 4
  %dimms = getelementptr inbounds %struct.mem_ctl_info, ptr %call77, i32 0, i32 21
  %62 = ptrtoint ptr %dimms to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dimms, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %sub = add i32 %total_mem.0.lcssa.i, -1
  %shr = lshr i32 %sub, 12
  %add = add nuw nsw i32 %shr, 1
  %nr_pages = getelementptr inbounds %struct.dimm_info, ptr %65, i32 0, i32 9
  %66 = ptrtoint ptr %nr_pages to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add, ptr %nr_pages, align 4
  %grain = getelementptr inbounds %struct.dimm_info, ptr %65, i32 0, i32 5
  %67 = ptrtoint ptr %grain to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 8, ptr %grain, align 4
  %dtype = getelementptr inbounds %struct.dimm_info, ptr %65, i32 0, i32 6
  %68 = ptrtoint ptr %dtype to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 4, ptr %dtype, align 8
  %mtype = getelementptr inbounds %struct.dimm_info, ptr %65, i32 0, i32 7
  %69 = ptrtoint ptr %mtype to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 15, ptr %mtype, align 4
  %edac_mode = getelementptr inbounds %struct.dimm_info, ptr %65, i32 0, i32 8
  %70 = ptrtoint ptr %edac_mode to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 5, ptr %edac_mode, align 8
  %call99 = call i32 @edac_mc_add_mc_with_groups(ptr noundef nonnull %call77, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %dev_name.exit259.err_crit_edge, label %if.end102

dev_name.exit259.err_crit_edge:                   ; preds = %dev_name.exit259
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end102:                                        ; preds = %dev_name.exit259
  %call103 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end102.if.end126_crit_edge, label %if.then105

if.end102.if.end126_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

if.then105:                                       ; preds = %if.end102
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %call2, i32 noundef 28, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i260 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i260, label %if.end.i261, label %if.then105.a10_init.exit.thread_crit_edge

if.then105.a10_init.exit.thread_crit_edge:        ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #11
  br label %a10_init.exit.thread

if.end.i261:                                      ; preds = %if.then105
  %call2.i = call i32 @regmap_write(ptr noundef %call2, i32 noundef 60, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end109, label %if.end.i261.a10_init.exit.thread_crit_edge

if.end.i261.a10_init.exit.thread_crit_edge:       ; preds = %if.end.i261
  call void @__sanitizer_cov_trace_pc() #11
  br label %a10_init.exit.thread

a10_init.exit.thread:                             ; preds = %if.end.i261.a10_init.exit.thread_crit_edge, %if.then105.a10_init.exit.thread_crit_edge
  %.str.44.sink.i = phi ptr [ @.str.41, %if.then105.a10_init.exit.thread_crit_edge ], [ @.str.44, %if.end.i261.a10_init.exit.thread_crit_edge ]
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.44.sink.i) #12
  br label %err2

if.end109:                                        ; preds = %if.end.i261
  %71 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i264 = icmp eq ptr %72, null
  br i1 %tobool.not.i264, label %if.end.i265, label %if.end109.dev_name.exit267_crit_edge

if.end109.dev_name.exit267_crit_edge:             ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit267

if.end.i265:                                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 4
  br label %dev_name.exit267

dev_name.exit267:                                 ; preds = %if.end.i265, %if.end109.dev_name.exit267_crit_edge
  %retval.0.i266 = phi ptr [ %74, %if.end.i265 ], [ %72, %if.end109.dev_name.exit267_crit_edge ]
  %call.i268 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call68, ptr noundef nonnull @altr_sdram_mc_err_handler, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i266, ptr noundef nonnull %call77) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i268)
  %cmp114 = icmp slt i32 %call.i268, 0
  br i1 %cmp114, label %do.end118, label %if.end121

do.end118:                                        ; preds = %dev_name.exit267
  call void @__sanitizer_cov_trace_pc() #11
  %mc_idx = getelementptr inbounds %struct.mem_ctl_info, ptr %call77, i32 0, i32 13
  %75 = ptrtoint ptr %mc_idx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mc_idx, align 4
  %call120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %76, i32 noundef %call68) #12
  br label %err2

if.end121:                                        ; preds = %dev_name.exit267
  %77 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i.i = icmp eq ptr %78, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end121.dev_name.exit.i_crit_edge

if.end121.dev_name.exit.i_crit_edge:              ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end121.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %80, %if.end.i.i ], [ %78, %if.end121.dev_name.exit.i_crit_edge ]
  %call1.i269 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef -3121000, i32 noundef 4, ptr noundef %retval.0.i.i, i32 noundef 0) #9
  %tobool.not.i270 = icmp eq ptr %call1.i269, null
  br i1 %tobool.not.i270, label %a10_unmask_irq.exit.thread, label %if.end.i273

a10_unmask_irq.exit.thread:                       ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i271 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #12
  br label %err2

if.end.i273:                                      ; preds = %dev_name.exit.i
  %call3.i = call ptr @ioremap(i32 noundef -3121000, i32 noundef 4) #9
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %a10_unmask_irq.exit.thread289, label %a10_unmask_irq.exit

a10_unmask_irq.exit.thread289:                    ; preds = %if.end.i273
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #12
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef -3121000, i32 noundef 4) #9
  br label %err2

a10_unmask_irq.exit:                              ; preds = %if.end.i273
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !393
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call3.i, i32 512) #9, !srcloc !394
  call void @iounmap(ptr noundef nonnull %call3.i) #9
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef -3121000, i32 noundef 4) #9
  br label %if.end126

if.end126:                                        ; preds = %a10_unmask_irq.exit, %if.end102.if.end126_crit_edge
  %irqflags.0 = phi i32 [ 0, %if.end102.if.end126_crit_edge ], [ 128, %a10_unmask_irq.exit ]
  %81 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i276 = icmp eq ptr %82, null
  br i1 %tobool.not.i276, label %if.end.i277, label %if.end126.dev_name.exit279_crit_edge

if.end126.dev_name.exit279_crit_edge:             ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit279

if.end.i277:                                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev, align 4
  br label %dev_name.exit279

dev_name.exit279:                                 ; preds = %if.end.i277, %if.end126.dev_name.exit279_crit_edge
  %retval.0.i278 = phi ptr [ %84, %if.end.i277 ], [ %82, %if.end126.dev_name.exit279_crit_edge ]
  %call.i280 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call59, ptr noundef nonnull @altr_sdram_mc_err_handler, ptr noundef null, i32 noundef %irqflags.0, ptr noundef %retval.0.i278, ptr noundef nonnull %call77) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i280)
  %cmp131 = icmp slt i32 %call.i280, 0
  br i1 %cmp131, label %do.end135, label %if.end139

do.end135:                                        ; preds = %dev_name.exit279
  call void @__sanitizer_cov_trace_pc() #11
  %mc_idx137 = getelementptr inbounds %struct.mem_ctl_info, ptr %call77, i32 0, i32 13
  %85 = ptrtoint ptr %mc_idx137 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mc_idx137, align 4
  %call138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %86, i32 noundef %call59) #12
  br label %err2

if.end139:                                        ; preds = %dev_name.exit279
  %87 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %43, align 4
  %89 = ptrtoint ptr %ecc_irq_en_offset to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ecc_irq_en_offset, align 4
  %91 = ptrtoint ptr %ecc_irq_en_mask to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ecc_irq_en_mask, align 4
  %call.i281 = call i32 @regmap_update_bits_base(ptr noundef %88, i32 noundef %90, i32 noundef %92, i32 noundef %92, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i281)
  %tobool145.not = icmp eq i32 %call.i281, 0
  br i1 %tobool145.not, label %if.end153, label %do.end149

do.end149:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  %mc_idx151 = getelementptr inbounds %struct.mem_ctl_info, ptr %call77, i32 0, i32 13
  %93 = ptrtoint ptr %mc_idx151 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mc_idx151, align 4
  %call152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %94) #12
  br label %err2

if.end153:                                        ; preds = %if.end139
  %debugfs.i = getelementptr inbounds %struct.mem_ctl_info, ptr %call77, i32 0, i32 37
  %95 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %debugfs.i, align 8
  %tobool.not.i282 = icmp eq ptr %96, null
  br i1 %tobool.not.i282, label %if.end153.altr_sdr_mc_create_debugfs_nodes.exit_crit_edge, label %if.end.i284

if.end153.altr_sdr_mc_create_debugfs_nodes.exit_crit_edge: ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #11
  br label %altr_sdr_mc_create_debugfs_nodes.exit

if.end.i284:                                      ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #11
  %call.i283 = call ptr @edac_debugfs_create_file(ptr noundef nonnull @.str.53, i16 noundef zeroext 128, ptr noundef nonnull %96, ptr noundef nonnull %call77, ptr noundef nonnull @altr_sdr_mc_debug_inject_fops) #9
  br label %altr_sdr_mc_create_debugfs_nodes.exit

altr_sdr_mc_create_debugfs_nodes.exit:            ; preds = %if.end.i284, %if.end153.altr_sdr_mc_create_debugfs_nodes.exit_crit_edge
  call void @devres_close_group(ptr noundef %dev, ptr noundef null) #9
  br label %cleanup

err2:                                             ; preds = %do.end149, %do.end135, %a10_unmask_irq.exit.thread289, %a10_unmask_irq.exit.thread, %do.end118, %a10_init.exit.thread
  %res.0 = phi i32 [ -19, %do.end118 ], [ -19, %do.end135 ], [ -19, %do.end149 ], [ -19, %a10_init.exit.thread ], [ -16, %a10_unmask_irq.exit.thread ], [ -12, %a10_unmask_irq.exit.thread289 ]
  %call156 = call ptr @edac_mc_del_mc(ptr noundef %dev) #9
  br label %err

err:                                              ; preds = %err2, %dev_name.exit259.err_crit_edge
  %res.1 = phi i32 [ %call99, %dev_name.exit259.err_crit_edge ], [ %res.0, %err2 ]
  %call158 = call i32 @devres_release_group(ptr noundef %dev, ptr noundef null) #9
  br label %free

free:                                             ; preds = %err, %do.end91
  %res.2 = phi i32 [ %res.1, %err ], [ -12, %do.end91 ]
  call void @edac_mc_free(ptr noundef nonnull %call77) #9
  %call163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %res.2) #12
  br label %cleanup

cleanup:                                          ; preds = %free, %altr_sdr_mc_create_debugfs_nodes.exit, %if.end67.cleanup_crit_edge, %do.end64, %do.end55, %do.end44, %do.end34, %do.end25, %do.end16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end16 ], [ -19, %do.end34 ], [ -19, %do.end44 ], [ -19, %do.end55 ], [ %call59, %do.end64 ], [ %res.2, %free ], [ 0, %altr_sdr_mc_create_debugfs_nodes.exit ], [ -19, %do.end25 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end67.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_reg) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %layers) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_sdram_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call ptr @edac_mc_del_mc(ptr noundef %dev) #9
  tail call void @edac_mc_free(ptr noundef %1) #9
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_mc_alloc(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_open_group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_mc_add_mc_with_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_sdram_mc_err_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %status = alloca i32, align 4
  %err_count = alloca i32, align 4
  %err_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %dev_id, i32 0, i32 26
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 8
  %data = getelementptr inbounds %struct.altr_sdram_mc_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #9
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %status, align 4, !annotation !392
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err_count) #9
  %5 = ptrtoint ptr %err_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %err_count, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err_addr) #9
  %6 = ptrtoint ptr %err_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %err_addr, align 4, !annotation !392
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %ecc_stat_offset = getelementptr inbounds %struct.altr_sdram_prv_data, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %ecc_stat_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ecc_stat_offset, align 4
  %call = call i32 @regmap_read(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %status) #9
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  %ecc_stat_ue_mask = getelementptr inbounds %struct.altr_sdram_prv_data, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %ecc_stat_ue_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ecc_stat_ue_mask, align 4
  %and = and i32 %14, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %ecc_daddr_offset = getelementptr inbounds %struct.altr_sdram_prv_data, ptr %3, i32 0, i32 8
  %17 = ptrtoint ptr %ecc_daddr_offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ecc_daddr_offset, align 4
  %call2 = call i32 @regmap_read(ptr noundef %16, i32 noundef %18, ptr noundef nonnull %err_addr) #9
  %ecc_uecnt_offset = getelementptr inbounds %struct.altr_sdram_prv_data, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %ecc_uecnt_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ecc_uecnt_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool3.not = icmp eq i32 %20, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call7 = call i32 @regmap_read(ptr noundef %22, i32 noundef %20, ptr noundef nonnull %err_count) #9
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %23 = ptrtoint ptr %err_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %err_count, align 4
  %25 = ptrtoint ptr %err_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %err_addr, align 4
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.46, i32 noundef %24, i32 noundef %26) #13
  unreachable

if.end8:                                          ; preds = %entry
  %ecc_stat_ce_mask = getelementptr inbounds %struct.altr_sdram_prv_data, ptr %3, i32 0, i32 5
  %27 = ptrtoint ptr %ecc_stat_ce_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ecc_stat_ce_mask, align 4
  %and9 = and i32 %28, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.then11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %ecc_saddr_offset = getelementptr inbounds %struct.altr_sdram_prv_data, ptr %3, i32 0, i32 7
  %31 = ptrtoint ptr %ecc_saddr_offset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ecc_saddr_offset, align 4
  %call13 = call i32 @regmap_read(ptr noundef %30, i32 noundef %32, ptr noundef nonnull %err_addr) #9
  %ecc_uecnt_offset14 = getelementptr inbounds %struct.altr_sdram_prv_data, ptr %3, i32 0, i32 3
  %33 = ptrtoint ptr %ecc_uecnt_offset14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ecc_uecnt_offset14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool15.not = icmp eq i32 %34, 0
  br i1 %tobool15.not, label %if.then11.if.end19_crit_edge, label %if.then16

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then16:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %ecc_cecnt_offset = getelementptr inbounds %struct.altr_sdram_prv_data, ptr %3, i32 0, i32 2
  %37 = ptrtoint ptr %ecc_cecnt_offset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ecc_cecnt_offset, align 4
  %call18 = call i32 @regmap_read(ptr noundef %36, i32 noundef %38, ptr noundef nonnull %err_count) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.then11.if.end19_crit_edge
  %39 = ptrtoint ptr %err_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %err_count, align 4
  %conv = trunc i32 %40 to i16
  %41 = ptrtoint ptr %err_addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %err_addr, align 4
  %shr = lshr i32 %42, 12
  %and20 = and i32 %42, 4095
  %ctl_name = getelementptr inbounds %struct.mem_ctl_info, ptr %dev_id, i32 0, i32 24
  %43 = ptrtoint ptr %ctl_name to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctl_name, align 8
  call void @edac_mc_handle_error(i32 noundef 0, ptr noundef %dev_id, i16 noundef zeroext %conv, i32 noundef %shr, i32 noundef %and20, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef -1, ptr noundef %44, ptr noundef nonnull @.str.47) #9
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %ecc_irq_clr_offset = getelementptr inbounds %struct.altr_sdram_prv_data, ptr %3, i32 0, i32 11
  %47 = ptrtoint ptr %ecc_irq_clr_offset to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ecc_irq_clr_offset, align 4
  %ecc_irq_clr_mask = getelementptr inbounds %struct.altr_sdram_prv_data, ptr %3, i32 0, i32 12
  %49 = ptrtoint ptr %ecc_irq_clr_mask to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ecc_irq_clr_mask, align 4
  %call22 = call i32 @regmap_write(ptr noundef %46, i32 noundef %48, i32 noundef %50) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end19 ], [ 0, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err_addr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err_count) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_close_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_mc_del_mc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_mc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_type(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_mc_handle_error(i32 noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_sdr_mc_err_inject_write(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %data, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %dma_handle = alloca i32, align 4
  %read_reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pvt_info, align 8
  %data1 = getelementptr inbounds %struct.altr_sdram_mc_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle) #9
  %6 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %dma_handle, align 4, !annotation !392
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_reg) #9
  %7 = ptrtoint ptr %read_reg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %read_reg, align 4, !annotation !392
  %pdev = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %9, i32 noundef 16, ptr noundef nonnull %dma_handle, i32 noundef 3264, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %12 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_handle, align 4
  call void @dma_free_attrs(ptr noundef %11, i32 noundef 16, ptr noundef null, i32 noundef %13, i32 noundef 0) #9
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %ce_ue_trgr_offset = getelementptr inbounds %struct.altr_sdram_prv_data, ptr %5, i32 0, i32 19
  %16 = ptrtoint ptr %ce_ue_trgr_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ce_ue_trgr_offset, align 4
  %call4 = call i32 @regmap_read(ptr noundef %15, i32 noundef %17, ptr noundef nonnull %read_reg) #9
  %ce_set_mask = getelementptr inbounds %struct.altr_sdram_prv_data, ptr %5, i32 0, i32 17
  %18 = ptrtoint ptr %ce_set_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ce_set_mask, align 4
  %ue_set_mask = getelementptr inbounds %struct.altr_sdram_prv_data, ptr %5, i32 0, i32 18
  %20 = ptrtoint ptr %ue_set_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ue_set_mask, align 4
  %or = or i32 %21, %19
  %neg = xor i32 %or, -1
  %22 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %read_reg, align 4
  %and = and i32 %23, %neg
  store i32 %and, ptr %read_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp = icmp eq i32 %count, 3
  br i1 %cmp, label %do.end8, label %do.end29

do.end8:                                          ; preds = %if.end
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #12
  %24 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !395
  %and.i.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool13.not = icmp eq i32 %and.i.i, 0
  call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #9, !srcloc !396
  br i1 %tobool13.not, label %if.then15, label %do.end8.if.end16_crit_edge

do.end8.if.end16_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then15:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  call void @trace_hardirqs_off() #9
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %do.end8.if.end16_crit_edge
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %27 = ptrtoint ptr %ce_ue_trgr_offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ce_ue_trgr_offset, align 4
  %29 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %read_reg, align 4
  %31 = ptrtoint ptr %ue_set_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ue_set_mask, align 4
  %or22 = or i32 %32, %30
  %call23 = call i32 @regmap_write(ptr noundef %26, i32 noundef %28, i32 noundef %or22) #9
  call void @trace_hardirqs_on() #9
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !397
  br label %if.end50

do.end29:                                         ; preds = %if.end
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #12
  %33 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !395
  %and.i.i101 = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i101)
  %tobool35.not = icmp eq i32 %and.i.i101, 0
  call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #9, !srcloc !396
  br i1 %tobool35.not, label %if.then38, label %do.end29.if.end39_crit_edge

do.end29.if.end39_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then38:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  call void @trace_hardirqs_off() #9
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %do.end29.if.end39_crit_edge
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  %36 = ptrtoint ptr %ce_ue_trgr_offset to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ce_ue_trgr_offset, align 4
  %38 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %read_reg, align 4
  %40 = ptrtoint ptr %ce_set_mask to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ce_set_mask, align 4
  %or45 = or i32 %41, %39
  %call46 = call i32 @regmap_write(ptr noundef %35, i32 noundef %37, i32 noundef %or45) #9
  call void @trace_hardirqs_on() #9
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !397
  br label %if.end50

if.end50:                                         ; preds = %if.end39, %if.end16
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1515870810, ptr %call.i, align 4
  %arrayidx51 = getelementptr i32, ptr %call.i, i32 1
  %43 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1515870811, ptr %arrayidx51, align 4
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  %46 = ptrtoint ptr %ce_ue_trgr_offset to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ce_ue_trgr_offset, align 4
  %48 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %read_reg, align 4
  %call54 = call i32 @regmap_write(ptr noundef %45, i32 noundef %47, i32 noundef %49) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !398
  call void @arm_heavy_mb() #9
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %call.i, align 4
  %52 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %arrayidx51, align 4
  %54 = ptrtoint ptr %read_reg to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %read_reg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !399
  %55 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %read_reg, align 4
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %51, i32 noundef %56) #12
  %57 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdev, align 8
  %59 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dma_handle, align 4
  call void @dma_free_attrs(ptr noundef %58, i32 noundef 16, ptr noundef nonnull %call.i, i32 noundef %60, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.then
  %retval.0 = phi i32 [ %count, %if.end50 ], [ -12, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_reg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_sdram_prepare(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #12
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_edac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_platform_populate(ptr noundef %1, ptr noundef nonnull @altr_edac_device_of_match, ptr noundef null, ptr noundef %dev) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_l2_check_deps(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.altr_edac_device_dev, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 8
  %data = getelementptr inbounds %struct.altr_edac_device_dev, ptr %device, i32 0, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !400
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !401
  %ecc_enable_mask = getelementptr inbounds %struct.edac_device_prv_data, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %ecc_enable_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ecc_enable_mask, align 4
  %and = and i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %7)
  %cmp = icmp eq i32 %and, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @l2_alloc_mem(i32 noundef %size, ptr nocapture noundef readonly %other) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %other to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %other, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %size, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !402
  tail call void @arm_heavy_mb() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %2() #9
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l2_free_mem(ptr noundef %p, i32 noundef %size, ptr noundef %other) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %other, null
  %tobool1.not = icmp eq ptr %p, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @devm_kfree(ptr noundef nonnull %other, ptr noundef nonnull %p) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_edac_device_trig(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %generic_ptr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pvt_info, align 4
  %data = getelementptr inbounds %struct.altr_edac_device_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %generic_ptr) #9
  %dev = getelementptr inbounds %struct.edac_device_ctl_info, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %generic_ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %generic_ptr, align 4
  %tobool.not = icmp eq ptr %user_buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 594) #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !382) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !403
  %and.i = and i32 %11, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !404
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  %12 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %user_buf, i32 -1226833921) #9, !srcloc !406
  %asmresult = extractvalue { i32, i32 } %12, 0
  %asmresult1 = extractvalue { i32, i32 } %12, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #9, !srcloc !404
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool3.not = icmp eq i32 %asmresult, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %alloc_mem = getelementptr inbounds %struct.edac_device_prv_data, ptr %5, i32 0, i32 4
  %13 = ptrtoint ptr %alloc_mem to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %alloc_mem, align 4
  %tobool4.not = icmp eq ptr %14, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %trig_alloc_sz = getelementptr inbounds %struct.edac_device_prv_data, ptr %5, i32 0, i32 12
  %15 = ptrtoint ptr %trig_alloc_sz to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %trig_alloc_sz, align 4
  %call8 = call ptr %14(i32 noundef %16, ptr noundef nonnull %generic_ptr) #9
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #12
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %conv14 = and i32 %asmresult1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 85, i32 %conv14)
  %cmp = icmp eq i32 %conv14, 85
  %ue_set_mask = getelementptr inbounds %struct.edac_device_prv_data, ptr %5, i32 0, i32 9
  %ce_set_mask = getelementptr inbounds %struct.edac_device_prv_data, ptr %5, i32 0, i32 8
  %error_mask.0.in = select i1 %cmp, ptr %ue_set_mask, ptr %ce_set_mask
  %17 = ptrtoint ptr %error_mask.0.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %error_mask.0 = load i32, ptr %error_mask.0.in, align 4
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %error_mask.0) #12
  %18 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !407
  %and.i172 = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i172)
  %tobool38.not = icmp eq i32 %and.i172, 0
  br i1 %tobool38.not, label %if.then39, label %if.end13.do.end42_crit_edge

if.end13.do.end42_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42

if.then39:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  call void @trace_hardirqs_off() #9
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %if.end13.do.end42_crit_edge
  %19 = ptrtoint ptr %trig_alloc_sz to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %trig_alloc_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp44175.not = icmp ult i32 %20, 4
  br i1 %cmp44175.not, label %do.end42.do.body63_crit_edge, label %for.body.lr.ph

do.end42.do.body63_crit_edge:                     ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body63

for.body.lr.ph:                                   ; preds = %do.end42
  %21 = call i32 @llvm.bswap.i32(i32 %error_mask.0)
  %base = getelementptr inbounds %struct.altr_edac_device_dev, ptr %3, i32 0, i32 1
  %set_err_ofst = getelementptr inbounds %struct.edac_device_prv_data, ptr %5, i32 0, i32 10
  %ecc_enable_mask = getelementptr inbounds %struct.edac_device_prv_data, ptr %5, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0177 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %result.0176 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %for.body.for.body_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !408
  %arrayidx = getelementptr i32, ptr %call8, i32 %i.0177
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool50.not = icmp eq i32 %23, 0
  %spec.select = select i1 %tobool50.not, i32 %result.0176, i32 -1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !409
  call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 8
  %26 = ptrtoint ptr %set_err_ofst to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %set_err_ofst, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 %27
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %21) #9, !srcloc !394
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !410
  call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %ecc_enable_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ecc_enable_mask, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 8
  %33 = ptrtoint ptr %set_err_ofst to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %set_err_ofst, align 4
  %add.ptr61 = getelementptr i8, ptr %32, i32 %34
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %30) #9, !srcloc !394
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %i.0177, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0177, 1
  %36 = ptrtoint ptr %trig_alloc_sz to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %trig_alloc_sz, align 4
  %div171 = lshr i32 %37, 2
  %cmp44 = icmp ult i32 %inc, %div171
  br i1 %cmp44, label %for.body.for.body_crit_edge, label %for.body.do.body63_crit_edge

for.body.do.body63_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body63

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body63:                                        ; preds = %for.body.do.body63_crit_edge, %do.end42.do.body63_crit_edge
  %result.0.lcssa = phi i32 [ 0, %do.end42.do.body63_crit_edge ], [ %spec.select, %for.body.do.body63_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !411
  call void @arm_heavy_mb() #9
  br i1 %tobool38.not, label %if.then75, label %do.body63.do.body77_crit_edge

do.body63.do.body77_crit_edge:                    ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body77

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #11
  call void @trace_hardirqs_on() #9
  br label %do.body77

do.body77:                                        ; preds = %if.then75, %do.body63.do.body77_crit_edge
  %38 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !395
  %and.i.i = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool85.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool85.not, label %if.then89, label %do.body77.do.end92_crit_edge, !prof !412

do.body77.do.end92_crit_edge:                     ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end92

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %do.end92

do.end92:                                         ; preds = %if.then89, %do.body77.do.end92_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #9, !srcloc !413
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.lcssa)
  %tobool97.not = icmp eq i32 %result.0.lcssa, 0
  br i1 %tobool97.not, label %do.end92.do.end111.preheader_crit_edge, label %do.end101

do.end92.do.end111.preheader_crit_edge:           ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end111.preheader

do.end101:                                        ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #11
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #12
  br label %do.end111.preheader

do.end111.preheader:                              ; preds = %do.end101, %do.end92.do.end111.preheader_crit_edge
  br label %do.end111

do.end111:                                        ; preds = %for.inc123.do.end111_crit_edge, %do.end111.preheader
  %i.1178 = phi i32 [ %inc124, %for.inc123.do.end111_crit_edge ], [ 0, %do.end111.preheader ]
  %arrayidx113 = getelementptr i32, ptr %call8, i32 %i.1178
  %39 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %arrayidx113, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %i.1178)
  %cmp114.not = icmp eq i32 %40, %i.1178
  br i1 %cmp114.not, label %do.end111.for.inc123_crit_edge, label %do.end119

do.end111.for.inc123_crit_edge:                   ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc123

do.end119:                                        ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #11
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #12
  br label %for.inc123

for.inc123:                                       ; preds = %do.end119, %do.end111.for.inc123_crit_edge
  %inc124 = add nuw nsw i32 %i.1178, 1
  %exitcond.not = icmp eq i32 %inc124, 32
  br i1 %exitcond.not, label %for.end125, label %for.inc123.do.end111_crit_edge

for.inc123.do.end111_crit_edge:                   ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end111

for.end125:                                       ; preds = %for.inc123
  %free_mem = getelementptr inbounds %struct.edac_device_prv_data, ptr %5, i32 0, i32 5
  %41 = ptrtoint ptr %free_mem to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %free_mem, align 4
  %tobool126.not = icmp eq ptr %42, null
  br i1 %tobool126.not, label %for.end125.cleanup_crit_edge, label %if.then127

for.end125.cleanup_crit_edge:                     ; preds = %for.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then127:                                       ; preds = %for.end125
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %trig_alloc_sz to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %trig_alloc_sz, align 4
  %45 = ptrtoint ptr %generic_ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %generic_ptr, align 4
  call void %42(ptr noundef nonnull %call8, i32 noundef %44, ptr noundef %46) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then127, %for.end125.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ -14, %lor.lhs.false.cleanup_crit_edge ], [ -14, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %count, %if.then127 ], [ %count, %for.end125.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %generic_ptr) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_check_ecc_deps(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.altr_edac_device_dev, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 8
  %data = getelementptr inbounds %struct.altr_edac_device_dev, ptr %device, i32 0, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %ecc_en_ofst = getelementptr inbounds %struct.edac_device_prv_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %ecc_en_ofst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ecc_en_ofst, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !400
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !414
  %ecc_enable_mask = getelementptr inbounds %struct.edac_device_prv_data, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %ecc_enable_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ecc_enable_mask, align 4
  %and = and i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %edac_dev_name = getelementptr inbounds %struct.altr_edac_device_dev, ptr %device, i32 0, i32 6
  %10 = ptrtoint ptr %edac_dev_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %edac_dev_name, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %11) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ocram_alloc_mem(i32 noundef %size, ptr nocapture noundef writeonly %other) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.84) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_gen_pool_get(ptr noundef nonnull %call, ptr noundef nonnull @.str.85, i32 noundef 0) #9
  tail call void @of_node_put(ptr noundef nonnull %call) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %algo.i = getelementptr inbounds %struct.gen_pool, ptr %call1, i32 0, i32 3
  %0 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo.i, align 4
  %data.i = getelementptr inbounds %struct.gen_pool, ptr %call1, i32 0, i32 4
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %call.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %call1, i32 noundef %size, ptr noundef %1, ptr noundef %3, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %4 = inttoptr i32 %call.i.i to ptr
  %5 = call ptr @memset(ptr %4, i32 0, i32 %size)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !415
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %other to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1, ptr %other, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %if.end8 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end4.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocram_free_mem(ptr noundef %p, i32 noundef %size, ptr noundef %other) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  tail call void @gen_pool_free_owner(ptr noundef %other, i32 noundef %0, i32 noundef %size, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_gen_pool_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_edac_device_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call ptr @devres_open_group(ptr noundef %dev, ptr noundef null, i32 noundef 3264) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #12
  br label %fail

if.end11:                                         ; preds = %if.end
  %4 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call3, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %5
  %add.i = add i32 %sub.i, %7
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.dev_name.exit_crit_edge

if.end11.dev_name.exit_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end11.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %if.end11.dev_name.exit_crit_edge ]
  %call16 = tail call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @iomem_resource, i32 noundef %5, i32 noundef %add.i, ptr noundef %retval.0.i) #9
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %do.end21, label %if.end24

do.end21:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %3) #12
  br label %fail

if.end24:                                         ; preds = %dev_name.exit
  %12 = load i32, ptr @altr_edac_device_probe.dev_instance, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr @altr_edac_device_probe.dev_instance, align 4
  %call25 = tail call ptr @edac_device_alloc_ctl_info(i32 noundef 976, ptr noundef %3, i32 noundef 1, ptr noundef %3, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef %12) #9
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %do.end30, label %if.end33

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %3) #12
  br label %fail

if.end33:                                         ; preds = %if.end24
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call25, i32 0, i32 17
  %13 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pvt_info, align 4
  %dev35 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call25, i32 0, i32 13
  %15 = ptrtoint ptr %dev35 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %dev35, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call25, ptr %driver_data.i.i, align 4
  %edac_dev_name = getelementptr inbounds %struct.altr_edac_device_dev, ptr %14, i32 0, i32 6
  %17 = ptrtoint ptr %edac_dev_name to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %3, ptr %edac_dev_name, align 4
  %18 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call3, align 4
  %20 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end.i, align 4
  %sub.i146 = sub i32 1, %19
  %add.i147 = add i32 %sub.i146, %21
  %call39 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %19, i32 noundef %add.i147) #9
  %base = getelementptr inbounds %struct.altr_edac_device_dev, ptr %14, i32 0, i32 1
  %22 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call39, ptr %base, align 8
  %tobool41.not = icmp eq ptr %call39, null
  br i1 %tobool41.not, label %if.end33.fail1_crit_edge, label %if.end43

if.end33.fail1_crit_edge:                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail1

if.end43:                                         ; preds = %if.end33
  %call44 = tail call ptr @of_match_node(ptr noundef nonnull @altr_edac_device_of_match, ptr noundef %1) #9
  %data = getelementptr inbounds %struct.of_device_id, ptr %call44, i32 0, i32 3
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %data45 = getelementptr inbounds %struct.altr_edac_device_dev, ptr %14, i32 0, i32 4
  %25 = ptrtoint ptr %data45 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %data45, align 4
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %24, align 4
  %tobool47.not = icmp eq ptr %27, null
  br i1 %tobool47.not, label %if.end43.if.end55_crit_edge, label %if.then48

if.end43.if.end55_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then48:                                        ; preds = %if.end43
  %call51 = tail call i32 %27(ptr noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then48.if.end55_crit_edge, label %if.then48.fail1_crit_edge

if.then48.fail1_crit_edge:                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail1

if.then48.if.end55_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.end55:                                         ; preds = %if.then48.if.end55_crit_edge, %if.end43.if.end55_crit_edge
  %call56 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %sb_irq = getelementptr inbounds %struct.altr_edac_device_dev, ptr %14, i32 0, i32 2
  %28 = ptrtoint ptr %sb_irq to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call56, ptr %sb_irq, align 4
  %29 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i149 = icmp eq ptr %30, null
  br i1 %tobool.not.i149, label %if.end.i150, label %if.end55.dev_name.exit152_crit_edge

if.end55.dev_name.exit152_crit_edge:              ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit152

if.end.i150:                                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  br label %dev_name.exit152

dev_name.exit152:                                 ; preds = %if.end.i150, %if.end55.dev_name.exit152_crit_edge
  %retval.0.i151 = phi ptr [ %32, %if.end.i150 ], [ %30, %if.end55.dev_name.exit152_crit_edge ]
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call56, ptr noundef nonnull @altr_edac_device_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i151, ptr noundef nonnull %call25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool62.not = icmp eq i32 %call.i, 0
  br i1 %tobool62.not, label %if.end64, label %dev_name.exit152.fail1_crit_edge

dev_name.exit152.fail1_crit_edge:                 ; preds = %dev_name.exit152
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail1

if.end64:                                         ; preds = %dev_name.exit152
  %call65 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #9
  %db_irq = getelementptr inbounds %struct.altr_edac_device_dev, ptr %14, i32 0, i32 3
  %33 = ptrtoint ptr %db_irq to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call65, ptr %db_irq, align 8
  %34 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i154 = icmp eq ptr %35, null
  br i1 %tobool.not.i154, label %if.end.i155, label %if.end64.dev_name.exit157_crit_edge

if.end64.dev_name.exit157_crit_edge:              ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit157

if.end.i155:                                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  br label %dev_name.exit157

dev_name.exit157:                                 ; preds = %if.end.i155, %if.end64.dev_name.exit157_crit_edge
  %retval.0.i156 = phi ptr [ %37, %if.end.i155 ], [ %35, %if.end64.dev_name.exit157_crit_edge ]
  %call.i158 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call65, ptr noundef nonnull @altr_edac_device_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i156, ptr noundef nonnull %call25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %tobool71.not = icmp eq i32 %call.i158, 0
  br i1 %tobool71.not, label %if.end73, label %dev_name.exit157.fail1_crit_edge

dev_name.exit157.fail1_crit_edge:                 ; preds = %dev_name.exit157
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail1

if.end73:                                         ; preds = %dev_name.exit157
  %mod_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call25, i32 0, i32 14
  %38 = ptrtoint ptr %mod_name to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.98, ptr %mod_name, align 4
  %39 = ptrtoint ptr %edac_dev_name to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %edac_dev_name, align 4
  %dev_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call25, i32 0, i32 16
  %41 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %dev_name, align 4
  %call75 = tail call i32 @edac_device_add_device(ptr noundef nonnull %call25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end73.fail1_crit_edge

if.end73.fail1_crit_edge:                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail1

if.end78:                                         ; preds = %if.end73
  %42 = ptrtoint ptr %data45 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data45, align 4
  %44 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pvt_info, align 4
  %edac_dev_name.i = getelementptr inbounds %struct.altr_edac_device_dev, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %edac_dev_name.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %edac_dev_name.i, align 4
  %call.i159 = tail call ptr @edac_debugfs_create_dir(ptr noundef %47) #9
  %debugfs_dir.i = getelementptr inbounds %struct.altr_edac_device_dev, ptr %45, i32 0, i32 5
  %48 = ptrtoint ptr %debugfs_dir.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i159, ptr %debugfs_dir.i, align 8
  %tobool.not.i160 = icmp eq ptr %call.i159, null
  br i1 %tobool.not.i160, label %if.end78.altr_create_edacdev_dbgfs.exit_crit_edge, label %if.end.i161

if.end78.altr_create_edacdev_dbgfs.exit_crit_edge: ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %altr_create_edacdev_dbgfs.exit

if.end.i161:                                      ; preds = %if.end78
  %inject_fops.i = getelementptr inbounds %struct.edac_device_prv_data, ptr %43, i32 0, i32 13
  %49 = ptrtoint ptr %inject_fops.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %inject_fops.i, align 4
  %call3.i = tail call ptr @edac_debugfs_create_file(ptr noundef nonnull @.str.53, i16 noundef zeroext 128, ptr noundef nonnull %call.i159, ptr noundef nonnull %call25, ptr noundef %50) #9
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i161.altr_create_edacdev_dbgfs.exit_crit_edge

if.end.i161.altr_create_edacdev_dbgfs.exit_crit_edge: ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #11
  br label %altr_create_edacdev_dbgfs.exit

if.then5.i:                                       ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %debugfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %debugfs_dir.i, align 8
  tail call void @debugfs_remove(ptr noundef %52) #9
  br label %altr_create_edacdev_dbgfs.exit

altr_create_edacdev_dbgfs.exit:                   ; preds = %if.then5.i, %if.end.i161.altr_create_edacdev_dbgfs.exit_crit_edge, %if.end78.altr_create_edacdev_dbgfs.exit_crit_edge
  tail call void @devres_close_group(ptr noundef %dev, ptr noundef null) #9
  br label %cleanup

fail1:                                            ; preds = %if.end73.fail1_crit_edge, %dev_name.exit157.fail1_crit_edge, %dev_name.exit152.fail1_crit_edge, %if.then48.fail1_crit_edge, %if.end33.fail1_crit_edge
  %res.0 = phi i32 [ %call51, %if.then48.fail1_crit_edge ], [ %call.i, %dev_name.exit152.fail1_crit_edge ], [ %call.i158, %dev_name.exit157.fail1_crit_edge ], [ %call75, %if.end73.fail1_crit_edge ], [ -12, %if.end33.fail1_crit_edge ]
  tail call void @edac_device_free_ctl_info(ptr noundef nonnull %call25) #9
  br label %fail

fail:                                             ; preds = %fail1, %do.end30, %do.end21, %do.end8
  %res.1 = phi i32 [ %res.0, %fail1 ], [ -12, %do.end30 ], [ -16, %do.end21 ], [ -19, %do.end8 ]
  %call82 = tail call i32 @devres_release_group(ptr noundef %dev, ptr noundef null) #9
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %3, i32 noundef %res.1) #12
  br label %cleanup

cleanup:                                          ; preds = %fail, %altr_create_edacdev_dbgfs.exit, %do.end
  %retval.0 = phi i32 [ %res.1, %fail ], [ 0, %altr_create_edacdev_dbgfs.exit ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_edac_device_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pvt_info, align 4
  %debugfs_dir = getelementptr inbounds %struct.altr_edac_device_dev, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_dir, align 8
  tail call void @debugfs_remove(ptr noundef %5) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call ptr @edac_device_del_device(ptr noundef %dev) #9
  tail call void @edac_device_free_ctl_info(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_device_alloc_ctl_info(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_edac_device_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %dev_id, i32 0, i32 17
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 4
  %data = getelementptr inbounds %struct.altr_edac_device_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %sb_irq = getelementptr inbounds %struct.altr_edac_device_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %sb_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %irq)
  %cmp = icmp eq i32 %5, %irq
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %ce_clear_mask = getelementptr inbounds %struct.edac_device_prv_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %ce_clear_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ce_clear_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %do.body

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !416
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %ce_clear_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ce_clear_mask, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %base = getelementptr inbounds %struct.altr_edac_device_dev, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #9, !srcloc !394
  br label %if.end

if.end:                                           ; preds = %do.body, %if.then.if.end_crit_edge
  %edac_dev_name = getelementptr inbounds %struct.altr_edac_device_dev, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %edac_dev_name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %edac_dev_name, align 4
  tail call void @edac_device_handle_ce_count(ptr noundef %dev_id, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %14) #9
  br label %if.end36

if.else:                                          ; preds = %entry
  %db_irq = getelementptr inbounds %struct.altr_edac_device_dev, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %db_irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %db_irq, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %irq)
  %cmp3 = icmp eq i32 %16, %irq
  br i1 %cmp3, label %if.then4, label %do.end22

if.then4:                                         ; preds = %if.else
  %ue_clear_mask = getelementptr inbounds %struct.edac_device_prv_data, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %ue_clear_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ue_clear_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool5.not = icmp eq i32 %18, 0
  br i1 %tobool5.not, label %if.then4.if.end12_crit_edge, label %do.body7

if.then4.if.end12_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

do.body7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !417
  tail call void @arm_heavy_mb() #9
  %19 = ptrtoint ptr %ue_clear_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ue_clear_mask, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %base11 = getelementptr inbounds %struct.altr_edac_device_dev, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %base11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base11, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #9, !srcloc !394
  br label %if.end12

if.end12:                                         ; preds = %do.body7, %if.then4.if.end12_crit_edge
  %edac_dev_name13 = getelementptr inbounds %struct.altr_edac_device_dev, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %edac_dev_name13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %edac_dev_name13, align 4
  tail call fastcc void @edac_device_handle_ue(ptr noundef %dev_id, ptr noundef %25)
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.102) #13
  unreachable

do.end22:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 574, i32 noundef 9, ptr noundef null) #9
  br label %if.end36

if.end36:                                         ; preds = %do.end22, %if.end
  %ret_value.0 = phi i32 [ 1, %if.end ], [ 0, %do.end22 ]
  ret i32 %ret_value.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_device_add_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_device_free_ctl_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @edac_device_handle_ue(ptr noundef %edac_dev, ptr noundef %msg) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @edac_device_handle_ue_count(ptr noundef %edac_dev, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %msg) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_device_handle_ce_count(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_device_handle_ue_count(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_debugfs_create_dir(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_device_del_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_edac_a10_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 176, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %a10_ecc_devices = getelementptr inbounds %struct.altr_arria10_edac, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %a10_ecc_devices to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %a10_ecc_devices, ptr %a10_ecc_devices, align 4
  %prev.i = getelementptr inbounds %struct.altr_arria10_edac, ptr %call.i, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %a10_ecc_devices, ptr %prev.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call4 = tail call ptr @altr_sysmgr_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.104) #9
  %ecc_mgr_map = getelementptr inbounds %struct.altr_arria10_edac, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %ecc_mgr_map to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4, ptr %ecc_mgr_map, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105) #12
  %7 = ptrtoint ptr %ecc_mgr_map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ecc_mgr_map, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %name14 = getelementptr inbounds %struct.altr_arria10_edac, ptr %call.i, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %name14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %name14, align 4
  %irq_mask = getelementptr inbounds %struct.altr_arria10_edac, ptr %call.i, i32 0, i32 5, i32 7
  %15 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @a10_eccmgr_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.altr_arria10_edac, ptr %call.i, i32 0, i32 5, i32 9
  %16 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @a10_eccmgr_irq_unmask, ptr %irq_unmask, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %11, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef 64, i32 noundef 64, i32 noundef 0, ptr noundef nonnull @a10_eccmgr_ic_ops, ptr noundef nonnull %call.i) #9
  %domain = getelementptr inbounds %struct.altr_arria10_edac, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call1.i, ptr %domain, align 4
  %tobool21.not = icmp eq ptr %call1.i, null
  br i1 %tobool21.not, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.108) #12
  br label %cleanup

if.end27:                                         ; preds = %if.end11
  %call28 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %sb_irq = getelementptr inbounds %struct.altr_arria10_edac, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %sb_irq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call28, ptr %sb_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp = icmp slt i32 %call28, 0
  br i1 %cmp, label %do.end33, label %if.end36

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.113) #12
  %19 = ptrtoint ptr %sb_irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sb_irq, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.end27
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call28, ptr noundef nonnull @altr_edac_a10_irq_handler, ptr noundef nonnull %call.i) #9
  %call38 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #9
  %db_irq = getelementptr inbounds %struct.altr_arria10_edac, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %db_irq to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call38, ptr %db_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp40 = icmp slt i32 %call38, 0
  br i1 %cmp40, label %do.end44, label %if.end47

do.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.116) #12
  %22 = ptrtoint ptr %db_irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %db_irq, align 4
  br label %cleanup

if.end47:                                         ; preds = %if.end36
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call38, ptr noundef nonnull @altr_edac_a10_irq_handler, ptr noundef nonnull %call.i) #9
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %call51 = tail call ptr @of_get_next_child(ptr noundef %25, ptr noundef null) #9
  %cmp52.not115 = icmp eq ptr %call51, null
  br i1 %cmp52.not115, label %if.end47.cleanup_crit_edge, label %if.end47.for.body_crit_edge

if.end47.for.body_crit_edge:                      ; preds = %if.end47
  br label %for.body

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end47.for.body_crit_edge
  %child.0116 = phi ptr [ %call71, %for.inc.for.body_crit_edge ], [ %call51, %if.end47.for.body_crit_edge ]
  %call53 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %child.0116) #9
  br i1 %call53, label %if.end55, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end55:                                         ; preds = %for.body
  %call56 = tail call ptr @of_match_node(ptr noundef nonnull @altr_edac_a10_device_of_match, ptr noundef nonnull %child.0116) #9
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %if.else, label %if.then58

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %call59 = tail call i32 @altr_edac_a10_device_add(ptr noundef nonnull %call.i, ptr noundef nonnull %child.0116)
  br label %for.inc

if.else:                                          ; preds = %if.end55
  %call60 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %child.0116, ptr noundef nonnull @.str.118) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.else.for.inc_crit_edge, label %if.then62

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then62:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node, align 8
  %call66 = tail call i32 @of_platform_populate(ptr noundef %27, ptr noundef nonnull @altr_sdram_ctrl_of_match, ptr noundef null, ptr noundef %dev) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then62, %if.else.for.inc_crit_edge, %if.then58, %for.body.for.inc_crit_edge
  %28 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_node, align 8
  %call71 = tail call ptr @of_get_next_child(ptr noundef %29, ptr noundef nonnull %child.0116) #9
  %cmp52.not = icmp eq ptr %call71, null
  br i1 %cmp52.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %do.end44, %do.end33, %do.end25, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %do.end ], [ %20, %do.end33 ], [ %23, %do.end44 ], [ -12, %do.end25 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end47.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @altr_sysmgr_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a10_eccmgr_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %ecc_mgr_map = getelementptr inbounds %struct.altr_arria10_edac, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ecc_mgr_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ecc_mgr_map, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %5
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 148, i32 noundef %shl) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a10_eccmgr_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %ecc_mgr_map = getelementptr inbounds %struct.altr_arria10_edac, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ecc_mgr_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ecc_mgr_map, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %5
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 152, i32 noundef %shl) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altr_edac_a10_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %irq_status = alloca i32, align 4
  %bits = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_status) #9
  %0 = ptrtoint ptr %irq_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %irq_status, align 4, !annotation !392
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %1 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip.i, align 8
  %irq.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #9
  %db_irq = getelementptr inbounds %struct.altr_arria10_edac, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %db_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %db_irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp = icmp eq i32 %6, %8
  %cond3 = select i1 %cmp, i32 160, i32 156
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 10
  %9 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 8
  %11 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %12(ptr noundef %irq_data.i) #9
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 7
  %13 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %14(ptr noundef %irq_data4.i) #9
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 6
  %15 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %16, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %16(ptr noundef %irq_data4.i) #9
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %ecc_mgr_map = getelementptr inbounds %struct.altr_arria10_edac, ptr %2, i32 0, i32 1
  %17 = ptrtoint ptr %ecc_mgr_map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ecc_mgr_map, align 4
  %call4 = call i32 @regmap_read(ptr noundef %18, i32 noundef %cond3, ptr noundef nonnull %irq_status) #9
  %19 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq_status, align 4
  %21 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %bits, align 4
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %bits, i32 noundef 32, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call5)
  %cmp624 = icmp slt i32 %call5, 32
  br i1 %cmp624, label %for.body.lr.ph, label %chained_irq_enter.exit.for.end_crit_edge

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %domain = getelementptr inbounds %struct.altr_arria10_edac, ptr %2, i32 0, i32 4
  %mul = select i1 %cmp, i32 32, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %bit.025 = phi i32 [ %call5, %for.body.lr.ph ], [ %call9, %for.body.for.body_crit_edge ]
  %22 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %domain, align 4
  %add = add nsw i32 %bit.025, %mul
  %call7 = call i32 @generic_handle_domain_irq(ptr noundef %23, i32 noundef %add) #9
  %add8 = add nsw i32 %bit.025, 1
  %call9 = call i32 @_find_next_bit_be(ptr noundef nonnull %bits, i32 noundef 32, i32 noundef %add8) #9
  %cmp6 = icmp slt i32 %call9, 32
  br i1 %cmp6, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %24 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i21 = icmp eq ptr %25, null
  br i1 %tobool.not.i21, label %if.else.i22, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_exit.exit

if.else.i22:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 9
  %26 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i22, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %27, %if.else.i22 ], [ %25, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_status) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_edac_a10_device_add(ptr noundef %edac, ptr noundef %np) #2 align 64 {
entry:
  %args.i.i197 = alloca %struct.of_phandle_args, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %np, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #9
  %2 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call = tail call ptr @of_match_node(ptr noundef nonnull @altr_edac_a10_device_of_match, ptr noundef %np) #9
  %tobool.not.i = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %tobool.not.i192 = icmp eq ptr %4, null
  %cmp.i193 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %spec.select.i194 = or i1 %tobool.not.i192, %cmp.i193
  br i1 %spec.select.i194, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i = tail call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.123) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i195 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i195, label %if.end.i, label %if.end4.if.end7_crit_edge

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end.i:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #9
  %5 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.124, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #9
  br label %validate_parent_available.exit.thread215

of_parse_phandle.exit.i:                          ; preds = %if.end.i
  %6 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #9
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %of_parse_phandle.exit.i.validate_parent_available.exit.thread215_crit_edge, label %land.lhs.true.i

of_parse_phandle.exit.i.validate_parent_available.exit.thread215_crit_edge: ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_parent_available.exit.thread215

land.lhs.true.i:                                  ; preds = %of_parse_phandle.exit.i
  %call3.i = call zeroext i1 @of_device_is_available(ptr noundef nonnull %7) #9
  br i1 %call3.i, label %land.lhs.true.i.validate_parent_available.exit.thread215_crit_edge, label %validate_parent_available.exit

land.lhs.true.i.validate_parent_available.exit.thread215_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %validate_parent_available.exit.thread215

validate_parent_available.exit.thread215:         ; preds = %land.lhs.true.i.validate_parent_available.exit.thread215_crit_edge, %of_parse_phandle.exit.i.validate_parent_available.exit.thread215_crit_edge, %of_parse_phandle.exit.thread.i
  %retval.0.i12.i.ph = phi ptr [ null, %of_parse_phandle.exit.thread.i ], [ null, %of_parse_phandle.exit.i.validate_parent_available.exit.thread215_crit_edge ], [ %7, %land.lhs.true.i.validate_parent_available.exit.thread215_crit_edge ]
  call void @of_node_put(ptr noundef %retval.0.i12.i.ph) #9
  br label %if.end7

validate_parent_available.exit:                   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @of_node_put(ptr noundef nonnull %7) #9
  br label %cleanup

if.end7:                                          ; preds = %validate_parent_available.exit.thread215, %if.end4.if.end7_crit_edge
  %8 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %edac, align 4
  %call8 = call ptr @devres_open_group(ptr noundef %9, ptr noundef nonnull @altr_edac_a10_device_add, i32 noundef 3264) #9
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.123) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i197) #9
  %10 = call ptr @memset(ptr %args.i.i197, i32 255, i32 72)
  %call.i.i198 = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i197) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i198)
  %tobool.not.i.i199 = icmp eq i32 %call.i.i198, 0
  br i1 %tobool.not.i.i199, label %of_parse_phandle.exit.i202, label %of_parse_phandle.exit.thread.i200

of_parse_phandle.exit.thread.i200:                ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i197) #9
  br label %do.end

of_parse_phandle.exit.i202:                       ; preds = %if.then14
  %11 = ptrtoint ptr %args.i.i197 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %args.i.i197, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i197) #9
  %tobool.not.i201 = icmp eq ptr %12, null
  br i1 %tobool.not.i201, label %of_parse_phandle.exit.i202.do.end_crit_edge, label %if.end.i203

of_parse_phandle.exit.i202.do.end_crit_edge:      ; preds = %of_parse_phandle.exit.i202
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i203:                                      ; preds = %of_parse_phandle.exit.i202
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call i32 @of_address_to_resource(ptr noundef nonnull %12, i32 noundef 0, ptr noundef nonnull %res) #9
  call void @of_node_put(ptr noundef nonnull %12) #9
  br label %if.end17

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = call i32 @of_address_to_resource(ptr noundef %np, i32 noundef 0, ptr noundef nonnull %res) #9
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end.i203
  %rc.0 = phi i32 [ %call16, %if.else ], [ %call1.i, %if.end.i203 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp = icmp slt i32 %rc.0, 0
  br i1 %cmp, label %if.end17.do.end_crit_edge, label %if.end20

if.end17.do.end_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %if.end17.do.end_crit_edge, %of_parse_phandle.exit.i202.do.end_crit_edge, %of_parse_phandle.exit.thread.i200
  %rc.0221 = phi i32 [ %rc.0, %if.end17.do.end_crit_edge ], [ -19, %of_parse_phandle.exit.i202.do.end_crit_edge ], [ -19, %of_parse_phandle.exit.thread.i200 ]
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef %1) #12
  br label %err_release_group

if.end20:                                         ; preds = %if.end17
  %call21 = call i32 @edac_device_alloc_index() #9
  %call22 = call ptr @edac_device_alloc_ctl_info(i32 noundef 976, ptr noundef %1, i32 noundef 1, ptr noundef %1, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef %call21) #9
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %1) #12
  br label %err_release_group

if.end30:                                         ; preds = %if.end20
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call22, i32 0, i32 17
  %13 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pvt_info, align 4
  %15 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %edac, align 4
  %dev32 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call22, i32 0, i32 13
  %17 = ptrtoint ptr %dev32 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %dev32, align 4
  %edac_dev_name = getelementptr inbounds %struct.altr_edac_device_dev, ptr %14, i32 0, i32 6
  %18 = ptrtoint ptr %edac_dev_name to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %1, ptr %edac_dev_name, align 4
  %edac_idx33 = getelementptr inbounds %struct.altr_edac_device_dev, ptr %14, i32 0, i32 10
  %19 = ptrtoint ptr %edac_idx33 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call21, ptr %edac_idx33, align 8
  %edac34 = getelementptr inbounds %struct.altr_edac_device_dev, ptr %14, i32 0, i32 7
  %20 = ptrtoint ptr %edac34 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %edac, ptr %edac34, align 8
  %edac_dev = getelementptr inbounds %struct.altr_edac_device_dev, ptr %14, i32 0, i32 8
  %21 = ptrtoint ptr %edac_dev to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call22, ptr %edac_dev, align 4
  %data35 = getelementptr inbounds %struct.altr_edac_device_dev, ptr %14, i32 0, i32 4
  %22 = ptrtoint ptr %data35 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %4, ptr %data35, align 4
  %ddev = getelementptr inbounds %struct.altr_edac_device_dev, ptr %14, i32 0, i32 9
  %23 = load ptr, ptr %edac, align 4
  %24 = call ptr @memcpy(ptr %ddev, ptr %23, i32 928)
  store ptr %ddev, ptr %dev32, align 4
  %ctl_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call22, i32 0, i32 15
  %25 = ptrtoint ptr %ctl_name to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.98, ptr %ctl_name, align 4
  %mod_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call22, i32 0, i32 14
  %26 = ptrtoint ptr %mod_name to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %1, ptr %mod_name, align 4
  %dev_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call22, i32 0, i32 16
  %27 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %1, ptr %dev_name, align 4
  %28 = load ptr, ptr %edac, align 4
  %call40 = call ptr @devm_ioremap_resource(ptr noundef %28, ptr noundef nonnull %res) #9
  %base = getelementptr inbounds %struct.altr_edac_device_dev, ptr %14, i32 0, i32 1
  %29 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call40, ptr %base, align 8
  %cmp.i205 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i205, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %call40 to i32
  br label %err_release_group1

if.end46:                                         ; preds = %if.end30
  %31 = ptrtoint ptr %data35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data35, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %tobool48.not = icmp eq ptr %34, null
  br i1 %tobool48.not, label %if.end46.if.end56_crit_edge, label %if.then49

if.end46.if.end56_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then49:                                        ; preds = %if.end46
  %call52 = call i32 %34(ptr noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then49.if.end56_crit_edge, label %if.then49.err_release_group1_crit_edge

if.then49.err_release_group1_crit_edge:           ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_release_group1

if.then49.if.end56_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.end56:                                         ; preds = %if.then49.if.end56_crit_edge, %if.end46.if.end56_crit_edge
  %call57 = call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 0) #9
  %sb_irq = getelementptr inbounds %struct.altr_edac_device_dev, ptr %14, i32 0, i32 2
  %35 = ptrtoint ptr %sb_irq to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call57, ptr %sb_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool59.not = icmp eq i32 %call57, 0
  br i1 %tobool59.not, label %do.end63, label %if.end66

do.end63:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170) #12
  br label %err_release_group1

if.end66:                                         ; preds = %if.end56
  %36 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %edac, align 4
  %ecc_irq_handler = getelementptr inbounds %struct.edac_device_prv_data, ptr %4, i32 0, i32 11
  %38 = ptrtoint ptr %ecc_irq_handler to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ecc_irq_handler, align 4
  %call.i206 = call i32 @devm_request_threaded_irq(ptr noundef %37, i32 noundef %call57, ptr noundef %39, ptr noundef null, i32 noundef 8196, ptr noundef %1, ptr noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206)
  %tobool70.not = icmp eq i32 %call.i206, 0
  br i1 %tobool70.not, label %if.end77, label %do.end74

do.end74:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173) #12
  br label %err_release_group1

if.end77:                                         ; preds = %if.end66
  %call78 = call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef 1) #9
  %db_irq = getelementptr inbounds %struct.altr_edac_device_dev, ptr %14, i32 0, i32 3
  %40 = ptrtoint ptr %db_irq to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call78, ptr %db_irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool80.not = icmp eq i32 %call78, 0
  br i1 %tobool80.not, label %do.end84, label %if.end87

do.end84:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176) #12
  br label %err_release_group1

if.end87:                                         ; preds = %if.end77
  %41 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %edac, align 4
  %43 = ptrtoint ptr %ecc_irq_handler to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ecc_irq_handler, align 4
  %call.i207 = call i32 @devm_request_threaded_irq(ptr noundef %42, i32 noundef %call78, ptr noundef %44, ptr noundef null, i32 noundef 8196, ptr noundef %1, ptr noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207)
  %tobool92.not = icmp eq i32 %call.i207, 0
  br i1 %tobool92.not, label %if.end99, label %do.end96

do.end96:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179) #12
  br label %err_release_group1

if.end99:                                         ; preds = %if.end87
  %call100 = call i32 @edac_device_add_device(ptr noundef nonnull %call22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end107, label %do.end105

do.end105:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %edac, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.182) #12
  br label %err_release_group1

if.end107:                                        ; preds = %if.end99
  %47 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pvt_info, align 4
  %edac_dev_name.i = getelementptr inbounds %struct.altr_edac_device_dev, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %edac_dev_name.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %edac_dev_name.i, align 4
  %call.i208 = call ptr @edac_debugfs_create_dir(ptr noundef %50) #9
  %debugfs_dir.i = getelementptr inbounds %struct.altr_edac_device_dev, ptr %48, i32 0, i32 5
  %51 = ptrtoint ptr %debugfs_dir.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i208, ptr %debugfs_dir.i, align 8
  %tobool.not.i209 = icmp eq ptr %call.i208, null
  br i1 %tobool.not.i209, label %if.end107.altr_create_edacdev_dbgfs.exit_crit_edge, label %if.end.i211

if.end107.altr_create_edacdev_dbgfs.exit_crit_edge: ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %altr_create_edacdev_dbgfs.exit

if.end.i211:                                      ; preds = %if.end107
  %inject_fops.i = getelementptr inbounds %struct.edac_device_prv_data, ptr %4, i32 0, i32 13
  %52 = ptrtoint ptr %inject_fops.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %inject_fops.i, align 4
  %call3.i210 = call ptr @edac_debugfs_create_file(ptr noundef nonnull @.str.53, i16 noundef zeroext 128, ptr noundef nonnull %call.i208, ptr noundef nonnull %call22, ptr noundef %53) #9
  %tobool4.not.i = icmp eq ptr %call3.i210, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i211.altr_create_edacdev_dbgfs.exit_crit_edge

if.end.i211.altr_create_edacdev_dbgfs.exit_crit_edge: ; preds = %if.end.i211
  call void @__sanitizer_cov_trace_pc() #11
  br label %altr_create_edacdev_dbgfs.exit

if.then5.i:                                       ; preds = %if.end.i211
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %debugfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %debugfs_dir.i, align 8
  call void @debugfs_remove(ptr noundef %55) #9
  br label %altr_create_edacdev_dbgfs.exit

altr_create_edacdev_dbgfs.exit:                   ; preds = %if.then5.i, %if.end.i211.altr_create_edacdev_dbgfs.exit_crit_edge, %if.end107.altr_create_edacdev_dbgfs.exit_crit_edge
  %a10_ecc_devices = getelementptr inbounds %struct.altr_arria10_edac, ptr %edac, i32 0, i32 6
  %56 = ptrtoint ptr %a10_ecc_devices to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %a10_ecc_devices, align 4
  %call.i.i212 = call zeroext i1 @__list_add_valid(ptr noundef %14, ptr noundef %a10_ecc_devices, ptr noundef %57) #9
  br i1 %call.i.i212, label %if.end.i.i, label %altr_create_edacdev_dbgfs.exit.list_add.exit_crit_edge

altr_create_edacdev_dbgfs.exit.list_add.exit_crit_edge: ; preds = %altr_create_edacdev_dbgfs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %altr_create_edacdev_dbgfs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %14, ptr %prev1.i.i, align 4
  %59 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %57, ptr %14, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %60 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %a10_ecc_devices, ptr %prev3.i.i, align 4
  %61 = ptrtoint ptr %a10_ecc_devices to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %14, ptr %a10_ecc_devices, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %altr_create_edacdev_dbgfs.exit.list_add.exit_crit_edge
  %62 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %edac, align 4
  call void @devres_remove_group(ptr noundef %63, ptr noundef nonnull @altr_edac_a10_device_add) #9
  br label %cleanup

err_release_group1:                               ; preds = %do.end105, %do.end96, %do.end84, %do.end74, %do.end63, %if.then49.err_release_group1_crit_edge, %if.then43
  %rc.1 = phi i32 [ %30, %if.then43 ], [ %call52, %if.then49.err_release_group1_crit_edge ], [ %call.i206, %do.end74 ], [ %call.i207, %do.end96 ], [ -12, %do.end105 ], [ -19, %do.end84 ], [ -19, %do.end63 ]
  call void @edac_device_free_ctl_info(ptr noundef nonnull %call22) #9
  br label %err_release_group

err_release_group:                                ; preds = %err_release_group1, %do.end27, %do.end
  %rc.2 = phi i32 [ %rc.0221, %do.end ], [ %rc.1, %err_release_group1 ], [ -12, %do.end27 ]
  %64 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %edac, align 4
  %call110 = call i32 @devres_release_group(ptr noundef %65, ptr noundef null) #9
  %call115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %1, i32 noundef %rc.2) #12
  br label %cleanup

cleanup:                                          ; preds = %err_release_group, %list_add.exit, %if.end7.cleanup_crit_edge, %validate_parent_available.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.2, %err_release_group ], [ 0, %list_add.exit ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %validate_parent_available.exit ], [ -12, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a10_eccmgr_irqdomain_map(ptr nocapture noundef readonly %d, i32 noundef %irq, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %irq_chip = getelementptr inbounds %struct.altr_arria10_edac, ptr %1, i32 0, i32 5
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef %irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #9
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #9
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 1024) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_edac_a10_l2_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_irq = getelementptr inbounds %struct.altr_edac_device_dev, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %sb_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sb_irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %irq)
  %cmp = icmp eq i32 %1, %irq
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %edac = getelementptr inbounds %struct.altr_edac_device_dev, ptr %dev_id, i32 0, i32 7
  %2 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edac, align 8
  %ecc_mgr_map = getelementptr inbounds %struct.altr_arria10_edac, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ecc_mgr_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ecc_mgr_map, align 4
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 168, i32 noundef 32768) #9
  %edac_dev = getelementptr inbounds %struct.altr_edac_device_dev, ptr %dev_id, i32 0, i32 8
  %6 = ptrtoint ptr %edac_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %edac_dev, align 4
  %edac_dev_name = getelementptr inbounds %struct.altr_edac_device_dev, ptr %dev_id, i32 0, i32 6
  %8 = ptrtoint ptr %edac_dev_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %edac_dev_name, align 4
  tail call void @edac_device_handle_ce_count(ptr noundef %7, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %9) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  %db_irq = getelementptr inbounds %struct.altr_edac_device_dev, ptr %dev_id, i32 0, i32 3
  %10 = ptrtoint ptr %db_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %db_irq, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %irq)
  %cmp1 = icmp eq i32 %11, %irq
  br i1 %cmp1, label %if.then2, label %do.end

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %edac3 = getelementptr inbounds %struct.altr_edac_device_dev, ptr %dev_id, i32 0, i32 7
  %12 = ptrtoint ptr %edac3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %edac3, align 8
  %ecc_mgr_map4 = getelementptr inbounds %struct.altr_arria10_edac, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ecc_mgr_map4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ecc_mgr_map4, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 168, i32 noundef -2147483648) #9
  %edac_dev6 = getelementptr inbounds %struct.altr_edac_device_dev, ptr %dev_id, i32 0, i32 8
  %16 = ptrtoint ptr %edac_dev6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %edac_dev6, align 4
  %edac_dev_name7 = getelementptr inbounds %struct.altr_edac_device_dev, ptr %dev_id, i32 0, i32 6
  %18 = ptrtoint ptr %edac_dev_name7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %edac_dev_name7, align 4
  tail call fastcc void @edac_device_handle_ue(ptr noundef %17, ptr noundef %19)
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.102) #13
  unreachable

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1274, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_check_ocram_deps_init(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.altr_edac_device_dev, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 8
  %data.i = getelementptr inbounds %struct.altr_edac_device_dev, ptr %device, i32 0, i32 4
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %ecc_en_ofst.i = getelementptr inbounds %struct.edac_device_prv_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %ecc_en_ofst.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ecc_en_ofst.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !400
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !414
  %ecc_enable_mask.i = getelementptr inbounds %struct.edac_device_prv_data, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %ecc_enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ecc_enable_mask.i, align 4
  %and.i = and i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %altr_check_ecc_deps.exit, label %if.end

altr_check_ecc_deps.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %edac_dev_name.i = getelementptr inbounds %struct.altr_edac_device_dev, ptr %device, i32 0, i32 6
  %10 = ptrtoint ptr %edac_dev_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %edac_dev_name.i, align 4
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %11) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !418
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not = icmp eq i32 %13, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !419
  tail call void @arm_heavy_mb() #9
  %add.ptr6 = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 16777216) #9, !srcloc !394
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !420
  tail call void @arm_heavy_mb() #9
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %altr_check_ecc_deps.exit
  %retval.0 = phi i32 [ 0, %do.body ], [ -19, %altr_check_ecc_deps.exit ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_edac_a10_ecc_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.altr_edac_device_dev, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 8
  %sb_irq = getelementptr inbounds %struct.altr_edac_device_dev, ptr %dev_id, i32 0, i32 2
  %2 = ptrtoint ptr %sb_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %irq)
  %cmp = icmp eq i32 %3, %irq
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !421
  tail call void @arm_heavy_mb() #9
  %add.ptr = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #9, !srcloc !394
  %edac_dev = getelementptr inbounds %struct.altr_edac_device_dev, ptr %dev_id, i32 0, i32 8
  %4 = ptrtoint ptr %edac_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edac_dev, align 4
  %edac_dev_name = getelementptr inbounds %struct.altr_edac_device_dev, ptr %dev_id, i32 0, i32 6
  %6 = ptrtoint ptr %edac_dev_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %edac_dev_name, align 4
  tail call void @edac_device_handle_ce_count(ptr noundef %5, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %7) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  %db_irq = getelementptr inbounds %struct.altr_edac_device_dev, ptr %dev_id, i32 0, i32 3
  %8 = ptrtoint ptr %db_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %db_irq, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %irq)
  %cmp2 = icmp eq i32 %9, %irq
  br i1 %cmp2, label %do.body4, label %do.end20

do.body4:                                         ; preds = %if.else
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !422
  tail call void @arm_heavy_mb() #9
  %add.ptr7 = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 65536) #9, !srcloc !394
  %edac_dev8 = getelementptr inbounds %struct.altr_edac_device_dev, ptr %dev_id, i32 0, i32 8
  %10 = ptrtoint ptr %edac_dev8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %edac_dev8, align 4
  %edac_dev_name9 = getelementptr inbounds %struct.altr_edac_device_dev, ptr %dev_id, i32 0, i32 6
  %12 = ptrtoint ptr %edac_dev_name9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %edac_dev_name9, align 4
  tail call void @edac_device_handle_ue_count(ptr noundef %11, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %13) #9
  %data = getelementptr inbounds %struct.altr_edac_device_dev, ptr %dev_id, i32 0, i32 4
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %panic = getelementptr inbounds %struct.edac_device_prv_data, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %panic to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %panic, align 4, !range !423
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %do.body4.cleanup_crit_edge, label %if.then10

do.body4.cleanup_crit_edge:                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.102) #13
  unreachable

do.end20:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 881, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %do.body4.cleanup_crit_edge, %do.body
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %do.end20 ], [ 1, %do.body4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_edac_a10_device_trig2(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pvt_info, align 4
  %data = getelementptr inbounds %struct.altr_edac_device_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %base = getelementptr inbounds %struct.altr_edac_device_dev, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 8
  %set_err_ofst = getelementptr inbounds %struct.edac_device_prv_data, ptr %5, i32 0, i32 10
  %8 = ptrtoint ptr %set_err_ofst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %set_err_ofst, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  %tobool.not = icmp eq ptr %user_buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 1751) #9
  %10 = tail call i32 @llvm.read_register.i32(metadata !382) #9
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !403
  %and.i = and i32 %12, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !404
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  %13 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %user_buf, i32 -1226833921) #9, !srcloc !424
  %asmresult = extractvalue { i32, i32 } %13, 0
  %asmresult1 = extractvalue { i32, i32 } %13, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #9, !srcloc !404
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool3.not = icmp eq i32 %asmresult, 0
  br i1 %tobool3.not, label %do.body4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body4:                                         ; preds = %lor.lhs.false
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !407
  %and.i202 = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i202)
  %tobool15.not = icmp eq i32 %and.i202, 0
  br i1 %tobool15.not, label %if.then16, label %do.body4.do.end19_crit_edge

do.body4.do.end19_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.body4.do.end19_crit_edge
  %conv20 = and i32 %asmresult1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 85, i32 %conv20)
  %cmp21 = icmp eq i32 %conv20, 85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %cmp21, label %do.body24, label %do.body27

do.body24:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  %ue_set_mask = getelementptr inbounds %struct.edac_device_prv_data, ptr %5, i32 0, i32 9
  %15 = ptrtoint ptr %ue_set_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ue_set_mask, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %17) #9, !srcloc !394
  br label %do.body138

do.body27:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 8
  %add.ptr31 = getelementptr i8, ptr %19, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 -16777216) #9, !srcloc !394
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !425
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 8
  %add.ptr36 = getelementptr i8, ptr %21, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 0) #9, !srcloc !394
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !426
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 8
  %add.ptr41 = getelementptr i8, ptr %23, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 50331648) #9, !srcloc !394
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !427
  tail call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 8
  %add.ptr46 = getelementptr i8, ptr %25, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 256) #9, !srcloc !394
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !428
  tail call void @arm_heavy_mb() #9
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 8
  %add.ptr51 = getelementptr i8, ptr %27, i32 68
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #9, !srcloc !400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !429
  %29 = xor i32 %28, 16777216
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 8
  %add.ptr56 = getelementptr i8, ptr %31, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %29) #9, !srcloc !394
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !430
  tail call void @arm_heavy_mb() #9
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 8
  %add.ptr63 = getelementptr i8, ptr %33, i32 72
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #9, !srcloc !400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !431
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 8
  %add.ptr68 = getelementptr i8, ptr %36, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %34) #9, !srcloc !394
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !432
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 8
  %add.ptr75 = getelementptr i8, ptr %38, i32 76
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75) #9, !srcloc !400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !433
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 8
  %add.ptr80 = getelementptr i8, ptr %41, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %39) #9, !srcloc !394
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  tail call void @arm_heavy_mb() #9
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 8
  %add.ptr87 = getelementptr i8, ptr %43, i32 80
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #9, !srcloc !400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 8
  %add.ptr92 = getelementptr i8, ptr %46, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 %44) #9, !srcloc !394
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !436
  tail call void @arm_heavy_mb() #9
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 8
  %add.ptr99 = getelementptr i8, ptr %48, i32 100
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr99) #9, !srcloc !400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !437
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base, align 8
  %add.ptr104 = getelementptr i8, ptr %51, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 %49) #9, !srcloc !394
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  tail call void @arm_heavy_mb() #9
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 8
  %add.ptr111 = getelementptr i8, ptr %53, i32 104
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111) #9, !srcloc !400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !439
  %55 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base, align 8
  %add.ptr116 = getelementptr i8, ptr %56, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr116, i32 %54) #9, !srcloc !394
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !440
  tail call void @arm_heavy_mb() #9
  %57 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base, align 8
  %add.ptr121 = getelementptr i8, ptr %58, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 50397184) #9, !srcloc !394
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  tail call void @arm_heavy_mb() #9
  %59 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base, align 8
  %add.ptr126 = getelementptr i8, ptr %60, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 256) #9, !srcloc !394
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !442
  tail call void @arm_heavy_mb() #9
  %61 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base, align 8
  %add.ptr131 = getelementptr i8, ptr %62, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 50331648) #9, !srcloc !394
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !443
  tail call void @arm_heavy_mb() #9
  %63 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base, align 8
  %add.ptr136 = getelementptr i8, ptr %64, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136, i32 256) #9, !srcloc !394
  br label %do.body138

do.body138:                                       ; preds = %do.body27, %do.body24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  tail call void @arm_heavy_mb() #9
  br i1 %tobool15.not, label %if.then150, label %do.body138.do.body152_crit_edge

do.body138.do.body152_crit_edge:                  ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body152

if.then150:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_on() #9
  br label %do.body152

do.body152:                                       ; preds = %if.then150, %do.body138.do.body152_crit_edge
  %65 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !395
  %and.i.i = and i32 %65, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool160.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool160.not, label %if.then164, label %do.body152.do.end167_crit_edge, !prof !412

do.body152.do.end167_crit_edge:                   ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end167

if.then164:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end167

do.end167:                                        ; preds = %if.then164, %do.body152.do.end167_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #9, !srcloc !413
  br label %cleanup

cleanup:                                          ; preds = %do.end167, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %do.end167 ], [ -14, %lor.lhs.false.cleanup_crit_edge ], [ -14, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_init_ethernet_ecc(ptr nocapture noundef readonly %dev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @altr_init_a10_ecc_device_type(ptr noundef nonnull @.str.119) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @altr_check_ecc_deps(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @altr_init_a10_ecc_device_type(ptr noundef %compat) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.120) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121) #12
  br label %cleanup28

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef null) #9
  %cmp.not47 = icmp eq ptr %call2, null
  br i1 %cmp.not47, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end.for.body_crit_edge
  %child.048 = phi ptr [ %call27, %cleanup.for.body_crit_edge ], [ %call2, %if.end.for.body_crit_edge ]
  %call3 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %child.048) #9
  br i1 %call3, label %if.end5, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %for.body
  %call6 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %child.048, ptr noundef %compat) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = tail call fastcc i32 @validate_parent_available(ptr noundef nonnull %child.048)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call.i = tail call ptr @of_get_property(ptr noundef nonnull %child.048, ptr noundef nonnull @.str.125, ptr noundef null) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end13.cleanup_crit_edge, label %a10_get_irq_mask.exit

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

a10_get_irq_mask.exit:                            ; preds = %if.end13
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp15 = icmp slt i32 %1, 0
  br i1 %cmp15, label %a10_get_irq_mask.exit.cleanup_crit_edge, label %if.end17

a10_get_irq_mask.exit.cleanup_crit_edge:          ; preds = %a10_get_irq_mask.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %a10_get_irq_mask.exit
  %call18 = tail call ptr @of_match_node(ptr noundef nonnull @altr_edac_a10_device_of_match, ptr noundef nonnull %child.048) #9
  %tobool.not.i44 = icmp eq ptr %call18, null
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i44, %cmp.i
  br i1 %spec.select.i, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %data = getelementptr inbounds %struct.of_device_id, ptr %call18, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool22.not = icmp eq ptr %3, null
  br i1 %tobool22.not, label %if.end21.cleanup_crit_edge, label %if.end24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl nuw i32 1, %1
  %ecc_enable_mask = getelementptr inbounds %struct.edac_device_prv_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ecc_enable_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ecc_enable_mask, align 4
  %call25 = tail call fastcc i32 @altr_init_a10_ecc_block(ptr noundef nonnull %child.048, i32 noundef %shl, i32 noundef %5, i1 noundef zeroext false) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %a10_get_irq_mask.exit.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %call27 = tail call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef nonnull %child.048) #9
  %cmp.not = icmp eq ptr %call27, null
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call) #9
  br label %cleanup28

cleanup28:                                        ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ 0, %for.end ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @validate_parent_available(ptr noundef %np) unnamed_addr #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.123) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #9
  %0 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.124, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  br label %if.end5

of_parse_phandle.exit:                            ; preds = %if.end
  %1 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %of_parse_phandle.exit.if.end5_crit_edge, label %land.lhs.true

of_parse_phandle.exit.if.end5_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %2) #9
  %spec.select = select i1 %call3, i32 0, i32 -19
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %of_parse_phandle.exit.if.end5_crit_edge, %of_parse_phandle.exit.thread
  %retval.0.i12 = phi ptr [ null, %of_parse_phandle.exit.if.end5_crit_edge ], [ %2, %land.lhs.true ], [ null, %of_parse_phandle.exit.thread ]
  %ret.0 = phi i32 [ 0, %of_parse_phandle.exit.if.end5_crit_edge ], [ %spec.select, %land.lhs.true ], [ 0, %of_parse_phandle.exit.thread ]
  call void @of_node_put(ptr noundef %retval.0.i12) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end5 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @altr_init_a10_ecc_block(ptr noundef %np, i32 noundef %irq_mask, i32 noundef %ecc_ctrl_en_mask, i1 noundef zeroext %dual_port) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %np, align 4
  %call = tail call ptr @of_get_parent(ptr noundef %np) #9
  %call1 = tail call ptr @altr_sysmgr_regmap_lookup_by_phandle(ptr noundef %call, ptr noundef nonnull @.str.104) #9
  tail call void @of_node_put(ptr noundef %call) #9
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef %1) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @regmap_write(ptr noundef %call1, i32 noundef 148, i32 noundef %irq_mask) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !445
  tail call void @arm_heavy_mb() #9
  %add.ptr = getelementptr i8, ptr %call4, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #9, !srcloc !394
  %add.ptr16 = getelementptr i8, ptr %call4, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #9, !srcloc !400
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !446
  %neg.i = xor i32 %ecc_ctrl_en_mask, -1
  %and.i = and i32 %3, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !447
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %and.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %4) #9, !srcloc !394
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !448
  tail call void @arm_heavy_mb() #9
  %call20 = tail call fastcc i32 @altr_init_memory_port(ptr noundef nonnull %call4, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end28, label %do.end25

do.end25:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %1) #12
  br label %out

if.end28:                                         ; preds = %if.end11
  br i1 %dual_port, label %if.then30, label %if.end28.if.end40_crit_edge

if.end28.if.end40_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then30:                                        ; preds = %if.end28
  %call31 = tail call fastcc i32 @altr_init_memory_port(ptr noundef nonnull %call4, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then30.if.end40_crit_edge, label %do.end36

if.then30.if.end40_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

do.end36:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %1) #12
  br label %out

if.end40:                                         ; preds = %if.then30.if.end40_crit_edge, %if.end28.if.end40_crit_edge
  %call41 = tail call i32 @regmap_write(ptr noundef %call1, i32 noundef 28, i32 noundef 1) #9
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #9, !srcloc !400
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !449
  %or.i = or i32 %6, %ecc_ctrl_en_mask
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !450
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %7) #9, !srcloc !394
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !451
  tail call void @arm_heavy_mb() #9
  %add.ptr46 = getelementptr i8, ptr %call4, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 16777216) #9, !srcloc !394
  %call47 = tail call i32 @regmap_write(ptr noundef %call1, i32 noundef 152, i32 noundef %irq_mask) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !452
  tail call void @arm_heavy_mb() #9
  br label %out

out:                                              ; preds = %if.end40, %do.end36, %do.end25
  %ret.1 = phi i32 [ %call20, %do.end25 ], [ %call31, %do.end36 ], [ 0, %if.end40 ]
  tail call void @iounmap(ptr noundef nonnull %call4) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end8, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %ret.1, %out ], [ -19, %do.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @altr_init_memory_port(ptr noundef %ioaddr, i32 noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %tobool.not = icmp eq i32 %port, 0
  %. = select i1 %tobool.not, i32 65536, i32 16777216
  %.12 = select i1 %tobool.not, i32 1, i32 256
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 8
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !400
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !449
  %or.i = or i32 %1, %.
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !450
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #9, !srcloc !394
  %add.ptr2 = getelementptr i8, ptr %ioaddr, i32 12
  br label %while.body

while.body:                                       ; preds = %if.end5.while.body_crit_edge, %entry
  %dec14 = phi i32 [ 9999, %entry ], [ %dec, %if.end5.while.body_crit_edge ]
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #9, !srcloc !400
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !418
  %and.i = and i32 %4, %.12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.end5, label %while.end

if.end5:                                          ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #9
  %dec = add nsw i32 %dec14, -1
  %tobool1.not = icmp eq i32 %dec14, 0
  br i1 %tobool1.not, label %while.end.thread, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end.thread:                                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %.1316 = select i1 %tobool.not, i32 257, i32 16842752
  br label %6

while.end:                                        ; preds = %while.body
  %.13 = select i1 %tobool.not, i32 257, i32 16842752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec14)
  %cmp = icmp slt i32 %dec14, 0
  br i1 %cmp, label %while.end._crit_edge, label %while.end._crit_edge24

while.end._crit_edge24:                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %7

while.end._crit_edge:                             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %6

6:                                                ; preds = %while.end._crit_edge, %while.end.thread
  %.1319 = phi i32 [ %.1316, %while.end.thread ], [ %.13, %while.end._crit_edge ]
  br label %7

7:                                                ; preds = %6, %while.end._crit_edge24
  %.1318 = phi i32 [ %.1319, %6 ], [ %.13, %while.end._crit_edge24 ]
  %8 = phi i32 [ -16, %6 ], [ 0, %while.end._crit_edge24 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !453
  tail call void @arm_heavy_mb() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %.1318)
  %add.ptr8 = getelementptr i8, ptr %ioaddr, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %9) #9, !srcloc !394
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_init_nand_ecc(ptr nocapture noundef readonly %device) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @altr_init_a10_ecc_device_type(ptr noundef nonnull @.str.136) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @altr_check_ecc_deps(ptr noundef %device)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_edac_a10_device_trig(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pvt_info, align 4
  %data = getelementptr inbounds %struct.altr_edac_device_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %base = getelementptr inbounds %struct.altr_edac_device_dev, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 8
  %set_err_ofst = getelementptr inbounds %struct.edac_device_prv_data, ptr %5, i32 0, i32 10
  %8 = ptrtoint ptr %set_err_ofst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %set_err_ofst, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  %tobool.not = icmp eq ptr %user_buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 1719) #9
  %10 = tail call i32 @llvm.read_register.i32(metadata !382) #9
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !403
  %and.i = and i32 %12, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !404
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  %13 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %user_buf, i32 -1226833921) #9, !srcloc !454
  %asmresult = extractvalue { i32, i32 } %13, 0
  %asmresult1 = extractvalue { i32, i32 } %13, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #9, !srcloc !404
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool3.not = icmp eq i32 %asmresult, 0
  br i1 %tobool3.not, label %do.body4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body4:                                         ; preds = %lor.lhs.false
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !407
  %and.i77 = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77)
  %tobool15.not = icmp eq i32 %and.i77, 0
  br i1 %tobool15.not, label %if.then16, label %do.body4.do.end19_crit_edge

do.body4.do.end19_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.body4.do.end19_crit_edge
  %conv20 = and i32 %asmresult1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 85, i32 %conv20)
  %cmp21 = icmp eq i32 %conv20, 85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %cmp21, label %do.body24, label %do.body27

do.body24:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  %ue_set_mask = getelementptr inbounds %struct.edac_device_prv_data, ptr %5, i32 0, i32 9
  %15 = ptrtoint ptr %ue_set_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ue_set_mask, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %17) #9, !srcloc !394
  br label %do.body31

do.body27:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  %ce_set_mask = getelementptr inbounds %struct.edac_device_prv_data, ptr %5, i32 0, i32 8
  %18 = ptrtoint ptr %ce_set_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ce_set_mask, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %20) #9, !srcloc !394
  br label %do.body31

do.body31:                                        ; preds = %do.body27, %do.body24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !455
  tail call void @arm_heavy_mb() #9
  br i1 %tobool15.not, label %if.then43, label %do.body31.do.body45_crit_edge

do.body31.do.body45_crit_edge:                    ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body45

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_on() #9
  br label %do.body45

do.body45:                                        ; preds = %if.then43, %do.body31.do.body45_crit_edge
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !395
  %and.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool53.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool53.not, label %if.then57, label %do.body45.do.end60_crit_edge, !prof !412

do.body45.do.end60_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %do.body45.do.end60_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #9, !srcloc !413
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %do.end60 ], [ -14, %lor.lhs.false.cleanup_crit_edge ], [ -14, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_init_dma_ecc(ptr nocapture noundef readonly %device) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @altr_init_a10_ecc_device_type(ptr noundef nonnull @.str.137) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @altr_check_ecc_deps(ptr noundef %device)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_init_usb_ecc(ptr nocapture noundef readonly %device) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @altr_init_a10_ecc_device_type(ptr noundef nonnull @.str.138) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @altr_check_ecc_deps(ptr noundef %device)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_init_qspi_ecc(ptr nocapture noundef readonly %device) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @altr_init_a10_ecc_device_type(ptr noundef nonnull @.str.139) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @altr_check_ecc_deps(ptr noundef %device)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_init_sdmmc_ecc(ptr nocapture noundef readonly %device) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.140) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %call) #9
  br i1 %call1, label %if.end3, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end3:                                          ; preds = %if.end
  %call4 = tail call fastcc i32 @validate_parent_available(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.exit_crit_edge

if.end3.exit_crit_edge:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end7:                                          ; preds = %if.end3
  %call8 = tail call fastcc i32 @altr_init_a10_ecc_block(ptr noundef nonnull %call, i32 noundef 98304, i32 noundef 1, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.exit_crit_edge

if.end7.exit_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 @altr_portb_setup(ptr noundef %device)
  br label %cleanup

exit:                                             ; preds = %if.end7.exit_crit_edge, %if.end3.exit_crit_edge, %if.end.exit_crit_edge
  %rc.0 = phi i32 [ -19, %if.end3.exit_crit_edge ], [ %call8, %if.end7.exit_crit_edge ], [ -19, %if.end.exit_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %exit ], [ %call12, %if.end11 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_portb_setup(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base1.i = getelementptr inbounds %struct.altr_edac_device_dev, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1.i, align 8
  %data.i = getelementptr inbounds %struct.altr_edac_device_dev, ptr %device, i32 0, i32 4
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %ecc_en_ofst.i = getelementptr inbounds %struct.edac_device_prv_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %ecc_en_ofst.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ecc_en_ofst.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !400
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !414
  %ecc_enable_mask.i = getelementptr inbounds %struct.edac_device_prv_data, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %ecc_enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ecc_enable_mask.i, align 4
  %and.i = and i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %altr_check_ecc_deps.exit, label %if.end

altr_check_ecc_deps.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %edac_dev_name.i = getelementptr inbounds %struct.altr_edac_device_dev, ptr %device, i32 0, i32 6
  %10 = ptrtoint ptr %edac_dev_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %edac_dev_name.i, align 4
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %11) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.140) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @edac_device_alloc_index() #9
  %call7 = tail call ptr @edac_device_alloc_ctl_info(i32 noundef 976, ptr noundef nonnull @.str.142, i32 noundef 1, ptr noundef nonnull @.str.142, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef %call6) #9
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.142) #12
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call7, i32 0, i32 17
  %12 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pvt_info, align 4
  %14 = call ptr @memcpy(ptr %13, ptr %device, i32 976)
  %ddev = getelementptr inbounds %struct.altr_edac_device_dev, ptr %13, i32 0, i32 9
  %call16 = tail call ptr @devres_open_group(ptr noundef %ddev, ptr noundef nonnull @altr_portb_setup, i32 noundef 3264) #9
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %edac_dev_name = getelementptr inbounds %struct.altr_edac_device_dev, ptr %13, i32 0, i32 6
  %15 = ptrtoint ptr %edac_dev_name to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.142, ptr %edac_dev_name, align 4
  %edac_idx20 = getelementptr inbounds %struct.altr_edac_device_dev, ptr %13, i32 0, i32 10
  %16 = ptrtoint ptr %edac_idx20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call6, ptr %edac_idx20, align 8
  %edac_dev = getelementptr inbounds %struct.altr_edac_device_dev, ptr %13, i32 0, i32 8
  %17 = ptrtoint ptr %edac_dev to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7, ptr %edac_dev, align 4
  %data = getelementptr inbounds %struct.altr_edac_device_dev, ptr %13, i32 0, i32 4
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @a10_sdmmceccb_data, ptr %data, align 4
  %dev = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call7, i32 0, i32 13
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ddev, ptr %dev, align 4
  %ctl_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call7, i32 0, i32 15
  %20 = ptrtoint ptr %ctl_name to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.98, ptr %ctl_name, align 4
  %mod_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call7, i32 0, i32 14
  %21 = ptrtoint ptr %mod_name to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.142, ptr %mod_name, align 4
  %dev_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call7, i32 0, i32 16
  %22 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.142, ptr %dev_name, align 4
  %call22 = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %call1, i32 noundef 2) #9
  %sb_irq = getelementptr inbounds %struct.altr_edac_device_dev, ptr %13, i32 0, i32 2
  %23 = ptrtoint ptr %sb_irq to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call22, ptr %sb_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool24.not = icmp eq i32 %call22, 0
  br i1 %tobool24.not, label %if.end19.err_release_group_1_crit_edge, label %if.end31

if.end19.err_release_group_1_crit_edge:           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_release_group_1

if.end31:                                         ; preds = %if.end19
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %ddev, i32 noundef %call22, ptr noundef nonnull @altr_edac_a10_ecc_irq_portb, ptr noundef null, i32 noundef 8196, ptr noundef nonnull @.str.142, ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool35.not = icmp eq i32 %call.i, 0
  br i1 %tobool35.not, label %if.end42, label %if.end31.err_release_group_1_crit_edge

if.end31.err_release_group_1_crit_edge:           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_release_group_1

if.end42:                                         ; preds = %if.end31
  %call43 = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %call1, i32 noundef 3) #9
  %db_irq = getelementptr inbounds %struct.altr_edac_device_dev, ptr %13, i32 0, i32 3
  %24 = ptrtoint ptr %db_irq to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call43, ptr %db_irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool45.not = icmp eq i32 %call43, 0
  br i1 %tobool45.not, label %if.end42.err_release_group_1_crit_edge, label %if.end52

if.end42.err_release_group_1_crit_edge:           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_release_group_1

if.end52:                                         ; preds = %if.end42
  %call.i138 = tail call i32 @devm_request_threaded_irq(ptr noundef %ddev, i32 noundef %call43, ptr noundef nonnull @altr_edac_a10_ecc_irq_portb, ptr noundef null, i32 noundef 8196, ptr noundef nonnull @.str.142, ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool57.not = icmp eq i32 %call.i138, 0
  br i1 %tobool57.not, label %if.end64, label %if.end52.err_release_group_1_crit_edge

if.end52.err_release_group_1_crit_edge:           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_release_group_1

if.end64:                                         ; preds = %if.end52
  %call65 = tail call i32 @edac_device_add_device(ptr noundef nonnull %call7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end73, label %if.end64.err_release_group_1_crit_edge

if.end64.err_release_group_1_crit_edge:           ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_release_group_1

if.end73:                                         ; preds = %if.end64
  %25 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pvt_info, align 4
  %edac_dev_name.i139 = getelementptr inbounds %struct.altr_edac_device_dev, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %edac_dev_name.i139 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %edac_dev_name.i139, align 4
  %call.i140 = tail call ptr @edac_debugfs_create_dir(ptr noundef %28) #9
  %debugfs_dir.i = getelementptr inbounds %struct.altr_edac_device_dev, ptr %26, i32 0, i32 5
  %29 = ptrtoint ptr %debugfs_dir.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i140, ptr %debugfs_dir.i, align 8
  %tobool.not.i141 = icmp eq ptr %call.i140, null
  br i1 %tobool.not.i141, label %if.end73.altr_create_edacdev_dbgfs.exit_crit_edge, label %if.end.i

if.end73.altr_create_edacdev_dbgfs.exit_crit_edge: ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %altr_create_edacdev_dbgfs.exit

if.end.i:                                         ; preds = %if.end73
  %call3.i = tail call ptr @edac_debugfs_create_file(ptr noundef nonnull @.str.53, i16 noundef zeroext 128, ptr noundef nonnull %call.i140, ptr noundef nonnull %call7, ptr noundef nonnull @altr_edac_a10_device_inject_fops) #9
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.altr_create_edacdev_dbgfs.exit_crit_edge

if.end.i.altr_create_edacdev_dbgfs.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %altr_create_edacdev_dbgfs.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %debugfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %debugfs_dir.i, align 8
  tail call void @debugfs_remove(ptr noundef %31) #9
  br label %altr_create_edacdev_dbgfs.exit

altr_create_edacdev_dbgfs.exit:                   ; preds = %if.then5.i, %if.end.i.altr_create_edacdev_dbgfs.exit_crit_edge, %if.end73.altr_create_edacdev_dbgfs.exit_crit_edge
  %edac = getelementptr inbounds %struct.altr_edac_device_dev, ptr %13, i32 0, i32 7
  %32 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %edac, align 8
  %a10_ecc_devices = getelementptr inbounds %struct.altr_arria10_edac, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %a10_ecc_devices to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %a10_ecc_devices, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %13, ptr noundef %a10_ecc_devices, ptr noundef %35) #9
  br i1 %call.i.i, label %if.end.i.i, label %altr_create_edacdev_dbgfs.exit.list_add.exit_crit_edge

altr_create_edacdev_dbgfs.exit.list_add.exit_crit_edge: ; preds = %altr_create_edacdev_dbgfs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %altr_create_edacdev_dbgfs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %13, ptr %prev1.i.i, align 4
  %37 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %13, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %a10_ecc_devices, ptr %prev3.i.i, align 4
  %39 = ptrtoint ptr %a10_ecc_devices to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %13, ptr %a10_ecc_devices, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %altr_create_edacdev_dbgfs.exit.list_add.exit_crit_edge
  tail call void @devres_remove_group(ptr noundef %ddev, ptr noundef nonnull @altr_portb_setup) #9
  br label %cleanup

err_release_group_1:                              ; preds = %if.end64.err_release_group_1_crit_edge, %if.end52.err_release_group_1_crit_edge, %if.end42.err_release_group_1_crit_edge, %if.end31.err_release_group_1_crit_edge, %if.end19.err_release_group_1_crit_edge
  %.str.161.sink = phi ptr [ @.str.149, %if.end19.err_release_group_1_crit_edge ], [ @.str.152, %if.end31.err_release_group_1_crit_edge ], [ @.str.155, %if.end42.err_release_group_1_crit_edge ], [ @.str.158, %if.end52.err_release_group_1_crit_edge ], [ @.str.161, %if.end64.err_release_group_1_crit_edge ]
  %rc.0 = phi i32 [ -19, %if.end19.err_release_group_1_crit_edge ], [ %call.i, %if.end31.err_release_group_1_crit_edge ], [ -19, %if.end42.err_release_group_1_crit_edge ], [ %call.i138, %if.end52.err_release_group_1_crit_edge ], [ -12, %if.end64.err_release_group_1_crit_edge ]
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.161.sink) #12
  tail call void @edac_device_free_ctl_info(ptr noundef nonnull %call7) #9
  %call76 = tail call i32 @devres_release_group(ptr noundef %ddev, ptr noundef nonnull @altr_portb_setup) #9
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.142, i32 noundef %rc.0) #12
  br label %cleanup

cleanup:                                          ; preds = %err_release_group_1, %list_add.exit, %if.end15.cleanup_crit_edge, %do.end12, %do.end, %altr_check_ecc_deps.exit
  %retval.0 = phi i32 [ %rc.0, %err_release_group_1 ], [ 0, %list_add.exit ], [ -12, %do.end12 ], [ -19, %do.end ], [ -19, %altr_check_ecc_deps.exit ], [ -12, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altr_edac_a10_ecc_irq_portb(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.altr_edac_device_dev, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 8
  %data = getelementptr inbounds %struct.altr_edac_device_dev, ptr %dev_id, i32 0, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %sb_irq = getelementptr inbounds %struct.altr_edac_device_dev, ptr %dev_id, i32 0, i32 2
  %4 = ptrtoint ptr %sb_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %irq)
  %cmp = icmp eq i32 %5, %irq
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !456
  tail call void @arm_heavy_mb() #9
  %ce_clear_mask = getelementptr inbounds %struct.edac_device_prv_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %ce_clear_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ce_clear_mask, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %add.ptr = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #9, !srcloc !394
  %edac_dev = getelementptr inbounds %struct.altr_edac_device_dev, ptr %dev_id, i32 0, i32 8
  %9 = ptrtoint ptr %edac_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %edac_dev, align 4
  %edac_dev_name = getelementptr inbounds %struct.altr_edac_device_dev, ptr %dev_id, i32 0, i32 6
  %11 = ptrtoint ptr %edac_dev_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %edac_dev_name, align 4
  tail call void @edac_device_handle_ce_count(ptr noundef %10, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %12) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  %db_irq = getelementptr inbounds %struct.altr_edac_device_dev, ptr %dev_id, i32 0, i32 3
  %13 = ptrtoint ptr %db_irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %db_irq, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %irq)
  %cmp2 = icmp eq i32 %14, %irq
  br i1 %cmp2, label %do.body4, label %land.end

do.body4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !457
  tail call void @arm_heavy_mb() #9
  %ue_clear_mask = getelementptr inbounds %struct.edac_device_prv_data, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %ue_clear_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ue_clear_mask, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %add.ptr7 = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %17) #9, !srcloc !394
  %edac_dev8 = getelementptr inbounds %struct.altr_edac_device_dev, ptr %dev_id, i32 0, i32 8
  %18 = ptrtoint ptr %edac_dev8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %edac_dev8, align 4
  %edac_dev_name9 = getelementptr inbounds %struct.altr_edac_device_dev, ptr %dev_id, i32 0, i32 6
  %20 = ptrtoint ptr %edac_dev_name9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %edac_dev_name9, align 4
  tail call void @edac_device_handle_ue_count(ptr noundef %19, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %21) #9
  br label %cleanup

land.end:                                         ; preds = %if.else
  %.b63 = load i1, ptr @altr_edac_a10_ecc_irq_portb.__already_done, align 1
  br i1 %.b63, label %land.end.cleanup_crit_edge, label %if.then15, !prof !458

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @altr_edac_a10_ecc_irq_portb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1633, i32 noundef 9, ptr noundef nonnull @.str.141, i32 noundef %irq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %land.end.cleanup_crit_edge, %do.body4, %do.body
  %retval.0 = phi i32 [ 1, %do.body ], [ 1, %do.body4 ], [ 0, %if.then15 ], [ 0, %land.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_device_alloc_index() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 187)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 187)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !64, !65, !66, !68, !69, !71, !72, !73, !75, !76, !77, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !97, !99, !100, !101, !102, !104, !105, !106, !108, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !131, !133, !135, !137, !138, !139, !140, !142, !144, !146, !148, !150, !151, !152, !153, !155, !157, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !176, !177, !178, !179, !181, !183, !185, !187, !189, !191, !193, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !212, !213, !214, !216, !218, !220, !222, !224, !225, !226, !227, !229, !230, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !262, !263, !264, !266, !268, !270, !272, !273, !274, !276, !277, !278, !280, !281, !282, !284, !285, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !313, !315, !317, !318, !319, !320, !322, !323, !324, !326, !327, !328, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343, !344, !346, !347, !349, !351, !352, !353, !354, !356, !357, !359, !360, !361, !363, !364, !365, !367, !368, !369, !371, !372, !373, !375, !376, !377, !379, !380}
!llvm.named.register.sp = !{!382}
!llvm.module.flags = !{!383, !384, !385, !386, !387, !388, !389, !390}
!llvm.ident = !{!391}

!0 = !{ptr @__initcall__kmod_altera_edac__238_502_altr_sdram_edac_driver_init6, !1, !"__initcall__kmod_altera_edac__238_502_altr_sdram_edac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/edac/altera_edac.c", i32 502, i32 1}
!2 = !{ptr @__exitcall_altr_sdram_edac_driver_exit, !1, !"__exitcall_altr_sdram_edac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_altera_edac__239_530_altr_edac_driver_init6, !4, !"__initcall__kmod_altera_edac__239_530_altr_edac_driver_init6", i1 false, i1 false}
!4 = !{!"../drivers/edac/altera_edac.c", i32 530, i32 1}
!5 = !{ptr @__exitcall_altr_edac_driver_exit, !4, !"__exitcall_altr_edac_driver_exit", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_altera_edac__242_835_altr_edac_device_driver_init6, !7, !"__initcall__kmod_altera_edac__242_835_altr_edac_device_driver_init6", i1 false, i1 false}
!7 = !{!"../drivers/edac/altera_edac.c", i32 835, i32 1}
!8 = !{ptr @__exitcall_altr_edac_device_driver_exit, !7, !"__exitcall_altr_edac_device_driver_exit", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_altera_edac__243_2189_altr_edac_a10_driver_init6, !10, !"__initcall__kmod_altera_edac__243_2189_altr_edac_a10_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/edac/altera_edac.c", i32 2189, i32 1}
!11 = !{ptr @__exitcall_altr_edac_a10_driver_exit, !10, !"__exitcall_altr_edac_a10_driver_exit", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_file244, !13, !"__UNIQUE_ID_file244", i1 false, i1 false}
!13 = !{!"../drivers/edac/altera_edac.c", i32 2191, i32 1}
!14 = !{ptr @__UNIQUE_ID_license245, !13, !"__UNIQUE_ID_license245", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_author246, !16, !"__UNIQUE_ID_author246", i1 false, i1 false}
!16 = !{!"../drivers/edac/altera_edac.c", i32 2192, i32 1}
!17 = !{ptr @__UNIQUE_ID_description247, !18, !"__UNIQUE_ID_description247", i1 false, i1 false}
!18 = !{!"../drivers/edac/altera_edac.c", i32 2193, i32 1}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/edac/altera_edac.c", i32 494, i32 11}
!21 = !{ptr @altr_sdram_edac_driver, !22, !"altr_sdram_edac_driver", i1 false, i1 false}
!22 = !{!"../drivers/edac/altera_edac.c", i32 490, i32 31}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/edac/altera_edac.c", i32 299, i32 10}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/edac/altera_edac.c", i32 301, i32 3}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @altr_sdram_probe._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @altr_sdram_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/edac/altera_edac.c", i32 313, i32 3}
!33 = !{ptr @altr_sdram_probe._entry.5, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @altr_sdram_probe._entry_ptr.7, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/edac/altera_edac.c", i32 321, i32 3}
!37 = !{ptr @altr_sdram_probe._entry.8, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @altr_sdram_probe._entry_ptr.10, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/edac/altera_edac.c", i32 328, i32 3}
!41 = !{ptr @altr_sdram_probe._entry.11, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @altr_sdram_probe._entry_ptr.13, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/edac/altera_edac.c", i32 337, i32 3}
!45 = !{ptr @altr_sdram_probe._entry.14, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @altr_sdram_probe._entry_ptr.16, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @altr_sdram_probe._entry.17, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../drivers/edac/altera_edac.c", i32 344, i32 3}
!49 = !{ptr @altr_sdram_probe._entry_ptr.18, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/edac/altera_edac.c", i32 351, i32 3}
!52 = !{ptr @altr_sdram_probe._entry.19, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @altr_sdram_probe._entry_ptr.21, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/edac/altera_edac.c", i32 377, i32 3}
!56 = !{ptr @altr_sdram_probe._entry.22, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @altr_sdram_probe._entry_ptr.24, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/edac/altera_edac.c", i32 386, i32 18}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/edac/altera_edac.c", i32 403, i32 31}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/edac/altera_edac.c", i32 413, i32 4}
!64 = !{ptr @altr_sdram_probe._entry.27, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @altr_sdram_probe._entry_ptr.29, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @altr_sdram_probe._entry.30, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../drivers/edac/altera_edac.c", i32 429, i32 3}
!68 = !{ptr @altr_sdram_probe._entry_ptr.31, !67, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/edac/altera_edac.c", i32 438, i32 3}
!71 = !{ptr @altr_sdram_probe._entry.32, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @altr_sdram_probe._entry_ptr.34, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/edac/altera_edac.c", i32 456, i32 2}
!75 = !{ptr @altr_sdram_probe._entry.35, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @altr_sdram_probe._entry_ptr.37, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/edac/altera_edac.c", i32 213, i32 2}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/edac/altera_edac.c", i32 220, i32 2}
!81 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @get_total_mem._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @get_total_mem._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/edac/altera_edac.c", i32 235, i32 3}
!86 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @a10_init._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @a10_init._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/edac/altera_edac.c", i32 241, i32 3}
!91 = !{ptr @a10_init._entry.43, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @a10_init._entry_ptr.45, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/edac/altera_edac.c", i32 95, i32 9}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/edac/altera_edac.c", i32 107, i32 35}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/edac/altera_edac.c", i32 256, i32 3}
!99 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @a10_unmask_irq._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @a10_unmask_irq._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/edac/altera_edac.c", i32 263, i32 3}
!104 = !{ptr @a10_unmask_irq._entry.50, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @a10_unmask_irq._entry_ptr.52, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/edac/altera_edac.c", i32 201, i32 27}
!108 = !{ptr @altr_sdr_mc_debug_inject_fops, !109, !"altr_sdr_mc_debug_inject_fops", i1 false, i1 false}
!109 = !{!"../drivers/edac/altera_edac.c", i32 187, i32 37}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/edac/altera_edac.c", i32 131, i32 3}
!112 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @altr_sdr_mc_err_inject_write._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @altr_sdr_mc_err_inject_write._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/edac/altera_edac.c", i32 145, i32 3}
!117 = !{ptr @altr_sdr_mc_err_inject_write._entry.56, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @altr_sdr_mc_err_inject_write._entry_ptr.58, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/edac/altera_edac.c", i32 152, i32 3}
!121 = !{ptr @altr_sdr_mc_err_inject_write._entry.59, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @altr_sdr_mc_err_inject_write._entry_ptr.61, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/edac/altera_edac.c", i32 179, i32 2}
!125 = !{ptr @altr_sdr_mc_err_inject_write._entry.62, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @altr_sdr_mc_err_inject_write._entry_ptr.64, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @altr_sdram_ctrl_of_match, !128, !"altr_sdram_ctrl_of_match", i1 false, i1 false}
!128 = !{!"../drivers/edac/altera_edac.c", i32 224, i32 34}
!129 = !{ptr @c5_data, !130, !"c5_data", i1 false, i1 false}
!130 = !{!"../drivers/edac/altera_edac.c", i32 36, i32 41}
!131 = !{ptr @a10_data, !132, !"a10_data", i1 false, i1 false}
!132 = !{!"../drivers/edac/altera_edac.c", i32 57, i32 41}
!133 = !{ptr @altr_sdram_pm_ops, !134, !"altr_sdram_pm_ops", i1 false, i1 false}
!134 = !{!"../drivers/edac/altera_edac.c", i32 485, i32 32}
!135 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/edac/altera_edac.c", i32 480, i32 2}
!137 = !{ptr @.str.66, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @altr_sdram_prepare._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @altr_sdram_prepare._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/edac/altera_edac.c", i32 526, i32 11}
!142 = !{ptr @altr_edac_driver, !143, !"altr_edac_driver", i1 false, i1 false}
!143 = !{!"../drivers/edac/altera_edac.c", i32 523, i32 31}
!144 = !{ptr @altr_edac_device_of_match, !145, !"altr_edac_device_of_match", i1 false, i1 false}
!145 = !{!"../drivers/edac/altera_edac.c", i32 695, i32 34}
!146 = !{ptr @l2ecc_data, !147, !"l2ecc_data", i1 false, i1 false}
!147 = !{!"../drivers/edac/altera_edac.c", i32 1279, i32 42}
!148 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/edac/altera_edac.c", i32 1248, i32 2}
!150 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @altr_l2_check_deps._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @altr_l2_check_deps._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @altr_edac_device_inject_fops, !154, !"altr_edac_device_inject_fops", i1 false, i1 false}
!154 = !{!"../drivers/edac/altera_edac.c", i32 651, i32 37}
!155 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/edac/altera_edac.c", i32 606, i32 3}
!157 = !{ptr @.str.72, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @altr_edac_device_trig._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @altr_edac_device_trig._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/edac/altera_edac.c", i32 616, i32 2}
!162 = !{ptr @altr_edac_device_trig._entry.73, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @altr_edac_device_trig._entry_ptr.75, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/edac/altera_edac.c", i32 637, i32 3}
!166 = !{ptr @altr_edac_device_trig._entry.76, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @altr_edac_device_trig._entry_ptr.78, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/edac/altera_edac.c", i32 642, i32 4}
!170 = !{ptr @altr_edac_device_trig._entry.79, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @altr_edac_device_trig._entry_ptr.81, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @ocramecc_data, !173, !"ocramecc_data", i1 false, i1 false}
!173 = !{!"../drivers/edac/altera_edac.c", i32 1138, i32 42}
!174 = !{ptr @.str.82, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/edac/altera_edac.c", i32 854, i32 2}
!176 = !{ptr @.str.83, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @altr_check_ecc_deps._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @altr_check_ecc_deps._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.84, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/edac/altera_edac.c", i32 1110, i32 43}
!181 = !{ptr @.str.85, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/edac/altera_edac.c", i32 1114, i32 27}
!183 = !{ptr @altr_edac_of_match, !184, !"altr_edac_of_match", i1 false, i1 false}
!184 = !{!"../drivers/edac/altera_edac.c", i32 510, i32 34}
!185 = !{ptr @.str.86, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/edac/altera_edac.c", i32 831, i32 11}
!187 = !{ptr @altr_edac_device_driver, !188, !"altr_edac_device_driver", i1 false, i1 false}
!188 = !{!"../drivers/edac/altera_edac.c", i32 827, i32 31}
!189 = !{ptr @altr_edac_device_probe.dev_instance, !190, !"dev_instance", i1 false, i1 false}
!190 = !{!"../drivers/edac/altera_edac.c", i32 722, i32 13}
!191 = !{ptr @.str.87, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/edac/altera_edac.c", i32 725, i32 3}
!193 = !{ptr @.str.88, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @altr_edac_device_probe._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @altr_edac_device_probe._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.90, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/edac/altera_edac.c", i32 732, i32 3}
!198 = !{ptr @altr_edac_device_probe._entry.89, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @altr_edac_device_probe._entry_ptr.91, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.93, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/edac/altera_edac.c", i32 740, i32 3}
!202 = !{ptr @altr_edac_device_probe._entry.92, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @altr_edac_device_probe._entry_ptr.94, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.96, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/edac/altera_edac.c", i32 751, i32 3}
!206 = !{ptr @altr_edac_device_probe._entry.95, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @altr_edac_device_probe._entry_ptr.97, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.98, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/edac/altera_edac.c", i32 792, i32 18}
!210 = !{ptr @.str.100, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/edac/altera_edac.c", i32 809, i32 2}
!212 = !{ptr @altr_edac_device_probe._entry.99, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @altr_edac_device_probe._entry_ptr.101, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.102, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/edac/altera_edac.c", i32 571, i32 9}
!216 = !{ptr @.str.103, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/edac/altera_edac.c", i32 2185, i32 11}
!218 = !{ptr @altr_edac_a10_driver, !219, !"altr_edac_a10_driver", i1 false, i1 false}
!219 = !{!"../drivers/edac/altera_edac.c", i32 2182, i32 31}
!220 = !{ptr @.str.104, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/edac/altera_edac.c", i32 2095, i32 12}
!222 = !{ptr @.str.105, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/edac/altera_edac.c", i32 2098, i32 3}
!224 = !{ptr @.str.106, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @altr_edac_a10_probe._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @altr_edac_a10_probe._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.108, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/edac/altera_edac.c", i32 2109, i32 3}
!229 = !{ptr @.str.109, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.110, !228, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @altr_edac_a10_probe._entry.107, !228, !"_entry", i1 false, i1 false}
!232 = !{ptr @altr_edac_a10_probe._entry_ptr.111, !228, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.113, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/edac/altera_edac.c", i32 2115, i32 3}
!235 = !{ptr @altr_edac_a10_probe._entry.112, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @altr_edac_a10_probe._entry_ptr.114, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.116, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/edac/altera_edac.c", i32 2150, i32 3}
!239 = !{ptr @altr_edac_a10_probe._entry.115, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @altr_edac_a10_probe._entry_ptr.117, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.118, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/edac/altera_edac.c", i32 2165, i32 43}
!243 = !{ptr @a10_eccmgr_ic_ops, !244, !"a10_eccmgr_ic_ops", i1 false, i1 false}
!244 = !{!"../drivers/edac/altera_edac.c", i32 2022, i32 36}
!245 = !{ptr @altr_edac_a10_device_of_match, !246, !"altr_edac_a10_device_of_match", i1 false, i1 false}
!246 = !{!"../drivers/edac/altera_edac.c", i32 1667, i32 34}
!247 = !{ptr @a10_l2ecc_data, !248, !"a10_l2ecc_data", i1 false, i1 false}
!248 = !{!"../drivers/edac/altera_edac.c", i32 1293, i32 42}
!249 = !{ptr @a10_ocramecc_data, !250, !"a10_ocramecc_data", i1 false, i1 false}
!250 = !{!"../drivers/edac/altera_edac.c", i32 1176, i32 42}
!251 = !{ptr @altr_edac_a10_device_inject2_fops, !252, !"altr_edac_a10_device_inject2_fops", i1 false, i1 false}
!252 = !{!"../drivers/edac/altera_edac.c", i32 671, i32 37}
!253 = !{ptr @a10_enetecc_data, !254, !"a10_enetecc_data", i1 false, i1 false}
!254 = !{!"../drivers/edac/altera_edac.c", i32 1326, i32 42}
!255 = !{ptr @.str.119, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/edac/altera_edac.c", i32 1319, i32 38}
!257 = !{ptr @.str.120, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/edac/altera_edac.c", i32 1042, i32 10}
!259 = !{ptr @.str.121, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/edac/altera_edac.c", i32 1044, i32 3}
!261 = !{ptr @.str.122, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @altr_init_a10_ecc_device_type._entry, !260, !"_entry", i1 false, i1 false}
!263 = !{ptr @altr_init_a10_ecc_device_type._entry_ptr, !260, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.123, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/edac/altera_edac.c", i32 1827, i32 34}
!266 = !{ptr @.str.124, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/edac/altera_edac.c", i32 1831, i32 32}
!268 = !{ptr @.str.125, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/edac/altera_edac.c", i32 891, i32 42}
!270 = !{ptr @.str.126, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/edac/altera_edac.c", i32 979, i32 3}
!272 = !{ptr @altr_init_a10_ecc_block._entry, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @altr_init_a10_ecc_block._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.128, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/edac/altera_edac.c", i32 987, i32 3}
!276 = !{ptr @altr_init_a10_ecc_block._entry.127, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @altr_init_a10_ecc_block._entry_ptr.129, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.131, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/edac/altera_edac.c", i32 1003, i32 3}
!280 = !{ptr @altr_init_a10_ecc_block._entry.130, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @altr_init_a10_ecc_block._entry_ptr.132, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.134, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/edac/altera_edac.c", i32 1011, i32 4}
!284 = !{ptr @altr_init_a10_ecc_block._entry.133, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @altr_init_a10_ecc_block._entry_ptr.135, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @a10_nandecc_data, !287, !"a10_nandecc_data", i1 false, i1 false}
!287 = !{!"../drivers/edac/altera_edac.c", i32 1356, i32 42}
!288 = !{ptr @.str.136, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/edac/altera_edac.c", i32 1349, i32 38}
!290 = !{ptr @altr_edac_a10_device_inject_fops, !291, !"altr_edac_a10_device_inject_fops", i1 false, i1 false}
!291 = !{!"../drivers/edac/altera_edac.c", i32 661, i32 37}
!292 = !{ptr @a10_dmaecc_data, !293, !"a10_dmaecc_data", i1 false, i1 false}
!293 = !{!"../drivers/edac/altera_edac.c", i32 1386, i32 42}
!294 = !{ptr @.str.137, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/edac/altera_edac.c", i32 1379, i32 38}
!296 = !{ptr @a10_usbecc_data, !297, !"a10_usbecc_data", i1 false, i1 false}
!297 = !{!"../drivers/edac/altera_edac.c", i32 1416, i32 42}
!298 = !{ptr @.str.138, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/edac/altera_edac.c", i32 1409, i32 38}
!300 = !{ptr @a10_qspiecc_data, !301, !"a10_qspiecc_data", i1 false, i1 false}
!301 = !{!"../drivers/edac/altera_edac.c", i32 1446, i32 42}
!302 = !{ptr @.str.139, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/edac/altera_edac.c", i32 1439, i32 38}
!304 = !{ptr @a10_sdmmcecca_data, !305, !"a10_sdmmcecca_data", i1 false, i1 false}
!305 = !{!"../drivers/edac/altera_edac.c", i32 1638, i32 42}
!306 = !{ptr @.str.140, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/edac/altera_edac.c", i32 1591, i32 46}
!308 = !{ptr @a10_sdmmceccb_data, !309, !"a10_sdmmceccb_data", i1 false, i1 false}
!309 = !{!"../drivers/edac/altera_edac.c", i32 1651, i32 42}
!310 = distinct !{null, !311, !"__already_done", i1 false, i1 false}
!311 = !{!"../drivers/edac/altera_edac.c", i32 1633, i32 2}
!312 = !{ptr @.str.141, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @.str.142, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/edac/altera_edac.c", i32 1470, i32 19}
!315 = !{ptr @.str.143, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/edac/altera_edac.c", i32 1481, i32 3}
!317 = !{ptr @.str.144, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @altr_portb_setup._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @altr_portb_setup._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.146, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/edac/altera_edac.c", i32 1490, i32 3}
!322 = !{ptr @altr_portb_setup._entry.145, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @altr_portb_setup._entry_ptr.147, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.149, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/edac/altera_edac.c", i32 1525, i32 3}
!326 = !{ptr @altr_portb_setup._entry.148, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @altr_portb_setup._entry_ptr.150, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.152, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/edac/altera_edac.c", i32 1534, i32 3}
!330 = !{ptr @altr_portb_setup._entry.151, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @altr_portb_setup._entry_ptr.153, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.155, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/edac/altera_edac.c", i32 1549, i32 3}
!334 = !{ptr @altr_portb_setup._entry.154, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @altr_portb_setup._entry_ptr.156, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.158, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/edac/altera_edac.c", i32 1558, i32 3}
!338 = !{ptr @altr_portb_setup._entry.157, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @altr_portb_setup._entry_ptr.159, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.161, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/edac/altera_edac.c", i32 1565, i32 3}
!342 = !{ptr @altr_portb_setup._entry.160, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @altr_portb_setup._entry_ptr.162, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @altr_portb_setup._entry.163, !345, !"_entry", i1 false, i1 false}
!345 = !{!"../drivers/edac/altera_edac.c", i32 1581, i32 2}
!346 = !{ptr @altr_portb_setup._entry_ptr.164, !345, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @s10_sdramecc_data, !348, !"s10_sdramecc_data", i1 false, i1 false}
!348 = !{!"../drivers/edac/altera_edac.c", i32 1086, i32 42}
!349 = !{ptr @.str.165, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/edac/altera_edac.c", i32 1888, i32 3}
!351 = !{ptr @.str.166, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @altr_edac_a10_device_add._entry, !350, !"_entry", i1 false, i1 false}
!353 = !{ptr @altr_edac_a10_device_add._entry_ptr, !350, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @altr_edac_a10_device_add._entry.167, !355, !"_entry", i1 false, i1 false}
!355 = !{!"../drivers/edac/altera_edac.c", i32 1899, i32 3}
!356 = !{ptr @altr_edac_a10_device_add._entry_ptr.168, !355, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.170, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/edac/altera_edac.c", i32 1933, i32 3}
!359 = !{ptr @altr_edac_a10_device_add._entry.169, !358, !"_entry", i1 false, i1 false}
!360 = !{ptr @altr_edac_a10_device_add._entry_ptr.171, !358, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.173, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/edac/altera_edac.c", i32 1941, i32 3}
!363 = !{ptr @altr_edac_a10_device_add._entry.172, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @altr_edac_a10_device_add._entry_ptr.174, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.176, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/edac/altera_edac.c", i32 1956, i32 3}
!367 = !{ptr @altr_edac_a10_device_add._entry.175, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @altr_edac_a10_device_add._entry_ptr.177, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.179, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/edac/altera_edac.c", i32 1964, i32 3}
!371 = !{ptr @altr_edac_a10_device_add._entry.178, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @altr_edac_a10_device_add._entry_ptr.180, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.182, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/edac/altera_edac.c", i32 1971, i32 3}
!375 = !{ptr @altr_edac_a10_device_add._entry.181, !374, !"_entry", i1 false, i1 false}
!376 = !{ptr @altr_edac_a10_device_add._entry_ptr.183, !374, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @altr_edac_a10_device_add._entry.184, !378, !"_entry", i1 false, i1 false}
!378 = !{!"../drivers/edac/altera_edac.c", i32 1988, i32 2}
!379 = !{ptr @altr_edac_a10_device_add._entry_ptr.185, !378, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @altr_edac_a10_of_match, !381, !"altr_edac_a10_of_match", i1 false, i1 false}
!381 = !{!"../drivers/edac/altera_edac.c", i32 2175, i32 34}
!382 = !{!"sp"}
!383 = !{i32 1, !"wchar_size", i32 2}
!384 = !{i32 1, !"min_enum_size", i32 4}
!385 = !{i32 8, !"branch-target-enforcement", i32 0}
!386 = !{i32 8, !"sign-return-address", i32 0}
!387 = !{i32 8, !"sign-return-address-all", i32 0}
!388 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!389 = !{i32 7, !"uwtable", i32 1}
!390 = !{i32 7, !"frame-pointer", i32 2}
!391 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!392 = !{!"auto-init"}
!393 = !{i64 2154008538}
!394 = !{i64 6466416}
!395 = !{i64 1147561}
!396 = !{i64 1145264}
!397 = !{i64 1145074}
!398 = !{i64 2154934707}
!399 = !{i64 2154940226}
!400 = !{i64 6466834}
!401 = !{i64 2155052214}
!402 = !{i64 2155051731}
!403 = !{i64 5295934}
!404 = !{i64 5296131}
!405 = !{i64 2152781364}
!406 = !{i64 2154987526, i64 2154987806, i64 2154988140, i64 2154988474}
!407 = !{i64 1144829, i64 1144890}
!408 = !{i64 2155004391}
!409 = !{i64 2155007345}
!410 = !{i64 2155007823}
!411 = !{i64 2155008231}
!412 = !{!"branch_weights", i32 1, i32 2000}
!413 = !{i64 1147846}
!414 = !{i64 2155029704}
!415 = !{i64 2155049218}
!416 = !{i64 2154982806}
!417 = !{i64 2154983251}
!418 = !{i64 2155035929}
!419 = !{i64 2155050410}
!420 = !{i64 2155050802}
!421 = !{i64 2155031855}
!422 = !{i64 2155032415}
!423 = !{i8 0, i8 2}
!424 = !{i64 2155093736, i64 2155094016, i64 2155094350, i64 2155094684}
!425 = !{i64 2155104094}
!426 = !{i64 2155104492}
!427 = !{i64 2155104904}
!428 = !{i64 2155106072}
!429 = !{i64 2155106991}
!430 = !{i64 2155107981}
!431 = !{i64 2155108888}
!432 = !{i64 2155109872}
!433 = !{i64 2155110779}
!434 = !{i64 2155111763}
!435 = !{i64 2155112670}
!436 = !{i64 2155113654}
!437 = !{i64 2155114561}
!438 = !{i64 2155115545}
!439 = !{i64 2155116452}
!440 = !{i64 2155116694}
!441 = !{i64 2155117112}
!442 = !{i64 2155117528}
!443 = !{i64 2155117940}
!444 = !{i64 2155118278}
!445 = !{i64 2155041733}
!446 = !{i64 2155034943}
!447 = !{i64 2155035148}
!448 = !{i64 2155042140}
!449 = !{i64 2155033957}
!450 = !{i64 2155034162}
!451 = !{i64 2155046048}
!452 = !{i64 2155046455}
!453 = !{i64 2155037513}
!454 = !{i64 2155079072, i64 2155079352, i64 2155079686, i64 2155080020}
!455 = !{i64 2155089376}
!456 = !{i64 2155072913}
!457 = !{i64 2155073359}
!458 = !{!"branch_weights", i32 2000, i32 1}
