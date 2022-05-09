; ModuleID = '/llk/IR_all_yes/drivers/ata/sata_dwc_460ex.c_pt.bc'
source_filename = "../drivers/ata/sata_dwc_460ex.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.84 }
%union.anon.84 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dw_dma_slave = type { ptr, i8, i8, i8, i8, i8, i8 }
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
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.sata_dwc_device = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.92, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.92 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.sata_dwc_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], i32, i32, i32, [192 x i32], [256 x i32] }
%struct.dw_dma_chip = type { ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.sata_dwc_device_port = type { ptr, [32 x i32], [32 x i32], ptr, [32 x ptr], i32 }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_sata_dwc_460ex__410_1250_sata_dwc_driver_init6 = internal global ptr @sata_dwc_driver_init, section ".initcall6.init", align 4
@sata_dwc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sata_dwc_probe, ptr @sata_dwc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sata_dwc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sata_dwc_driver_exit = internal global ptr @sata_dwc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file411 = internal constant [47 x i8] c"sata_dwc_460ex.file=drivers/ata/sata_dwc_460ex\00", section ".modinfo", align 1
@__UNIQUE_ID_license412 = internal constant [27 x i8] c"sata_dwc_460ex.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author413 = internal constant [57 x i8] c"sata_dwc_460ex.author=Mark Miesfeld <mmiesfeld@amcc.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description414 = internal constant [77 x i8] c"sata_dwc_460ex.description=DesignWare Cores SATA controller low level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version415 = internal constant [27 x i8] c"sata_dwc_460ex.version=1.3\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sata_dwc_460ex\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.3\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sata-dwc\00", [23 x i8] zeroinitializer }, align 32
@sata_dwc_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amcc,sata-460ex\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sata_dwc_port_info = internal constant { [1 x %struct.ata_port_info], [36 x i8] } { [1 x %struct.ata_port_info] [%struct.ata_port_info { i32 1026, i32 0, i32 31, i32 0, i32 127, ptr @sata_dwc_ops, ptr null }], [36 x i8] zeroinitializer }, align 32
@sata_dwc_probe.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 1, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sata_dwc_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/ata/sata_dwc_460ex.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ioremap done for SATA register address\0A\00", [56 x i8] zeroinitializer }, align 32
@sata_dwc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 1169, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"id %d, controller version %c.%c%c\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sata_dwc_probe._entry_ptr = internal global ptr @sata_dwc_probe._entry, section ".printk_index", align 4
@sata_dwc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.5, i32 1180, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no SATA DMA irq\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sata_dwc_probe._entry_ptr.13 = internal global ptr @sata_dwc_probe._entry.10, section ".printk_index", align 4
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dmas\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sata-phy\00", [23 x i8] zeroinitializer }, align 32
@sata_dwc_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.3, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.3, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 8191, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_ncq_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@sata_dwc_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 1207, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to activate host\00", [40 x i8] zeroinitializer }, align 32
@sata_dwc_probe._entry_ptr.18 = internal global ptr @sata_dwc_probe._entry.16, section ".printk_index", align 4
@sata_dwc_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr @sata_dwc_qc_issue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sata_dwc_hardreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sata_dwc_error_handler, ptr null, ptr null, ptr null, ptr null, ptr @sata_dwc_scr_read, ptr @sata_dwc_scr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sata_dwc_port_start, ptr @sata_dwc_port_stop, ptr null, ptr @sata_dwc_dev_select, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sata_dwc_bmdma_setup, ptr @sata_dwc_bmdma_start, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_sff_port_ops }, [44 x i8] zeroinitializer }, align 32
@ata_sff_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@dma_dwc_xfer_setup.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.5, ptr @.str.20, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dma_dwc_xfer_setup\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s sg: 0x%p, count: %d addr: %pa\0A\00", [62 x i8] zeroinitializer }, align 32
@dma_dwc_xfer_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 314, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DMA not pending tag=0x%02x pending=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dma_dwc_xfer_done\00", [46 x i8] zeroinitializer }, align 32
@dma_dwc_xfer_done._entry_ptr = internal global ptr @dma_dwc_xfer_done._entry, section ".printk_index", align 4
@sata_dwc_clear_dmacr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 707, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%s DMA protocol RX and TX DMA not pending tag=0x%02x pending=%d dmacr: 0x%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sata_dwc_clear_dmacr\00", [43 x i8] zeroinitializer }, align 32
@sata_dwc_clear_dmacr._entry_ptr = internal global ptr @sata_dwc_clear_dmacr._entry, section ".printk_index", align 4
@sata_dwc_dma_xfer_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 723, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"failed to get qc\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sata_dwc_dma_xfer_complete\00", [37 x i8] zeroinitializer }, align 32
@sata_dwc_dma_xfer_complete._entry_ptr = internal global ptr @sata_dwc_dma_xfer_complete._entry, section ".printk_index", align 4
@sata_dwc_dma_xfer_complete._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.5, i32 732, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s DMA protocol RX and TX DMA not pending dmacr: 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@sata_dwc_dma_xfer_complete._entry_ptr.29 = internal global ptr @sata_dwc_dma_xfer_complete._entry.27, section ".printk_index", align 4
@sata_dwc_qc_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.5, i32 753, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TX DMA PENDING\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sata_dwc_qc_complete\00", [43 x i8] zeroinitializer }, align 32
@sata_dwc_qc_complete._entry_ptr = internal global ptr @sata_dwc_qc_complete._entry, section ".printk_index", align 4
@sata_dwc_qc_complete._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.5, i32 755, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX DMA PENDING\0A\00", [16 x i8] zeroinitializer }, align 32
@sata_dwc_qc_complete._entry_ptr.34 = internal global ptr @sata_dwc_qc_complete._entry.32, section ".printk_index", align 4
@sata_dwc_qc_complete.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.5, ptr @.str.35, i8 0, i8 -67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"QC complete cmd=0x%02x status=0x%02x ata%u: protocol=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@__tracepoint_ata_tf_load = external dso_local global %struct.tracepoint, align 4
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/libata.h\00", [34 x i8] zeroinitializer }, align 32
@trace_ata_tf_load.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_ata_exec_command = external dso_local global %struct.tracepoint, align 4
@trace_ata_exec_command.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sata_dwc_scr_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.5, i32 368, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Incorrect SCR offset 0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sata_dwc_scr_read\00", [46 x i8] zeroinitializer }, align 32
@sata_dwc_scr_read._entry_ptr = internal global ptr @sata_dwc_scr_read._entry, section ".printk_index", align 4
@sata_dwc_scr_read.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str.5, ptr @.str.41, i8 0, i8 93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: id=%d reg=%d val=0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@sata_dwc_scr_write.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.42, ptr @.str.5, ptr @.str.41, i8 0, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sata_dwc_scr_write\00", [45 x i8] zeroinitializer }, align 32
@sata_dwc_scr_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.42, ptr @.str.5, i32 385, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@sata_dwc_scr_write._entry_ptr = internal global ptr @sata_dwc_scr_write._entry, section ".printk_index", align 4
@sata_dwc_port_start.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str.5, ptr @.str.44, i8 0, i8 -45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sata_dwc_port_start\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: port_no=%d\0A\00", [16 x i8] zeroinitializer }, align 32
@sata_dwc_port_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.5, i32 850, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: no ap->host->dev\0A\00", [42 x i8] zeroinitializer }, align 32
@sata_dwc_port_start._entry_ptr = internal global ptr @sata_dwc_port_start._entry, section ".printk_index", align 4
@sata_dwc_port_start.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str.5, ptr @.str.46, i8 0, i8 -37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: clearing TXCHEN, RXCHEN in DMAC\0A\00", [59 x i8] zeroinitializer }, align 32
@sata_dwc_port_start.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str.5, ptr @.str.47, i8 0, i8 -35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: setting burst size in DBTSR\0A\00", [63 x i8] zeroinitializer }, align 32
@sata_dwc_port_start.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str.5, ptr @.str.48, i8 0, i8 -33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: done\0A\00", [22 x i8] zeroinitializer }, align 32
@sata_dwc_port_start.__UNIQUE_ID_ddebug406 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str.5, ptr @.str.49, i8 0, i8 -32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: fail. ap->id = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sata-dma\00", [23 x i8] zeroinitializer }, align 32
@sata_dwc_dma_get_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.5, i32 822, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to allocate dma channel: %ld\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sata_dwc_dma_get_channel\00", [39 x i8] zeroinitializer }, align 32
@sata_dwc_dma_get_channel._entry_ptr = internal global ptr @sata_dwc_dma_get_channel._entry, section ".printk_index", align 4
@sata_dwc_dma_dws = internal global { %struct.dw_dma_slave, [20 x i8] } { %struct.dw_dma_slave { ptr null, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@sata_dwc_dma_get_channel_old._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.5, i32 219, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: dma channel unavailable\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sata_dwc_dma_get_channel_old\00", [35 x i8] zeroinitializer }, align 32
@sata_dwc_dma_get_channel_old._entry_ptr = internal global ptr @sata_dwc_dma_get_channel_old._entry, section ".printk_index", align 4
@sata_dwc_port_stop.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.55, ptr @.str.5, ptr @.str.56, i8 0, i8 -29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sata_dwc_port_stop\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: ap->id = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@sata_dwc_bmdma_start_by_tag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.5, i32 978, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s: Command not pending cmd_issued=%d (tag=%d) DMA NOT started\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sata_dwc_bmdma_start_by_tag\00", [36 x i8] zeroinitializer }, align 32
@sata_dwc_bmdma_start_by_tag._entry_ptr = internal global ptr @sata_dwc_bmdma_start_by_tag._entry, section ".printk_index", align 4
@sata_dwc_bmdma_start_by_tag._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.5, i32 986, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: ****** SError=0x%08x ******\0A\00", [63 x i8] zeroinitializer }, align 32
@sata_dwc_bmdma_start_by_tag._entry_ptr.62 = internal global ptr @sata_dwc_bmdma_start_by_tag._entry.60, section ".printk_index", align 4
@sata_dwc_enable_interrupts.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.63, ptr @.str.5, ptr @.str.64, i8 0, i8 -60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sata_dwc_enable_interrupts\00", [37 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: INTMR = 0x%08x, ERRMR = 0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@sata_dwc_dma_init_old._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.65, ptr @.str.5, i32 242, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sata_dwc_dma_init_old\00", [42 x i8] zeroinitializer }, align 32
@sata_dwc_dma_init_old._entry_ptr = internal global ptr @sata_dwc_dma_init_old._entry, section ".printk_index", align 4
@sata_dwc_isr.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.5, ptr @.str.67, i8 0, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sata_dwc_isr\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s intpr=0x%08x active_tag=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@sata_dwc_isr.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.5, ptr @.str.68, i8 0, i8 124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: NEWFP tag=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@sata_dwc_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.66, ptr @.str.5, i32 501, ptr @.str.70, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CMD tag=%d not pending?\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sata_dwc_isr._entry_ptr = internal global ptr @sata_dwc_isr._entry, section ".printk_index", align 4
@sata_dwc_isr._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.66, ptr @.str.5, i32 507, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@sata_dwc_isr._entry_ptr.72 = internal global ptr @sata_dwc_isr._entry.71, section ".printk_index", align 4
@sata_dwc_isr._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.66, ptr @.str.5, i32 538, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s interrupt with no active qc qc=%p\0A\00", [58 x i8] zeroinitializer }, align 32
@sata_dwc_isr._entry_ptr.75 = internal global ptr @sata_dwc_isr._entry.73, section ".printk_index", align 4
@sata_dwc_isr.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.5, ptr @.str.76, i8 0, i8 -119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"interrupt ATA_ERR (0x%x)\0A\00", [38 x i8] zeroinitializer }, align 32
@sata_dwc_isr.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.5, ptr @.str.77, i8 0, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s non-NCQ cmd interrupt, protocol: %s\0A\00", [56 x i8] zeroinitializer }, align 32
@sata_dwc_isr._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.66, ptr @.str.5, i32 571, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: DMA not pending intpr=0x%08x status=0x%08x pending=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@sata_dwc_isr._entry_ptr.80 = internal global ptr @sata_dwc_isr._entry.78, section ".printk_index", align 4
@sata_dwc_isr.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.5, ptr @.str.81, i8 0, i8 -106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s NCQ:sactive=0x%08x  sactive_issued=0x%08x tag_mask=0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@sata_dwc_isr._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.66, ptr @.str.5, i32 609, ptr @.str.70, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Bad tag mask?  sactive=0x%08x sactive_issued=0x%08x  tag_mask=0x%08x\0A\00", [58 x i8] zeroinitializer }, align 32
@sata_dwc_isr._entry_ptr.84 = internal global ptr @sata_dwc_isr._entry.82, section ".printk_index", align 4
@sata_dwc_isr.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.5, ptr @.str.85, i8 0, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s ATA status register=0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@sata_dwc_isr._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.66, ptr @.str.5, i32 628, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@sata_dwc_isr._entry_ptr.87 = internal global ptr @sata_dwc_isr._entry.86, section ".printk_index", align 4
@sata_dwc_isr.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.5, ptr @.str.88, i8 0, i8 -96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s ATA_ERR (0x%x)\0A\00", [45 x i8] zeroinitializer }, align 32
@sata_dwc_isr.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.5, ptr @.str.89, i8 0, i8 -94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s NCQ command, protocol: %s\0A\00", [34 x i8] zeroinitializer }, align 32
@sata_dwc_isr._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.66, ptr @.str.5, i32 654, ptr @.str.70, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: DMA not pending?\0A\00", [42 x i8] zeroinitializer }, align 32
@sata_dwc_isr._entry_ptr.92 = internal global ptr @sata_dwc_isr._entry.90, section ".printk_index", align 4
@sata_dwc_isr._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.66, ptr @.str.5, i32 666, ptr @.str.70, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"STILL BUSY IRQ ata%d: irq trap\0A\00", [32 x i8] zeroinitializer }, align 32
@sata_dwc_isr._entry_ptr.95 = internal global ptr @sata_dwc_isr._entry.93, section ".printk_index", align 4
@sata_dwc_isr.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.5, ptr @.str.96, i8 0, i8 -86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"More completed - sactive=0x%x sactive2=0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@sata_dwc_error_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.5, i32 432, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"%s SCR_ERROR=0x%08x intpr=0x%08x status=0x%08x dma_intp=%d pending=%d issued=%d\00", [48 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sata_dwc_error_intr\00", [44 x i8] zeroinitializer }, align 32
@sata_dwc_error_intr._entry_ptr = internal global ptr @sata_dwc_error_intr._entry, section ".printk_index", align 4
@__tracepoint_ata_bmdma_start = external dso_local global %struct.tracepoint, align 4
@trace_ata_bmdma_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ATA no data\00", [20 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ATA PIO\00", [24 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ATA DMA\00", [24 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ATA NCQ\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ATA NCQ no data\00", [16 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ATAPI no data\00", [18 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ATAPI PIO\00", [22 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ATAPI DMA\00", [22 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@ata_ncq_sdev_groups = external dso_local global [0 x ptr], align 4
@sata_dwc_remove.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.108, ptr @.str.5, ptr @.str.109, i8 1, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sata_dwc_remove\00", [16 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"done\0A\00", [26 x i8] zeroinitializer }, align 32
@switch.table.sata_dwc_isr = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.107, ptr @.str.103, ptr @.str.107, ptr @.str.102, ptr @.str.107, ptr @.str.104, ptr @.str.105, ptr @.str.106], [52 x i8] zeroinitializer }, align 32
@switch.table.get_prot_descript = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.107, ptr @.str.103, ptr @.str.107, ptr @.str.102, ptr @.str.107, ptr @.str.104, ptr @.str.105, ptr @.str.106], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.111 = private unnamed_addr constant [16 x i8] c"sata_dwc_driver\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1241, i32 31 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1255, i32 1 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1243, i32 11 }
@___asan_gen_.126 = private unnamed_addr constant [15 x i8] c"sata_dwc_match\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1235, i32 34 }
@___asan_gen_.129 = private unnamed_addr constant [19 x i8] c"sata_dwc_port_info\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1119, i32 35 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1155, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1169, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1180, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1185, i32 28 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1192, i32 42 }
@___asan_gen_.168 = private unnamed_addr constant [13 x i8] c"sata_dwc_sht\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1081, i32 34 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1207, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [13 x i8] c"sata_dwc_ops\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1099, i32 35 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 358, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 313, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 705, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 723, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 729, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 753, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 755, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 756, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant [33 x i8] c"../include/trace/events/libata.h\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 317, i32 1 }
@___asan_gen_.244 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 108, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 367, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 373, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 381, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 384, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 845, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 850, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 878, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 883, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 893, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 899, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 819, i32 39 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 821, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant [17 x i8] c"sata_dwc_dma_dws\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 186, i32 28 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 219, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 908, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 1169, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 976, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 985, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 782, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 242, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 484, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 499, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 501, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 507, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 536, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 549, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 555, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 568, i32 5 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 601, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 607, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 614, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 628, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 639, i32 4 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 647, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 653, i32 5 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 665, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 678, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 429, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 269, i32 10 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 271, i32 10 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 273, i32 10 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 275, i32 10 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 277, i32 10 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 279, i32 10 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 281, i32 10 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 283, i32 10 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 285, i32 10 }
@___asan_gen_.462 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.463 = private constant [32 x i8] c"../drivers/ata/sata_dwc_460ex.c\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 1231, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant [26 x i8] c"switch.table.sata_dwc_isr\00", align 1
@___asan_gen_.466 = private unnamed_addr constant [31 x i8] c"switch.table.get_prot_descript\00", align 1
@llvm.compiler.used = appending global [155 x ptr] [ptr @__UNIQUE_ID_author413, ptr @__UNIQUE_ID_description414, ptr @__UNIQUE_ID_file411, ptr @__UNIQUE_ID_license412, ptr @__UNIQUE_ID_version415, ptr @__exitcall_sata_dwc_driver_exit, ptr @__initcall__kmod_sata_dwc_460ex__410_1250_sata_dwc_driver_init6, ptr @__modver_attr, ptr @dma_dwc_xfer_done._entry, ptr @dma_dwc_xfer_done._entry_ptr, ptr @sata_dwc_bmdma_start_by_tag._entry, ptr @sata_dwc_bmdma_start_by_tag._entry.60, ptr @sata_dwc_bmdma_start_by_tag._entry_ptr, ptr @sata_dwc_bmdma_start_by_tag._entry_ptr.62, ptr @sata_dwc_clear_dmacr._entry, ptr @sata_dwc_clear_dmacr._entry_ptr, ptr @sata_dwc_dma_get_channel._entry, ptr @sata_dwc_dma_get_channel._entry_ptr, ptr @sata_dwc_dma_get_channel_old._entry, ptr @sata_dwc_dma_get_channel_old._entry_ptr, ptr @sata_dwc_dma_init_old._entry, ptr @sata_dwc_dma_init_old._entry_ptr, ptr @sata_dwc_dma_xfer_complete._entry, ptr @sata_dwc_dma_xfer_complete._entry.27, ptr @sata_dwc_dma_xfer_complete._entry_ptr, ptr @sata_dwc_dma_xfer_complete._entry_ptr.29, ptr @sata_dwc_driver_exit, ptr @sata_dwc_error_intr._entry, ptr @sata_dwc_error_intr._entry_ptr, ptr @sata_dwc_isr._entry, ptr @sata_dwc_isr._entry.71, ptr @sata_dwc_isr._entry.73, ptr @sata_dwc_isr._entry.78, ptr @sata_dwc_isr._entry.82, ptr @sata_dwc_isr._entry.86, ptr @sata_dwc_isr._entry.90, ptr @sata_dwc_isr._entry.93, ptr @sata_dwc_isr._entry_ptr, ptr @sata_dwc_isr._entry_ptr.72, ptr @sata_dwc_isr._entry_ptr.75, ptr @sata_dwc_isr._entry_ptr.80, ptr @sata_dwc_isr._entry_ptr.84, ptr @sata_dwc_isr._entry_ptr.87, ptr @sata_dwc_isr._entry_ptr.92, ptr @sata_dwc_isr._entry_ptr.95, ptr @sata_dwc_port_start._entry, ptr @sata_dwc_port_start._entry_ptr, ptr @sata_dwc_probe._entry, ptr @sata_dwc_probe._entry.10, ptr @sata_dwc_probe._entry.16, ptr @sata_dwc_probe._entry_ptr, ptr @sata_dwc_probe._entry_ptr.13, ptr @sata_dwc_probe._entry_ptr.18, ptr @sata_dwc_qc_complete._entry, ptr @sata_dwc_qc_complete._entry.32, ptr @sata_dwc_qc_complete._entry_ptr, ptr @sata_dwc_qc_complete._entry_ptr.34, ptr @sata_dwc_scr_read._entry, ptr @sata_dwc_scr_read._entry_ptr, ptr @sata_dwc_scr_write._entry, ptr @sata_dwc_scr_write._entry_ptr, ptr @sata_dwc_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @sata_dwc_match, ptr @sata_dwc_port_info, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @sata_dwc_sht, ptr @.str.17, ptr @sata_dwc_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @sata_dwc_dma_dws, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @switch.table.sata_dwc_isr, ptr @switch.table.get_prot_descript], section "llvm.metadata"
@0 = internal global [120 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_dwc_xfer_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_clear_dmacr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_dma_xfer_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_dma_xfer_complete._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_qc_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_qc_complete._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_scr_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_scr_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_port_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_dma_get_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_dma_dws to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_dma_get_channel_old._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_bmdma_start_by_tag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_bmdma_start_by_tag._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_dma_init_old._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_isr._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_isr._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_isr._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_isr._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_isr._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_isr._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_isr._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_dwc_error_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sata_dwc_isr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.get_prot_descript to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_dwc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sata_dwc_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sata_dwc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @sata_dwc_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_dwc_probe(ptr noundef %ofdev) #2 align 64 {
entry:
  %pi = alloca %struct.ata_port_info, align 4
  %ppi = alloca [2 x ptr], align 4
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pi) #11
  %2 = call ptr @memcpy(ptr %pi, ptr @sata_dwc_port_info, i32 28)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #11
  %3 = getelementptr inbounds [2 x ptr], ptr %ppi, i32 0, i32 1
  %4 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pi, ptr %ppi, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #11
  %6 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !268
  %call = call ptr @ata_host_alloc_pinfo(ptr noundef %dev1, ptr noundef nonnull %ppi, i32 noundef 1) #11
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 36, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call, null
  %tobool3.not = icmp eq ptr %call.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.ata_host, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %private_data, align 4
  %call4 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %ofdev, i32 noundef 0, ptr noundef nonnull %res) #11
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %do.body

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %call4 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_probe.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_probe, %if.then13)) #11
          to label %do.end [label %if.then13], !srcloc !269

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_probe.__UNIQUE_ID_ddebug408, ptr noundef %dev1, ptr noundef nonnull @.str.6) #11
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %add.ptr = getelementptr i8, ptr %call4, i32 100
  %sata_dwc_regs = getelementptr inbounds %struct.sata_dwc_device, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %sata_dwc_regs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %sata_dwc_regs, align 4
  %10 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %res, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add15 = add i32 %13, 1024
  %dmadr = getelementptr inbounds %struct.sata_dwc_device, ptr %call.i, i32 0, i32 7
  %14 = ptrtoint ptr %dmadr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add15, ptr %dmadr, align 4
  %ports = getelementptr inbounds %struct.ata_host, ptr %call, i32 0, i32 12
  %15 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ports, align 4
  %ioaddr = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call4, ptr %ioaddr, align 32
  %add.ptr16 = getelementptr i8, ptr %call4, i32 36
  %18 = load ptr, ptr %ports, align 4
  %scr_addr = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 8, i32 14
  %19 = ptrtoint ptr %scr_addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr16, ptr %scr_addr, align 8
  %20 = load ptr, ptr %ports, align 4
  %ioaddr22 = getelementptr inbounds %struct.ata_port, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %ioaddr22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call4, ptr %ioaddr22, align 4
  %data_addr.i = getelementptr inbounds %struct.ata_port, ptr %20, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %data_addr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call4, ptr %data_addr.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %call4, i32 4
  %error_addr.i = getelementptr inbounds %struct.ata_port, ptr %20, i32 0, i32 8, i32 2
  %23 = ptrtoint ptr %error_addr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr2.i, ptr %error_addr.i, align 4
  %feature_addr.i = getelementptr inbounds %struct.ata_port, ptr %20, i32 0, i32 8, i32 3
  %24 = ptrtoint ptr %feature_addr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr2.i, ptr %feature_addr.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %call4, i32 8
  %nsect_addr.i = getelementptr inbounds %struct.ata_port, ptr %20, i32 0, i32 8, i32 4
  %25 = ptrtoint ptr %nsect_addr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr4.i, ptr %nsect_addr.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %call4, i32 12
  %lbal_addr.i = getelementptr inbounds %struct.ata_port, ptr %20, i32 0, i32 8, i32 5
  %26 = ptrtoint ptr %lbal_addr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr5.i, ptr %lbal_addr.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %call4, i32 16
  %lbam_addr.i = getelementptr inbounds %struct.ata_port, ptr %20, i32 0, i32 8, i32 6
  %27 = ptrtoint ptr %lbam_addr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr6.i, ptr %lbam_addr.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %call4, i32 20
  %lbah_addr.i = getelementptr inbounds %struct.ata_port, ptr %20, i32 0, i32 8, i32 7
  %28 = ptrtoint ptr %lbah_addr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr7.i, ptr %lbah_addr.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %call4, i32 24
  %device_addr.i = getelementptr inbounds %struct.ata_port, ptr %20, i32 0, i32 8, i32 8
  %29 = ptrtoint ptr %device_addr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr8.i, ptr %device_addr.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %call4, i32 28
  %command_addr.i = getelementptr inbounds %struct.ata_port, ptr %20, i32 0, i32 8, i32 10
  %30 = ptrtoint ptr %command_addr.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr9.i, ptr %command_addr.i, align 4
  %status_addr.i = getelementptr inbounds %struct.ata_port, ptr %20, i32 0, i32 8, i32 9
  %31 = ptrtoint ptr %status_addr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr9.i, ptr %status_addr.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %call4, i32 32
  %altstatus_addr.i = getelementptr inbounds %struct.ata_port, ptr %20, i32 0, i32 8, i32 11
  %32 = ptrtoint ptr %altstatus_addr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr11.i, ptr %altstatus_addr.i, align 4
  %ctl_addr.i = getelementptr inbounds %struct.ata_port, ptr %20, i32 0, i32 8, i32 12
  %33 = ptrtoint ptr %ctl_addr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr11.i, ptr %ctl_addr.i, align 4
  %34 = load ptr, ptr %sata_dwc_regs, align 4
  %idr24 = getelementptr inbounds %struct.sata_dwc_regs, ptr %34, i32 0, i32 24
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %idr24) #11, !srcloc !270
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  %37 = ptrtoint ptr %sata_dwc_regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sata_dwc_regs, align 4
  %versionr29 = getelementptr inbounds %struct.sata_dwc_regs, ptr %38, i32 0, i32 23
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %versionr29) #11, !srcloc !270
  %40 = call i32 @llvm.bswap.i32(i32 %39)
  %versionr.sroa.0.0.extract.shift = lshr i32 %40, 24
  %versionr.sroa.5.0.extract.shift = lshr i32 %40, 16
  %versionr.sroa.6.0.extract.shift = lshr i32 %40, 8
  %conv37 = and i32 %versionr.sroa.5.0.extract.shift, 255
  %conv39 = and i32 %versionr.sroa.6.0.extract.shift, 255
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %36, i32 noundef %versionr.sroa.0.0.extract.shift, i32 noundef %conv37, i32 noundef %conv39) #14
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %dev1, ptr %call.i, align 4
  %42 = ptrtoint ptr %sata_dwc_regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sata_dwc_regs, align 4
  %intmr.i = getelementptr inbounds %struct.sata_dwc_regs, ptr %43, i32 0, i32 6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %intmr.i, i32 251658240) #11, !srcloc !271
  %44 = ptrtoint ptr %sata_dwc_regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sata_dwc_regs, align 4
  %errmr.i = getelementptr inbounds %struct.sata_dwc_regs, ptr %45, i32 0, i32 7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %errmr.i, i32 51379983) #11, !srcloc !271
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_enable_interrupts.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_probe, %if.then.i)) #11
          to label %sata_dwc_enable_interrupts.exit [label %if.then.i], !srcloc !269

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  %48 = ptrtoint ptr %sata_dwc_regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sata_dwc_regs, align 4
  %intmr5.i = getelementptr inbounds %struct.sata_dwc_regs, ptr %49, i32 0, i32 6
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %intmr5.i) #11, !srcloc !270
  %51 = call i32 @llvm.bswap.i32(i32 %50) #11
  %52 = ptrtoint ptr %sata_dwc_regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sata_dwc_regs, align 4
  %errmr10.i = getelementptr inbounds %struct.sata_dwc_regs, ptr %53, i32 0, i32 7
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %errmr10.i) #11, !srcloc !270
  %55 = call i32 @llvm.bswap.i32(i32 %54) #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_enable_interrupts.__UNIQUE_ID_ddebug401, ptr noundef %47, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63, i32 noundef %51, i32 noundef %55) #11
  br label %sata_dwc_enable_interrupts.exit

