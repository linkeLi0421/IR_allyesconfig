; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_pxa.c_pt.bc'
source_filename = "../drivers/ata/pata_pxa.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pata_pxa_pdata = type { i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.pata_pxa_data = type { ptr, i32, %struct.completion }
%struct.dma_tx_state = type { i32, i32, i32, i32 }

@__initcall__kmod_pata_pxa__287_318_pxa_ata_driver_init6 = internal global ptr @pxa_ata_driver_init, section ".initcall6.init", align 4
@pxa_ata_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pxa_ata_probe, ptr @pxa_ata_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pxa_ata_driver_exit = internal global ptr @pxa_ata_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author288 = internal constant [52 x i8] c"pata_pxa.author=Marek Vasut <marek.vasut@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description289 = internal constant [60 x i8] c"pata_pxa.description=DMA-capable driver for PATA on PXA CPU\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [35 x i8] c"pata_pxa.file=drivers/ata/pata_pxa\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [21 x i8] c"pata_pxa.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version292 = internal constant [21 x i8] c"pata_pxa.version=0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pata_pxa\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_alias293 = internal constant [33 x i8] c"pata_pxa.alias=platform:pata_pxa\00", section ".modinfo", align 1
@pxa_ata_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 180, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid number of resources\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pxa_ata_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/ata/pata_pxa.c\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pxa_ata_probe._entry_ptr = internal global ptr @pxa_ata_probe._entry, section ".printk_index", align 4
@pxa_ata_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr @pxa_check_atapi_dma, ptr @pxa_qc_prep, ptr null, ptr null, ptr @ata_cable_40wire, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pxa_irq_clear, ptr null, ptr @pxa_bmdma_setup, ptr @pxa_bmdma_start, ptr @pxa_bmdma_stop, ptr @pxa_bmdma_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@pxa_ata_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 283, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dma configuration failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@pxa_ata_probe._entry_ptr.11 = internal global ptr @pxa_ata_probe._entry.9, section ".printk_index", align 4
@pxa_ata_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@pxa_qc_prep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ata%u.%02u: prep_slave_sg() failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pxa_qc_prep\00", [20 x i8] zeroinitializer }, align 32
@pxa_qc_prep._entry_ptr = internal global ptr @pxa_qc_prep._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@pxa_bmdma_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013ata%u.%02u: Timeout waiting for DMA completion!\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pxa_bmdma_stop\00", [17 x i8] zeroinitializer }, align 32
@pxa_bmdma_stop._entry_ptr = internal global ptr @pxa_bmdma_stop._entry, section ".printk_index", align 4
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"pxa_ata_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 310, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 323, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 180, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"pxa_ata_port_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 143, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 278, i32 41 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 283, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [12 x i8] c"pxa_ata_sht\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 139, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 60, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 87, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [26 x i8] c"../drivers/ata/pata_pxa.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 100, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author288, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__UNIQUE_ID_version292, ptr @__exitcall_pxa_ata_driver_exit, ptr @__initcall__kmod_pata_pxa__287_318_pxa_ata_driver_init6, ptr @__modver_attr, ptr @pxa_ata_driver_exit, ptr @pxa_ata_probe._entry, ptr @pxa_ata_probe._entry.9, ptr @pxa_ata_probe._entry_ptr, ptr @pxa_ata_probe._entry_ptr.11, ptr @pxa_bmdma_stop._entry, ptr @pxa_bmdma_stop._entry_ptr, ptr @pxa_qc_prep._entry, ptr @pxa_qc_prep._entry_ptr, ptr @pxa_ata_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @pxa_ata_port_ops, ptr @.str.8, ptr @.str.10, ptr @pxa_ata_sht, ptr @.str.12, ptr @.str.13, ptr @init_completion.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ata_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ata_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ata_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ata_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ata_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_qc_prep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_bmdma_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_ata_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pxa_ata_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pxa_ata_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @pxa_ata_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_ata_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %config) #6
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 6
  %2 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_resources, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.not = icmp eq i32 %3, 4
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6, !prof !60

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #6
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end16, !prof !60

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  %call17 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 2048, i32 noundef 0) #6
  %cmp18 = icmp eq ptr %call17, null
  br i1 %cmp18, label %if.end16.cleanup_crit_edge, label %if.end26, !prof !60

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  %call27 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #6
  %cmp28 = icmp eq ptr %call27, null
  br i1 %cmp28, label %if.end26.cleanup_crit_edge, label %if.end36, !prof !60

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %if.end26
  %call38 = tail call ptr @ata_host_alloc(ptr noundef %dev, i32 noundef 1) #6
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.end36.cleanup_crit_edge, label %if.end41

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %if.end36
  %ports = getelementptr inbounds %struct.ata_host, ptr %call38, i32 0, i32 12
  %4 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports, align 4
  %ops = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @pxa_ata_port_ops, ptr %ops, align 4
  %pio_mask = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 15
  %7 = ptrtoint ptr %pio_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 31, ptr %pio_mask, align 16
  %mwdma_mask = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 16
  %8 = ptrtoint ptr %mwdma_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 7, ptr %mwdma_mask, align 4
  %9 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call2, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call2, i32 0, i32 1
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %10
  %add.i = add i32 %sub.i, %12
  %call44 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %10, i32 noundef %add.i) #6
  %ioaddr = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 8
  %13 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call44, ptr %ioaddr, align 32
  %14 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call7, align 4
  %end.i223 = getelementptr inbounds %struct.resource, ptr %call7, i32 0, i32 1
  %16 = ptrtoint ptr %end.i223 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end.i223, align 4
  %sub.i224 = sub i32 1, %15
  %add.i225 = add i32 %sub.i224, %17
  %call48 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %15, i32 noundef %add.i225) #6
  %ctl_addr = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 8, i32 12
  %18 = ptrtoint ptr %ctl_addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call48, ptr %ctl_addr, align 16
  %19 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call17, align 4
  %end.i226 = getelementptr inbounds %struct.resource, ptr %call17, i32 0, i32 1
  %21 = ptrtoint ptr %end.i226 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end.i226, align 4
  %sub.i227 = sub i32 1, %20
  %add.i228 = add i32 %sub.i227, %22
  %call53 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %20, i32 noundef %add.i228) #6
  %bmdma_addr = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 8, i32 13
  %23 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call53, ptr %bmdma_addr, align 4
  %24 = ptrtoint ptr %ctl_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctl_addr, align 16
  %altstatus_addr = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 8, i32 11
  %26 = ptrtoint ptr %altstatus_addr to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %altstatus_addr, align 4
  %27 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioaddr, align 32
  %reg_shift = getelementptr inbounds %struct.pata_pxa_pdata, ptr %1, i32 0, i32 1
  %data_addr = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 8, i32 1
  %29 = ptrtoint ptr %data_addr to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %data_addr, align 4
  %30 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg_shift, align 4
  %shl64 = shl nuw i32 1, %31
  %add.ptr65 = getelementptr i8, ptr %28, i32 %shl64
  %error_addr = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 8, i32 2
  %32 = ptrtoint ptr %error_addr to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr65, ptr %error_addr, align 8
  %33 = load i32, ptr %reg_shift, align 4
  %shl70 = shl nuw i32 1, %33
  %add.ptr71 = getelementptr i8, ptr %28, i32 %shl70
  %feature_addr = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 8, i32 3
  %34 = ptrtoint ptr %feature_addr to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr71, ptr %feature_addr, align 4
  %35 = load i32, ptr %reg_shift, align 4
  %shl76 = shl i32 2, %35
  %add.ptr77 = getelementptr i8, ptr %28, i32 %shl76
  %nsect_addr = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 8, i32 4
  %36 = ptrtoint ptr %nsect_addr to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr77, ptr %nsect_addr, align 16
  %37 = load i32, ptr %reg_shift, align 4
  %shl82 = shl i32 3, %37
  %add.ptr83 = getelementptr i8, ptr %28, i32 %shl82
  %lbal_addr = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 8, i32 5
  %38 = ptrtoint ptr %lbal_addr to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr83, ptr %lbal_addr, align 4
  %39 = load i32, ptr %reg_shift, align 4
  %shl88 = shl i32 4, %39
  %add.ptr89 = getelementptr i8, ptr %28, i32 %shl88
  %lbam_addr = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 8, i32 6
  %40 = ptrtoint ptr %lbam_addr to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr89, ptr %lbam_addr, align 8
  %41 = load i32, ptr %reg_shift, align 4
  %shl94 = shl i32 5, %41
  %add.ptr95 = getelementptr i8, ptr %28, i32 %shl94
  %lbah_addr = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 8, i32 7
  %42 = ptrtoint ptr %lbah_addr to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr95, ptr %lbah_addr, align 4
  %43 = load i32, ptr %reg_shift, align 4
  %shl100 = shl i32 6, %43
  %add.ptr101 = getelementptr i8, ptr %28, i32 %shl100
  %device_addr = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 8, i32 8
  %44 = ptrtoint ptr %device_addr to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr101, ptr %device_addr, align 32
  %45 = load i32, ptr %reg_shift, align 4
  %shl106 = shl i32 7, %45
  %add.ptr107 = getelementptr i8, ptr %28, i32 %shl106
  %status_addr = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 8, i32 9
  %46 = ptrtoint ptr %status_addr to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr107, ptr %status_addr, align 4
  %47 = load i32, ptr %reg_shift, align 4
  %shl112 = shl i32 7, %47
  %add.ptr113 = getelementptr i8, ptr %28, i32 %shl112
  %command_addr = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 8, i32 10
  %48 = ptrtoint ptr %command_addr to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr113, ptr %command_addr, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 64, i32 noundef 3520) #6
  %tobool117.not = icmp eq ptr %call.i, null
  br i1 %tobool117.not, label %if.end41.cleanup_crit_edge, label %if.end119

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end119:                                        ; preds = %if.end41
  %private_data = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 48
  %49 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %private_data, align 4
  %50 = call ptr @memset(ptr %config, i32 0, i32 48)
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 3
  %51 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %src_addr_width, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 4
  %52 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %dst_addr_width, align 4
  %53 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %call17, align 4
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 1
  %55 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %src_addr, align 4
  %56 = load i32, ptr %call17, align 4
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 2
  %57 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %dst_addr, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 5
  %58 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 32, ptr %src_maxburst, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 6
  %59 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 32, ptr %dst_maxburst, align 4
  %call.i229 = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.8) #6
  %cmp.i.i = icmp ugt ptr %call.i229, inttoptr (i32 -4096 to ptr)
  %spec.select.i = select i1 %cmp.i.i, ptr null, ptr %call.i229
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %spec.select.i, ptr %call.i, align 4
  %tobool125.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool125.not, label %if.end119.cleanup_crit_edge, label %if.end127

