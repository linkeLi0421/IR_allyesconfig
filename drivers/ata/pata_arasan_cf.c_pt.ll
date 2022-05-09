; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_arasan_cf.c_pt.bc'
source_filename = "../drivers/ata/pata_arasan_cf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.arasan_cf_pdata = type { i8, i32 }
%struct.arasan_cf_dev = type { ptr, ptr, i32, ptr, i32, i8, i8, %struct.completion, %struct.completion, ptr, %struct.dma_cap_mask_t, %struct.work_struct, %struct.delayed_work, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.83, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.83 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_pata_arasan_cf__373_975_arasan_cf_driver_init6 = internal global ptr @arasan_cf_driver_init, section ".initcall6.init", align 4
@arasan_cf_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @arasan_cf_probe, ptr @arasan_cf_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @arasan_cf_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @arasan_cf_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_arasan_cf_driver_exit = internal global ptr @arasan_cf_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author374 = internal constant [56 x i8] c"pata_arasan_cf.author=Viresh Kumar <vireshk@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description375 = internal constant [59 x i8] c"pata_arasan_cf.description=Arasan ATA Compact Flash driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file376 = internal constant [47 x i8] c"pata_arasan_cf.file=drivers/ata/pata_arasan_cf\00", section ".modinfo", align 1
@__UNIQUE_ID_license377 = internal constant [27 x i8] c"pata_arasan_cf.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias378 = internal constant [40 x i8] c"pata_arasan_cf.alias=platform:arasan_cf\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"arasan_cf\00", [22 x i8] zeroinitializer }, align 32
@arasan_cf_id_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arasan,cf-spear1340\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@arasan_cf_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @arasan_cf_suspend, ptr @arasan_cf_resume, ptr @arasan_cf_suspend, ptr @arasan_cf_resume, ptr @arasan_cf_suspend, ptr @arasan_cf_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@arasan_cf_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 811, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to get memory region resource\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arasan_cf_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/ata/pata_arasan_cf.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@arasan_cf_probe._entry_ptr = internal global ptr @arasan_cf_probe._entry, section ".printk_index", align 4
@arasan_cf_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 842, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ioremap fail\0A\00", [18 x i8] zeroinitializer }, align 32
@arasan_cf_probe._entry_ptr.8 = internal global ptr @arasan_cf_probe._entry.6, section ".printk_index", align 4
@arasan_cf_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 848, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Clock not found\0A\00", [47 x i8] zeroinitializer }, align 32
@arasan_cf_probe._entry_ptr.11 = internal global ptr @arasan_cf_probe._entry.9, section ".printk_index", align 4
@arasan_cf_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 855, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"alloc host fail\0A\00", [47 x i8] zeroinitializer }, align 32
@arasan_cf_probe._entry_ptr.14 = internal global ptr @arasan_cf_probe._entry.12, section ".printk_index", align 4
@arasan_cf_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr @arasan_cf_qc_issue, ptr null, ptr null, ptr null, ptr @arasan_cf_set_piomode, ptr @arasan_cf_set_dmamode, ptr null, ptr null, ptr null, ptr @arasan_cf_freeze, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @arasan_cf_error_handler, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_sff_port_ops }, [44 x i8] zeroinitializer }, align 32
@arasan_cf_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&acdev->work)\00", [32 x i8] zeroinitializer }, align 32
@arasan_cf_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&(&acdev->dwork)->work)\00", [54 x i8] zeroinitializer }, align 32
@arasan_cf_probe.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&acdev->dwork)->timer\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"phy_addr %llx virt_addr %p\00", [37 x i8] zeroinitializer }, align 32
@arasan_cf_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 1, i32 -1, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@arasan_cf_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 623, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pio xfer err irq\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arasan_cf_interrupt\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@arasan_cf_interrupt._entry_ptr = internal global ptr @arasan_cf_interrupt._entry, section ".printk_index", align 4
@ata_sff_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@arasan_cf_qc_issue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ata_wait_idle.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, i8 1, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pata_arasan_cf\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ata_wait_idle\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/libata.h\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ata%u: abnormal Status 0x%X\0A\00", [35 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__tracepoint_ata_tf_load = external dso_local global %struct.tracepoint, align 4
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/libata.h\00", [34 x i8] zeroinitializer }, align 32
@trace_ata_tf_load.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_ata_bmdma_start = external dso_local global %struct.tracepoint, align 4
@trace_ata_bmdma_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@arasan_cf_set_piomode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 733, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unknown PIO mode\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"arasan_cf_set_piomode\00", [42 x i8] zeroinitializer }, align 32
@arasan_cf_set_piomode._entry_ptr = internal global ptr @arasan_cf_set_piomode._entry, section ".printk_index", align 4
@arasan_cf_set_dmamode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 771, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unknown DMA mode\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"arasan_cf_set_dmamode\00", [42 x i8] zeroinitializer }, align 32
@arasan_cf_set_dmamode._entry_ptr = internal global ptr @arasan_cf_set_dmamode._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@data_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 532, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to get dma_chan\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"data_xfer\00", [22 x i8] zeroinitializer }, align 32
@data_xfer._entry_ptr = internal global ptr @data_xfer._entry, section ".printk_index", align 4
@sg_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 477, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dma failed\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sg_xfer\00", [24 x i8] zeroinitializer }, align 32
@sg_xfer._entry_ptr = internal global ptr @sg_xfer._entry, section ".printk_index", align 4
@wait4buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 383, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s TimeOut\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wait4buf\00", [23 x i8] zeroinitializer }, align 32
@wait4buf._entry_ptr = internal global ptr @wait4buf._entry, section ".printk_index", align 4
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@dma_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 405, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"device_prep_dma_memcpy failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dma_xfer\00", [23 x i8] zeroinitializer }, align 32
@dma_xfer._entry_ptr = internal global ptr @dma_xfer._entry, section ".printk_index", align 4
@dma_xfer._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 415, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dma_submit_error\0A\00", [46 x i8] zeroinitializer }, align 32
@dma_xfer._entry_ptr.49 = internal global ptr @dma_xfer._entry.47, section ".printk_index", align 4
@dma_xfer._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.3, i32 424, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wait_for_completion_timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@dma_xfer._entry_ptr.52 = internal global ptr @dma_xfer._entry.50, section ".printk_index", align 4
@cf_dumpregs.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cf_dumpregs\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c": =========== REGISTER DUMP ===========\00", [56 x i8] zeroinitializer }, align 32
@cf_dumpregs.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.53, ptr @.str.3, ptr @.str.55, i8 0, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c": CFI_STS: %x\00", [18 x i8] zeroinitializer }, align 32
@cf_dumpregs.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.53, ptr @.str.3, ptr @.str.56, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c": IRQ_STS: %x\00", [18 x i8] zeroinitializer }, align 32
@cf_dumpregs.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.53, ptr @.str.3, ptr @.str.57, i8 0, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c": IRQ_EN: %x\00", [19 x i8] zeroinitializer }, align 32
@cf_dumpregs.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.53, ptr @.str.3, ptr @.str.58, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c": OP_MODE: %x\00", [18 x i8] zeroinitializer }, align 32
@cf_dumpregs.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.53, ptr @.str.3, ptr @.str.59, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c": CLK_CFG: %x\00", [18 x i8] zeroinitializer }, align 32
@cf_dumpregs.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.53, ptr @.str.3, ptr @.str.60, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c": TM_CFG: %x\00", [19 x i8] zeroinitializer }, align 32
@cf_dumpregs.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.53, ptr @.str.3, ptr @.str.61, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c": XFER_CTR: %x\00", [17 x i8] zeroinitializer }, align 32
@cf_dumpregs.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.53, ptr @.str.3, ptr @.str.62, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c": GIRQ_STS: %x\00", [17 x i8] zeroinitializer }, align 32
@cf_dumpregs.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.53, ptr @.str.3, ptr @.str.63, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c": GIRQ_STS_EN: %x\00", [46 x i8] zeroinitializer }, align 32
@cf_dumpregs.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.53, ptr @.str.3, ptr @.str.64, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c": GIRQ_SGN_EN: %x\00", [46 x i8] zeroinitializer }, align 32
@cf_dumpregs.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.53, ptr @.str.3, ptr @.str.65, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c": =====================================\00", [56 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DMA Failed: Timeout\00", [44 x i8] zeroinitializer }, align 32
@cf_init.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.67, ptr @.str.3, ptr @.str.68, i8 0, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cf_init\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clock enable failed\00", [44 x i8] zeroinitializer }, align 32
@cf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.3, i32 321, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clock set rate failed\00", [42 x i8] zeroinitializer }, align 32
@cf_init._entry_ptr = internal global ptr @cf_init._entry, section ".printk_index", align 4
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"arasan_cf_driver\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 965, i32 31 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 969, i32 11 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"arasan_cf_id_table\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 958, i32 34 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"arasan_cf_pm_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 955, i32 8 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 811, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 842, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 848, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 855, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [14 x i8] c"arasan_cf_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 785, i32 35 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 869, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 870, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 900, i32 20 }
@___asan_gen_.142 = private unnamed_addr constant [14 x i8] c"arasan_cf_sht\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 221, i32 34 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 623, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [26 x i8] c"../include/linux/libata.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 2045, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [33 x i8] c"../include/trace/events/libata.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 317, i32 1 }
@___asan_gen_.176 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 108, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 733, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 771, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 87, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 530, i32 55 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 532, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 477, i32 5 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 383, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 405, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 415, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 424, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 230, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 231, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 232, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 233, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 234, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 235, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 236, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 237, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 238, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 239, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 240, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 241, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 374, i32 44 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 315, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.310 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.311 = private constant [32 x i8] c"../drivers/ata/pata_arasan_cf.c\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 321, i32 3 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @__UNIQUE_ID_alias378, ptr @__UNIQUE_ID_author374, ptr @__UNIQUE_ID_description375, ptr @__UNIQUE_ID_file376, ptr @__UNIQUE_ID_license377, ptr @__exitcall_arasan_cf_driver_exit, ptr @__initcall__kmod_pata_arasan_cf__373_975_arasan_cf_driver_init6, ptr @arasan_cf_driver_exit, ptr @arasan_cf_interrupt._entry, ptr @arasan_cf_interrupt._entry_ptr, ptr @arasan_cf_probe._entry, ptr @arasan_cf_probe._entry.12, ptr @arasan_cf_probe._entry.6, ptr @arasan_cf_probe._entry.9, ptr @arasan_cf_probe._entry_ptr, ptr @arasan_cf_probe._entry_ptr.11, ptr @arasan_cf_probe._entry_ptr.14, ptr @arasan_cf_probe._entry_ptr.8, ptr @arasan_cf_set_dmamode._entry, ptr @arasan_cf_set_dmamode._entry_ptr, ptr @arasan_cf_set_piomode._entry, ptr @arasan_cf_set_piomode._entry_ptr, ptr @cf_init._entry, ptr @cf_init._entry_ptr, ptr @data_xfer._entry, ptr @data_xfer._entry_ptr, ptr @dma_xfer._entry, ptr @dma_xfer._entry.47, ptr @dma_xfer._entry.50, ptr @dma_xfer._entry_ptr, ptr @dma_xfer._entry_ptr.49, ptr @dma_xfer._entry_ptr.52, ptr @sg_xfer._entry, ptr @sg_xfer._entry_ptr, ptr @wait4buf._entry, ptr @wait4buf._entry_ptr, ptr @arasan_cf_driver, ptr @.str, ptr @arasan_cf_id_table, ptr @arasan_cf_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @arasan_cf_ops, ptr @arasan_cf_probe.__key, ptr @.str.15, ptr @arasan_cf_probe.__key.16, ptr @.str.17, ptr @arasan_cf_probe.__key.18, ptr @.str.19, ptr @.str.20, ptr @arasan_cf_sht, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @init_completion.__key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arasan_cf_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arasan_cf_id_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arasan_cf_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arasan_cf_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arasan_cf_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arasan_cf_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arasan_cf_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arasan_cf_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arasan_cf_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arasan_cf_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arasan_cf_probe.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arasan_cf_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arasan_cf_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arasan_cf_set_piomode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arasan_cf_set_dmamode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait4buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_xfer._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_xfer._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arasan_cf_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @arasan_cf_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @arasan_cf_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @arasan_cf_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arasan_cf_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call1, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %3
  %add.i = add i32 %sub.i, %5
  %call4 = tail call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef %add.i, ptr noundef nonnull @.str) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 292, i32 noundef 3520) #7
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %tobool14.not = icmp eq ptr %1, null
  br i1 %tobool14.not, label %if.end13.if.end17_crit_edge, label %if.then15

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %quirk16 = getelementptr inbounds %struct.arasan_cf_pdata, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %quirk16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirk16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13.if.end17_crit_edge
  %quirk.0 = phi i32 [ %7, %if.then15 ], [ 4, %if.end13.if.end17_crit_edge ]
  %call18 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp sgt i32 %call18, 0
  br i1 %cmp, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %irq = getelementptr inbounds %struct.arasan_cf_dev, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call18, ptr %irq, align 4
  br label %if.end25