sata_dwc_enable_interrupts.exit:                  ; preds = %if.then.i, %do.end
  %call41 = call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41)
  %cmp = icmp eq i32 %call41, -1
  br i1 %cmp, label %do.end46, label %if.end47

do.end46:                                         ; preds = %sata_dwc_enable_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #14
  br label %cleanup

if.end47:                                         ; preds = %sata_dwc_enable_interrupts.exit
  %call48 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef null) #11
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.then50, label %if.end47.if.end55_crit_edge

if.end47.if.end55_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then50:                                        ; preds = %if.end47
  %call51 = call fastcc i32 @sata_dwc_dma_init_old(ptr noundef %ofdev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then50.if.end55_crit_edge, label %if.then50.cleanup_crit_edge

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then50.if.end55_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.end55:                                         ; preds = %if.then50.if.end55_crit_edge, %if.end47.if.end55_crit_edge
  %call56 = call ptr @devm_phy_optional_get(ptr noundef %dev1, ptr noundef nonnull @.str.15) #11
  %phy = getelementptr inbounds %struct.sata_dwc_device, ptr %call.i, i32 0, i32 6
  %56 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call56, ptr %phy, align 4
  %cmp.i130 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i130, label %if.then59, label %if.end62

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %call56 to i32
  br label %cleanup

if.end62:                                         ; preds = %if.end55
  %call64 = call i32 @phy_init(ptr noundef %call56) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %error_out

if.end67:                                         ; preds = %if.end62
  %call68 = call i32 @ata_host_activate(ptr noundef nonnull %call, i32 noundef %call41, ptr noundef nonnull @sata_dwc_isr, i32 noundef 0, ptr noundef nonnull @sata_dwc_sht) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end67.cleanup_crit_edge, label %do.end73

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #14
  br label %cleanup

error_out:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %phy, align 4
  %call76 = call i32 @phy_exit(ptr noundef %59) #11
  br label %cleanup

cleanup:                                          ; preds = %error_out, %do.end73, %if.end67.cleanup_crit_edge, %if.then59, %if.then50.cleanup_crit_edge, %do.end46, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then6 ], [ -19, %do.end46 ], [ %57, %if.then59 ], [ %call64, %error_out ], [ -12, %entry.cleanup_crit_edge ], [ %call51, %if.then50.cleanup_crit_edge ], [ 0, %do.end73 ], [ 0, %if.end67.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pi) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_dwc_remove(ptr noundef %ofdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  tail call void @ata_host_detach(ptr noundef %1) #11
  %phy = getelementptr inbounds %struct.sata_dwc_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %call2 = tail call i32 @phy_exit(ptr noundef %5) #11
  %dma.i = getelementptr inbounds %struct.sata_dwc_device, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.sata_dwc_dma_exit_old.exit_crit_edge, label %if.end.i

entry.sata_dwc_dma_exit_old.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sata_dwc_dma_exit_old.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @dw_dma_remove(ptr noundef nonnull %7) #11
  br label %sata_dwc_dma_exit_old.exit

sata_dwc_dma_exit_old.exit:                       ; preds = %if.end.i, %entry.sata_dwc_dma_exit_old.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_remove.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_remove, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !269

if.then:                                          ; preds = %sata_dwc_dma_exit_old.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_remove.__UNIQUE_ID_ddebug409, ptr noundef %dev1, ptr noundef nonnull @.str.109) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %sata_dwc_dma_exit_old.exit
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc_pinfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sata_dwc_dma_init_old(ptr noundef %pdev, ptr nocapture noundef %hsdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #11
  %dma = getelementptr inbounds %struct.sata_dwc_device, ptr %hsdev, i32 0, i32 8
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %dma, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %call.i, align 4
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %id6 = getelementptr inbounds %struct.dw_dma_chip, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %id6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %id6, align 4
  %call7 = tail call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef 1) #11
  %7 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma, align 4
  %irq = getelementptr inbounds %struct.dw_dma_chip, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call7, ptr %irq, align 4
  %10 = load ptr, ptr %dma, align 4
  %irq10 = getelementptr inbounds %struct.dw_dma_chip, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %irq10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp = icmp eq i32 %12, -1
  br i1 %cmp, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #14
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call13 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #11
  %13 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dma, align 4
  %regs = getelementptr inbounds %struct.dw_dma_chip, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call13, ptr %regs, align 4
  %16 = load ptr, ptr %dma, align 4
  %regs16 = getelementptr inbounds %struct.dw_dma_chip, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %regs16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs16, align 4
  %cmp.i = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %call24 = tail call i32 @dw_dma_probe(ptr noundef %16) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then18, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %19, %if.then18 ], [ %call24, %if.end22 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_dwc_isr(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %sactive_issued = getelementptr inbounds %struct.sata_dwc_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sactive_issued to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sactive_issued, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_instance) #11
  %sata_dwc_regs = getelementptr inbounds %struct.sata_dwc_device, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %sata_dwc_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sata_dwc_regs, align 4
  %intpr5 = getelementptr inbounds %struct.sata_dwc_regs, ptr %4, i32 0, i32 5
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %intpr5) #11, !srcloc !270
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %ports = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 12
  %7 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ports, align 4
  %private_data8 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 48
  %9 = ptrtoint ptr %private_data8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data8, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_isr.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_isr, %if.then)) #11
          to label %do.end15 [label %if.then], !srcloc !269

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 32
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 32
  %active_tag = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 25, i32 3
  %13 = ptrtoint ptr %active_tag to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %active_tag, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_isr.__UNIQUE_ID_ddebug391, ptr noundef %12, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i32 noundef %6, i32 noundef %14) #11
  br label %do.end15