if.end119.cleanup_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end127:                                        ; preds = %if.end119
  %61 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %spec.select.i, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %62, i32 0, i32 44
  %63 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %64, null
  br i1 %tobool.not.i, label %if.end127.do.end134_crit_edge, label %dmaengine_slave_config.exit

if.end127.do.end134_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end134

dmaengine_slave_config.exit:                      ; preds = %if.end127
  %call.i230 = call i32 %64(ptr noundef nonnull %spec.select.i, ptr noundef nonnull %config) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i230)
  %cmp130 = icmp slt i32 %call.i230, 0
  br i1 %cmp130, label %dmaengine_slave_config.exit.do.end134_crit_edge, label %if.end136

dmaengine_slave_config.exit.do.end134_crit_edge:  ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end134

do.end134:                                        ; preds = %dmaengine_slave_config.exit.do.end134_crit_edge, %if.end127.do.end134_crit_edge
  %retval.0.i233 = phi i32 [ %call.i230, %dmaengine_slave_config.exit.do.end134_crit_edge ], [ -38, %if.end127.do.end134_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i233) #9
  br label %cleanup

if.end136:                                        ; preds = %dmaengine_slave_config.exit
  %65 = ptrtoint ptr %call27 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %call27, align 4
  %irq_flags = getelementptr inbounds %struct.pata_pxa_pdata, ptr %1, i32 0, i32 2
  %67 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %irq_flags, align 4
  %call138 = call i32 @ata_host_activate(ptr noundef nonnull %call38, i32 noundef %66, ptr noundef nonnull @ata_sff_interrupt, i32 noundef %68, ptr noundef nonnull @pxa_ata_sht) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.end136.cleanup_crit_edge, label %if.then140