if.else20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call18)
  %cmp21 = icmp eq i32 %call18, -517
  br i1 %cmp21, label %if.else20.cleanup_crit_edge, label %if.else23

if.else20.cleanup_crit_edge:                      ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else23:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %quirk.0, 6
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.then19
  %quirk.1 = phi i32 [ %quirk.0, %if.then19 ], [ %or, %if.else23 ]
  %irq_handler.0 = phi ptr [ @arasan_cf_interrupt, %if.then19 ], [ null, %if.else23 ]
  %9 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call1, align 4
  %pbase = getelementptr inbounds %struct.arasan_cf_dev, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %pbase to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %pbase, align 4
  %12 = load i32, ptr %call1, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end.i, align 4
  %sub.i265 = sub i32 1, %12
  %add.i266 = add i32 %sub.i265, %14
  %call30 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %12, i32 noundef %add.i266) #7
  %vbase = getelementptr inbounds %struct.arasan_cf_dev, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %vbase to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call30, ptr %vbase, align 4
  %tobool32.not = icmp eq ptr %call30, null
  br i1 %tobool32.not, label %do.end36, label %if.end38

do.end36:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end38:                                         ; preds = %if.end25
  %call40 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.arasan_cf_dev, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call40, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end46, label %if.end50

do.end46:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end50:                                         ; preds = %if.end38
  %call52 = tail call ptr @ata_host_alloc(ptr noundef %dev, i32 noundef 1) #7
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %do.end57, label %if.end59

do.end57:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end59:                                         ; preds = %if.end50
  %ports = getelementptr inbounds %struct.ata_host, ptr %call52, i32 0, i32 12
  %20 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ports, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %call52, i32 0, i32 5
  %22 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %private_data, align 4
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call52, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @arasan_cf_ops, ptr %ops, align 4
  %pio_mask = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 15
  %25 = ptrtoint ptr %pio_mask to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 127, ptr %pio_mask, align 16
  %mwdma_mask = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 16
  %26 = ptrtoint ptr %mwdma_mask to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 31, ptr %mwdma_mask, align 4
  %udma_mask = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 17
  %27 = ptrtoint ptr %udma_mask to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 127, ptr %udma_mask, align 8
  %cf_completion = getelementptr inbounds %struct.arasan_cf_dev, ptr %call.i, i32 0, i32 7
  %28 = ptrtoint ptr %cf_completion to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %cf_completion, align 4
  %wait.i = getelementptr inbounds %struct.arasan_cf_dev, ptr %call.i, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #7
  %dma_completion = getelementptr inbounds %struct.arasan_cf_dev, ptr %call.i, i32 0, i32 8
  %29 = ptrtoint ptr %dma_completion to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %dma_completion, align 4
  %wait.i267 = getelementptr inbounds %struct.arasan_cf_dev, ptr %call.i, i32 0, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i267, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #7
  %work = getelementptr inbounds %struct.arasan_cf_dev, ptr %call.i, i32 0, i32 11
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #7
  %30 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.arasan_cf_dev, ptr %call.i, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.15, ptr noundef nonnull @arasan_cf_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry65 = getelementptr inbounds %struct.arasan_cf_dev, ptr %call.i, i32 0, i32 11, i32 1
  %31 = ptrtoint ptr %entry65 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %entry65, ptr %entry65, align 4
  %prev.i = getelementptr inbounds %struct.arasan_cf_dev, ptr %call.i, i32 0, i32 11, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entry65, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.arasan_cf_dev, ptr %call.i, i32 0, i32 11, i32 2
  %33 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @data_xfer, ptr %func, align 4
  %dwork = getelementptr inbounds %struct.arasan_cf_dev, ptr %call.i, i32 0, i32 12
  tail call void @__init_work(ptr noundef %dwork, i32 noundef 0) #7
  %34 = ptrtoint ptr %dwork to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -64, ptr %dwork, align 4
  %lockdep_map79 = getelementptr inbounds %struct.arasan_cf_dev, ptr %call.i, i32 0, i32 12, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map79, ptr noundef nonnull @.str.17, ptr noundef nonnull @arasan_cf_probe.__key.16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry82 = getelementptr inbounds %struct.arasan_cf_dev, ptr %call.i, i32 0, i32 12, i32 0, i32 1
  %35 = ptrtoint ptr %entry82 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry82, ptr %entry82, align 4
  %prev.i268 = getelementptr inbounds %struct.arasan_cf_dev, ptr %call.i, i32 0, i32 12, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i268 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entry82, ptr %prev.i268, align 4
  %func85 = getelementptr inbounds %struct.arasan_cf_dev, ptr %call.i, i32 0, i32 12, i32 0, i32 2
  %37 = ptrtoint ptr %func85 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @delayed_finish, ptr %func85, align 4
  %timer = getelementptr inbounds %struct.arasan_cf_dev, ptr %call.i, i32 0, i32 12, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.19, ptr noundef nonnull @arasan_cf_probe.__key.18) #7
  %mask = getelementptr inbounds %struct.arasan_cf_dev, ptr %call.i, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %mask) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quirk.1)
  %tobool94.not = icmp eq i32 %quirk.1, 0
  br i1 %tobool94.not, label %if.end59.if.end111_crit_edge, label %if.then95

if.end59.if.end111_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.then95:                                        ; preds = %if.end59
  %and = and i32 %quirk.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool96.not = icmp eq i32 %and, 0
  br i1 %tobool96.not, label %if.then95.if.end100_crit_edge, label %if.then97

if.then95.if.end100_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

if.then97:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops, align 4
  %set_piomode = getelementptr inbounds %struct.ata_port_operations, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %set_piomode to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %set_piomode, align 4
  %41 = ptrtoint ptr %pio_mask to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %pio_mask, align 16
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %if.then95.if.end100_crit_edge
  %and101 = and i32 %quirk.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end100.if.end105_crit_edge, label %if.then103

if.end100.if.end105_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

if.then103:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %mwdma_mask to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %mwdma_mask, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then103, %if.end100.if.end105_crit_edge
  %and106 = and i32 %quirk.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.end105.if.end111_crit_edge, label %if.then108

if.end105.if.end111_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111

if.then108:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %udma_mask to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %udma_mask, align 8
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %if.end105.if.end111_crit_edge, %if.end59.if.end111_crit_edge
  %flags = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 3
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 4
  %or112 = or i32 %45, 576
  store i32 %or112, ptr %flags, align 4
  %46 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vbase, align 4
  %add.ptr = getelementptr i8, ptr %47, i32 48
  %ioaddr = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 8
  %48 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr, ptr %ioaddr, align 32
  %49 = load ptr, ptr %vbase, align 4
  %add.ptr115 = getelementptr i8, ptr %49, i32 48
  %data_addr = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 8, i32 1
  %50 = ptrtoint ptr %data_addr to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %add.ptr115, ptr %data_addr, align 4
  %51 = load ptr, ptr %vbase, align 4
  %add.ptr118 = getelementptr i8, ptr %51, i32 52
  %error_addr = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 8, i32 2
  %52 = ptrtoint ptr %error_addr to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr118, ptr %error_addr, align 8
  %53 = load ptr, ptr %vbase, align 4
  %add.ptr121 = getelementptr i8, ptr %53, i32 52
  %feature_addr = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 8, i32 3
  %54 = ptrtoint ptr %feature_addr to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr121, ptr %feature_addr, align 4
  %55 = load ptr, ptr %vbase, align 4
  %add.ptr124 = getelementptr i8, ptr %55, i32 56
  %nsect_addr = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 8, i32 4
  %56 = ptrtoint ptr %nsect_addr to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr124, ptr %nsect_addr, align 16
  %57 = load ptr, ptr %vbase, align 4
  %add.ptr127 = getelementptr i8, ptr %57, i32 60
  %lbal_addr = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 8, i32 5
  %58 = ptrtoint ptr %lbal_addr to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr127, ptr %lbal_addr, align 4
  %59 = load ptr, ptr %vbase, align 4
  %add.ptr130 = getelementptr i8, ptr %59, i32 64
  %lbam_addr = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 8, i32 6
  %60 = ptrtoint ptr %lbam_addr to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr130, ptr %lbam_addr, align 8
  %61 = load ptr, ptr %vbase, align 4
  %add.ptr133 = getelementptr i8, ptr %61, i32 68
  %lbah_addr = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 8, i32 7
  %62 = ptrtoint ptr %lbah_addr to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %add.ptr133, ptr %lbah_addr, align 4
  %63 = load ptr, ptr %vbase, align 4
  %add.ptr136 = getelementptr i8, ptr %63, i32 72
  %device_addr = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 8, i32 8
  %64 = ptrtoint ptr %device_addr to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr136, ptr %device_addr, align 32
  %65 = load ptr, ptr %vbase, align 4
  %add.ptr139 = getelementptr i8, ptr %65, i32 76
  %status_addr = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 8, i32 9
  %66 = ptrtoint ptr %status_addr to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr139, ptr %status_addr, align 4
  %67 = load ptr, ptr %vbase, align 4
  %add.ptr142 = getelementptr i8, ptr %67, i32 76
  %command_addr = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 8, i32 10
  %68 = ptrtoint ptr %command_addr to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr142, ptr %command_addr, align 8
  %69 = load ptr, ptr %vbase, align 4
  %add.ptr145 = getelementptr i8, ptr %69, i32 80
  %altstatus_addr = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 8, i32 11
  %70 = ptrtoint ptr %altstatus_addr to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr145, ptr %altstatus_addr, align 4
  %71 = load ptr, ptr %vbase, align 4
  %add.ptr148 = getelementptr i8, ptr %71, i32 80
  %ctl_addr = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 8, i32 12
  %72 = ptrtoint ptr %ctl_addr to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %add.ptr148, ptr %ctl_addr, align 16
  %73 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %call1, align 4
  %conv = zext i32 %74 to i64
  %75 = load ptr, ptr %vbase, align 4
  tail call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %21, ptr noundef nonnull @.str.20, i64 noundef %conv, ptr noundef %75) #7
  %call152 = tail call fastcc i32 @cf_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.end155, label %if.end111.cleanup_crit_edge

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end155:                                        ; preds = %if.end111
  tail call fastcc void @cf_card_detect(ptr noundef nonnull %call.i, i1 noundef zeroext false)
  %irq156 = getelementptr inbounds %struct.arasan_cf_dev, ptr %call.i, i32 0, i32 4
  %76 = ptrtoint ptr %irq156 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %irq156, align 4
  %call157 = tail call i32 @ata_host_activate(ptr noundef nonnull %call52, i32 noundef %77, ptr noundef %irq_handler.0, i32 noundef 0, ptr noundef nonnull @arasan_cf_sht) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.end155.cleanup_crit_edge, label %if.end160