do.end15:                                         ; preds = %if.then, %entry
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sata_dwc_error_intr(ptr noundef %8, ptr noundef %1, i32 noundef %6)
  br label %DONE

if.end18:                                         ; preds = %do.end15
  %and19 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end79, label %if.then21

if.then21:                                        ; preds = %if.end18
  %15 = ptrtoint ptr %sata_dwc_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sata_dwc_regs, align 4
  %intpr.i = getelementptr inbounds %struct.sata_dwc_regs, ptr %16, i32 0, i32 5
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %intpr.i) #11, !srcloc !270
  %18 = ptrtoint ptr %sata_dwc_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sata_dwc_regs, align 4
  %intpr2.i = getelementptr inbounds %struct.sata_dwc_regs, ptr %19, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %intpr2.i, i32 %17) #11, !srcloc !271
  %20 = ptrtoint ptr %sata_dwc_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sata_dwc_regs, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !270
  %23 = lshr i32 %22, 24
  %conv26 = trunc i32 %23 to i8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_isr.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_isr, %if.then39)) #11
          to label %do.end44 [label %if.then39], !srcloc !269

if.then39:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %dev40 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 32
  %24 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev40, align 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_isr.__UNIQUE_ID_ddebug392, ptr noundef %25, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.66, i32 noundef %23) #11
  br label %do.end44

do.end44:                                         ; preds = %if.then39, %if.then21
  %arrayidx45 = getelementptr %struct.sata_dwc_device_port, ptr %10, i32 0, i32 1, i32 %23
  %26 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp46.not = icmp eq i32 %27, 1
  br i1 %cmp46.not, label %do.end44.if.end54_crit_edge, label %do.end51

do.end44.if.end54_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

do.end51:                                         ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #13
  %dev52 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 32
  %28 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev52, align 32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.69, i32 noundef %23) #14
  br label %if.end54

if.end54:                                         ; preds = %do.end51, %do.end44.if.end54_crit_edge
  %30 = and i32 %23, 31
  %shl.i = shl nuw i32 1, %30
  %31 = ptrtoint ptr %sactive_issued to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sactive_issued, align 4
  %or = or i32 %32, %shl.i
  store i32 %or, ptr %sactive_issued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 553648127, i32 %22)
  %33 = icmp ugt i32 %22, 553648127
  %arrayidx.i.i = getelementptr %struct.ata_port, ptr %8, i32 0, i32 19, i32 %23
  %tobool.not11.i = icmp eq ptr %arrayidx.i.i, null
  %tobool.not.i = or i1 %33, %tobool.not11.i
  br i1 %tobool.not.i, label %if.end54.do.end71_crit_edge, label %lor.lhs.false.i, !prof !272

if.end54.do.end71_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end71

lor.lhs.false.i:                                  ; preds = %if.end54
  %ops.i = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 1
  %34 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i, align 4
  %error_handler.i = getelementptr inbounds %struct.ata_port_operations, ptr %35, i32 0, i32 22
  %36 = ptrtoint ptr %error_handler.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %error_handler.i, align 4
  %tobool4.not.i = icmp eq ptr %37, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i.if.end73_crit_edge, label %if.end.i

lor.lhs.false.i.if.end73_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

if.end.i:                                         ; preds = %lor.lhs.false.i
  %flags.i = getelementptr %struct.ata_port, ptr %8, i32 0, i32 19, i32 %23, i32 6
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i, align 4
  %and.i574 = and i32 %39, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i574)
  %cmp.i = icmp eq i32 %and.i574, 1
  br i1 %cmp.i, label %if.end.i.if.end73_crit_edge, label %if.end.i.do.end71_crit_edge

if.end.i.do.end71_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end71

if.end.i.if.end73_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

do.end71:                                         ; preds = %if.end.i.do.end71_crit_edge, %if.end54.do.end71_crit_edge
  %dev72 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 32
  %40 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev72, align 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.25) #14
  br label %DONE

if.end73:                                         ; preds = %if.end.i.if.end73_crit_edge, %lor.lhs.false.i.if.end73_crit_edge
  %tf = getelementptr %struct.ata_port, ptr %8, i32 0, i32 19, i32 %23, i32 4
  tail call fastcc void @trace_ata_bmdma_start(ptr noundef %8, ptr noundef %tf, i32 noundef %23)
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i, align 4
  %active_tag78 = getelementptr inbounds %struct.ata_port, ptr %43, i32 0, i32 25, i32 3
  %44 = ptrtoint ptr %active_tag78 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %23, ptr %active_tag78, align 8
  tail call fastcc void @sata_dwc_bmdma_start_by_tag(ptr noundef nonnull %arrayidx.i.i, i8 noundef zeroext %conv26)
  br label %DONE

if.end79:                                         ; preds = %if.end18
  %link80 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 25
  %45 = ptrtoint ptr %link80 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %link80, align 128
  %scr_addr.i = getelementptr inbounds %struct.ata_port, ptr %46, i32 0, i32 8, i32 14
  %47 = ptrtoint ptr %scr_addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %scr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %48, i32 12
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !270
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_scr_read.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_isr, %if.then7.i)) #11
          to label %sata_dwc_scr_read.exit [label %if.then7.i], !srcloc !269

if.then7.i:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #11
  %51 = ptrtoint ptr %link80 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %link80, align 128
  %dev9.i = getelementptr inbounds %struct.ata_port, ptr %52, i32 0, i32 32
  %53 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev9.i, align 32
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %52, i32 0, i32 5
  %55 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %print_id.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_scr_read.__UNIQUE_ID_ddebug389, ptr noundef %54, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef %56, i32 noundef 3, i32 noundef %50) #11
  br label %sata_dwc_scr_read.exit

sata_dwc_scr_read.exit:                           ; preds = %if.then7.i, %if.end79
  %57 = ptrtoint ptr %sactive_issued to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sactive_issued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp85 = icmp eq i32 %58, 0
  br i1 %cmp85, label %land.lhs.true, label %if.end214

land.lhs.true:                                    ; preds = %sata_dwc_scr_read.exit
  %active_tag91 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 25, i32 3
  %59 = ptrtoint ptr %active_tag91 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %active_tag91, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -84148995, i32 %60)
  %cmp92 = icmp eq i32 %60, -84148995
  %phi.cast = and i32 %60, 255
  %tag.0 = select i1 %cmp92, i32 0, i32 %phi.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %tag.0)
  %61 = icmp ugt i32 %tag.0, 32
  %arrayidx.i.i578 = getelementptr %struct.ata_port, ptr %8, i32 0, i32 19, i32 %tag.0
  %tobool.not11.i579 = icmp eq ptr %arrayidx.i.i578, null
  %tobool.not.i580 = or i1 %61, %tobool.not11.i579
  br i1 %tobool.not.i580, label %land.lhs.true.do.end115_crit_edge, label %lor.lhs.false.i584, !prof !272

land.lhs.true.do.end115_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end115

lor.lhs.false.i584:                               ; preds = %land.lhs.true
  %ops.i581 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 1
  %62 = ptrtoint ptr %ops.i581 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops.i581, align 4
  %error_handler.i582 = getelementptr inbounds %struct.ata_port_operations, ptr %63, i32 0, i32 22
  %64 = ptrtoint ptr %error_handler.i582 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %error_handler.i582, align 4
  %tobool4.not.i583 = icmp eq ptr %65, null
  br i1 %tobool4.not.i583, label %lor.lhs.false.i584.lor.rhs_crit_edge, label %if.end.i589

lor.lhs.false.i584.lor.rhs_crit_edge:             ; preds = %lor.lhs.false.i584
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.rhs

if.end.i589:                                      ; preds = %lor.lhs.false.i584
  %flags.i585 = getelementptr %struct.ata_port, ptr %8, i32 0, i32 19, i32 %tag.0, i32 6
  %66 = ptrtoint ptr %flags.i585 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags.i585, align 4
  %and.i586 = and i32 %67, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i586)
  %cmp.i587 = icmp eq i32 %and.i586, 1
  br i1 %cmp.i587, label %if.end.i589.lor.rhs_crit_edge, label %if.end.i589.do.end115_crit_edge

if.end.i589.do.end115_crit_edge:                  ; preds = %if.end.i589
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end115

if.end.i589.lor.rhs_crit_edge:                    ; preds = %if.end.i589
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.rhs

lor.rhs:                                          ; preds = %if.end.i589.lor.rhs_crit_edge, %lor.lhs.false.i584.lor.rhs_crit_edge
  %tf102 = getelementptr %struct.ata_port, ptr %8, i32 0, i32 19, i32 %tag.0, i32 4
  %68 = ptrtoint ptr %tf102 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tf102, align 4
  %and104 = and i32 %69, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end118, label %lor.rhs.do.end115_crit_edge, !prof !273

lor.rhs.do.end115_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end115

do.end115:                                        ; preds = %lor.rhs.do.end115_crit_edge, %if.end.i589.do.end115_crit_edge, %land.lhs.true.do.end115_crit_edge
  %retval.0.i590642 = phi ptr [ %arrayidx.i.i578, %lor.rhs.do.end115_crit_edge ], [ null, %land.lhs.true.do.end115_crit_edge ], [ null, %if.end.i589.do.end115_crit_edge ]
  %dev116 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 32
  %70 = ptrtoint ptr %dev116 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev116, align 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.66, ptr noundef %retval.0.i590642) #14
  %ops = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 1
  %72 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops, align 4
  %sff_check_status = getelementptr inbounds %struct.ata_port_operations, ptr %73, i32 0, i32 39
  %74 = ptrtoint ptr %sff_check_status to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sff_check_status, align 4
  %call117 = tail call zeroext i8 %75(ptr noundef %8) #11
  br label %DONE

if.end118:                                        ; preds = %lor.rhs
  %76 = ptrtoint ptr %ops.i581 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops.i581, align 4
  %sff_check_status120 = getelementptr inbounds %struct.ata_port_operations, ptr %77, i32 0, i32 39
  %78 = ptrtoint ptr %sff_check_status120 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sff_check_status120, align 4
  %call121 = tail call zeroext i8 %79(ptr noundef %8) #11
  %80 = ptrtoint ptr %arrayidx.i.i578 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i.i578, align 4
  %active_tag125 = getelementptr inbounds %struct.ata_port, ptr %81, i32 0, i32 25, i32 3
  %82 = ptrtoint ptr %active_tag125 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %tag.0, ptr %active_tag125, align 8
  %arrayidx128 = getelementptr %struct.sata_dwc_device_port, ptr %10, i32 0, i32 1, i32 %tag.0
  %83 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %arrayidx128, align 4
  %conv129 = zext i8 %call121 to i32
  %and130 = and i32 %conv129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %do.body153, label %do.body133

do.body133:                                       ; preds = %if.end118
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_isr.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_isr, %if.then145)) #11
          to label %do.end150 [label %if.then145], !srcloc !269

if.then145:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #13
  %dev146 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 32
  %84 = ptrtoint ptr %dev146 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev146, align 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_isr.__UNIQUE_ID_ddebug393, ptr noundef %85, ptr noundef nonnull @.str.76, i32 noundef %conv129) #11
  br label %do.end150

do.end150:                                        ; preds = %if.then145, %do.body133
  tail call fastcc void @sata_dwc_qc_complete(ptr noundef %8, ptr noundef nonnull %arrayidx.i.i578)
  br label %DONE

do.body153:                                       ; preds = %if.end118
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_isr.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_isr, %if.then165)) #11
          to label %DRVSTILLBUSY [label %if.then165], !srcloc !269

if.then165:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #13
  %dev166 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 32
  %86 = ptrtoint ptr %dev166 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev166, align 32
  %protocol = getelementptr %struct.ata_port, ptr %8, i32 0, i32 19, i32 %tag.0, i32 4, i32 1
  %88 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %protocol, align 4
  %call168 = tail call fastcc ptr @get_prot_descript(i8 noundef zeroext %89)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_isr.__UNIQUE_ID_ddebug394, ptr noundef %87, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.66, ptr noundef nonnull %call168) #11
  br label %DRVSTILLBUSY

DRVSTILLBUSY:                                     ; preds = %if.then165, %do.body153
  %protocol173 = getelementptr %struct.ata_port, ptr %8, i32 0, i32 19, i32 %tag.0, i32 4, i32 1
  %90 = ptrtoint ptr %protocol173 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %protocol173, align 4
  %92 = and i8 %91, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.i.not = icmp eq i8 %92, 0
  br i1 %tobool.i.not, label %if.else195, label %if.then175