if.end136.cleanup_crit_edge:                      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then140:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call.i, align 4
  call void @dma_release_channel(ptr noundef %70) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then140, %if.end136.cleanup_crit_edge, %do.end134, %if.end119.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.0.i233, %do.end134 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ], [ -22, %if.end26.cleanup_crit_edge ], [ -12, %if.end36.cleanup_crit_edge ], [ -12, %if.end41.cleanup_crit_edge ], [ -16, %if.end119.cleanup_crit_edge ], [ %call138, %if.then140 ], [ 0, %if.end136.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_ata_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void @dma_release_channel(ptr noundef %7) #6
  tail call void @ata_host_detach(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pxa_check_atapi_dma(ptr nocapture noundef readnone %qc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_qc_prep(ptr nocapture noundef readonly %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %flags = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_dir = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 11
  %6 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %cond = select i1 %cmp, i32 1, i32 2
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %sg = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 17
  %10 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sg, align 4
  %n_elem = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 9
  %12 = ptrtoint ptr %n_elem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_elem, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %lor.lhs.false.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false.i:                                  ; preds = %if.end
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 39
  %16 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %17, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.end_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.do.end_crit_edge:                ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %17(ptr noundef nonnull %9, ptr noundef %11, i32 noundef %13, i32 noundef %cond, i32 noundef 1, ptr noundef null) #6
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %dmaengine_prep_slave_sg.exit.do.end_crit_edge, label %if.end8

dmaengine_prep_slave_sg.exit.do.end_crit_edge:    ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %dmaengine_prep_slave_sg.exit.do.end_crit_edge, %lor.lhs.false2.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 128
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 128
  %print_id = getelementptr inbounds %struct.ata_port, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pmp, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %19, i32 0, i32 1
  %28 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %devno, align 4
  %add = add i32 %29, %27
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %25, i32 noundef %add) #9
  br label %cleanup

if.end8:                                          ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %30 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @pxa_ata_dma_irq, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %31 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %3, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %32 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_submit.i, align 4
  %call.i24 = tail call i32 %33(ptr noundef nonnull %call.i) #6
  %dma_cookie = getelementptr inbounds %struct.pata_pxa_data, ptr %3, i32 0, i32 1
  %34 = ptrtoint ptr %dma_cookie to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call.i24, ptr %dma_cookie, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_40wire(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @pxa_irq_clear(ptr nocapture noundef %ap) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa_bmdma_setup(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %ops = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %sff_exec_command = getelementptr inbounds %struct.ata_port_operations, ptr %3, i32 0, i32 43
  %4 = ptrtoint ptr %sff_exec_command to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sff_exec_command, align 4
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  tail call void %5(ptr noundef %1, ptr noundef %tf) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa_bmdma_start(ptr nocapture noundef readonly %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dma_done = getelementptr inbounds %struct.pata_pxa_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dma_done to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dma_done, align 4
  %wait.i = getelementptr inbounds %struct.pata_pxa_data, ptr %3, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #6
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 50
  %9 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %10(ptr noundef %6) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa_bmdma_stop(ptr nocapture noundef readonly %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dma_cookie = getelementptr inbounds %struct.pata_pxa_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dma_cookie to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_cookie, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 49
  %10 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_tx_status.i, align 4
  %call.i = tail call i32 %11(ptr noundef %5, i32 noundef %7, ptr noundef null) #6
  %12 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %land.lhs.true2 [
    i32 3, label %entry.if.end_crit_edge
    i32 0, label %entry.if.end_crit_edge19
  ]

entry.if.end_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true2:                                   ; preds = %entry
  %dma_done = getelementptr inbounds %struct.pata_pxa_data, ptr %3, i32 0, i32 2
  %call3 = tail call i32 @wait_for_completion_timeout(ptr noundef %dma_done, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true2.if.end_crit_edge, label %do.end

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 128
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 128
  %print_id = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pmp, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %14, i32 0, i32 1
  %23 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %devno, align 4
  %add = add i32 %24, %22
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %20, i32 noundef %add) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true2.if.end_crit_edge, %entry.if.end_crit_edge, %entry.if.end_crit_edge19
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %28, i32 0, i32 47
  %29 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.end.dmaengine_terminate_all.exit_crit_edge, label %if.then.i

if.end.dmaengine_terminate_all.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i18 = tail call i32 %30(ptr noundef %26) #6
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %if.end.dmaengine_terminate_all.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @pxa_bmdma_status(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  %state = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state) #6
  %2 = call ptr @memset(ptr %state, i32 255, i32 16)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %dma_cookie = getelementptr inbounds %struct.pata_pxa_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dma_cookie to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_cookie, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 49
  %9 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device_tx_status.i, align 4
  %call.i = call i32 %10(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  %spec.select = select i1 %cmp.not, i8 4, i8 6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state) #6
  ret i8 %spec.select
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa_ata_dma_irq(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 4
  %dma_cookie = getelementptr inbounds %struct.pata_pxa_data, ptr %d, i32 0, i32 1
  %2 = ptrtoint ptr %dma_cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_cookie, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 49
  %6 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_tx_status.i, align 4
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef %3, ptr noundef null) #6
  %8 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %call.i, label %entry.if.end_crit_edge [
    i32 3, label %entry.if.then_crit_edge
    i32 0, label %entry.if.then_crit_edge5
  ]

entry.if.then_crit_edge5:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge5
  %dma_done = getelementptr inbounds %struct.pata_pxa_data, ptr %d, i32 0, i32 2
  tail call void @complete(ptr noundef %dma_done) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !46, !47, !48, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__initcall__kmod_pata_pxa__287_318_pxa_ata_driver_init6, !1, !"__initcall__kmod_pata_pxa__287_318_pxa_ata_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_pxa.c", i32 318, i32 1}
!2 = !{ptr @__exitcall_pxa_ata_driver_exit, !1, !"__exitcall_pxa_ata_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author288, !4, !"__UNIQUE_ID_author288", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_pxa.c", i32 320, i32 1}
!5 = !{ptr @__UNIQUE_ID_description289, !6, !"__UNIQUE_ID_description289", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_pxa.c", i32 321, i32 1}
!7 = !{ptr @__UNIQUE_ID_file290, !8, !"__UNIQUE_ID_file290", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_pxa.c", i32 322, i32 1}
!9 = !{ptr @__UNIQUE_ID_license291, !8, !"__UNIQUE_ID_license291", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version292, !11, !"__UNIQUE_ID_version292", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_pxa.c", i32 323, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_alias293, !17, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_pxa.c", i32 324, i32 1}
!18 = !{ptr @pxa_ata_driver, !19, !"pxa_ata_driver", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_pxa.c", i32 310, i32 31}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_pxa.c", i32 180, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @pxa_ata_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @pxa_ata_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/ata/pata_pxa.c", i32 278, i32 41}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/ata/pata_pxa.c", i32 283, i32 3}
!32 = !{ptr @pxa_ata_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @pxa_ata_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @pxa_ata_port_ops, !35, !"pxa_ata_port_ops", i1 false, i1 false}
!35 = !{!"../drivers/ata/pata_pxa.c", i32 143, i32 35}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/ata/pata_pxa.c", i32 60, i32 3}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @pxa_qc_prep._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @pxa_qc_prep._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @init_completion.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../include/linux/completion.h", i32 87, i32 2}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/ata/pata_pxa.c", i32 100, i32 3}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @pxa_bmdma_stop._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @pxa_bmdma_stop._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @pxa_ata_sht, !50, !"pxa_ata_sht", i1 false, i1 false}
!50 = !{!"../drivers/ata/pata_pxa.c", i32 139, i32 34}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"branch_weights", i32 1, i32 2000}