if.end155.cleanup_crit_edge:                      ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end160:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @cf_exit(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end160, %if.end155.cleanup_crit_edge, %if.end111.cleanup_crit_edge, %do.end57, %do.end46, %do.end36, %if.else20.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %do.end46 ], [ %call157, %if.end160 ], [ -12, %do.end57 ], [ -12, %do.end36 ], [ -2, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ -517, %if.else20.cleanup_crit_edge ], [ %call152, %if.end111.cleanup_crit_edge ], [ 0, %if.end155.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arasan_cf_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ports = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  tail call void @ata_host_detach(ptr noundef %1) #7
  tail call fastcc void @cf_exit(ptr noundef %5)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arasan_cf_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %vbase = getelementptr inbounds %struct.arasan_cf_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vbase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 2048
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !182
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body2:                                         ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #7
  %8 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vbase, align 4
  %add.ptr11 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vbase, align 4
  %add.ptr19 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %10) #7, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vbase, align 4
  %add.ptr24 = getelementptr i8, ptr %14, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 16777216) #7, !srcloc !185
  %15 = and i32 %10, -234946561
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %and26 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end31, label %if.then28

if.then28:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @cf_card_detect(ptr noundef %1, i1 noundef zeroext true)
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %call5) #7
  br label %cleanup

if.end31:                                         ; preds = %do.body2
  %and32 = and i32 %16, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end55, label %if.then34

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %dma_status = getelementptr inbounds %struct.arasan_cf_dev, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %dma_status to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %dma_status, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !187
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vbase, align 4
  %add.ptr41 = getelementptr i8, ptr %21, i32 28
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #7, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !188
  %23 = and i32 %22, -129
  %24 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vbase, align 4
  %add.ptr47 = getelementptr i8, ptr %25, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %23) #7, !srcloc !185
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %call5) #7
  %cf_completion = getelementptr inbounds %struct.arasan_cf_dev, ptr %1, i32 0, i32 7
  tail call void @complete(ptr noundef %cf_completion) #7
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %dev54 = getelementptr inbounds %struct.ata_host, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev54, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.21) #10
  br label %cleanup

if.end55:                                         ; preds = %if.end31
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %call5) #7
  %and58 = and i32 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end62, label %if.then60

if.then60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %cf_completion61 = getelementptr inbounds %struct.arasan_cf_dev, ptr %1, i32 0, i32 7
  tail call void @complete(ptr noundef %cf_completion61) #7
  br label %cleanup

if.end62:                                         ; preds = %if.end55
  %and63 = and i32 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end62.cleanup_crit_edge, label %if.then65

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then65:                                        ; preds = %if.end62
  %qc66 = getelementptr inbounds %struct.arasan_cf_dev, ptr %1, i32 0, i32 13
  %34 = ptrtoint ptr %qc66 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %qc66, align 4
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tf, align 4
  %and68 = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.then65.cleanup_crit_edge, label %if.then70

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then70:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  %cf_completion71 = getelementptr inbounds %struct.arasan_cf_dev, ptr %1, i32 0, i32 7
  tail call void @complete(ptr noundef %cf_completion71) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %if.then65.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %if.then60, %if.then34, %if.then28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then28 ], [ 1, %if.then34 ], [ 1, %if.then60 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then65.cleanup_crit_edge ], [ 1, %if.then70 ], [ 1, %if.end62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @data_xfer(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -144
  %qc1 = getelementptr i8, ptr %work, i32 144
  %0 = ptrtoint ptr %qc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc1, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call = tail call ptr @dma_request_chan(ptr noundef %5, ptr noundef nonnull @.str.36) #7
  %dma_chan = getelementptr i8, ptr %work, i32 -8
  %6 = ptrtoint ptr %dma_chan to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %dma_chan, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %dev5 = getelementptr inbounds %struct.ata_host, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.37) #10
  %11 = ptrtoint ptr %dma_chan to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %dma_chan, align 4
  br label %do.body36

if.end:                                           ; preds = %entry
  %n_elem = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %n_elem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_elem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp94.not = icmp eq i32 %13, 0
  br i1 %cmp94.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %sg7 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 17
  %14 = ptrtoint ptr %sg7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sg7, align 4
  %pbase3.i = getelementptr i8, ptr %work, i32 -136
  %vbase.i = getelementptr i8, ptr %work, i32 -132
  %cf_completion.i.i = getelementptr i8, ptr %work, i32 -120
  %dma_status.i.i = getelementptr i8, ptr %work, i32 -124
  %dma_completion.i.i = getelementptr i8, ptr %work, i32 -64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sg.096 = phi ptr [ %15, %for.body.lr.ph ], [ %call11, %for.inc.for.body_crit_edge ]
  %temp.095 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %16 = ptrtoint ptr %qc1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qc1, align 4
  %tf.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %tf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tf.i, align 4
  %and.i = and i32 %19, 8
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.096, i32 0, i32 4
  %20 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool5.not184.i = icmp eq i32 %21, 0
  br i1 %tobool5.not184.i, label %for.body.sg_xfer.exit_crit_edge, label %while.body.lr.ph.i

for.body.sg_xfer.exit_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sg_xfer.exit

while.body.lr.ph.i:                               ; preds = %for.body
  %dma_address2.i = getelementptr inbounds %struct.scatterlist, ptr %sg.096, i32 0, i32 3
  %22 = ptrtoint ptr %dma_address2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_address2.i, align 4
  %24 = ptrtoint ptr %pbase3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pbase3.i, align 4
  %add.i = add i32 %25, 512
  %dest.0.i = select i1 %tobool.not.i, i32 %23, i32 %add.i
  %add4.i = add i32 %25, 1024
  %src.0.i = select i1 %tobool.not.i, i32 %add4.i, i32 %23
  br label %while.body.i

while.cond.loopexit.i:                            ; preds = %if.end62.i
  %tobool5.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool5.not.i, label %while.cond.loopexit.i.sg_xfer.exit_crit_edge, label %while.cond.loopexit.i.while.body.i_crit_edge

while.cond.loopexit.i.while.body.i_crit_edge:     ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.cond.loopexit.i.sg_xfer.exit_crit_edge:     ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sg_xfer.exit

while.body.i:                                     ; preds = %while.cond.loopexit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dest.1187.i = phi i32 [ %dest.0.i, %while.body.lr.ph.i ], [ %dest.3.i, %while.cond.loopexit.i.while.body.i_crit_edge ]
  %src.1186.i = phi i32 [ %src.0.i, %while.body.lr.ph.i ], [ %src.3.i, %while.cond.loopexit.i.while.body.i_crit_edge ]
  %sglen.0185.i = phi i32 [ %21, %while.body.lr.ph.i ], [ %sub.i, %while.cond.loopexit.i.while.body.i_crit_edge ]
  %26 = tail call i32 @llvm.umin.i32(i32 %sglen.0185.i, i32 131072) #7
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 4
  %call9.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #7
  %29 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 28
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  %32 = and i32 %31, 64767
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  %or.i = or i32 %26, %33
  %or19.i = or i32 %or.i, -2147483648
  %34 = tail call i32 @llvm.bswap.i32(i32 %or19.i) #7
  %35 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vbase.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %36, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %34) #7, !srcloc !185
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %call9.i) #7
  br label %while.body26.i

while.body26.i:                                   ; preds = %if.end62.i.while.body26.i_crit_edge, %while.body.i
  %dest.2181.i = phi i32 [ %dest.3.i, %if.end62.i.while.body26.i_crit_edge ], [ %dest.1187.i, %while.body.i ]
  %src.2180.i = phi i32 [ %src.3.i, %if.end62.i.while.body26.i_crit_edge ], [ %src.1186.i, %while.body.i ]
  %xfer_cnt.0179.i = phi i32 [ %sub55.i, %if.end62.i.while.body26.i_crit_edge ], [ %26, %while.body.i ]
  %sglen.1178.i = phi i32 [ %sub.i, %if.end62.i.while.body26.i_crit_edge ], [ %sglen.0185.i, %while.body.i ]
  br i1 %tobool.not.i, label %if.then28.i, label %while.body26.i.if.end33.i_crit_edge

while.body26.i.if.end33.i_crit_edge:              ; preds = %while.body26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

if.then28.i:                                      ; preds = %while.body26.i
  %call1.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %cf_completion.i.i, i32 noundef 300) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %qc1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %qc1, align 4
  %tf.i.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %tf.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tf.i.i, align 4
  %and.i.i = and i32 %42, 8
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr, align 4
  %dev.i.i = getelementptr inbounds %struct.ata_host, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool2.not.i.i, ptr @.str.44, ptr @.str.43
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.41, ptr noundef nonnull %cond.i.i) #10
  br label %sg_xfer.exit

if.end.i.i:                                       ; preds = %if.then28.i
  %47 = ptrtoint ptr %dma_status.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %dma_status.i.i, align 4
  %49 = and i8 %48, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool4.not.i.i = icmp eq i8 %49, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end33.i_crit_edge, label %if.end.i.i.sg_xfer.exit_crit_edge

if.end.i.i.sg_xfer.exit_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sg_xfer.exit

if.end.i.i.if.end33.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end.i.i.if.end33.i_crit_edge, %while.body26.i.if.end33.i_crit_edge
  %50 = tail call i32 @llvm.umin.i32(i32 %xfer_cnt.0179.i, i32 512) #7
  %51 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dma_chan, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %device_prep_dma_memcpy.i.i = getelementptr inbounds %struct.dma_device, ptr %54, i32 0, i32 30
  %55 = ptrtoint ptr %device_prep_dma_memcpy.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device_prep_dma_memcpy.i.i, align 4
  %call.i.i = tail call ptr %56(ptr noundef %52, i32 noundef %dest.2181.i, i32 noundef %src.2180.i, i32 noundef %50, i32 noundef 1) #7
  %tobool.not.i132.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i132.i, label %if.end33.i.do.end46.i_crit_edge, label %if.end.i134.i