if.then175:                                       ; preds = %DRVSTILLBUSY
  %dma_interrupt_count = getelementptr inbounds %struct.sata_dwc_device_port, ptr %10, i32 0, i32 5
  %93 = ptrtoint ptr %dma_interrupt_count to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dma_interrupt_count, align 4
  %inc = add i32 %94, 1
  store i32 %inc, ptr %dma_interrupt_count, align 4
  %arrayidx177 = getelementptr %struct.sata_dwc_device_port, ptr %10, i32 0, i32 2, i32 %tag.0
  %95 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx177, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp178 = icmp eq i32 %96, 0
  br i1 %cmp178, label %do.end183, label %if.then175.if.end189_crit_edge

if.then175.if.end189_crit_edge:                   ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end189

do.end183:                                        ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #13
  %dev184 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 32
  %97 = ptrtoint ptr %dev184 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev184, align 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.66, i32 noundef %6, i32 noundef %conv129, i32 noundef 0) #14
  br label %if.end189

if.end189:                                        ; preds = %do.end183, %if.then175.if.end189_crit_edge
  %99 = ptrtoint ptr %dma_interrupt_count to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dma_interrupt_count, align 4
  %rem = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp191 = icmp eq i32 %rem, 0
  br i1 %cmp191, label %if.then193, label %if.end189.DONE_crit_edge

if.end189.DONE_crit_edge:                         ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #13
  br label %DONE

if.then193:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sata_dwc_dma_xfer_complete(ptr noundef %8)
  br label %DONE

if.else195:                                       ; preds = %DRVSTILLBUSY
  %101 = and i8 %91, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.i592.not = icmp eq i8 %101, 0
  br i1 %tobool.i592.not, label %if.else201, label %if.then199

if.then199:                                       ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #13
  %call200 = tail call i32 @ata_sff_hsm_move(ptr noundef %8, ptr noundef nonnull %arrayidx.i.i578, i8 noundef zeroext %call121, i32 noundef 0) #11
  br label %DONE

if.else201:                                       ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sata_dwc_qc_complete(ptr noundef %8, ptr noundef nonnull %arrayidx.i.i578)
  br label %DONE

if.end214:                                        ; preds = %sata_dwc_scr_read.exit
  %102 = ptrtoint ptr %link80 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %link80, align 128
  %scr_addr.i593 = getelementptr inbounds %struct.ata_port, ptr %103, i32 0, i32 8, i32 14
  %104 = ptrtoint ptr %scr_addr.i593 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %scr_addr.i593, align 8
  %add.ptr.i594 = getelementptr i8, ptr %105, i32 12
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i594) #11, !srcloc !270
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_scr_read.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_isr, %if.then7.i598)) #11
          to label %sata_dwc_scr_read.exit600 [label %if.then7.i598], !srcloc !269

if.then7.i598:                                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #13
  %108 = ptrtoint ptr %link80 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %link80, align 128
  %dev9.i596 = getelementptr inbounds %struct.ata_port, ptr %109, i32 0, i32 32
  %110 = ptrtoint ptr %dev9.i596 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev9.i596, align 32
  %print_id.i597 = getelementptr inbounds %struct.ata_port, ptr %109, i32 0, i32 5
  %112 = ptrtoint ptr %print_id.i597 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %print_id.i597, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_scr_read.__UNIQUE_ID_ddebug389, ptr noundef %111, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef %113, i32 noundef 3, i32 noundef %107) #11
  br label %sata_dwc_scr_read.exit600

sata_dwc_scr_read.exit600:                        ; preds = %if.then7.i598, %if.end214
  %114 = ptrtoint ptr %sactive_issued to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %sactive_issued, align 4
  %116 = xor i32 %107, -1
  %xor219 = and i32 %115, %116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp220.not = icmp ne i32 %106, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %115)
  %cmp223 = icmp ugt i32 %115, 1
  %or.cond = select i1 %cmp220.not, i1 true, i1 %cmp223
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %xor219)
  %cmp226 = icmp ugt i32 %xor219, 1
  %or.cond549 = select i1 %or.cond, i1 true, i1 %cmp226
  br i1 %or.cond549, label %do.body229, label %sata_dwc_scr_read.exit600.if.end247_crit_edge

sata_dwc_scr_read.exit600.if.end247_crit_edge:    ; preds = %sata_dwc_scr_read.exit600
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end247

do.body229:                                       ; preds = %sata_dwc_scr_read.exit600
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_isr.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_isr, %if.then241)) #11
          to label %if.end247 [label %if.then241], !srcloc !269

if.then241:                                       ; preds = %do.body229
  call void @__sanitizer_cov_trace_pc() #13
  %dev242 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 32
  %117 = ptrtoint ptr %dev242 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev242, align 32
  %119 = ptrtoint ptr %sactive_issued to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %sactive_issued, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_isr.__UNIQUE_ID_ddebug395, ptr noundef %118, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.66, i32 noundef %107, i32 noundef %120, i32 noundef %xor219) #11
  br label %if.end247

if.end247:                                        ; preds = %if.then241, %do.body229, %sata_dwc_scr_read.exit600.if.end247_crit_edge
  %121 = ptrtoint ptr %sactive_issued to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %sactive_issued, align 4
  %or249 = or i32 %122, %xor219
  call void @__sanitizer_cov_trace_cmp4(i32 %or249, i32 %122)
  %cmp251.not = icmp eq i32 %or249, %122
  br i1 %cmp251.not, label %if.end247.if.end259_crit_edge, label %do.end256

if.end247.if.end259_crit_edge:                    ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end259

do.end256:                                        ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #13
  %dev257 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 32
  %123 = ptrtoint ptr %dev257 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev257, align 32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %124, ptr noundef nonnull @.str.83, i32 noundef %107, i32 noundef %122, i32 noundef %xor219) #14
  br label %if.end259

if.end259:                                        ; preds = %do.end256, %if.end247.if.end259_crit_edge
  %ops260 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 1
  %125 = ptrtoint ptr %ops260 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ops260, align 4
  %sff_check_status261 = getelementptr inbounds %struct.ata_port_operations, ptr %126, i32 0, i32 39
  %127 = ptrtoint ptr %sff_check_status261 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %sff_check_status261, align 4
  %call262 = tail call zeroext i8 %128(ptr noundef %8) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_isr.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_isr, %if.then275)) #11
          to label %do.end280 [label %if.then275], !srcloc !269

if.then275:                                       ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #13
  %dev276 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 32
  %129 = ptrtoint ptr %dev276 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev276, align 32
  %conv277 = zext i8 %call262 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_isr.__UNIQUE_ID_ddebug396, ptr noundef %130, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.66, i32 noundef %conv277) #11
  br label %do.end280

do.end280:                                        ; preds = %if.then275, %if.end259
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor219)
  %tobool281.not660 = icmp eq i32 %xor219, 0
  br i1 %tobool281.not660, label %do.end280.while.end399_crit_edge, label %while.cond283.preheader.lr.ph

do.end280.while.end399_crit_edge:                 ; preds = %do.end280
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end399

while.cond283.preheader.lr.ph:                    ; preds = %do.end280
  %conv315 = zext i8 %call262 to i32
  %and316 = and i32 %conv315, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and316)
  %tobool317.not = icmp eq i32 %and316, 0
  %dev352 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 32
  %dma_interrupt_count363 = getelementptr inbounds %struct.sata_dwc_device_port, ptr %10, i32 0, i32 5
  %131 = and i32 %xor219, -2
  %arrayidx.i.i601 = getelementptr %struct.ata_port, ptr %8, i32 0, i32 19, i32 0
  %tobool.not11.i602 = icmp eq ptr %arrayidx.i.i601, null
  %flags.i608 = getelementptr %struct.ata_port, ptr %8, i32 0, i32 19, i32 0, i32 6
  %arrayidx314 = getelementptr %struct.sata_dwc_device_port, ptr %10, i32 0, i32 1, i32 0
  %protocol354 = getelementptr %struct.ata_port, ptr %8, i32 0, i32 19, i32 0, i32 4, i32 1
  %protocol360 = getelementptr %struct.ata_port, ptr %8, i32 0, i32 19, i32 0, i32 4, i32 1
  %arrayidx367 = getelementptr %struct.sata_dwc_device_port, ptr %10, i32 0, i32 2, i32 0
  %tobool281.not = icmp eq i32 %131, 0
  br label %while.cond283.preheader

while.cond283.preheader:                          ; preds = %if.end393.while.cond283.preheader_crit_edge, %while.cond283.preheader.lr.ph
  %tag_mask.0661 = phi i32 [ %xor219, %while.cond283.preheader.lr.ph ], [ %131, %if.end393.while.cond283.preheader_crit_edge ]
  %and284655 = and i32 %tag_mask.0661, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and284655)
  %tobool285.not656 = icmp eq i32 %and284655, 0
  br i1 %tobool285.not656, label %while.cond283.preheader.while.body288_crit_edge, label %while.end

while.cond283.preheader.while.body288_crit_edge:  ; preds = %while.cond283.preheader
  br label %while.body288

while.body288:                                    ; preds = %while.body288, %while.cond283.preheader.while.body288_crit_edge
  br label %while.body288

while.end:                                        ; preds = %while.cond283.preheader
  br i1 %tobool.not11.i602, label %while.end.do.end305_crit_edge, label %lor.lhs.false.i607, !prof !272

while.end.do.end305_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end305

lor.lhs.false.i607:                               ; preds = %while.end
  %132 = ptrtoint ptr %ops260 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ops260, align 4
  %error_handler.i605 = getelementptr inbounds %struct.ata_port_operations, ptr %133, i32 0, i32 22
  %134 = ptrtoint ptr %error_handler.i605 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %error_handler.i605, align 4
  %tobool4.not.i606 = icmp eq ptr %135, null
  br i1 %tobool4.not.i606, label %lor.lhs.false.i607.if.end307_crit_edge, label %if.end.i612

lor.lhs.false.i607.if.end307_crit_edge:           ; preds = %lor.lhs.false.i607
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end307

if.end.i612:                                      ; preds = %lor.lhs.false.i607
  %136 = ptrtoint ptr %flags.i608 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %flags.i608, align 4
  %and.i609 = and i32 %137, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i609)
  %cmp.i610 = icmp eq i32 %and.i609, 1
  br i1 %cmp.i610, label %if.end.i612.if.end307_crit_edge, label %if.end.i612.do.end305_crit_edge

if.end.i612.do.end305_crit_edge:                  ; preds = %if.end.i612
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end305

if.end.i612.if.end307_crit_edge:                  ; preds = %if.end.i612
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end307

do.end305:                                        ; preds = %if.end.i612.do.end305_crit_edge, %while.end.do.end305_crit_edge
  %138 = ptrtoint ptr %dev352 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev352, align 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %139, ptr noundef nonnull @.str.25) #14
  br label %DONE

if.end307:                                        ; preds = %if.end.i612.if.end307_crit_edge, %lor.lhs.false.i607.if.end307_crit_edge
  %140 = ptrtoint ptr %arrayidx.i.i601 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx.i.i601, align 4
  %active_tag311 = getelementptr inbounds %struct.ata_port, ptr %141, i32 0, i32 25, i32 3
  %142 = ptrtoint ptr %active_tag311 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %active_tag311, align 8
  %143 = ptrtoint ptr %arrayidx314 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %arrayidx314, align 4
  br i1 %tobool317.not, label %do.body339, label %do.body319

do.body319:                                       ; preds = %if.end307
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_isr.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_isr, %if.then331)) #11
          to label %do.end336 [label %if.then331], !srcloc !269

if.then331:                                       ; preds = %do.body319
  call void @__sanitizer_cov_trace_pc() #13
  %144 = ptrtoint ptr %dev352 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev352, align 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_isr.__UNIQUE_ID_ddebug397, ptr noundef %145, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.66, i32 noundef %conv315) #11
  br label %do.end336

do.end336:                                        ; preds = %if.then331, %do.body319
  tail call fastcc void @sata_dwc_qc_complete(ptr noundef %8, ptr noundef nonnull %arrayidx.i.i601)
  br label %DONE

do.body339:                                       ; preds = %if.end307
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_isr.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_isr, %if.then351)) #11
          to label %do.end358 [label %if.then351], !srcloc !269

if.then351:                                       ; preds = %do.body339
  %146 = ptrtoint ptr %dev352 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev352, align 32
  %148 = ptrtoint ptr %protocol354 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %protocol354, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %149)
  %150 = icmp ult i8 %149, 11
  br i1 %150, label %switch.lookup, label %if.then351.get_prot_descript.exit_crit_edge

if.then351.get_prot_descript.exit_crit_edge:      ; preds = %if.then351
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_prot_descript.exit

switch.lookup:                                    ; preds = %if.then351
  call void @__sanitizer_cov_trace_pc() #13
  %151 = sext i8 %149 to i32
  %switch.gep = getelementptr inbounds [11 x ptr], ptr @switch.table.sata_dwc_isr, i32 0, i32 %151
  %152 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %152)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %get_prot_descript.exit

get_prot_descript.exit:                           ; preds = %switch.lookup, %if.then351.get_prot_descript.exit_crit_edge
  %retval.0.i615 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.107, %if.then351.get_prot_descript.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_isr.__UNIQUE_ID_ddebug398, ptr noundef %147, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.66, ptr noundef nonnull %retval.0.i615) #11
  br label %do.end358

do.end358:                                        ; preds = %get_prot_descript.exit, %do.body339
  %153 = ptrtoint ptr %protocol360 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %protocol360, align 4
  %155 = and i8 %154, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool.i616.not = icmp eq i8 %155, 0
  br i1 %tobool.i616.not, label %if.else382, label %if.then362

if.then362:                                       ; preds = %do.end358
  %156 = ptrtoint ptr %dma_interrupt_count363 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %dma_interrupt_count363, align 4
  %inc364 = add i32 %157, 1
  store i32 %inc364, ptr %dma_interrupt_count363, align 4
  %158 = ptrtoint ptr %arrayidx367 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx367, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp368 = icmp eq i32 %159, 0
  br i1 %cmp368, label %do.end373, label %if.then362.if.end375_crit_edge

if.then362.if.end375_crit_edge:                   ; preds = %if.then362
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end375

do.end373:                                        ; preds = %if.then362
  call void @__sanitizer_cov_trace_pc() #13
  %160 = ptrtoint ptr %dev352 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dev352, align 32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %161, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.66) #14
  br label %if.end375

if.end375:                                        ; preds = %do.end373, %if.then362.if.end375_crit_edge
  %162 = ptrtoint ptr %dma_interrupt_count363 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %dma_interrupt_count363, align 4
  %rem377 = and i32 %163, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem377)
  %cmp378 = icmp eq i32 %rem377, 0
  br i1 %cmp378, label %if.then380, label %if.end375.if.end393_crit_edge

if.end375.if.end393_crit_edge:                    ; preds = %if.end375
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end393

if.then380:                                       ; preds = %if.end375
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sata_dwc_dma_xfer_complete(ptr noundef %8)
  br label %if.end393

if.else382:                                       ; preds = %do.end358
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sata_dwc_qc_complete(ptr noundef %8, ptr noundef nonnull %arrayidx.i.i601)
  br label %if.end393

if.end393:                                        ; preds = %if.else382, %if.then380, %if.end375.if.end393_crit_edge
  br i1 %tobool281.not, label %if.end393.while.end399_crit_edge, label %if.end393.while.cond283.preheader_crit_edge

if.end393.while.cond283.preheader_crit_edge:      ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond283.preheader

if.end393.while.end399_crit_edge:                 ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end399

while.end399:                                     ; preds = %if.end393.while.end399_crit_edge, %do.end280.while.end399_crit_edge
  %164 = ptrtoint ptr %link80 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %link80, align 128
  %scr_addr.i617 = getelementptr inbounds %struct.ata_port, ptr %165, i32 0, i32 8, i32 14
  %166 = ptrtoint ptr %scr_addr.i617 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %scr_addr.i617, align 8
  %add.ptr.i618 = getelementptr i8, ptr %167, i32 12
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i618) #11, !srcloc !270
  %169 = tail call i32 @llvm.bswap.i32(i32 %168) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_scr_read.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_isr, %if.then7.i622)) #11
          to label %sata_dwc_scr_read.exit624 [label %if.then7.i622], !srcloc !269

if.then7.i622:                                    ; preds = %while.end399
  call void @__sanitizer_cov_trace_pc() #13
  %170 = ptrtoint ptr %link80 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %link80, align 128
  %dev9.i620 = getelementptr inbounds %struct.ata_port, ptr %171, i32 0, i32 32
  %172 = ptrtoint ptr %dev9.i620 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev9.i620, align 32
  %print_id.i621 = getelementptr inbounds %struct.ata_port, ptr %171, i32 0, i32 5
  %174 = ptrtoint ptr %print_id.i621 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %print_id.i621, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_scr_read.__UNIQUE_ID_ddebug389, ptr noundef %173, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef %175, i32 noundef 3, i32 noundef %169) #11
  br label %sata_dwc_scr_read.exit624

sata_dwc_scr_read.exit624:                        ; preds = %if.then7.i622, %while.end399
  call void @__sanitizer_cov_trace_cmp4(i32 %168, i32 %106)
  %cmp402.not = icmp eq i32 %168, %106
  br i1 %cmp402.not, label %sata_dwc_scr_read.exit624.DONE_crit_edge, label %do.body405

sata_dwc_scr_read.exit624.DONE_crit_edge:         ; preds = %sata_dwc_scr_read.exit624
  call void @__sanitizer_cov_trace_pc() #13
  br label %DONE

do.body405:                                       ; preds = %sata_dwc_scr_read.exit624
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_isr.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_isr, %if.then417)) #11
          to label %DONE [label %if.then417], !srcloc !269

if.then417:                                       ; preds = %do.body405
  call void @__sanitizer_cov_trace_pc() #13
  %dev418 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 32
  %176 = ptrtoint ptr %dev418 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev418, align 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_isr.__UNIQUE_ID_ddebug399, ptr noundef %177, ptr noundef nonnull @.str.96, i32 noundef %107, i32 noundef %169) #11
  br label %DONE

DONE:                                             ; preds = %if.then417, %do.body405, %sata_dwc_scr_read.exit624.DONE_crit_edge, %do.end336, %do.end305, %if.else201, %if.then199, %if.then193, %if.end189.DONE_crit_edge, %do.end150, %do.end115, %if.end73, %do.end71, %if.then17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_instance, i32 noundef %call2) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_dwc_qc_issue(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_tag = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 8
  %0 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_tag, align 4
  %conv = trunc i32 %1 to i8
  %2 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qc, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %protocol, align 4
  %8 = and i8 %7, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.i.not = icmp eq i8 %8, 0
  %spec.select = select i1 %tobool.i.not, i8 0, i8 %conv
  %9 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i59.not = icmp eq i8 %9, 0
  br i1 %tobool.i59.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %entry
  %call6 = tail call fastcc ptr @dma_dwc_xfer_setup(ptr noundef %qc)
  %idxprom = zext i8 %spec.select to i32
  %arrayidx = getelementptr %struct.sata_dwc_device_port, ptr %5, i32 0, i32 4, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.then5.cleanup_crit_edge, label %if.then5.if.end15_crit_edge

if.then5.if.end15_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %idxprom13 = zext i8 %spec.select to i32
  %arrayidx14 = getelementptr %struct.sata_dwc_device_port, ptr %5, i32 0, i32 4, i32 %idxprom13
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then5.if.end15_crit_edge
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %protocol, align 4
  %14 = and i8 %13, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.i60.not = icmp eq i8 %14, 0
  br i1 %tobool.i60.not, label %if.else29, label %if.then19

if.then19:                                        ; preds = %if.end15
  %link = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 25
  %15 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %link, align 128
  %scr_addr.i = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 8, i32 14
  %17 = ptrtoint ptr %scr_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %scr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %18, i32 12
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !270
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_scr_read.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_qc_issue, %if.then7.i)) #11
          to label %sata_dwc_scr_read.exit [label %if.then7.i], !srcloc !269

if.then7.i:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %link, align 128
  %dev9.i = getelementptr inbounds %struct.ata_port, ptr %22, i32 0, i32 32
  %23 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev9.i, align 32
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %22, i32 0, i32 5
  %25 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %print_id.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_scr_read.__UNIQUE_ID_ddebug389, ptr noundef %24, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef %26, i32 noundef 3, i32 noundef %20) #11
  br label %sata_dwc_scr_read.exit

sata_dwc_scr_read.exit:                           ; preds = %if.then7.i, %if.then19
  %conv21 = zext i8 %spec.select to i32
  %shl = shl nuw i32 1, %conv21
  %or = or i32 %20, %shl
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_scr_write.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_qc_issue, %if.then.i)) #11
          to label %sata_dwc_scr_write.exit [label %if.then.i], !srcloc !269

if.then.i:                                        ; preds = %sata_dwc_scr_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %link, align 128
  %dev.i = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 32
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 32
  %print_id.i61 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 5
  %31 = ptrtoint ptr %print_id.i61 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %print_id.i61, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_scr_write.__UNIQUE_ID_ddebug390, ptr noundef %30, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef %32, i32 noundef 3, i32 noundef %or) #11
  br label %sata_dwc_scr_write.exit

sata_dwc_scr_write.exit:                          ; preds = %if.then.i, %sata_dwc_scr_read.exit
  %33 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %34 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %link, align 128
  %scr_addr.i62 = getelementptr inbounds %struct.ata_port, ptr %35, i32 0, i32 8, i32 14
  %36 = ptrtoint ptr %scr_addr.i62 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %scr_addr.i62, align 8
  %add.ptr.i63 = getelementptr i8, ptr %37, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %33) #11, !srcloc !271
  tail call fastcc void @trace_ata_tf_load(ptr noundef %3, ptr noundef %tf)
  %ops = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 1
  %38 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops, align 4
  %sff_tf_load = getelementptr inbounds %struct.ata_port_operations, ptr %39, i32 0, i32 41
  %40 = ptrtoint ptr %sff_tf_load to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sff_tf_load, align 4
  tail call void %41(ptr noundef %3, ptr noundef %tf) #11
  tail call fastcc void @trace_ata_exec_command(ptr noundef %3, ptr noundef %tf, i32 noundef %conv21)
  tail call fastcc void @sata_dwc_exec_command_by_tag(ptr noundef %3, ptr noundef %tf, i8 noundef zeroext %spec.select)
  br label %cleanup

if.else29:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %call30 = tail call i32 @ata_bmdma_qc_issue(ptr noundef %qc) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else29, %sata_dwc_scr_write.exit, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sata_dwc_scr_write.exit ], [ %call30, %if.else29 ], [ 64, %if.then5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_dwc_hardreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @sata_sff_hardreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline) #11
  %sata_dwc_regs.i = getelementptr inbounds %struct.sata_dwc_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %sata_dwc_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sata_dwc_regs.i, align 4
  %intmr.i = getelementptr inbounds %struct.sata_dwc_regs, ptr %7, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %intmr.i, i32 251658240) #11, !srcloc !271
  %8 = ptrtoint ptr %sata_dwc_regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sata_dwc_regs.i, align 4
  %errmr.i = getelementptr inbounds %struct.sata_dwc_regs, ptr %9, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %errmr.i, i32 51379983) #11, !srcloc !271
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_enable_interrupts.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_hardreset, %if.then.i)) #11
          to label %sata_dwc_enable_interrupts.exit [label %if.then.i], !srcloc !269

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %12 = ptrtoint ptr %sata_dwc_regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sata_dwc_regs.i, align 4
  %intmr5.i = getelementptr inbounds %struct.sata_dwc_regs, ptr %13, i32 0, i32 6
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %intmr5.i) #11, !srcloc !270
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  %16 = ptrtoint ptr %sata_dwc_regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sata_dwc_regs.i, align 4
  %errmr10.i = getelementptr inbounds %struct.sata_dwc_regs, ptr %17, i32 0, i32 7
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %errmr10.i) #11, !srcloc !270
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_enable_interrupts.__UNIQUE_ID_ddebug401, ptr noundef %11, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63, i32 noundef %15, i32 noundef %19) #11
  br label %sata_dwc_enable_interrupts.exit

sata_dwc_enable_interrupts.exit:                  ; preds = %if.then.i, %entry
  %20 = ptrtoint ptr %sata_dwc_regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sata_dwc_regs.i, align 4
  %dmacr = getelementptr inbounds %struct.sata_dwc_regs, ptr %21, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmacr, i32 67108864) #11, !srcloc !271
  %22 = ptrtoint ptr %sata_dwc_regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sata_dwc_regs.i, align 4
  %dbtsr = getelementptr inbounds %struct.sata_dwc_regs, ptr %23, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dbtsr, i32 268439552) #11, !srcloc !271
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sata_dwc_error_handler(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ata_sff_error_handler(ptr noundef %ap) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_dwc_scr_read(ptr nocapture noundef readonly %link, i32 noundef %scr, ptr nocapture noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %scr)
  %cmp = icmp ugt i32 %scr, 4
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef %scr) #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %scr_addr = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 14
  %4 = ptrtoint ptr %scr_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scr_addr, align 8
  %mul = shl nuw nsw i32 %scr, 2
  %add.ptr = getelementptr i8, ptr %5, i32 %mul
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !270
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_scr_read.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_scr_read, %if.then7)) #11
          to label %return [label %if.then7], !srcloc !269

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %link, align 128
  %dev9 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 32
  %11 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev9, align 32
  %print_id = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %print_id, align 4
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_scr_read.__UNIQUE_ID_ddebug389, ptr noundef %12, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef %14, i32 noundef %scr, i32 noundef %16) #11
  br label %return

return:                                           ; preds = %if.then7, %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then7 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_dwc_scr_write(ptr nocapture noundef readonly %link, i32 noundef %scr, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_scr_write.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_scr_write, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !269

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %dev = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 32
  %print_id = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %print_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_scr_write.__UNIQUE_ID_ddebug390, ptr noundef %3, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef %5, i32 noundef %scr, i32 noundef %val) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %scr)
  %cmp = icmp ugt i32 %scr, 4
  br i1 %cmp, label %do.end6, label %if.end9

do.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %link, align 128
  %dev8 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 32
  %8 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev8, align 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.42, i32 noundef %scr) #14
  br label %return

if.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = tail call i32 @llvm.bswap.i32(i32 %val)
  %11 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %link, align 128
  %scr_addr = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 8, i32 14
  %13 = ptrtoint ptr %scr_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %scr_addr, align 8
  %mul = shl nuw nsw i32 %scr, 2
  %add.ptr = getelementptr i8, ptr %14, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #11, !srcloc !271
  br label %return

return:                                           ; preds = %if.end9, %do.end6
  %retval.0 = phi i32 [ -22, %do.end6 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_dwc_port_start(ptr nocapture noundef %ap) #2 align 64 {
entry:
  %mask.i.i = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_port_start.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_port_start, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !269

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 32
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 32
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_port_start.__UNIQUE_ID_ddebug402, ptr noundef %5, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, i32 noundef %7) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host, align 4
  %host4 = getelementptr inbounds %struct.sata_dwc_device, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %host4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %host4, align 4
  %11 = load ptr, ptr %host, align 4
  %dev6 = getelementptr inbounds %struct.ata_host, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev6, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %do.end11, label %if.end13

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev12 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 32
  %14 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev12, align 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43) #14
  br label %do.body84

if.end13:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 396) #15
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %if.end13.do.body84_crit_edge, label %if.end17

if.end13.do.body84_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body84

if.end17:                                         ; preds = %if.end13
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %3, ptr %call7.i.i, align 8
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %21, ptr noundef nonnull @.str.14, ptr noundef null) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end17
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call7.i.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i.i) #11
  store ptr %25, ptr @sata_dwc_dma_dws, align 4
  %26 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %mask.i.i, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask.i.i) #11
  %call.i.i = call ptr @__dma_request_channel(ptr noundef nonnull %mask.i.i, ptr noundef nonnull @sata_dwc_dma_filter, ptr noundef nonnull %call7.i.i, ptr noundef null) #11
  %chan.i.i = getelementptr inbounds %struct.sata_dwc_device_port, ptr %call7.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %chan.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i.i, ptr %chan.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.then.i.sata_dwc_dma_get_channel_old.exit.i_crit_edge

if.then.i.sata_dwc_dma_get_channel_old.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sata_dwc_dma_get_channel_old.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54) #14
  br label %sata_dwc_dma_get_channel_old.exit.i

sata_dwc_dma_get_channel_old.exit.i:              ; preds = %do.end.i.i, %if.then.i.sata_dwc_dma_get_channel_old.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -11, %do.end.i.i ], [ 0, %if.then.i.sata_dwc_dma_get_channel_old.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i.i) #11
  br label %sata_dwc_dma_get_channel.exit

if.end.i:                                         ; preds = %if.end17
  %call4.i = tail call ptr @dma_request_chan(ptr noundef %19, ptr noundef nonnull @.str.50) #11
  %chan.i = getelementptr inbounds %struct.sata_dwc_device_port, ptr %call7.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %chan.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call4.i, ptr %chan.i, align 4
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i.if.end22_crit_edge

if.end.i.if.end22_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %call4.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.51, i32 noundef %29) #14
  %30 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chan.i, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %sata_dwc_dma_get_channel.exit

sata_dwc_dma_get_channel.exit:                    ; preds = %do.end.i, %sata_dwc_dma_get_channel_old.exit.i
  %retval.0.i145 = phi i32 [ %32, %do.end.i ], [ %retval.0.i.i, %sata_dwc_dma_get_channel_old.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i145)
  %tobool20.not = icmp eq i32 %retval.0.i145, 0
  br i1 %tobool20.not, label %sata_dwc_dma_get_channel.exit.if.end22_crit_edge, label %sata_dwc_dma_get_channel.exit.CLEANUP_ALLOC_crit_edge

sata_dwc_dma_get_channel.exit.CLEANUP_ALLOC_crit_edge: ; preds = %sata_dwc_dma_get_channel.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %CLEANUP_ALLOC

sata_dwc_dma_get_channel.exit.if.end22_crit_edge: ; preds = %sata_dwc_dma_get_channel.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end22:                                         ; preds = %sata_dwc_dma_get_channel.exit.if.end22_crit_edge, %if.end.i.if.end22_crit_edge
  %phy = getelementptr inbounds %struct.sata_dwc_device, ptr %3, i32 0, i32 6
  %33 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phy, align 4
  %call23 = call i32 @phy_power_on(ptr noundef %34) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %for.body.preheader, label %if.end22.CLEANUP_ALLOC_crit_edge

if.end22.CLEANUP_ALLOC_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %CLEANUP_ALLOC

for.body.preheader:                               ; preds = %if.end22
  %uglygep = getelementptr i8, ptr %call7.i.i, i32 4
  %35 = call ptr @memset(ptr %uglygep, i32 0, i32 128)
  %bmdma_prd = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 13
  %36 = ptrtoint ptr %bmdma_prd to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %bmdma_prd, align 8
  %bmdma_prd_dma = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 14
  %37 = ptrtoint ptr %bmdma_prd_dma to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %bmdma_prd_dma, align 4
  %port_no27 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %38 = ptrtoint ptr %port_no27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port_no27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp28 = icmp eq i32 %39, 0
  br i1 %cmp28, label %do.body30, label %for.body.preheader.if.end65_crit_edge

for.body.preheader.if.end65_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

do.body30:                                        ; preds = %for.body.preheader
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_port_start.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_port_start, %if.then42)) #11
          to label %do.end46 [label %if.then42], !srcloc !269

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #13
  %dev43 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 32
  %40 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev43, align 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_port_start.__UNIQUE_ID_ddebug403, ptr noundef %41, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.43) #11
  br label %do.end46