if.end33.i.do.end46.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46.i

if.end.i134.i:                                    ; preds = %if.end33.i
  %callback.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 6
  %57 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @dma_callback, ptr %callback.i.i, align 4
  %callback_param.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 8
  %58 = ptrtoint ptr %callback_param.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr, ptr %callback_param.i.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 4
  %59 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tx_submit.i.i, align 4
  %call1.i133.i = tail call i32 %60(ptr noundef nonnull %call.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i133.i)
  %tobool3.not.i.i = icmp sgt i32 %call1.i133.i, -1
  br i1 %tobool3.not.i.i, label %if.end10.i.i, label %if.end.i134.i.do.end46.i_crit_edge

if.end.i134.i.do.end46.i_crit_edge:               ; preds = %if.end.i134.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46.i

if.end10.i.i:                                     ; preds = %if.end.i134.i
  %61 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %52, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %62, i32 0, i32 50
  %63 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device_issue_pending.i.i, align 4
  tail call void %64(ptr noundef %52) #7
  %call13.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %dma_completion.i.i, i32 noundef 300) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.then15.i.i, label %if.end48.i

if.then15.i.i:                                    ; preds = %if.end10.i.i
  %65 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %52, align 4
  %device_terminate_all.i.i.i = getelementptr inbounds %struct.dma_device, ptr %66, i32 0, i32 47
  %67 = ptrtoint ptr %device_terminate_all.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %device_terminate_all.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %68, null
  br i1 %tobool.not.i.i.i, label %if.then15.i.i.do.end46.i_crit_edge, label %if.then.i.i.i

if.then15.i.i.do.end46.i_crit_edge:               ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46.i

if.then.i.i.i:                                    ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call i32 %68(ptr noundef %52) #7
  br label %do.end46.i

do.end46.i:                                       ; preds = %if.then.i.i.i, %if.then15.i.i.do.end46.i_crit_edge, %if.end.i134.i.do.end46.i_crit_edge, %if.end33.i.do.end46.i_crit_edge
  %.str.51.sink.i.i = phi ptr [ @.str.51, %if.then15.i.i.do.end46.i_crit_edge ], [ @.str.51, %if.then.i.i.i ], [ @.str.45, %if.end33.i.do.end46.i_crit_edge ], [ @.str.48, %if.end.i134.i.do.end46.i_crit_edge ]
  %retval.0.ph.i.i = phi i32 [ -110, %if.then15.i.i.do.end46.i_crit_edge ], [ -110, %if.then.i.i.i ], [ -11, %if.end33.i.do.end46.i_crit_edge ], [ %call1.i133.i, %if.end.i134.i.do.end46.i_crit_edge ]
  %69 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr, align 4
  %dev21.i.i = getelementptr inbounds %struct.ata_host, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %dev21.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev21.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull %.str.51.sink.i.i) #10
  %73 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %add.ptr, align 4
  %dev.i = getelementptr inbounds %struct.ata_host, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.39) #10
  br label %sg_xfer.exit

if.end48.i:                                       ; preds = %if.end10.i.i
  %add51.i = select i1 %tobool.not.i, i32 0, i32 %50
  %src.3.i = add i32 %add51.i, %src.2180.i
  %add53.i = select i1 %tobool.not.i, i32 %50, i32 0
  %dest.3.i = add i32 %add53.i, %dest.2181.i
  %sub.i = sub i32 %sglen.1178.i, %50
  %sub55.i = sub i32 %xfer_cnt.0179.i, %50
  br i1 %tobool.not.i, label %if.end48.i.if.end62.i_crit_edge, label %if.then57.i

if.end48.i.if.end62.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62.i

if.then57.i:                                      ; preds = %if.end48.i
  %call1.i137.i = tail call i32 @wait_for_completion_timeout(ptr noundef %cf_completion.i.i, i32 noundef 300) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i137.i)
  %tobool.not.i138.i = icmp eq i32 %call1.i137.i, 0
  br i1 %tobool.not.i138.i, label %if.then.i145.i, label %if.end.i149.i

if.then.i145.i:                                   ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %qc1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %qc1, align 4
  %tf.i140.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %tf.i140.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tf.i140.i, align 4
  %and.i141.i = and i32 %80, 8
  %81 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr, align 4
  %dev.i142.i = getelementptr inbounds %struct.ata_host, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %dev.i142.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i142.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i141.i)
  %tobool2.not.i143.i = icmp eq i32 %and.i141.i, 0
  %cond.i144.i = select i1 %tobool2.not.i143.i, ptr @.str.44, ptr @.str.43
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.41, ptr noundef nonnull %cond.i144.i) #10
  br label %sg_xfer.exit

if.end.i149.i:                                    ; preds = %if.then57.i
  %85 = ptrtoint ptr %dma_status.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %dma_status.i.i, align 4
  %87 = and i8 %86, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool4.not.i147.i = icmp eq i8 %87, 0
  br i1 %tobool4.not.i147.i, label %if.end.i149.i.if.end62.i_crit_edge, label %if.end.i149.i.sg_xfer.exit_crit_edge

if.end.i149.i.sg_xfer.exit_crit_edge:             ; preds = %if.end.i149.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sg_xfer.exit

if.end.i149.i.if.end62.i_crit_edge:               ; preds = %if.end.i149.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.end.i149.i.if.end62.i_crit_edge, %if.end48.i.if.end62.i_crit_edge
  %tobool25.not.i = icmp eq i32 %sub55.i, 0
  br i1 %tobool25.not.i, label %while.cond.loopexit.i, label %if.end62.i.while.body26.i_crit_edge

if.end62.i.while.body26.i_crit_edge:              ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body26.i

sg_xfer.exit:                                     ; preds = %if.end.i149.i.sg_xfer.exit_crit_edge, %if.then.i145.i, %do.end46.i, %if.end.i.i.sg_xfer.exit_crit_edge, %if.then.i.i, %while.cond.loopexit.i.sg_xfer.exit_crit_edge, %for.body.sg_xfer.exit_crit_edge
  %ret.3.i = phi i32 [ %retval.0.ph.i.i, %do.end46.i ], [ -110, %if.then.i.i ], [ -110, %if.then.i145.i ], [ 0, %for.body.sg_xfer.exit_crit_edge ], [ -11, %if.end.i149.i.sg_xfer.exit_crit_edge ], [ -11, %if.end.i.i.sg_xfer.exit_crit_edge ], [ 0, %while.cond.loopexit.i.sg_xfer.exit_crit_edge ]
  %88 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr, align 4
  %call74.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %89) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !191
  tail call void @arm_heavy_mb() #7
  %90 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %vbase.i, align 4
  %add.ptr85.i = getelementptr i8, ptr %91, i32 28
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85.i) #7, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  %93 = and i32 %92, -129
  %94 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %vbase.i, align 4
  %add.ptr91.i = getelementptr i8, ptr %95, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91.i, i32 %93) #7, !srcloc !185
  %96 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %add.ptr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %97, i32 noundef %call74.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %tobool.not = icmp eq i32 %ret.3.i, 0
  br i1 %tobool.not, label %for.inc, label %sg_xfer.exit.for.end_crit_edge

sg_xfer.exit.for.end_crit_edge:                   ; preds = %sg_xfer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %sg_xfer.exit
  %inc = add nuw i32 %temp.095, 1
  %call11 = tail call ptr @sg_next(ptr noundef %sg.096) #7
  %98 = ptrtoint ptr %n_elem to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %n_elem, align 4
  %cmp = icmp ult i32 %inc, %99
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sg_xfer.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %ret.1 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %ret.3.i, %sg_xfer.exit.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %100 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dma_chan, align 4
  tail call void @dma_release_channel(ptr noundef %101) #7
  %102 = ptrtoint ptr %dma_chan to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %dma_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool14.not = icmp eq i32 %ret.1, 0
  br i1 %tobool14.not, label %if.then15, label %if.end34

if.then15:                                        ; preds = %for.end
  %103 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %add.ptr, align 4
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %104) #7
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 4
  %altstatus_addr = getelementptr inbounds %struct.ata_port, ptr %106, i32 0, i32 8, i32 11
  %107 = ptrtoint ptr %altstatus_addr to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %altstatus_addr, align 4
  %109 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %108) #7, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  %110 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %add.ptr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %111, i32 noundef %call22) #7
  %112 = and i8 %109, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool31.not = icmp eq i8 %112, 0
  br i1 %tobool31.not, label %if.then15.sff_intr_crit_edge, label %if.then32

if.then15.sff_intr_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sff_intr

if.then32:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %dwork = getelementptr i8, ptr %work, i32 44
  tail call void @ata_sff_queue_delayed_work(ptr noundef %dwork, i32 noundef 1) #7
  br label %cleanup53

if.end34:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @cf_dumpregs(ptr noundef %add.ptr)
  br label %do.body36

do.body36:                                        ; preds = %if.end34, %do.end
  %113 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %add.ptr, align 4
  %call45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %114) #7
  %err_mask = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 20
  %115 = ptrtoint ptr %err_mask to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %err_mask, align 4
  %or = or i32 %116, 32
  store i32 %or, ptr %err_mask, align 4
  %117 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %1, align 4
  %hsm_task_state = getelementptr inbounds %struct.ata_port, ptr %118, i32 0, i32 37
  %119 = ptrtoint ptr %hsm_task_state to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 4, ptr %hsm_task_state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  tail call void @arm_heavy_mb() #7
  %vbase.i84 = getelementptr i8, ptr %work, i32 -132
  %120 = ptrtoint ptr %vbase.i84 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %vbase.i84, align 4
  %add.ptr.i85 = getelementptr i8, ptr %121, i32 12
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85) #7, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  %123 = and i32 %122, -268435457
  %124 = ptrtoint ptr %vbase.i84 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %vbase.i84, align 4
  %add.ptr3.i = getelementptr i8, ptr %125, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %123) #7, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %126 = ptrtoint ptr %vbase.i84 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %vbase.i84, align 4
  %add.ptr9.i = getelementptr i8, ptr %127, i32 12
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #7, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !198
  %129 = or i32 %128, 268435456
  %130 = ptrtoint ptr %vbase.i84 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %vbase.i84, align 4
  %add.ptr14.i = getelementptr i8, ptr %131, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %129) #7, !srcloc !185
  %132 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %add.ptr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %133, i32 noundef %call45) #7
  br label %sff_intr

sff_intr:                                         ; preds = %do.body36, %if.then15.sff_intr_crit_edge
  %134 = ptrtoint ptr %qc1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %qc1, align 4
  store ptr null, ptr %qc1, align 4
  %irq.i = getelementptr i8, ptr %work, i32 -128
  %136 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %irq.i, align 4
  %138 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 @ata_sff_interrupt(i32 noundef %137, ptr noundef %139) #7
  %140 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %add.ptr, align 4
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %141) #7
  %err_mask.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %135, i32 0, i32 20
  %142 = ptrtoint ptr %err_mask.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %err_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool.not.i86 = icmp eq i32 %143, 0
  br i1 %tobool.not.i86, label %sff_intr.dma_complete.exit_crit_edge, label %land.lhs.true.i, !prof !199