do.end46:                                         ; preds = %if.then42, %do.body30
  %sata_dwc_regs = getelementptr inbounds %struct.sata_dwc_device, ptr %3, i32 0, i32 3
  %42 = ptrtoint ptr %sata_dwc_regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sata_dwc_regs, align 4
  %dmacr = getelementptr inbounds %struct.sata_dwc_regs, ptr %43, i32 0, i32 3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmacr, i32 67108864) #11, !srcloc !271
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_port_start.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_port_start, %if.then59)) #11
          to label %do.end63 [label %if.then59], !srcloc !269

if.then59:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #13
  %dev60 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 32
  %44 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev60, align 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_port_start.__UNIQUE_ID_ddebug404, ptr noundef %45, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.43) #11
  br label %do.end63

do.end63:                                         ; preds = %if.then59, %do.end46
  %46 = ptrtoint ptr %sata_dwc_regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sata_dwc_regs, align 4
  %dbtsr = getelementptr inbounds %struct.sata_dwc_regs, ptr %47, i32 0, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dbtsr, i32 268439552) #11, !srcloc !271
  br label %if.end65

if.end65:                                         ; preds = %do.end63, %for.body.preheader.if.end65_crit_edge
  %link.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25
  %48 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %link.i, align 128
  %scr_addr.i.i = getelementptr inbounds %struct.ata_port, ptr %49, i32 0, i32 8, i32 14
  %50 = ptrtoint ptr %scr_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %scr_addr.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %51, i32 4
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !270
  %53 = call i32 @llvm.bswap.i32(i32 %52) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_scr_read.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_port_start, %if.then7.i.i)) #11
          to label %sata_dwc_scr_read.exit.i [label %if.then7.i.i], !srcloc !269

if.then7.i.i:                                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %link.i, align 128
  %dev9.i.i = getelementptr inbounds %struct.ata_port, ptr %55, i32 0, i32 32
  %56 = ptrtoint ptr %dev9.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev9.i.i, align 32
  %print_id.i.i = getelementptr inbounds %struct.ata_port, ptr %55, i32 0, i32 5
  %58 = ptrtoint ptr %print_id.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %print_id.i.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_scr_read.__UNIQUE_ID_ddebug389, ptr noundef %57, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef %59, i32 noundef 1, i32 noundef %53) #11
  br label %sata_dwc_scr_read.exit.i

sata_dwc_scr_read.exit.i:                         ; preds = %if.then7.i.i, %if.end65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_scr_write.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_port_start, %if.then.i.i)) #11
          to label %clear_serror.exit [label %if.then.i.i], !srcloc !269

if.then.i.i:                                      ; preds = %sata_dwc_scr_read.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %link.i, align 128
  %dev.i.i = getelementptr inbounds %struct.ata_port, ptr %61, i32 0, i32 32
  %62 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i.i, align 32
  %print_id.i4.i = getelementptr inbounds %struct.ata_port, ptr %61, i32 0, i32 5
  %64 = ptrtoint ptr %print_id.i4.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %print_id.i4.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_scr_write.__UNIQUE_ID_ddebug390, ptr noundef %63, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef %65, i32 noundef 1, i32 noundef %53) #11
  br label %clear_serror.exit

clear_serror.exit:                                ; preds = %if.then.i.i, %sata_dwc_scr_read.exit.i
  %66 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %link.i, align 128
  %scr_addr.i5.i = getelementptr inbounds %struct.ata_port, ptr %67, i32 0, i32 8, i32 14
  %68 = ptrtoint ptr %scr_addr.i5.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %scr_addr.i5.i, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %69, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %52) #11, !srcloc !271
  %private_data66 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %70 = ptrtoint ptr %private_data66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call7.i.i, ptr %private_data66, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_port_start.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_port_start, %if.then79)) #11
          to label %cleanup [label %if.then79], !srcloc !269

if.then79:                                        ; preds = %clear_serror.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev80 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 32
  %71 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev80, align 32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_port_start.__UNIQUE_ID_ddebug405, ptr noundef %72, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.43) #11
  br label %cleanup

CLEANUP_ALLOC:                                    ; preds = %if.end22.CLEANUP_ALLOC_crit_edge, %sata_dwc_dma_get_channel.exit.CLEANUP_ALLOC_crit_edge
  %err.0 = phi i32 [ %retval.0.i145, %sata_dwc_dma_get_channel.exit.CLEANUP_ALLOC_crit_edge ], [ %call23, %if.end22.CLEANUP_ALLOC_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %do.body84

do.body84:                                        ; preds = %CLEANUP_ALLOC, %if.end13.do.body84_crit_edge, %do.end11
  %err.1 = phi i32 [ %err.0, %CLEANUP_ALLOC ], [ -19, %do.end11 ], [ -12, %if.end13.do.body84_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_port_start.__UNIQUE_ID_ddebug406, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_port_start, %if.then96)) #11
          to label %cleanup [label %if.then96], !srcloc !269

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #13
  %dev97 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 32
  %73 = ptrtoint ptr %dev97 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev97, align 32
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %75 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %print_id, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_port_start.__UNIQUE_ID_ddebug406, ptr noundef %74, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.43, i32 noundef %76) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then96, %do.body84, %if.then79, %clear_serror.exit
  %retval.0 = phi i32 [ 0, %if.then79 ], [ %err.1, %if.then96 ], [ 0, %clear_serror.exit ], [ %err.1, %do.body84 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sata_dwc_port_stop(ptr nocapture noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %private_data1 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_port_stop.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_port_stop, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !269

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 32
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 32
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %8 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %print_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_port_stop.__UNIQUE_ID_ddebug407, ptr noundef %7, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.55, i32 noundef %9) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %chan = getelementptr inbounds %struct.sata_dwc_device_port, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 47
  %14 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %do.end.dmaengine_terminate_sync.exit_crit_edge, label %dmaengine_terminate_async.exit.i

do.end.dmaengine_terminate_sync.exit_crit_edge:   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_async.exit.i:                 ; preds = %do.end
  %call.i.i = tail call i32 %15(ptr noundef %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge

dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_terminate_sync.exit

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.57, i32 noundef 1169) #11
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 48
  %18 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %19, null
  br i1 %tobool.not.i1.i, label %if.end.i.dmaengine_terminate_sync.exit_crit_edge, label %if.then.i2.i

if.end.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_terminate_sync.exit

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %19(ptr noundef %11) #11
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_sync.exit:                    ; preds = %if.then.i2.i, %if.end.i.dmaengine_terminate_sync.exit_crit_edge, %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge, %do.end.dmaengine_terminate_sync.exit_crit_edge
  %20 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chan, align 4
  tail call void @dma_release_channel(ptr noundef %21) #11
  %phy = getelementptr inbounds %struct.sata_dwc_device, ptr %5, i32 0, i32 6
  %22 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy, align 4
  %call6 = tail call i32 @phy_power_off(ptr noundef %23) #11
  tail call void @kfree(ptr noundef %1) #11
  %24 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %private_data, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sata_dwc_dev_select(ptr nocapture noundef %ap, i32 noundef %device) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sata_dwc_bmdma_setup(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_tag = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 8
  %0 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_tag, align 4
  %conv = trunc i32 %1 to i8
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %protocol, align 4
  %4 = and i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i.not = icmp eq i8 %4, 0
  %spec.select = select i1 %tobool.i.not, i8 0, i8 %conv
  %5 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qc, align 4
  %tf.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  tail call fastcc void @sata_dwc_exec_command_by_tag(ptr noundef %6, ptr noundef %tf.i, i8 noundef zeroext %spec.select) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sata_dwc_bmdma_start(ptr nocapture noundef readonly %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_tag = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 8
  %0 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_tag, align 4
  %conv = trunc i32 %1 to i8
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %protocol, align 4
  %4 = and i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i.not = icmp eq i8 %4, 0
  %spec.select = select i1 %tobool.i.not, i8 0, i8 %conv
  tail call fastcc void @sata_dwc_bmdma_start_by_tag(ptr noundef %qc, i8 noundef zeroext %spec.select)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dma_dwc_xfer_setup(ptr nocapture noundef readonly %qc) unnamed_addr #2 align 64 {
entry:
  %sconf = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %private_data2 = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data2, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %sconf) #11
  %8 = getelementptr inbounds i8, ptr %sconf, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 44)
  %dma_dir = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 11
  %10 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp eq i32 %11, 2
  %dmadr = getelementptr inbounds %struct.sata_dwc_device, ptr %7, i32 0, i32 7
  %12 = ptrtoint ptr %dmadr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dmadr, align 4
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %sconf, i32 0, i32 2
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %sconf, i32 0, i32 1
  %dst_addr.sink = select i1 %cmp, ptr %src_addr, ptr %dst_addr
  %14 = ptrtoint ptr %dst_addr.sink to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %dst_addr.sink, align 4
  %15 = getelementptr inbounds %struct.dma_slave_config, ptr %sconf, i32 0, i32 9
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %15, align 4
  %17 = ptrtoint ptr %sconf to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %11, ptr %sconf, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %sconf, i32 0, i32 5
  %18 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16, ptr %src_maxburst, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %sconf, i32 0, i32 6
  %19 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16, ptr %dst_maxburst, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %sconf, i32 0, i32 3
  %20 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %src_addr_width, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %sconf, i32 0, i32 4
  %21 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %dst_addr_width, align 4
  %chan = getelementptr inbounds %struct.sata_dwc_device_port, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chan, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 44
  %26 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %entry.dmaengine_slave_config.exit_crit_edge, label %if.then.i

entry.dmaengine_slave_config.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_slave_config.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = call i32 %27(ptr noundef %23, ptr noundef nonnull %sconf) #11
  %28 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load ptr, ptr %chan, align 4
  br label %dmaengine_slave_config.exit

dmaengine_slave_config.exit:                      ; preds = %if.then.i, %entry.dmaengine_slave_config.exit_crit_edge
  %29 = phi ptr [ %23, %entry.dmaengine_slave_config.exit_crit_edge ], [ %.pr, %if.then.i ]
  %sg = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 17
  %30 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sg, align 4
  %n_elem = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 9
  %32 = ptrtoint ptr %n_elem to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n_elem, align 4
  %34 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_dir, align 4
  %tobool.not.i40 = icmp eq ptr %29, null
  br i1 %tobool.not.i40, label %dmaengine_slave_config.exit.cleanup_crit_edge, label %lor.lhs.false.i

dmaengine_slave_config.exit.cleanup_crit_edge:    ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %dmaengine_slave_config.exit
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %29, align 4
  %tobool1.not.i = icmp eq ptr %37, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %37, i32 0, i32 39
  %38 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %39, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i41 = call ptr %39(ptr noundef nonnull %29, ptr noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef 3, ptr noundef null) #11
  %tobool.not = icmp eq ptr %call.i41, null
  br i1 %tobool.not, label %dmaengine_prep_slave_sg.exit.cleanup_crit_edge, label %if.end10

dmaengine_prep_slave_sg.exit.cleanup_crit_edge:   ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #13
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i41, i32 0, i32 6
  %40 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @dma_dwc_xfer_done, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i41, i32 0, i32 8
  %41 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %7, ptr %callback_param, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_dwc_xfer_setup.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dma_dwc_xfer_setup, %if.then15)) #11
          to label %cleanup [label %if.then15], !srcloc !269

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %7, align 4
  %44 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sg, align 4
  %46 = ptrtoint ptr %n_elem to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %n_elem, align 4
  %dmadr18 = getelementptr inbounds %struct.sata_dwc_device, ptr %7, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dma_dwc_xfer_setup.__UNIQUE_ID_ddebug388, ptr noundef %43, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, ptr noundef %45, i32 noundef %47, ptr noundef %dmadr18) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end10, %dmaengine_prep_slave_sg.exit.cleanup_crit_edge, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %dmaengine_slave_config.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %dmaengine_prep_slave_sg.exit.cleanup_crit_edge ], [ %call.i41, %if.then15 ], [ %call.i41, %if.end10 ], [ null, %lor.lhs.false2.i.cleanup_crit_edge ], [ null, %lor.lhs.false.i.cleanup_crit_edge ], [ null, %dmaengine_slave_config.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %sconf) #11
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ata_tf_load(ptr noundef %ap, ptr noundef %tf) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_tf_load, i32 0, i32 1), ptr blockaddress(@trace_ata_tf_load, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !269

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !258) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !273

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !258) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !274
  %call42 = tail call i32 @__traceiter_ata_tf_load(ptr noundef null, ptr noundef %ap, ptr noundef %tf) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !275
  %13 = tail call i32 @llvm.read_register.i32(metadata !258) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !258) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !273

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !258) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !276
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_tf_load, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_tf_load, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ata_tf_load.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_ata_tf_load.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 368, ptr noundef nonnull @.str.37) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !277
  %31 = tail call i32 @llvm.read_register.i32(metadata !258) #11
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
define internal fastcc void @trace_ata_exec_command(ptr noundef %ap, ptr noundef %tf, i32 noundef %tag) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_exec_command, i32 0, i32 1), ptr blockaddress(@trace_ata_exec_command, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !269

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !258) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !273

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !258) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !278
  %call42 = tail call i32 @__traceiter_ata_exec_command(ptr noundef null, ptr noundef %ap, ptr noundef %tf, i32 noundef %tag) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !279
  %13 = tail call i32 @llvm.read_register.i32(metadata !258) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !258) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !273

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !258) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !276
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_exec_command, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_exec_command, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ata_exec_command.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_ata_exec_command.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 403, ptr noundef nonnull @.str.37) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !277
  %31 = tail call i32 @llvm.read_register.i32(metadata !258) #11
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sata_dwc_exec_command_by_tag(ptr noundef %ap, ptr noundef %tf, i8 noundef zeroext %tag) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %idxprom = zext i8 %tag to i32
  %arrayidx = getelementptr %struct.sata_dwc_device_port, ptr %1, i32 0, i32 1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %arrayidx, align 4
  %link.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25
  %3 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %link.i, align 128
  %scr_addr.i.i = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 8, i32 14
  %5 = ptrtoint ptr %scr_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %scr_addr.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !270
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_scr_read.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_exec_command_by_tag, %if.then7.i.i)) #11
          to label %sata_dwc_scr_read.exit.i [label %if.then7.i.i], !srcloc !269

if.then7.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %link.i, align 128
  %dev9.i.i = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 32
  %11 = ptrtoint ptr %dev9.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev9.i.i, align 32
  %print_id.i.i = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %print_id.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %print_id.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_scr_read.__UNIQUE_ID_ddebug389, ptr noundef %12, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef %14, i32 noundef 1, i32 noundef %8) #11
  br label %sata_dwc_scr_read.exit.i

sata_dwc_scr_read.exit.i:                         ; preds = %if.then7.i.i, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_scr_write.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_exec_command_by_tag, %if.then.i.i)) #11
          to label %clear_serror.exit [label %if.then.i.i], !srcloc !269

if.then.i.i:                                      ; preds = %sata_dwc_scr_read.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %link.i, align 128
  %dev.i.i = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 32
  %17 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i.i, align 32
  %print_id.i4.i = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 5
  %19 = ptrtoint ptr %print_id.i4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %print_id.i4.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_scr_write.__UNIQUE_ID_ddebug390, ptr noundef %18, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef %20, i32 noundef 1, i32 noundef %8) #11
  br label %clear_serror.exit