sff_intr.dma_complete.exit_crit_edge:             ; preds = %sff_intr
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_complete.exit

land.lhs.true.i:                                  ; preds = %sff_intr
  %protocol.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %135, i32 0, i32 4, i32 1
  %144 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %protocol.i, align 4
  %146 = and i8 %145, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool.i.not.i = icmp eq i8 %146, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i.dma_complete.exit_crit_edge, label %if.then.i

land.lhs.true.i.dma_complete.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_complete.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %147 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %135, align 4
  %eh_info.i = getelementptr inbounds %struct.ata_port, ptr %148, i32 0, i32 25, i32 11
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info.i, ptr noundef nonnull @.str.66) #7
  br label %dma_complete.exit

dma_complete.exit:                                ; preds = %if.then.i, %land.lhs.true.i.dma_complete.exit_crit_edge, %sff_intr.dma_complete.exit_crit_edge
  %149 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %add.ptr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %150, i32 noundef %call6.i) #7
  br label %cleanup53

cleanup53:                                        ; preds = %dma_complete.exit, %if.then32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delayed_finish(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -188
  %qc1 = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %qc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc1, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %altstatus_addr = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 8, i32 11
  %6 = ptrtoint ptr %altstatus_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %altstatus_addr, align 4
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %7) #7, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %call4) #7
  %11 = and i8 %8, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ata_sff_queue_delayed_work(ptr noundef %work, i32 noundef 1) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = ptrtoint ptr %qc1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qc1, align 4
  store ptr null, ptr %qc1, align 4
  %irq.i = getelementptr i8, ptr %work, i32 -172
  %14 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq.i, align 4
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 @ata_sff_interrupt(i32 noundef %15, ptr noundef %17) #7
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #7
  %err_mask.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %13, i32 0, i32 20
  %20 = ptrtoint ptr %err_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %err_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.else.dma_complete.exit_crit_edge, label %land.lhs.true.i, !prof !199

if.else.dma_complete.exit_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_complete.exit

land.lhs.true.i:                                  ; preds = %if.else
  %protocol.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %13, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %protocol.i, align 4
  %24 = and i8 %23, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.i.not.i = icmp eq i8 %24, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i.dma_complete.exit_crit_edge, label %if.then.i

land.lhs.true.i.dma_complete.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_complete.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %13, align 4
  %eh_info.i = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 25, i32 11
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info.i, ptr noundef nonnull @.str.66) #7
  br label %dma_complete.exit

dma_complete.exit:                                ; preds = %if.then.i, %land.lhs.true.i.dma_complete.exit_crit_edge, %if.else.dma_complete.exit_crit_edge
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %call6.i) #7
  br label %if.end

if.end:                                           ; preds = %dma_complete.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cf_init(ptr nocapture noundef readonly %acdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %acdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acdev, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %clk = getelementptr inbounds %struct.arasan_cf_dev, ptr %acdev, i32 0, i32 1
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end9, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %do.body

do.body:                                          ; preds = %if.then3.i, %entry.do.body_crit_edge
  %retval.0.i69.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cf_init.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cf_init, %if.then6)) #7
          to label %cleanup [label %if.then6], !srcloc !200

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %acdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %acdev, align 4
  %dev8 = getelementptr inbounds %struct.ata_host, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cf_init.__UNIQUE_ID_ddebug368, ptr noundef %11, ptr noundef nonnull @.str.68) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end.i
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  %call11 = tail call i32 @clk_set_rate(ptr noundef %13, i32 noundef 166000000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  %14 = ptrtoint ptr %acdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %acdev, align 4
  br i1 %tobool12.not, label %do.body22, label %do.end16

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %dev18 = getelementptr inbounds %struct.ata_host, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.69) #10
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %19) #7
  tail call void @clk_unprepare(ptr noundef %19) #7
  br label %cleanup

do.body22:                                        ; preds = %if.end9
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #7
  %tobool31.not = icmp eq ptr %5, null
  br i1 %tobool31.not, label %do.body22.do.body39_crit_edge, label %land.lhs.true

do.body22.do.body39_crit_edge:                    ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

land.lhs.true:                                    ; preds = %do.body22
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %21)
  %cmp33 = icmp ult i8 %21, 11
  br i1 %cmp33, label %if.then35, label %land.lhs.true.do.body39_crit_edge

land.lhs.true.do.body39_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

if.then35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %conv32 = zext i8 %21 to i32
  %phi.bo = shl nuw nsw i32 %conv32, 24
  br label %do.body39

do.body39:                                        ; preds = %if.then35, %land.lhs.true.do.body39_crit_edge, %do.body22.do.body39_crit_edge
  %if_clk.0 = phi i32 [ %phi.bo, %if.then35 ], [ 150994944, %land.lhs.true.do.body39_crit_edge ], [ 150994944, %do.body22.do.body39_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void @arm_heavy_mb() #7
  %vbase = getelementptr inbounds %struct.arasan_cf_dev, ptr %acdev, i32 0, i32 3
  %22 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vbase, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %if_clk.0) #7, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !202
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vbase, align 4
  %add.ptr46 = getelementptr i8, ptr %25, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 301989888) #7, !srcloc !185
  %26 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vbase, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vbase, align 4
  %add.ptr3.i = getelementptr i8, ptr %30, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 16777216) #7, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !204
  tail call void @arm_heavy_mb() #7
  %31 = or i32 %28, 16777216
  %32 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vbase, align 4
  %add.ptr8.i = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %31) #7, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !205
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vbase, align 4
  %add.ptr.i72 = getelementptr i8, ptr %35, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 16777216) #7, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vbase, align 4
  %add.ptr6.i = getelementptr i8, ptr %37, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 16777216) #7, !srcloc !185
  %38 = ptrtoint ptr %acdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %acdev, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %39, i32 noundef %call26) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body39, %do.end16, %if.then6, %do.body
  %retval.0 = phi i32 [ %call11, %do.end16 ], [ 0, %do.body39 ], [ %retval.0.i69.ph, %if.then6 ], [ %retval.0.i69.ph, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cf_card_detect(ptr nocapture noundef %acdev, i1 noundef zeroext %hotplugged) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %acdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acdev, align 4
  %ports = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %vbase = getelementptr inbounds %struct.arasan_cf_dev, ptr %acdev, i32 0, i32 3
  %4 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vbase, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !207
  %7 = and i32 %6, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %card_present = getelementptr inbounds %struct.arasan_cf_dev, ptr %acdev, i32 0, i32 6
  %8 = ptrtoint ptr %card_present to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %card_present, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool2.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %card_present to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %card_present, align 1
  %11 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vbase, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !181
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %or.i = or i32 %14, 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %16 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vbase, align 4
  %add.ptr3.i = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %15) #7, !srcloc !185
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 42949600) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %and.i = and i32 %14, -9
  %19 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %20 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vbase, align 4
  %add.ptr8.i = getelementptr i8, ptr %21, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %19) #7, !srcloc !185
  br label %if.end10

if.else:                                          ; preds = %entry
  br i1 %tobool2.not, label %if.else.cleanup_crit_edge, label %if.end8

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %card_present to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %card_present, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %if.end
  br i1 %hotplugged, label %if.then12, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %probe_mask.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 25, i32 11, i32 6
  %23 = ptrtoint ptr %probe_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %probe_mask.i, align 4
  %or.i24 = or i32 %24, 3
  store i32 %or.i24, ptr %probe_mask.i, align 4
  %flags.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 25, i32 11, i32 5
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i, align 4
  %or1.i = or i32 %26, 1
  store i32 %or1.i, ptr %flags.i, align 4
  %action.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 25, i32 11, i32 3
  %27 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %action.i, align 4
  %or2.i = or i32 %28, 14
  store i32 %or2.i, ptr %action.i, align 4
  %err_mask.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 25, i32 11, i32 2
  %29 = ptrtoint ptr %err_mask.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %err_mask.i, align 4
  %or3.i = or i32 %30, 16
  store i32 %or3.i, ptr %err_mask.i, align 4
  %call13 = tail call i32 @ata_port_freeze(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end10.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cf_exit(ptr nocapture noundef readonly %acdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %acdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acdev, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !205
  tail call void @arm_heavy_mb() #7
  %vbase.i = getelementptr inbounds %struct.arasan_cf_dev, ptr %acdev, i32 0, i32 3
  %2 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vbase.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %5, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #7, !srcloc !185
  %6 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vbase.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #7, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %9 = and i32 %8, -17694721
  %10 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vbase.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %9) #7, !srcloc !185
  %12 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vbase.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %13, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #7, !srcloc !181
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  tail call void @arm_heavy_mb() #7
  %or.i = or i32 %15, 8
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %17 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vbase.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %18, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %16) #7, !srcloc !185
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 42949600) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %and.i26 = and i32 %15, -9
  %20 = tail call i32 @llvm.bswap.i32(i32 %and.i26) #7
  %21 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vbase.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %22, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %20) #7, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vbase.i, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 12
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !212
  %26 = and i32 %25, -268435457
  %27 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vbase.i, align 4
  %add.ptr12 = getelementptr i8, ptr %28, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %26) #7, !srcloc !185
  %29 = ptrtoint ptr %acdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %acdev, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %call2) #7
  %clk = getelementptr inbounds %struct.arasan_cf_dev, ptr %acdev, i32 0, i32 1
  %31 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %32) #7
  tail call void @clk_unprepare(ptr noundef %32) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arasan_cf_qc_issue(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %protocol, align 4
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.i.not = icmp eq i8 %8, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @ata_sff_qc_issue(ptr noundef %qc) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end
  %max.addr.0.i.i = phi i32 [ 1000, %if.end ], [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #7
  %10 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i, align 4
  %sff_check_status.i.i = getelementptr inbounds %struct.ata_port_operations, ptr %11, i32 0, i32 39
  %12 = ptrtoint ptr %sff_check_status.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sff_check_status.i.i, align 4
  %call.i.i = tail call zeroext i8 %13(ptr noundef %1) #7
  %dec.i.i = add nsw i32 %max.addr.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i.i)
  %cmp.not.i.i = icmp eq i8 %call.i.i, -1
  %14 = and i8 %call.i.i, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i = icmp eq i8 %14, 0
  %or.cond.i.i = or i1 %cmp.not.i.i, %tobool.not.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp3.not.i.i = icmp eq i32 %dec.i.i, 0
  %or.cond1.i.i = select i1 %or.cond.i.i, i1 true, i1 %cmp3.not.i.i
  br i1 %or.cond1.i.i, label %ata_sff_busy_wait.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

ata_sff_busy_wait.exit.i:                         ; preds = %do.body.i.i
  %conv.i = zext i8 %call.i.i to i32
  %and.i = and i32 %conv.i, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %cmp.not.i.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %ata_sff_busy_wait.exit.i.ata_wait_idle.exit_crit_edge, label %do.body.i

ata_sff_busy_wait.exit.i.ata_wait_idle.exit_crit_edge: ; preds = %ata_sff_busy_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ata_wait_idle.exit

do.body.i:                                        ; preds = %ata_sff_busy_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ata_wait_idle.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arasan_cf_qc_issue, %if.then7.i)) #7
          to label %ata_wait_idle.exit [label %if.then7.i], !srcloc !200

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %print_id.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ata_wait_idle.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.27, i32 noundef %16, i32 noundef %conv.i) #7
  br label %ata_wait_idle.exit

ata_wait_idle.exit:                               ; preds = %if.then7.i, %do.body.i, %ata_sff_busy_wait.exit.i.ata_wait_idle.exit_crit_edge
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %devno, align 4
  tail call void @ata_sff_dev_select(ptr noundef %1, i32 noundef %20) #7
  br label %do.body.i.i111

do.body.i.i111:                                   ; preds = %do.body.i.i111.do.body.i.i111_crit_edge, %ata_wait_idle.exit
  %max.addr.0.i.i102 = phi i32 [ 1000, %ata_wait_idle.exit ], [ %dec.i.i105, %do.body.i.i111.do.body.i.i111_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #7
  %22 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i.i, align 4
  %sff_check_status.i.i103 = getelementptr inbounds %struct.ata_port_operations, ptr %23, i32 0, i32 39
  %24 = ptrtoint ptr %sff_check_status.i.i103 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sff_check_status.i.i103, align 4
  %call.i.i104 = tail call zeroext i8 %25(ptr noundef %1) #7
  %dec.i.i105 = add nsw i32 %max.addr.0.i.i102, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i.i104)
  %cmp.not.i.i106 = icmp eq i8 %call.i.i104, -1
  %26 = and i8 %call.i.i104, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i107 = icmp eq i8 %26, 0
  %or.cond.i.i108 = or i1 %cmp.not.i.i106, %tobool.not.i.i107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i105)
  %cmp3.not.i.i109 = icmp eq i32 %dec.i.i105, 0
  %or.cond1.i.i110 = select i1 %or.cond.i.i108, i1 true, i1 %cmp3.not.i.i109
  br i1 %or.cond1.i.i110, label %ata_sff_busy_wait.exit.i116, label %do.body.i.i111.do.body.i.i111_crit_edge

do.body.i.i111.do.body.i.i111_crit_edge:          ; preds = %do.body.i.i111
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i111

ata_sff_busy_wait.exit.i116:                      ; preds = %do.body.i.i111
  %conv.i112 = zext i8 %call.i.i104 to i32
  %and.i113 = and i32 %conv.i112, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i113)
  %tobool.not.i114 = icmp eq i32 %and.i113, 0
  %or.cond.i115 = select i1 %cmp.not.i.i106, i1 true, i1 %tobool.not.i114
  br i1 %or.cond.i115, label %ata_sff_busy_wait.exit.i116.ata_wait_idle.exit120_crit_edge, label %do.body.i117

ata_sff_busy_wait.exit.i116.ata_wait_idle.exit120_crit_edge: ; preds = %ata_sff_busy_wait.exit.i116
  call void @__sanitizer_cov_trace_pc() #9
  br label %ata_wait_idle.exit120

do.body.i117:                                     ; preds = %ata_sff_busy_wait.exit.i116
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ata_wait_idle.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arasan_cf_qc_issue, %if.then7.i119)) #7
          to label %ata_wait_idle.exit120 [label %if.then7.i119], !srcloc !200

if.then7.i119:                                    ; preds = %do.body.i117
  call void @__sanitizer_cov_trace_pc() #9
  %print_id.i118 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %print_id.i118 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %print_id.i118, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ata_wait_idle.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.27, i32 noundef %28, i32 noundef %conv.i112) #7
  br label %ata_wait_idle.exit120

ata_wait_idle.exit120:                            ; preds = %if.then7.i119, %do.body.i117, %ata_sff_busy_wait.exit.i116.ata_wait_idle.exit120_crit_edge
  %29 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %30)
  %cond = icmp eq i8 %30, 2
  br i1 %cond, label %sw.bb, label %do.end62

sw.bb:                                            ; preds = %ata_wait_idle.exit120
  %31 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tf, align 4
  %and = and i32 %32, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.if.end38_crit_edge, label %land.rhs

sw.bb.if.end38_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

land.rhs:                                         ; preds = %sw.bb
  %.b100 = load i1, ptr @arasan_cf_qc_issue.__already_done, align 1
  br i1 %.b100, label %land.rhs.if.end38_crit_edge, label %if.then16, !prof !199

land.rhs.if.end38_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then16:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @arasan_cf_qc_issue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 705, i32 noundef 9, ptr noundef null) #7
  br label %if.end38

if.end38:                                         ; preds = %if.then16, %land.rhs.if.end38_crit_edge, %sw.bb.if.end38_crit_edge
  tail call fastcc void @trace_ata_tf_load(ptr noundef %1, ptr noundef %tf)
  %33 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i.i, align 4
  %sff_tf_load = getelementptr inbounds %struct.ata_port_operations, ptr %34, i32 0, i32 41
  %35 = ptrtoint ptr %sff_tf_load to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sff_tf_load, align 4
  tail call void %36(ptr noundef %1, ptr noundef %tf) #7
  %dma_status = getelementptr inbounds %struct.arasan_cf_dev, ptr %5, i32 0, i32 5
  %37 = ptrtoint ptr %dma_status to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %dma_status, align 4
  %qc48 = getelementptr inbounds %struct.arasan_cf_dev, ptr %5, i32 0, i32 13
  %38 = ptrtoint ptr %qc48 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %qc, ptr %qc48, align 4
  %tag = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 7
  %39 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tag, align 4
  tail call fastcc void @trace_ata_bmdma_start(ptr noundef %1, ptr noundef %tf, i32 noundef %40)
  %41 = ptrtoint ptr %qc48 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %qc48, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %tf3.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %42, i32 0, i32 4
  %vbase.i = getelementptr inbounds %struct.arasan_cf_dev, ptr %5, i32 0, i32 3
  %45 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %46, i32 28
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !213
  %48 = and i32 %47, -65
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #7
  %50 = ptrtoint ptr %tf3.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tf3.i, align 4
  %and5.i = shl i32 %51, 27
  %52 = and i32 %and5.i, 1073741824
  %or.i = or i32 %52, %49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !214
  tail call void @arm_heavy_mb() #7
  %53 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %54 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vbase.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %55, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %53) #7, !srcloc !185
  %ops.i = getelementptr inbounds %struct.ata_port, ptr %44, i32 0, i32 1
  %56 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i, align 4
  %sff_exec_command.i = getelementptr inbounds %struct.ata_port_operations, ptr %57, i32 0, i32 43
  %58 = ptrtoint ptr %sff_exec_command.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sff_exec_command.i, align 4
  tail call void %59(ptr noundef %44, ptr noundef %tf3.i) #7
  %work.i = getelementptr inbounds %struct.arasan_cf_dev, ptr %5, i32 0, i32 11
  tail call void @ata_sff_queue_work(ptr noundef %work.i) #7
  %hsm_task_state = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 37
  %60 = ptrtoint ptr %hsm_task_state to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 3, ptr %hsm_task_state, align 4
  br label %cleanup

do.end62:                                         ; preds = %ata_wait_idle.exit120
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 717, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %if.end38, %if.then
  %retval.0 = phi i32 [ 0, %if.end38 ], [ 64, %do.end62 ], [ %call2, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arasan_cf_set_piomode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pio_mode, align 16
  %sub = add i8 %1, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %sub)
  %cmp = icmp ugt i8 %sub, 6
  br i1 %cmp, label %do.end, label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 32
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.31) #10
  br label %cleanup

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv2 = zext i8 %sub to i32
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #7
  %vbase = getelementptr inbounds %struct.arasan_cf_dev, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vbase, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !215
  %13 = and i32 %12, -1769473
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !216
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vbase, align 4
  %add.ptr21 = getelementptr i8, ptr %15, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %13) #7, !srcloc !185
  %16 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vbase, align 4
  %add.ptr25 = getelementptr i8, ptr %17, i32 20
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #7, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  %19 = and i32 %18, -1879048193
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %shl = shl nuw nsw i32 %conv2, 4
  %or = or i32 %20, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %or)
  %22 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vbase, align 4
  %add.ptr35 = getelementptr i8, ptr %23, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %21) #7, !srcloc !185
  %24 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vbase, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %27 = and i32 %26, -786433
  %28 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vbase, align 4
  %add.ptr13.i = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %27) #7, !srcloc !185
  %30 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vbase, align 4
  %add.ptr.i53 = getelementptr i8, ptr %31, i32 8
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #7, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %33 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vbase, align 4
  %add.ptr3.i = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 131072) #7, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !204
  tail call void @arm_heavy_mb() #7
  %35 = or i32 %32, 131072
  %36 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vbase, align 4
  %add.ptr8.i = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %35) #7, !srcloc !185
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %39, i32 noundef %call9) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body5, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arasan_cf_set_dmamode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dma_mode1 = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %4 = ptrtoint ptr %dma_mode1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dma_mode1, align 1
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #7
  %vbase = getelementptr inbounds %struct.arasan_cf_dev, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vbase, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !219
  %11 = and i32 %10, -196609
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vbase, align 4
  %add.ptr14 = getelementptr i8, ptr %14, i32 20
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #7, !srcloc !181
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !220
  %17 = add i8 %5, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %17)
  %18 = icmp ult i8 %17, 7
  br i1 %18, label %entry.do.body42_crit_edge, label %if.else

entry.do.body42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body42

if.else:                                          ; preds = %entry
  %19 = add i8 %5, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %19)
  %20 = icmp ult i8 %19, 5
  br i1 %20, label %if.else.do.body42_crit_edge, label %do.end38

if.else.do.body42_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body42

do.end38:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 32
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.33) #10
  br label %cleanup

do.body42:                                        ; preds = %if.else.do.body42_crit_edge, %entry.do.body42_crit_edge
  %.sink90 = phi i32 [ 256, %entry.do.body42_crit_edge ], [ 512, %if.else.do.body42_crit_edge ]
  %.sink89 = phi i32 [ -7169, %entry.do.body42_crit_edge ], [ -897, %if.else.do.body42_crit_edge ]
  %.sink88 = phi i32 [ 10, %entry.do.body42_crit_edge ], [ 7, %if.else.do.body42_crit_edge ]
  %.sink = phi i32 [ -65536, %entry.do.body42_crit_edge ], [ -4096, %if.else.do.body42_crit_edge ]
  %or = or i32 %12, %.sink90
  %and22 = and i32 %16, %.sink89
  %sub = shl nuw nsw i32 %conv, %.sink88
  %shl = add nsw i32 %sub, %.sink
  %or23 = or i32 %and22, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !221
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %or)
  %24 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vbase, align 4
  %add.ptr46 = getelementptr i8, ptr %25, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %23) #7, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !222
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %or23)
  %27 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vbase, align 4
  %add.ptr51 = getelementptr i8, ptr %28, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %26) #7, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !223
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vbase, align 4
  %add.ptr56 = getelementptr i8, ptr %30, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 16) #7, !srcloc !185
  %31 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vbase, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 8
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %34 = and i32 %33, -131073
  %35 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vbase, align 4
  %add.ptr13.i = getelementptr i8, ptr %36, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %34) #7, !srcloc !185
  %37 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vbase, align 4
  %add.ptr.i87 = getelementptr i8, ptr %38, i32 8
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87) #7, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vbase, align 4
  %add.ptr3.i = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 786432) #7, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !204
  tail call void @arm_heavy_mb() #7
  %42 = or i32 %39, 786432
  %43 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vbase, align 4
  %add.ptr8.i = getelementptr i8, ptr %44, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %42) #7, !srcloc !185
  br label %cleanup