clear_serror.exit:                                ; preds = %if.then.i.i, %sata_dwc_scr_read.exit.i
  %21 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %link.i, align 128
  %scr_addr.i5.i = getelementptr inbounds %struct.ata_port, ptr %22, i32 0, i32 8, i32 14
  %23 = ptrtoint ptr %scr_addr.i5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %scr_addr.i5.i, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %7) #11, !srcloc !271
  tail call void @ata_sff_exec_command(ptr noundef %ap, ptr noundef %tf) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_qc_issue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_dwc_xfer_done(ptr nocapture noundef readonly %hsdev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.sata_dwc_device, ptr %hsdev_instance, i32 0, i32 2
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #11
  %ports = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %active_tag = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 25, i32 3
  %6 = ptrtoint ptr %active_tag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %active_tag, align 8
  %dma_interrupt_count = getelementptr inbounds %struct.sata_dwc_device_port, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %dma_interrupt_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_interrupt_count, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %dma_interrupt_count, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %sata_dwc_regs.i = getelementptr inbounds %struct.sata_dwc_device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %sata_dwc_regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sata_dwc_regs.i, align 4
  %dmacr2.i = getelementptr inbounds %struct.sata_dwc_regs, ptr %13, i32 0, i32 3
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmacr2.i) #11, !srcloc !270
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  %idxprom.i = and i32 %7, 255
  %arrayidx.i = getelementptr %struct.sata_dwc_device_port, ptr %5, i32 0, i32 2, i32 %idxprom.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %do.end.i [
    i32 2, label %if.then.i
    i32 1, label %if.then9.i
  ]

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and.i = and i32 %15, -7
  %or.i = or i32 %and.i, 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %20 = ptrtoint ptr %sata_dwc_regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sata_dwc_regs.i, align 4
  %dmacr4.i = getelementptr inbounds %struct.sata_dwc_regs, ptr %21, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmacr4.i, i32 %19) #11, !srcloc !271
  br label %sata_dwc_clear_dmacr.exit

if.then9.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and10.i = and i32 %15, -6
  %or11.i = or i32 %and10.i, 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %or11.i) #11
  %23 = ptrtoint ptr %sata_dwc_regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sata_dwc_regs.i, align 4
  %dmacr13.i = getelementptr inbounds %struct.sata_dwc_regs, ptr %24, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmacr13.i, i32 %22) #11, !srcloc !271
  br label %sata_dwc_clear_dmacr.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %idxprom.i, i32 noundef %17, i32 noundef %15) #14
  %27 = ptrtoint ptr %sata_dwc_regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sata_dwc_regs.i, align 4
  %dmacr19.i = getelementptr inbounds %struct.sata_dwc_regs, ptr %28, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmacr19.i, i32 67108864) #11, !srcloc !271
  br label %sata_dwc_clear_dmacr.exit

sata_dwc_clear_dmacr.exit:                        ; preds = %do.end.i, %if.then9.i, %if.then.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp8 = icmp eq i32 %30, 0
  br i1 %cmp8, label %do.end12, label %sata_dwc_clear_dmacr.exit.if.end_crit_edge

sata_dwc_clear_dmacr.exit.if.end_crit_edge:       ; preds = %sata_dwc_clear_dmacr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end12:                                         ; preds = %sata_dwc_clear_dmacr.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 32
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.21, i32 noundef %idxprom.i, i32 noundef 0) #14
  br label %if.end

if.end:                                           ; preds = %do.end12, %sata_dwc_clear_dmacr.exit.if.end_crit_edge
  %33 = ptrtoint ptr %dma_interrupt_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_interrupt_count, align 4
  %rem = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp18 = icmp eq i32 %rem, 0
  br i1 %cmp18, label %if.then20, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sata_dwc_dma_xfer_complete(ptr noundef %3)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end.if.end21_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sata_dwc_dma_xfer_complete(ptr noundef %ap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %private_data1 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 4
  %active_tag = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 3
  %6 = ptrtoint ptr %active_tag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %active_tag, align 8
  %conv2 = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv2)
  %8 = icmp ugt i32 %conv2, 32
  %arrayidx.i.i = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %conv2
  %tobool.not11.i = icmp eq ptr %arrayidx.i.i, null
  %tobool.not.i = or i1 %8, %tobool.not11.i
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %lor.lhs.false.i, !prof !272

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false.i:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %error_handler.i = getelementptr inbounds %struct.ata_port_operations, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %error_handler.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %error_handler.i, align 4
  %tobool4.not.i = icmp eq ptr %12, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %flags.i = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %conv2, i32 6
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %14, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1
  br i1 %cmp.i, label %if.end.i.if.end_crit_edge, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 32
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.25) #14
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge
  %protocol = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %conv2, i32 4, i32 1
  %17 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %protocol, align 4
  %19 = and i8 %18, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.i.not = icmp eq i8 %19, 0
  br i1 %tobool.i.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %arrayidx = getelementptr %struct.sata_dwc_device_port, ptr %1, i32 0, i32 2, i32 %conv2
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %do.end9, label %if.then4.if.end12_crit_edge

if.then4.if.end12_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

do.end9:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %dev10 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 32
  %22 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev10, align 32
  %sata_dwc_regs = getelementptr inbounds %struct.sata_dwc_device, ptr %5, i32 0, i32 3
  %24 = ptrtoint ptr %sata_dwc_regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sata_dwc_regs, align 4
  %dmacr = getelementptr inbounds %struct.sata_dwc_regs, ptr %25, i32 0, i32 3
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %dmacr) #11, !srcloc !270
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, i32 noundef %27) #14
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %if.then4.if.end12_crit_edge
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx, align 4
  tail call fastcc void @sata_dwc_qc_complete(ptr noundef %ap, ptr noundef nonnull %arrayidx.i.i)
  %29 = ptrtoint ptr %active_tag to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -84148995, ptr %active_tag, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sata_dwc_qc_complete(ptr noundef %ap, ptr noundef nonnull %arrayidx.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end12, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sata_dwc_qc_complete(ptr nocapture noundef readonly %ap, ptr noundef %qc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_tag = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 8
  %0 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_tag, align 4
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %private_data1 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %6 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data1, align 4
  %sactive_queued = getelementptr inbounds %struct.sata_dwc_device, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %sactive_queued to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %sactive_queued, align 4
  %idxprom = and i32 %1, 255
  %arrayidx = getelementptr %struct.sata_dwc_device_port, ptr %7, i32 0, i32 2, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %10, label %entry.do.body14_crit_edge [
    i32 1, label %entry.do.body14.sink.split_crit_edge
    i32 2, label %do.end11
  ]

entry.do.body14.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body14.sink.split

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body14

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body14.sink.split

do.body14.sink.split:                             ; preds = %do.end11, %entry.do.body14.sink.split_crit_edge
  %.str.30.sink = phi ptr [ @.str.33, %do.end11 ], [ @.str.30, %entry.do.body14.sink.split_crit_edge ]
  %dev = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 32
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull %.str.30.sink) #14
  br label %do.body14

do.body14:                                        ; preds = %do.body14.sink.split, %entry.do.body14_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_qc_complete.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_qc_complete, %if.then17)) #11
          to label %do.end25 [label %if.then17], !srcloc !269

if.then17:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  %dev18 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 32
  %14 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev18, align 32
  %command = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 14
  %16 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %command, align 1
  %conv19 = zext i8 %17 to i32
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %18 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %print_id, align 4
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %protocol, align 4
  %conv22 = zext i8 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_qc_complete.__UNIQUE_ID_ddebug400, ptr noundef %15, ptr noundef nonnull @.str.35, i32 noundef %conv19, i32 noundef 0, i32 noundef %19, i32 noundef %conv22) #11
  br label %do.end25

do.end25:                                         ; preds = %if.then17, %do.body14
  %22 = and i32 %1, 31
  %shl.i = shl nuw i32 1, %22
  %neg = xor i32 %shl.i, -1
  %23 = ptrtoint ptr %sactive_queued to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sactive_queued, align 4
  %and = and i32 %24, %neg
  store i32 %and, ptr %sactive_queued, align 4
  %sactive_issued = getelementptr inbounds %struct.sata_dwc_device, ptr %5, i32 0, i32 4
  %25 = ptrtoint ptr %sactive_issued to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sactive_issued, align 4
  %and29 = and i32 %26, %neg
  store i32 %and29, ptr %sactive_issued, align 4
  tail call void @ata_qc_complete(ptr noundef %qc) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_qc_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_tf_load(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_exec_command(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_exec_command(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_sff_hardreset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_error_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sata_dwc_dma_filter(ptr nocapture noundef %chan, ptr nocapture noundef readnone %param) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sata_dwc_dma_dws, align 4
  %1 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %2, i32 0, i32 15
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %cmp.not = icmp eq ptr %0, %4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %private = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 14
  %5 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @sata_dwc_dma_dws, ptr %private, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i1 %cmp.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sata_dwc_bmdma_start_by_tag(ptr nocapture noundef readonly %qc, i8 noundef zeroext %tag) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %private_data3 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %6 = ptrtoint ptr %private_data3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data3, align 4
  %idxprom = zext i8 %tag to i32
  %arrayidx = getelementptr %struct.sata_dwc_device_port, ptr %7, i32 0, i32 4, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr %struct.sata_dwc_device_port, ptr %7, i32 0, i32 1, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  %dma_dir = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 11
  %12 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp7 = icmp eq i32 %13, 1
  %spec.select = select i1 %cmp7, i32 1, i32 2
  %14 = getelementptr %struct.sata_dwc_device_port, ptr %7, i32 0, i32 2, i32 %idxprom
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select, ptr %14, align 4
  %link = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25
  %16 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %link, align 128
  %scr_addr.i = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 8, i32 14
  %18 = ptrtoint ptr %scr_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %scr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %19, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !270
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_scr_read.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_bmdma_start_by_tag, %if.then7.i)) #11
          to label %sata_dwc_scr_read.exit [label %if.then7.i], !srcloc !269

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 32
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef 0, i32 noundef %idxprom) #14
  br label %if.end35

if.then7.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %link, align 128
  %dev9.i = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 32
  %26 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev9.i, align 32
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 5
  %28 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %print_id.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_scr_read.__UNIQUE_ID_ddebug389, ptr noundef %27, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef %29, i32 noundef 1, i32 noundef %21) #11
  br label %sata_dwc_scr_read.exit

sata_dwc_scr_read.exit:                           ; preds = %if.then7.i, %if.then
  %and = and i32 %21, 268373763
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %sata_dwc_scr_read.exit.if.end26_crit_edge, label %do.end24

sata_dwc_scr_read.exit.if.end26_crit_edge:        ; preds = %sata_dwc_scr_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

do.end24:                                         ; preds = %sata_dwc_scr_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev25 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 32
  %30 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev25, align 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.59, i32 noundef %21) #14
  br label %if.end26

if.end26:                                         ; preds = %do.end24, %sata_dwc_scr_read.exit.if.end26_crit_edge
  %sata_dwc_regs = getelementptr inbounds %struct.sata_dwc_device, ptr %5, i32 0, i32 3
  %32 = ptrtoint ptr %sata_dwc_regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sata_dwc_regs, align 4
  %dmacr = getelementptr inbounds %struct.sata_dwc_regs, ptr %33, i32 0, i32 3
  br i1 %cmp7, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmacr, i32 83886080) #11, !srcloc !271
  br label %if.end33

if.else30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dmacr, i32 100663296) #11, !srcloc !271
  br label %if.end33

if.end33:                                         ; preds = %if.else30, %if.then29
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %9, i32 0, i32 4
  %34 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_submit.i, align 4
  %call.i = tail call i32 %35(ptr noundef %9) #11
  %chan = getelementptr inbounds %struct.sata_dwc_device_port, ptr %7, i32 0, i32 3
  %36 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chan, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %39, i32 0, i32 50
  %40 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %41(ptr noundef %37) #11
  br label %if.end35

if.end35:                                         ; preds = %if.end33, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_dma_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sata_dwc_error_intr(ptr noundef %ap, ptr nocapture noundef readonly %hsdev, i32 noundef %intpr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %link = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25
  %eh_info = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11
  tail call void @ata_ehi_clear_desc(ptr noundef %eh_info) #11
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 128
  %scr_addr.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 8, i32 14
  %4 = ptrtoint ptr %scr_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !270
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_scr_read.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_error_intr, %if.then7.i)) #11
          to label %sata_dwc_scr_read.exit [label %if.then7.i], !srcloc !269

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link, align 128
  %dev9.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 32
  %10 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev9.i, align 32
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 5
  %12 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %print_id.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_scr_read.__UNIQUE_ID_ddebug389, ptr noundef %11, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef %13, i32 noundef 1, i32 noundef %7) #11
  br label %sata_dwc_scr_read.exit

sata_dwc_scr_read.exit:                           ; preds = %if.then7.i, %entry
  %ops = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %sff_check_status = getelementptr inbounds %struct.ata_port_operations, ptr %15, i32 0, i32 39
  %16 = ptrtoint ptr %sff_check_status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sff_check_status, align 4
  %call2 = tail call zeroext i8 %17(ptr noundef %ap) #11
  %active_tag = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 3
  %18 = ptrtoint ptr %active_tag to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %active_tag, align 8
  %dev = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 32
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 32
  %conv4 = zext i8 %call2 to i32
  %dma_interrupt_count = getelementptr inbounds %struct.sata_dwc_device_port, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %dma_interrupt_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_interrupt_count, align 4
  %idxprom = and i32 %19, 255
  %arrayidx = getelementptr %struct.sata_dwc_device_port, ptr %1, i32 0, i32 2, i32 %idxprom
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr %struct.sata_dwc_device_port, ptr %1, i32 0, i32 1, i32 %idxprom
  %26 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef %7, i32 noundef %intpr, i32 noundef %conv4, i32 noundef %23, i32 noundef %25, i32 noundef %27) #14
  %28 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %link, align 128
  %scr_addr.i.i = getelementptr inbounds %struct.ata_port, ptr %29, i32 0, i32 8, i32 14
  %30 = ptrtoint ptr %scr_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %scr_addr.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !270
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_scr_read.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_error_intr, %if.then7.i.i)) #11
          to label %sata_dwc_scr_read.exit.i [label %if.then7.i.i], !srcloc !269

if.then7.i.i:                                     ; preds = %sata_dwc_scr_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %link, align 128
  %dev9.i.i = getelementptr inbounds %struct.ata_port, ptr %35, i32 0, i32 32
  %36 = ptrtoint ptr %dev9.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev9.i.i, align 32
  %print_id.i.i = getelementptr inbounds %struct.ata_port, ptr %35, i32 0, i32 5
  %38 = ptrtoint ptr %print_id.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %print_id.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_scr_read.__UNIQUE_ID_ddebug389, ptr noundef %37, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef %39, i32 noundef 1, i32 noundef %33) #11
  br label %sata_dwc_scr_read.exit.i

sata_dwc_scr_read.exit.i:                         ; preds = %if.then7.i.i, %sata_dwc_scr_read.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_dwc_scr_write.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_dwc_error_intr, %if.then.i.i)) #11
          to label %clear_serror.exit [label %if.then.i.i], !srcloc !269

if.then.i.i:                                      ; preds = %sata_dwc_scr_read.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %link, align 128
  %dev.i.i = getelementptr inbounds %struct.ata_port, ptr %41, i32 0, i32 32
  %42 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i.i, align 32
  %print_id.i4.i = getelementptr inbounds %struct.ata_port, ptr %41, i32 0, i32 5
  %44 = ptrtoint ptr %print_id.i4.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %print_id.i4.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_dwc_scr_write.__UNIQUE_ID_ddebug390, ptr noundef %43, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef %45, i32 noundef 1, i32 noundef %33) #11
  br label %clear_serror.exit