cleanup:                                          ; preds = %do.body42, %do.end38
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %46, i32 noundef %call5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arasan_cf_freeze(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !224
  tail call void @arm_heavy_mb() #7
  %vbase = getelementptr inbounds %struct.arasan_cf_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vbase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 28
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !225
  %7 = and i32 %6, -129
  %8 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vbase, align 4
  %add.ptr3 = getelementptr i8, ptr %9, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %7) #7, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vbase, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  %13 = and i32 %12, -268435457
  %14 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vbase, align 4
  %add.ptr3.i = getelementptr i8, ptr %15, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %13) #7, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vbase, align 4
  %add.ptr9.i = getelementptr i8, ptr %17, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #7, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !198
  %19 = or i32 %18, 268435456
  %20 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vbase, align 4
  %add.ptr14.i = getelementptr i8, ptr %21, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %19) #7, !srcloc !185
  %dma_status = getelementptr inbounds %struct.arasan_cf_dev, ptr %3, i32 0, i32 5
  %22 = ptrtoint ptr %dma_status to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %dma_status, align 4
  tail call void @ata_sff_dma_pause(ptr noundef %ap) #7
  tail call void @ata_sff_freeze(ptr noundef %ap) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arasan_cf_error_handler(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %work = getelementptr inbounds %struct.arasan_cf_dev, ptr %3, i32 0, i32 11
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #7
  %dwork = getelementptr inbounds %struct.arasan_cf_dev, ptr %3, i32 0, i32 12
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dwork) #7
  tail call void @ata_sff_error_handler(ptr noundef %ap) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_qc_issue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_dev_select(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ata_tf_load(ptr noundef %ap, ptr noundef %tf) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_tf_load, i32 0, i32 1), ptr blockaddress(@trace_ata_tf_load, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !199

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !226
  %call42 = tail call i32 @__traceiter_ata_tf_load(ptr noundef null, ptr noundef %ap, ptr noundef %tf) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !227
  %13 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !199

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_tf_load, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_tf_load, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ata_tf_load.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_ata_tf_load.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 368, ptr noundef nonnull @.str.29) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !229
  %31 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ata_bmdma_start(ptr noundef %ap, ptr noundef %tf, i32 noundef %tag) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_bmdma_start, i32 0, i32 1), ptr blockaddress(@trace_ata_bmdma_start, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !200

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !199

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !230
  %call42 = tail call i32 @__traceiter_ata_bmdma_start(ptr noundef null, ptr noundef %ap, ptr noundef %tf, i32 noundef %tag) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !231
  %13 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !199

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_bmdma_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_bmdma_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ata_bmdma_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_ata_bmdma_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 411, ptr noundef nonnull @.str.29) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !229
  %31 = tail call i32 @llvm.read_register.i32(metadata !171) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_tf_load(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_bmdma_start(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_queue_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_dma_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_freeze(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_error_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_queue_delayed_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cf_dumpregs(ptr nocapture noundef readonly %acdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %acdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acdev, align 4
  %dev1 = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cf_dumpregs.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cf_dumpregs, %if.then)) #7
          to label %do.body4 [label %if.then], !srcloc !200

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cf_dumpregs.__UNIQUE_ID_ddebug356, ptr noundef %3, ptr noundef nonnull @.str.54) #7
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cf_dumpregs.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cf_dumpregs, %if.then16)) #7
          to label %do.body23 [label %if.then16], !srcloc !200

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %vbase = getelementptr inbounds %struct.arasan_cf_dev, ptr %acdev, i32 0, i32 3
  %4 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vbase, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !181
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cf_dumpregs.__UNIQUE_ID_ddebug357, ptr noundef %3, ptr noundef nonnull @.str.55, i32 noundef %7) #7
  br label %do.body23

do.body23:                                        ; preds = %if.then16, %do.body4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cf_dumpregs.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cf_dumpregs, %if.then35)) #7
          to label %do.body46 [label %if.then35], !srcloc !200

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  %vbase38 = getelementptr inbounds %struct.arasan_cf_dev, ptr %acdev, i32 0, i32 3
  %8 = ptrtoint ptr %vbase38 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vbase38, align 4
  %add.ptr39 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #7, !srcloc !181
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cf_dumpregs.__UNIQUE_ID_ddebug358, ptr noundef %3, ptr noundef nonnull @.str.56, i32 noundef %11) #7
  br label %do.body46

do.body46:                                        ; preds = %if.then35, %do.body23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cf_dumpregs.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cf_dumpregs, %if.then58)) #7
          to label %do.body69 [label %if.then58], !srcloc !200

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #9
  %vbase61 = getelementptr inbounds %struct.arasan_cf_dev, ptr %acdev, i32 0, i32 3
  %12 = ptrtoint ptr %vbase61 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vbase61, align 4
  %add.ptr62 = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #7, !srcloc !181
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !234
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cf_dumpregs.__UNIQUE_ID_ddebug359, ptr noundef %3, ptr noundef nonnull @.str.57, i32 noundef %15) #7
  br label %do.body69

do.body69:                                        ; preds = %if.then58, %do.body46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cf_dumpregs.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cf_dumpregs, %if.then81)) #7
          to label %do.body92 [label %if.then81], !srcloc !200

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #9
  %vbase84 = getelementptr inbounds %struct.arasan_cf_dev, ptr %acdev, i32 0, i32 3
  %16 = ptrtoint ptr %vbase84 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vbase84, align 4
  %add.ptr85 = getelementptr i8, ptr %17, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #7, !srcloc !181
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !235
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cf_dumpregs.__UNIQUE_ID_ddebug360, ptr noundef %3, ptr noundef nonnull @.str.58, i32 noundef %19) #7
  br label %do.body92

do.body92:                                        ; preds = %if.then81, %do.body69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cf_dumpregs.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cf_dumpregs, %if.then104)) #7
          to label %do.body115 [label %if.then104], !srcloc !200

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #9
  %vbase107 = getelementptr inbounds %struct.arasan_cf_dev, ptr %acdev, i32 0, i32 3
  %20 = ptrtoint ptr %vbase107 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vbase107, align 4
  %add.ptr108 = getelementptr i8, ptr %21, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr108) #7, !srcloc !181
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !236
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cf_dumpregs.__UNIQUE_ID_ddebug361, ptr noundef %3, ptr noundef nonnull @.str.59, i32 noundef %23) #7
  br label %do.body115

do.body115:                                       ; preds = %if.then104, %do.body92
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cf_dumpregs.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cf_dumpregs, %if.then127)) #7
          to label %do.body138 [label %if.then127], !srcloc !200

if.then127:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #9
  %vbase130 = getelementptr inbounds %struct.arasan_cf_dev, ptr %acdev, i32 0, i32 3
  %24 = ptrtoint ptr %vbase130 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vbase130, align 4
  %add.ptr131 = getelementptr i8, ptr %25, i32 20
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr131) #7, !srcloc !181
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !237
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cf_dumpregs.__UNIQUE_ID_ddebug362, ptr noundef %3, ptr noundef nonnull @.str.60, i32 noundef %27) #7
  br label %do.body138

do.body138:                                       ; preds = %if.then127, %do.body115
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cf_dumpregs.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cf_dumpregs, %if.then150)) #7
          to label %do.body161 [label %if.then150], !srcloc !200

if.then150:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #9
  %vbase153 = getelementptr inbounds %struct.arasan_cf_dev, ptr %acdev, i32 0, i32 3
  %28 = ptrtoint ptr %vbase153 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vbase153, align 4
  %add.ptr154 = getelementptr i8, ptr %29, i32 28
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr154) #7, !srcloc !181
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !238
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cf_dumpregs.__UNIQUE_ID_ddebug363, ptr noundef %3, ptr noundef nonnull @.str.61, i32 noundef %31) #7
  br label %do.body161

do.body161:                                       ; preds = %if.then150, %do.body138
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cf_dumpregs.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cf_dumpregs, %if.then173)) #7
          to label %do.body184 [label %if.then173], !srcloc !200

if.then173:                                       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #9
  %vbase176 = getelementptr inbounds %struct.arasan_cf_dev, ptr %acdev, i32 0, i32 3
  %32 = ptrtoint ptr %vbase176 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vbase176, align 4
  %add.ptr177 = getelementptr i8, ptr %33, i32 2048
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr177) #7, !srcloc !181
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !239
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cf_dumpregs.__UNIQUE_ID_ddebug364, ptr noundef %3, ptr noundef nonnull @.str.62, i32 noundef %35) #7
  br label %do.body184

do.body184:                                       ; preds = %if.then173, %do.body161
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cf_dumpregs.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cf_dumpregs, %if.then196)) #7
          to label %do.body207 [label %if.then196], !srcloc !200

if.then196:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #9
  %vbase199 = getelementptr inbounds %struct.arasan_cf_dev, ptr %acdev, i32 0, i32 3
  %36 = ptrtoint ptr %vbase199 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vbase199, align 4
  %add.ptr200 = getelementptr i8, ptr %37, i32 2052
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr200) #7, !srcloc !181
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !240
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cf_dumpregs.__UNIQUE_ID_ddebug365, ptr noundef %3, ptr noundef nonnull @.str.63, i32 noundef %39) #7
  br label %do.body207

do.body207:                                       ; preds = %if.then196, %do.body184
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cf_dumpregs.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cf_dumpregs, %if.then219)) #7
          to label %do.body230 [label %if.then219], !srcloc !200

if.then219:                                       ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #9
  %vbase222 = getelementptr inbounds %struct.arasan_cf_dev, ptr %acdev, i32 0, i32 3
  %40 = ptrtoint ptr %vbase222 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vbase222, align 4
  %add.ptr223 = getelementptr i8, ptr %41, i32 2056
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr223) #7, !srcloc !181
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !241
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cf_dumpregs.__UNIQUE_ID_ddebug366, ptr noundef %3, ptr noundef nonnull @.str.64, i32 noundef %43) #7
  br label %do.body230

do.body230:                                       ; preds = %if.then219, %do.body207
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cf_dumpregs.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cf_dumpregs, %if.then242)) #7
          to label %do.end245 [label %if.then242], !srcloc !200

if.then242:                                       ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cf_dumpregs.__UNIQUE_ID_ddebug367, ptr noundef %3, ptr noundef nonnull @.str.65) #7
  br label %do.end245

do.end245:                                        ; preds = %if.then242, %do.body230
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_callback(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_completion = getelementptr inbounds %struct.arasan_cf_dev, ptr %dev, i32 0, i32 8
  tail call void @complete(ptr noundef %dma_completion) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_interrupt(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_push_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_freeze(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_queuecmd(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_ioctl(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_slave_config(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_slave_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_unlock_native_capacity(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arasan_cf_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ports = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %dma_chan = getelementptr inbounds %struct.arasan_cf_dev, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_chan, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 47
  %10 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %11(ptr noundef nonnull %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @cf_exit(ptr noundef %5)
  %call3 = tail call i32 @ata_host_suspend(ptr noundef %1, [1 x i32] [i32 2]) #7
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arasan_cf_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ports = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %call1 = tail call fastcc i32 @cf_init(ptr noundef %5)
  tail call void @ata_host_resume(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !44, !46, !48, !49, !50, !51, !52, !54, !56, !58, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !159, !160, !161, !163, !164, !165, !167, !169}
!llvm.named.register.sp = !{!171}
!llvm.module.flags = !{!172, !173, !174, !175, !176, !177, !178, !179}
!llvm.ident = !{!180}

!0 = !{ptr @__initcall__kmod_pata_arasan_cf__373_975_arasan_cf_driver_init6, !1, !"__initcall__kmod_pata_arasan_cf__373_975_arasan_cf_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_arasan_cf.c", i32 975, i32 1}
!2 = !{ptr @__exitcall_arasan_cf_driver_exit, !1, !"__exitcall_arasan_cf_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author374, !4, !"__UNIQUE_ID_author374", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_arasan_cf.c", i32 977, i32 1}
!5 = !{ptr @__UNIQUE_ID_description375, !6, !"__UNIQUE_ID_description375", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_arasan_cf.c", i32 978, i32 1}
!7 = !{ptr @__UNIQUE_ID_file376, !8, !"__UNIQUE_ID_file376", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_arasan_cf.c", i32 979, i32 1}
!9 = !{ptr @__UNIQUE_ID_license377, !8, !"__UNIQUE_ID_license377", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias378, !11, !"__UNIQUE_ID_alias378", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_arasan_cf.c", i32 980, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/ata/pata_arasan_cf.c", i32 969, i32 11}
!14 = !{ptr @arasan_cf_driver, !15, !"arasan_cf_driver", i1 false, i1 false}
!15 = !{!"../drivers/ata/pata_arasan_cf.c", i32 965, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_arasan_cf.c", i32 811, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @arasan_cf_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @arasan_cf_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_arasan_cf.c", i32 842, i32 3}
!26 = !{ptr @arasan_cf_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @arasan_cf_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/ata/pata_arasan_cf.c", i32 848, i32 3}
!30 = !{ptr @arasan_cf_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @arasan_cf_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/ata/pata_arasan_cf.c", i32 855, i32 3}
!34 = !{ptr @arasan_cf_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @arasan_cf_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @arasan_cf_probe.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/ata/pata_arasan_cf.c", i32 869, i32 2}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @arasan_cf_probe.__key.16, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/ata/pata_arasan_cf.c", i32 870, i32 2}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @arasan_cf_probe.__key.18, !40, !"__key", i1 false, i1 false}
!43 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/ata/pata_arasan_cf.c", i32 900, i32 20}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/ata/pata_arasan_cf.c", i32 623, i32 3}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @arasan_cf_interrupt._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @arasan_cf_interrupt._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @arasan_cf_ops, !53, !"arasan_cf_ops", i1 false, i1 false}
!53 = !{!"../drivers/ata/pata_arasan_cf.c", i32 785, i32 35}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../drivers/ata/pata_arasan_cf.c", i32 705, i32 3}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/libata.h", i32 2045, i32 3}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ata_wait_idle.__UNIQUE_ID_ddebug286, !57, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../include/trace/events/libata.h", i32 317, i32 1}
!64 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!65 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!66 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!69 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../include/trace/events/libata.h", i32 409, i32 1}
!72 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/ata/pata_arasan_cf.c", i32 733, i32 3}
!75 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @arasan_cf_set_piomode._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @arasan_cf_set_piomode._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/ata/pata_arasan_cf.c", i32 771, i32 3}
!80 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @arasan_cf_set_dmamode._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @arasan_cf_set_dmamode._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @init_completion.__key, !84, !"__key", i1 false, i1 false}
!84 = !{!"../include/linux/completion.h", i32 87, i32 2}
!85 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/ata/pata_arasan_cf.c", i32 530, i32 55}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/ata/pata_arasan_cf.c", i32 532, i32 3}
!90 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @data_xfer._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @data_xfer._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/ata/pata_arasan_cf.c", i32 477, i32 5}
!95 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @sg_xfer._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @sg_xfer._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/ata/pata_arasan_cf.c", i32 383, i32 3}
!100 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @wait4buf._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @wait4buf._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/ata/pata_arasan_cf.c", i32 405, i32 3}
!107 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @dma_xfer._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @dma_xfer._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/ata/pata_arasan_cf.c", i32 415, i32 3}
!112 = !{ptr @dma_xfer._entry.47, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @dma_xfer._entry_ptr.49, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/ata/pata_arasan_cf.c", i32 424, i32 3}
!116 = !{ptr @dma_xfer._entry.50, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @dma_xfer._entry_ptr.52, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/ata/pata_arasan_cf.c", i32 230, i32 2}
!120 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @cf_dumpregs.__UNIQUE_ID_ddebug356, !119, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/ata/pata_arasan_cf.c", i32 231, i32 2}
!124 = !{ptr @cf_dumpregs.__UNIQUE_ID_ddebug357, !123, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/ata/pata_arasan_cf.c", i32 232, i32 2}
!127 = !{ptr @cf_dumpregs.__UNIQUE_ID_ddebug358, !126, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/ata/pata_arasan_cf.c", i32 233, i32 2}
!130 = !{ptr @cf_dumpregs.__UNIQUE_ID_ddebug359, !129, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/ata/pata_arasan_cf.c", i32 234, i32 2}
!133 = !{ptr @cf_dumpregs.__UNIQUE_ID_ddebug360, !132, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!134 = !{ptr @.str.59, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/ata/pata_arasan_cf.c", i32 235, i32 2}
!136 = !{ptr @cf_dumpregs.__UNIQUE_ID_ddebug361, !135, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/ata/pata_arasan_cf.c", i32 236, i32 2}
!139 = !{ptr @cf_dumpregs.__UNIQUE_ID_ddebug362, !138, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/ata/pata_arasan_cf.c", i32 237, i32 2}
!142 = !{ptr @cf_dumpregs.__UNIQUE_ID_ddebug363, !141, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!143 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/ata/pata_arasan_cf.c", i32 238, i32 2}
!145 = !{ptr @cf_dumpregs.__UNIQUE_ID_ddebug364, !144, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/ata/pata_arasan_cf.c", i32 239, i32 2}
!148 = !{ptr @cf_dumpregs.__UNIQUE_ID_ddebug365, !147, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!149 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/ata/pata_arasan_cf.c", i32 240, i32 2}
!151 = !{ptr @cf_dumpregs.__UNIQUE_ID_ddebug366, !150, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!152 = !{ptr @.str.65, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/ata/pata_arasan_cf.c", i32 241, i32 2}
!154 = !{ptr @cf_dumpregs.__UNIQUE_ID_ddebug367, !153, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!155 = !{ptr @.str.66, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/ata/pata_arasan_cf.c", i32 374, i32 44}
!157 = !{ptr @.str.67, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/ata/pata_arasan_cf.c", i32 315, i32 3}
!159 = !{ptr @.str.68, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @cf_init.__UNIQUE_ID_ddebug368, !158, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!161 = !{ptr @.str.69, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/ata/pata_arasan_cf.c", i32 321, i32 3}
!163 = !{ptr @cf_init._entry, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @cf_init._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @arasan_cf_sht, !166, !"arasan_cf_sht", i1 false, i1 false}
!166 = !{!"../drivers/ata/pata_arasan_cf.c", i32 221, i32 34}
!167 = !{ptr @arasan_cf_id_table, !168, !"arasan_cf_id_table", i1 false, i1 false}
!168 = !{!"../drivers/ata/pata_arasan_cf.c", i32 958, i32 34}
!169 = !{ptr @arasan_cf_pm_ops, !170, !"arasan_cf_pm_ops", i1 false, i1 false}
!170 = !{!"../drivers/ata/pata_arasan_cf.c", i32 955, i32 8}
!171 = !{!"sp"}
!172 = !{i32 1, !"wchar_size", i32 2}
!173 = !{i32 1, !"min_enum_size", i32 4}
!174 = !{i32 8, !"branch-target-enforcement", i32 0}
!175 = !{i32 8, !"sign-return-address", i32 0}
!176 = !{i32 8, !"sign-return-address-all", i32 0}
!177 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!178 = !{i32 7, !"uwtable", i32 1}
!179 = !{i32 7, !"frame-pointer", i32 2}
!180 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!181 = !{i64 6375725}
!182 = !{i64 2156298687}
!183 = !{i64 2156299563}
!184 = !{i64 2156299789}
!185 = !{i64 6375307}
!186 = !{i64 2156300203}
!187 = !{i64 2156301501}
!188 = !{i64 2156302436}
!189 = !{i64 2156287200}
!190 = !{i64 2156287471}
!191 = !{i64 2156291946}
!192 = !{i64 2156292881}
!193 = !{i64 6375505}
!194 = !{i64 2153914850}
!195 = !{i64 2156266723}
!196 = !{i64 2156267656}
!197 = !{i64 2156268675}
!198 = !{i64 2156269604}
!199 = !{!"branch_weights", i32 2000, i32 1}
!200 = !{i64 2148806066, i64 2148806071, i64 2148806084, i64 2148806128, i64 2148806162, i64 2148806183}
!201 = !{i64 2156274583}
!202 = !{i64 2156275021}
!203 = !{i64 2156262154}
!204 = !{i64 2156262789}
!205 = !{i64 2156260881}
!206 = !{i64 2156261294}
!207 = !{i64 2156270131}
!208 = !{i64 2156264094}
!209 = !{i64 2156264337}
!210 = !{i64 2156265341}
!211 = !{i64 2156276714}
!212 = !{i64 2156277647}
!213 = !{i64 2156306499}
!214 = !{i64 2156306751}
!215 = !{i64 2156310886}
!216 = !{i64 2156311139}
!217 = !{i64 2156311821}
!218 = !{i64 2156312057}
!219 = !{i64 2156313136}
!220 = !{i64 2156313658}
!221 = !{i64 2156315466}
!222 = !{i64 2156315878}
!223 = !{i64 2156316301}
!224 = !{i64 2156305034}
!225 = !{i64 2156305969}
!226 = !{i64 2155720611}
!227 = !{i64 2155720808}
!228 = !{i64 2149366803}
!229 = !{i64 2149367839}
!230 = !{i64 2155775202}
!231 = !{i64 2155775417}
!232 = !{i64 2156233315}
!233 = !{i64 2156236078}
!234 = !{i64 2156238828}
!235 = !{i64 2156241591}
!236 = !{i64 2156244354}
!237 = !{i64 2156247104}
!238 = !{i64 2156249880}
!239 = !{i64 2156252656}
!240 = !{i64 2156255471}
!241 = !{i64 2156258286}