clear_serror.exit:                                ; preds = %if.then.i.i, %sata_dwc_scr_read.exit.i
  %46 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %link, align 128
  %scr_addr.i5.i = getelementptr inbounds %struct.ata_port, ptr %47, i32 0, i32 8, i32 14
  %48 = ptrtoint ptr %scr_addr.i5.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %scr_addr.i5.i, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %49, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %32) #11, !srcloc !271
  %sata_dwc_regs.i = getelementptr inbounds %struct.sata_dwc_device, ptr %hsdev, i32 0, i32 3
  %50 = ptrtoint ptr %sata_dwc_regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sata_dwc_regs.i, align 4
  %intpr.i = getelementptr inbounds %struct.sata_dwc_regs, ptr %51, i32 0, i32 5
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %intpr.i) #11, !srcloc !270
  %53 = ptrtoint ptr %sata_dwc_regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sata_dwc_regs.i, align 4
  %intpr2.i = getelementptr inbounds %struct.sata_dwc_regs, ptr %54, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %intpr2.i, i32 %52) #11, !srcloc !271
  %serror8 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 1
  %55 = ptrtoint ptr %serror8 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %serror8, align 4
  %or9 = or i32 %56, %7
  store i32 %or9, ptr %serror8, align 4
  %action10 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 3
  %57 = ptrtoint ptr %action10 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %action10, align 4
  %or11 = or i32 %58, 6
  store i32 %or11, ptr %action10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %idxprom)
  %59 = icmp ugt i32 %idxprom, 32
  %arrayidx.i.i = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %idxprom
  %tobool.not11.i = icmp eq ptr %arrayidx.i.i, null
  %tobool.not.i = or i1 %59, %tobool.not11.i
  br i1 %tobool.not.i, label %clear_serror.exit.if.else_crit_edge, label %lor.lhs.false.i, !prof !272

clear_serror.exit.if.else_crit_edge:              ; preds = %clear_serror.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

lor.lhs.false.i:                                  ; preds = %clear_serror.exit
  %60 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops, align 4
  %error_handler.i = getelementptr inbounds %struct.ata_port_operations, ptr %61, i32 0, i32 22
  %62 = ptrtoint ptr %error_handler.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %error_handler.i, align 4
  %tobool4.not.i = icmp eq ptr %63, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i.if.then_crit_edge, label %if.end.i

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end.i:                                         ; preds = %lor.lhs.false.i
  %flags.i = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %idxprom, i32 6
  %64 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %65, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1
  br i1 %cmp.i, label %if.end.i.if.then_crit_edge, label %if.end.i.if.else_crit_edge

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %if.end.i.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge
  %err_mask14 = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %idxprom, i32 20
  br label %if.end

if.else:                                          ; preds = %if.end.i.if.else_crit_edge, %clear_serror.exit.if.else_crit_edge
  %err_mask16 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err_mask16.sink43 = phi ptr [ %err_mask16, %if.else ], [ %err_mask14, %if.then ]
  %66 = ptrtoint ptr %err_mask16.sink43 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %err_mask16.sink43, align 4
  %or17 = or i32 %67, 32
  store i32 %or17, ptr %err_mask16.sink43, align 4
  %call18 = tail call i32 @ata_port_abort(ptr noundef %ap) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ata_bmdma_start(ptr noundef %ap, ptr noundef %tf, i32 noundef %tag) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_bmdma_start, i32 0, i32 1), ptr blockaddress(@trace_ata_bmdma_start, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !269

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !258) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !273

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !258) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !280
  %call42 = tail call i32 @__traceiter_ata_bmdma_start(ptr noundef null, ptr noundef %ap, ptr noundef %tf, i32 noundef %tag) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !281
  %13 = tail call i32 @llvm.read_register.i32(metadata !258) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !258) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !273

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !258) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !276
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_bmdma_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_bmdma_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ata_bmdma_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_ata_bmdma_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 411, ptr noundef nonnull @.str.37) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !277
  %31 = tail call i32 @llvm.read_register.i32(metadata !258) #11
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @get_prot_descript(i8 noundef zeroext %protocol) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %protocol)
  %0 = icmp ult i8 %protocol, 11
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = sext i8 %protocol to i32
  %switch.gep = getelementptr inbounds [11 x ptr], ptr @switch.table.get_prot_descript, i32 0, i32 %1
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.107, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_hsm_move(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_clear_desc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_bmdma_start(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_queuecmd(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_ioctl(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_slave_config(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_slave_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_change_queue_depth(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_unlock_native_capacity(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_dma_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !18, !20, !22, !23, !24, !25, !27, !28, !29, !30, !31, !33, !34, !35, !36, !38, !40, !42, !43, !44, !46, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !85, !86, !87, !88, !90, !91, !93, !94, !96, !97, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !144, !145, !146, !148, !150, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !174, !175, !176, !177, !179, !180, !182, !183, !184, !186, !187, !189, !190, !192, !193, !194, !196, !197, !199, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !226, !227, !228, !229, !231, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !255, !256}
!llvm.named.register.sp = !{!258}
!llvm.module.flags = !{!259, !260, !261, !262, !263, !264, !265, !266}
!llvm.ident = !{!267}

!0 = !{ptr @__initcall__kmod_sata_dwc_460ex__410_1250_sata_dwc_driver_init6, !1, !"__initcall__kmod_sata_dwc_460ex__410_1250_sata_dwc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 1250, i32 1}
!2 = !{ptr @__exitcall_sata_dwc_driver_exit, !1, !"__exitcall_sata_dwc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file411, !4, !"__UNIQUE_ID_file411", i1 false, i1 false}
!4 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 1252, i32 1}
!5 = !{ptr @__UNIQUE_ID_license412, !4, !"__UNIQUE_ID_license412", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author413, !7, !"__UNIQUE_ID_author413", i1 false, i1 false}
!7 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 1253, i32 1}
!8 = !{ptr @__UNIQUE_ID_description414, !9, !"__UNIQUE_ID_description414", i1 false, i1 false}
!9 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 1254, i32 1}
!10 = !{ptr @__UNIQUE_ID_version415, !11, !"__UNIQUE_ID_version415", i1 false, i1 false}
!11 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 1255, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 1243, i32 11}
!18 = !{ptr @sata_dwc_driver, !19, !"sata_dwc_driver", i1 false, i1 false}
!19 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 1241, i32 31}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 1155, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sata_dwc_probe.__UNIQUE_ID_ddebug408, !21, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 1169, i32 2}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @sata_dwc_probe._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @sata_dwc_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 1180, i32 3}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @sata_dwc_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @sata_dwc_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 1185, i32 28}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 1192, i32 42}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 1207, i32 3}
!42 = !{ptr @sata_dwc_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sata_dwc_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @sata_dwc_port_info, !45, !"sata_dwc_port_info", i1 false, i1 false}
!45 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 1119, i32 35}
!46 = !{ptr @sata_dwc_ops, !47, !"sata_dwc_ops", i1 false, i1 false}
!47 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 1099, i32 35}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 358, i32 2}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @dma_dwc_xfer_setup.__UNIQUE_ID_ddebug388, !49, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 313, i32 3}
!54 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @dma_dwc_xfer_done._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @dma_dwc_xfer_done._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 705, i32 3}
!59 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @sata_dwc_clear_dmacr._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @sata_dwc_clear_dmacr._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 723, i32 3}
!64 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @sata_dwc_dma_xfer_complete._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @sata_dwc_dma_xfer_complete._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 729, i32 4}
!69 = !{ptr @sata_dwc_dma_xfer_complete._entry.27, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @sata_dwc_dma_xfer_complete._entry_ptr.29, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 753, i32 3}
!73 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @sata_dwc_qc_complete._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @sata_dwc_qc_complete._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 755, i32 3}
!78 = !{ptr @sata_dwc_qc_complete._entry.32, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @sata_dwc_qc_complete._entry_ptr.34, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 756, i32 2}
!82 = !{ptr @sata_dwc_qc_complete.__UNIQUE_ID_ddebug400, !81, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../include/trace/events/libata.h", i32 317, i32 1}
!85 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!86 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!87 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!90 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../include/trace/events/libata.h", i32 401, i32 1}
!93 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 367, i32 3}
!96 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @sata_dwc_scr_read._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @sata_dwc_scr_read._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 373, i32 2}
!101 = !{ptr @sata_dwc_scr_read.__UNIQUE_ID_ddebug389, !100, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 381, i32 2}
!104 = !{ptr @sata_dwc_scr_write.__UNIQUE_ID_ddebug390, !103, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!105 = !{ptr @sata_dwc_scr_write._entry, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 384, i32 3}
!107 = !{ptr @sata_dwc_scr_write._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 845, i32 2}
!110 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @sata_dwc_port_start.__UNIQUE_ID_ddebug402, !109, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 850, i32 3}
!114 = !{ptr @sata_dwc_port_start._entry, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @sata_dwc_port_start._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 878, i32 3}
!118 = !{ptr @sata_dwc_port_start.__UNIQUE_ID_ddebug403, !117, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!119 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 883, i32 3}
!121 = !{ptr @sata_dwc_port_start.__UNIQUE_ID_ddebug404, !120, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!122 = !{ptr @.str.48, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 893, i32 2}
!124 = !{ptr @sata_dwc_port_start.__UNIQUE_ID_ddebug405, !123, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!125 = !{ptr @.str.49, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 899, i32 2}
!127 = !{ptr @sata_dwc_port_start.__UNIQUE_ID_ddebug406, !126, !"__UNIQUE_ID_ddebug406", i1 false, i1 false}
!128 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 819, i32 39}
!130 = !{ptr @.str.51, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 821, i32 3}
!132 = !{ptr @.str.52, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @sata_dwc_dma_get_channel._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @sata_dwc_dma_get_channel._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 219, i32 3}
!137 = !{ptr @.str.54, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @sata_dwc_dma_get_channel_old._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @sata_dwc_dma_get_channel_old._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @sata_dwc_dma_dws, !141, !"sata_dwc_dma_dws", i1 false, i1 false}
!141 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 186, i32 28}
!142 = !{ptr @.str.55, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 908, i32 2}
!144 = !{ptr @.str.56, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @sata_dwc_port_stop.__UNIQUE_ID_ddebug407, !143, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!146 = !{ptr @.str.57, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!148 = !{ptr @.str.58, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 976, i32 3}
!150 = !{ptr @.str.59, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @sata_dwc_bmdma_start_by_tag._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @sata_dwc_bmdma_start_by_tag._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.61, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 985, i32 4}
!155 = !{ptr @sata_dwc_bmdma_start_by_tag._entry.60, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @sata_dwc_bmdma_start_by_tag._entry_ptr.62, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.63, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 782, i32 2}
!159 = !{ptr @.str.64, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @sata_dwc_enable_interrupts.__UNIQUE_ID_ddebug401, !158, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!161 = !{ptr @.str.65, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 242, i32 3}
!163 = !{ptr @sata_dwc_dma_init_old._entry, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @sata_dwc_dma_init_old._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.66, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 484, i32 2}
!167 = !{ptr @.str.67, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @sata_dwc_isr.__UNIQUE_ID_ddebug391, !166, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!169 = !{ptr @.str.68, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 499, i32 3}
!171 = !{ptr @sata_dwc_isr.__UNIQUE_ID_ddebug392, !170, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!172 = !{ptr @.str.69, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 501, i32 4}
!174 = !{ptr @.str.70, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @sata_dwc_isr._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @sata_dwc_isr._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @sata_dwc_isr._entry.71, !178, !"_entry", i1 false, i1 false}
!178 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 507, i32 4}
!179 = !{ptr @sata_dwc_isr._entry_ptr.72, !178, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.74, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 536, i32 4}
!182 = !{ptr @sata_dwc_isr._entry.73, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @sata_dwc_isr._entry_ptr.75, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.76, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 549, i32 4}
!186 = !{ptr @sata_dwc_isr.__UNIQUE_ID_ddebug393, !185, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!187 = !{ptr @.str.77, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 555, i32 3}
!189 = !{ptr @sata_dwc_isr.__UNIQUE_ID_ddebug394, !188, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!190 = !{ptr @.str.79, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 568, i32 5}
!192 = !{ptr @sata_dwc_isr._entry.78, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @sata_dwc_isr._entry_ptr.80, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.81, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 601, i32 3}
!196 = !{ptr @sata_dwc_isr.__UNIQUE_ID_ddebug395, !195, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!197 = !{ptr @.str.83, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 607, i32 3}
!199 = !{ptr @sata_dwc_isr._entry.82, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @sata_dwc_isr._entry_ptr.84, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.85, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 614, i32 2}
!203 = !{ptr @sata_dwc_isr.__UNIQUE_ID_ddebug396, !202, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!204 = !{ptr @sata_dwc_isr._entry.86, !205, !"_entry", i1 false, i1 false}
!205 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 628, i32 4}
!206 = !{ptr @sata_dwc_isr._entry_ptr.87, !205, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.88, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 639, i32 4}
!209 = !{ptr @sata_dwc_isr.__UNIQUE_ID_ddebug397, !208, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!210 = !{ptr @.str.89, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 647, i32 3}
!212 = !{ptr @sata_dwc_isr.__UNIQUE_ID_ddebug398, !211, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!213 = !{ptr @.str.91, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 653, i32 5}
!215 = !{ptr @sata_dwc_isr._entry.90, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @sata_dwc_isr._entry_ptr.92, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.94, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 665, i32 3}
!219 = !{ptr @sata_dwc_isr._entry.93, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @sata_dwc_isr._entry_ptr.95, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.96, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 678, i32 3}
!223 = !{ptr @sata_dwc_isr.__UNIQUE_ID_ddebug399, !222, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!224 = !{ptr @.str.97, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 429, i32 2}
!226 = !{ptr @.str.98, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @sata_dwc_error_intr._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @sata_dwc_error_intr._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = distinct !{null, !230, !"__already_done", i1 false, i1 false}
!230 = !{!"../include/trace/events/libata.h", i32 409, i32 1}
!231 = distinct !{null, !230, !"__warned", i1 false, i1 false}
!232 = !{ptr @.str.99, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 269, i32 10}
!234 = !{ptr @.str.100, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 271, i32 10}
!236 = !{ptr @.str.101, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 273, i32 10}
!238 = !{ptr @.str.102, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 275, i32 10}
!240 = !{ptr @.str.103, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 277, i32 10}
!242 = !{ptr @.str.104, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 279, i32 10}
!244 = !{ptr @.str.105, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 281, i32 10}
!246 = !{ptr @.str.106, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 283, i32 10}
!248 = !{ptr @.str.107, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 285, i32 10}
!250 = !{ptr @sata_dwc_sht, !251, !"sata_dwc_sht", i1 false, i1 false}
!251 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 1081, i32 34}
!252 = !{ptr @.str.108, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 1231, i32 2}
!254 = !{ptr @.str.109, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @sata_dwc_remove.__UNIQUE_ID_ddebug409, !253, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!256 = !{ptr @sata_dwc_match, !257, !"sata_dwc_match", i1 false, i1 false}
!257 = !{!"../drivers/ata/sata_dwc_460ex.c", i32 1235, i32 34}
!258 = !{!"sp"}
!259 = !{i32 1, !"wchar_size", i32 2}
!260 = !{i32 1, !"min_enum_size", i32 4}
!261 = !{i32 8, !"branch-target-enforcement", i32 0}
!262 = !{i32 8, !"sign-return-address", i32 0}
!263 = !{i32 8, !"sign-return-address-all", i32 0}
!264 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!265 = !{i32 7, !"uwtable", i32 1}
!266 = !{i32 7, !"frame-pointer", i32 2}
!267 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!268 = !{!"auto-init"}
!269 = !{i64 2148724012, i64 2148724017, i64 2148724030, i64 2148724074, i64 2148724108, i64 2148724129}
!270 = !{i64 6300003}
!271 = !{i64 6299585}
!272 = !{!"branch_weights", i32 1, i32 2000}
!273 = !{!"branch_weights", i32 2000, i32 1}
!274 = !{i64 2156339442}
!275 = !{i64 2156339639}
!276 = !{i64 2149397225}
!277 = !{i64 2149398261}
!278 = !{i64 2156356098}
!279 = !{i64 2156356315}
!280 = !{i64 2156394033}
!281 = !{i64 2156394248}
