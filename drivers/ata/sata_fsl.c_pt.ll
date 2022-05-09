; ModuleID = '/llk/IR_all_yes/drivers/ata/sata_fsl.c_pt.bc'
source_filename = "../drivers/ata/sata_fsl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sata_fsl_host_priv = type { ptr, ptr, ptr, i32, i32, %struct.device_attribute, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
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
%struct.sata_fsl_port_priv = type { ptr, i32, ptr, i32 }
%struct.command_desc = type { [32 x i8], [32 x i8], %union.anon.85, [64 x i32], [188 x i32] }
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type { [16 x i8], [16 x i8] }
%struct.prde = type { i32, [8 x i8], i32 }
%struct.cmdhdr_tbl_entry = type { i32, i32, i32, i32 }

@__param_str_intr_coalescing_count = internal constant [31 x i8] c"sata_fsl.intr_coalescing_count\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@intr_coalescing_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_intr_coalescing_count = internal constant %struct.kernel_param { ptr @__param_str_intr_coalescing_count, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @intr_coalescing_count } }, section "__param", align 4
@__UNIQUE_ID_intr_coalescing_counttype288 = internal constant [44 x i8] c"sata_fsl.parmtype=intr_coalescing_count:int\00", section ".modinfo", align 1
@__UNIQUE_ID_intr_coalescing_count289 = internal constant [75 x i8] c"sata_fsl.parm=intr_coalescing_count:INT coalescing count threshold (1..31)\00", section ".modinfo", align 1
@__param_str_intr_coalescing_ticks = internal constant [31 x i8] c"sata_fsl.intr_coalescing_ticks\00", align 1
@intr_coalescing_ticks = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_intr_coalescing_ticks = internal constant %struct.kernel_param { ptr @__param_str_intr_coalescing_ticks, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @intr_coalescing_ticks } }, section "__param", align 4
@__UNIQUE_ID_intr_coalescing_tickstype290 = internal constant [44 x i8] c"sata_fsl.parmtype=intr_coalescing_ticks:int\00", section ".modinfo", align 1
@__UNIQUE_ID_intr_coalescing_ticks291 = internal constant [80 x i8] c"sata_fsl.parm=intr_coalescing_ticks:INT coalescing timer threshold in AHB ticks\00", section ".modinfo", align 1
@__initcall__kmod_sata_fsl__338_1604_fsl_sata_driver_init6 = internal global ptr @fsl_sata_driver_init, section ".initcall6.init", align 4
@fsl_sata_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sata_fsl_probe, ptr @sata_fsl_remove, ptr null, ptr @sata_fsl_suspend, ptr @sata_fsl_resume, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_sata_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsl_sata_driver_exit = internal global ptr @fsl_sata_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file339 = internal constant [35 x i8] c"sata_fsl.file=drivers/ata/sata_fsl\00", section ".modinfo", align 1
@__UNIQUE_ID_license340 = internal constant [21 x i8] c"sata_fsl.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author341 = internal constant [54 x i8] c"sata_fsl.author=Ashish Kalra, Freescale Semiconductor\00", section ".modinfo", align 1
@__UNIQUE_ID_description342 = internal constant [72 x i8] c"sata_fsl.description=Freescale 3.0Gbps SATA controller low level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version343 = internal constant [22 x i8] c"sata_fsl.version=1.10\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sata_fsl\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.10\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fsl-sata\00", [23 x i8] zeroinitializer }, align 32
@fsl_sata_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,pq-sata\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,pq-sata-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sata_fsl_port_info = internal constant { [1 x %struct.ata_port_info], [36 x i8] } { [1 x %struct.ata_port_info] [%struct.ata_port_info { i32 787618, i32 0, i32 31, i32 0, i32 127, ptr @sata_fsl_ops, ptr null }], [36 x i8] zeroinitializer }, align 32
@sata_fsl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1437, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Sata FSL Platform/CSB Driver init\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sata_fsl_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/ata/sata_fsl.c\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sata_fsl_probe._entry_ptr = internal global ptr @sata_fsl_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,mpc8315-sata\00", [47 x i8] zeroinitializer }, align 32
@sata_fsl_probe.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.6, ptr @.str.10, i8 1, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"@reset i/o = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,pq-sata-v2\00", [17 x i8] zeroinitializer }, align 32
@sata_fsl_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 16, i32 -1, i16 62, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_ncq_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@sata_fsl_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"intr_coalescing\00", [16 x i8] zeroinitializer }, align 32
@sata_fsl_probe.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_watermark\00", [19 x i8] zeroinitializer }, align 32
@sata_fsl_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr @ata_std_qc_defer, ptr null, ptr @sata_fsl_qc_prep, ptr @sata_fsl_qc_issue, ptr @sata_fsl_qc_fill_rtf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sata_fsl_freeze, ptr @sata_fsl_thaw, ptr null, ptr @sata_fsl_softreset, ptr @sata_fsl_hardreset, ptr null, ptr null, ptr @sata_fsl_softreset, ptr null, ptr null, ptr @sata_fsl_error_handler, ptr null, ptr @sata_fsl_post_internal_cmd, ptr null, ptr null, ptr @sata_fsl_scr_read, ptr @sata_fsl_scr_write, ptr @sata_fsl_pmp_attach, ptr @sata_fsl_pmp_detach, ptr null, ptr null, ptr null, ptr @sata_fsl_port_start, ptr @sata_fsl_port_stop, ptr @sata_fsl_host_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sata_pmp_port_ops }, [44 x i8] zeroinitializer }, align 32
@sata_pmp_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@sata_fsl_qc_prep.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.6, ptr @.str.16, i8 0, i8 -123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sata_fsl_qc_prep\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ata%u: SATA FSL : di = 0x%x, ttl = %d, num_prde = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@sata_fsl_tag.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.6, ptr @.str.18, i8 0, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sata_fsl_tag\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ata%u: tag %d invalid : out of range\0A\00", [58 x i8] zeroinitializer }, align 32
@sata_fsl_tag.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.6, ptr @.str.19, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ata%u: tag %d invalid : in use!!\0A\00", [62 x i8] zeroinitializer }, align 32
@sata_fsl_fill_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.6, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ata%u: s/g addr unaligned : 0x%llx\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sata_fsl_fill_sg\00", [47 x i8] zeroinitializer }, align 32
@sata_fsl_fill_sg._entry_ptr = internal global ptr @sata_fsl_fill_sg._entry, section ".printk_index", align 4
@sata_fsl_fill_sg._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.6, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013ata%u: s/g len unaligned : 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@sata_fsl_fill_sg._entry_ptr.24 = internal global ptr @sata_fsl_fill_sg._entry.22, section ".printk_index", align 4
@sata_fsl_setup_cmd_hdr_entry.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str.6, ptr @.str.26, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sata_fsl_setup_cmd_hdr_entry\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ata%u: cda=0x%x, prde_fis_len=0x%x, ttl=0x%x, di=0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@sata_fsl_qc_issue.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.6, ptr @.str.28, i8 0, i8 -119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sata_fsl_qc_issue\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ata%u: CQ=0x%x,CA=0x%x,CE=0x%x,CC=0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@sata_fsl_qc_issue.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.6, ptr @.str.29, i8 0, i8 -117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ata%u: tag=%d, CQ=0x%x, CA=0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@sata_fsl_qc_issue.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.6, ptr @.str.30, i8 0, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ata%u: CE=0x%x, DE=0x%x, CC=0x%x, CmdStat = 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@sata_fsl_freeze.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.6, ptr @.str.32, i8 0, i8 -96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sata_fsl_freeze\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ata%u: CQ=0x%x, CA=0x%x, CE=0x%x, DE=0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@sata_fsl_freeze.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.6, ptr @.str.33, i8 0, i8 -96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ata%u: CmdStat = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@sata_fsl_freeze.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.6, ptr @.str.34, i8 0, i8 -94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ata%u: HControl = 0x%x, HStatus = 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@sata_fsl_thaw.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.6, ptr @.str.36, i8 0, i8 -91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sata_fsl_thaw\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ata%u: pending IRQs = 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@sata_fsl_thaw.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.6, ptr @.str.34, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sata_fsl_softreset.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.6, ptr @.str.38, i8 0, i8 -18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sata_fsl_softreset\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ata%u: Dumping cfis : 0x%x, 0x%x, 0x%x, 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@sata_fsl_softreset.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.6, ptr @.str.39, i8 0, i8 -16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ata%u: CQ = 0x%x, CA = 0x%x, CC = 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@sata_fsl_softreset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.6, i32 971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014ata%u: ATA_SRST issue failed\0A\00", [32 x i8] zeroinitializer }, align 32
@sata_fsl_softreset._entry_ptr = internal global ptr @sata_fsl_softreset._entry, section ".printk_index", align 4
@sata_fsl_softreset.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.6, ptr @.str.41, i8 0, i8 -13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ata%u: Softreset@5000,CQ=0x%x,CA=0x%x,CC=0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@sata_fsl_softreset.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.6, ptr @.str.42, i8 0, i8 -11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ata%u: HStatus = 0x%x HControl = 0x%x Serror = 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@sata_fsl_softreset.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.6, ptr @.str.43, i8 1, i8 1, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ata%u: ccreg = 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@sata_fsl_softreset.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.6, ptr @.str.44, i8 1, i8 1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ata%u: cereg = 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@sata_fsl_dev_classify.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.45, ptr @.str.6, ptr @.str.46, i8 0, i8 -58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sata_fsl_dev_classify\00", [42 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ata%u: HStatus = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@sata_fsl_dev_classify.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.45, ptr @.str.6, ptr @.str.47, i8 0, i8 -58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ata%u: HControl = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@sata_fsl_hardreset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.6, i32 826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013ata%u: Hardreset failed, not off-lined %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sata_fsl_hardreset\00", [45 x i8] zeroinitializer }, align 32
@sata_fsl_hardreset._entry_ptr = internal global ptr @sata_fsl_hardreset._entry, section ".printk_index", align 4
@sata_fsl_hardreset.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.6, ptr @.str.50, i8 0, i8 -46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"ata%u: hardreset, controller off-lined\0AHStatus = 0x%x HControl = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@sata_fsl_hardreset._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.49, ptr @.str.6, i32 865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ata%u: Hardreset failed, not on-lined\0A\00", [55 x i8] zeroinitializer }, align 32
@sata_fsl_hardreset._entry_ptr.53 = internal global ptr @sata_fsl_hardreset._entry.51, section ".printk_index", align 4
@sata_fsl_hardreset.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.6, ptr @.str.54, i8 0, i8 -38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"ata%u: controller off-lined & on-lined\0AHStatus = 0x%x HControl = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@sata_fsl_hardreset._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.49, ptr @.str.6, i32 883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014ata%u: No Device OR PHYRDY change,Hstatus = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@sata_fsl_hardreset._entry_ptr.57 = internal global ptr @sata_fsl_hardreset._entry.55, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sata_fsl_hardreset._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.49, ptr @.str.6, i32 896, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014ata%u: No Signature Update\0A\00", [34 x i8] zeroinitializer }, align 32
@sata_fsl_hardreset._entry_ptr.60 = internal global ptr @sata_fsl_hardreset._entry.58, section ".printk_index", align 4
@sata_fsl_hardreset._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.49, ptr @.str.6, i32 901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016ata%u: Signature Update detected @ %d msecs\0A\00", [49 x i8] zeroinitializer }, align 32
@sata_fsl_hardreset._entry_ptr.63 = internal global ptr @sata_fsl_hardreset._entry.61, section ".printk_index", align 4
@sata_fsl_scr_read.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.64, ptr @.str.6, ptr @.str.65, i8 0, i8 -100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sata_fsl_scr_read\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ata%u.%02u: reg_in = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@sata_fsl_scr_read.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.64, ptr @.str.6, ptr @.str.66, i8 0, i8 -100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ata%u: reg_in = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@sata_fsl_scr_write.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.67, ptr @.str.6, ptr @.str.65, i8 0, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sata_fsl_scr_write\00", [45 x i8] zeroinitializer }, align 32
@sata_fsl_scr_write.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.67, ptr @.str.6, ptr @.str.66, i8 0, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sata_fsl_port_start.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.68, ptr @.str.6, ptr @.str.69, i8 0, i8 -73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sata_fsl_port_start\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ata%u: CHBA = 0x%lx, cmdentry_phys = 0x%lx\0A\00", [52 x i8] zeroinitializer }, align 32
@sata_fsl_port_start.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.68, ptr @.str.6, ptr @.str.46, i8 0, i8 -69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sata_fsl_port_start.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.68, ptr @.str.6, ptr @.str.47, i8 0, i8 -69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sata_fsl_port_start.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.68, ptr @.str.6, ptr @.str.70, i8 0, i8 -68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ata%u: CHBA  = 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sata_fsl_init_controller.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.6, ptr @.str.72, i8 1, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sata_fsl_init_controller\00", [39 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"icc = 0x%x\0A\00", [20 x i8] zeroinitializer }, align 32
@sata_fsl_init_controller.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.6, ptr @.str.73, i8 1, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HStatus = 0x%x HControl = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@fsl_sata_set_irq_coalescing.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.74, ptr @.str.6, ptr @.str.75, i8 0, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fsl_sata_set_irq_coalescing\00", [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"interrupt coalescing, count = 0x%x, ticks = %x\0A\00", [48 x i8] zeroinitializer }, align 32
@fsl_sata_set_irq_coalescing.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.74, ptr @.str.6, ptr @.str.76, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ICC register status: (hcr base: 0x%p) = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@sata_fsl_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.6, i32 1303, ptr @.str.79, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"interrupt on disabled port 0\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sata_fsl_interrupt\00", [45 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sata_fsl_interrupt._entry_ptr = internal global ptr @sata_fsl_interrupt._entry, section ".printk_index", align 4
@sata_fsl_host_intr.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.6, ptr @.str.81, i8 1, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sata_fsl_host_intr\00", [45 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ata%u: serror @host_intr : 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@sata_fsl_host_intr.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.6, ptr @.str.82, i8 1, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ata%u: error interrupt!!\0A\00", [38 x i8] zeroinitializer }, align 32
@sata_fsl_host_intr.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.6, ptr @.str.83, i8 1, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ata%u: Status of all queues :\0A\00", [33 x i8] zeroinitializer }, align 32
@sata_fsl_host_intr.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.6, ptr @.str.84, i8 1, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"ata%u: done_mask/CC = 0x%x, CA = 0x%x, CE=0x%x,CQ=0x%x,apqa=0x%llx\0A\00", [60 x i8] zeroinitializer }, align 32
@sata_fsl_host_intr.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.6, ptr @.str.85, i8 1, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"ata%u: Status of all queues: done_mask/CC = 0x%x, CA = 0x%x, CE=0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@sata_fsl_host_intr.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.6, ptr @.str.86, i8 1, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ata%u: completing ncq cmd,tag=%d,CC=0x%x,CA=0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@sata_fsl_host_intr.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.6, ptr @.str.87, i8 1, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ata%u: completing non-ncq cmd, CC=0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@sata_fsl_host_intr.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.6, ptr @.str.88, i8 1, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ata%u: spurious interrupt!!, CC = 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@sata_fsl_error_intr.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.89, ptr @.str.6, ptr @.str.90, i8 1, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sata_fsl_error_intr\00", [44 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ata%u: hStat=0x%x,CE=0x%x,DE =0x%x,SErr=0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@sata_fsl_error_intr.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.89, ptr @.str.6, ptr @.str.91, i8 1, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ata%u: PHYRDY change indication\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PHY RDY changed\00", [16 x i8] zeroinitializer }, align 32
@sata_fsl_error_intr.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.89, ptr @.str.6, ptr @.str.94, i8 1, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ata%u: single device error, CE=0x%x, DE=0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@ata_ncq_sdev_groups = external dso_local global [0 x ptr], align 4
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u\09%u\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%u%u\00", [27 x i8] zeroinitializer }, align 32
@fsl_sata_intr_coalescing_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.6, i32 336, ptr @.str.99, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"fsl-sata: wrong parameter format.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fsl_sata_intr_coalescing_store\00", [33 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@fsl_sata_intr_coalescing_store._entry_ptr = internal global ptr @fsl_sata_intr_coalescing_store._entry, section ".printk_index", align 4
@.str.100 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@fsl_sata_rx_watermark_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.101, ptr @.str.6, i32 375, ptr @.str.99, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fsl_sata_rx_watermark_store\00", [36 x i8] zeroinitializer }, align 32
@fsl_sata_rx_watermark_store._entry_ptr = internal global ptr @fsl_sata_rx_watermark_store._entry, section ".printk_index", align 4
@sata_fsl_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.6, i32 1561, ptr @.str.99, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error initializing hardware\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sata_fsl_resume\00", [16 x i8] zeroinitializer }, align 32
@sata_fsl_resume._entry_ptr = internal global ptr @sata_fsl_resume._entry, section ".printk_index", align 4
@___asan_gen_.104 = private unnamed_addr constant [22 x i8] c"intr_coalescing_count\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 26, i32 21 }
@___asan_gen_.107 = private unnamed_addr constant [22 x i8] c"intr_coalescing_ticks\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 31, i32 21 }
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"fsl_sata_driver\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1591, i32 31 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1609, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1593, i32 11 }
@___asan_gen_.125 = private unnamed_addr constant [15 x i8] c"fsl_sata_match\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1579, i32 34 }
@___asan_gen_.128 = private unnamed_addr constant [19 x i8] c"sata_fsl_port_info\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1414, i32 35 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1437, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1446, i32 51 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1452, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1470, i32 50 }
@___asan_gen_.158 = private unnamed_addr constant [13 x i8] c"sata_fsl_sht\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1380, i32 34 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1498, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1499, i32 41 }
@___asan_gen_.167 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1507, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1508, i32 38 }
@___asan_gen_.173 = private unnamed_addr constant [13 x i8] c"sata_fsl_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1386, i32 35 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 534, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 395, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 400, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 461, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 464, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 426, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 547, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 557, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 560, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 637, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 641, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 648, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 661, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 952, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 960, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 971, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 973, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 979, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1028, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1029, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 792, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 793, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 826, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 838, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 865, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 869, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 882, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 896, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 900, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 625, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 601, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 732, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 752, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1344, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1363, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 316, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 318, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1303, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1224, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1229, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1234, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1235, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1247, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1253, i32 5 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1264, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1272, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1081, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1098, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1102, i32 26 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1102, i32 32 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1119, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 325, i32 25 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 335, i32 18 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 336, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 360, i32 25 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 375, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.446 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.447 = private constant [26 x i8] c"../drivers/ata/sata_fsl.c\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1561, i32 3 }
@llvm.compiler.used = appending global [143 x ptr] [ptr @__UNIQUE_ID_author341, ptr @__UNIQUE_ID_description342, ptr @__UNIQUE_ID_file339, ptr @__UNIQUE_ID_intr_coalescing_count289, ptr @__UNIQUE_ID_intr_coalescing_counttype288, ptr @__UNIQUE_ID_intr_coalescing_ticks291, ptr @__UNIQUE_ID_intr_coalescing_tickstype290, ptr @__UNIQUE_ID_license340, ptr @__UNIQUE_ID_version343, ptr @__exitcall_fsl_sata_driver_exit, ptr @__initcall__kmod_sata_fsl__338_1604_fsl_sata_driver_init6, ptr @__modver_attr, ptr @__param_intr_coalescing_count, ptr @__param_intr_coalescing_ticks, ptr @fsl_sata_driver_exit, ptr @fsl_sata_intr_coalescing_store._entry, ptr @fsl_sata_intr_coalescing_store._entry_ptr, ptr @fsl_sata_rx_watermark_store._entry, ptr @fsl_sata_rx_watermark_store._entry_ptr, ptr @sata_fsl_fill_sg._entry, ptr @sata_fsl_fill_sg._entry.22, ptr @sata_fsl_fill_sg._entry_ptr, ptr @sata_fsl_fill_sg._entry_ptr.24, ptr @sata_fsl_hardreset._entry, ptr @sata_fsl_hardreset._entry.51, ptr @sata_fsl_hardreset._entry.55, ptr @sata_fsl_hardreset._entry.58, ptr @sata_fsl_hardreset._entry.61, ptr @sata_fsl_hardreset._entry_ptr, ptr @sata_fsl_hardreset._entry_ptr.53, ptr @sata_fsl_hardreset._entry_ptr.57, ptr @sata_fsl_hardreset._entry_ptr.60, ptr @sata_fsl_hardreset._entry_ptr.63, ptr @sata_fsl_interrupt._entry, ptr @sata_fsl_interrupt._entry_ptr, ptr @sata_fsl_probe._entry, ptr @sata_fsl_probe._entry_ptr, ptr @sata_fsl_resume._entry, ptr @sata_fsl_resume._entry_ptr, ptr @sata_fsl_softreset._entry, ptr @sata_fsl_softreset._entry_ptr, ptr @intr_coalescing_count, ptr @intr_coalescing_ticks, ptr @fsl_sata_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @fsl_sata_match, ptr @sata_fsl_port_info, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @sata_fsl_sht, ptr @sata_fsl_probe.__key, ptr @.str.12, ptr @sata_fsl_probe.__key.13, ptr @.str.14, ptr @sata_fsl_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103], section "llvm.metadata"
@0 = internal global [115 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_coalescing_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_coalescing_ticks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sata_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sata_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_fsl_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_fsl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_fsl_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_fsl_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_fsl_probe.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_fsl_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_fsl_fill_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_fsl_fill_sg._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_fsl_softreset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_fsl_hardreset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_fsl_hardreset._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_fsl_hardreset._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_fsl_hardreset._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_fsl_hardreset._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_fsl_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sata_intr_coalescing_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sata_rx_watermark_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_fsl_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_sata_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_sata_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsl_sata_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_sata_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_fsl_probe(ptr noundef %ofdev) #2 align 64 {
entry:
  %pi = alloca %struct.ata_port_info, align 4
  %ppi = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pi) #10
  %0 = call ptr @memcpy(ptr %pi, ptr @sata_fsl_port_info, i32 28)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #10
  %1 = getelementptr inbounds [2 x ptr], ptr %ppi, i32 0, i32 1
  %2 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pi, ptr %ppi, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.4) #13
  %of_node = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call = call ptr @of_iomap(ptr noundef %5, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end93_crit_edge, label %if.end

entry.if.end93_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call, i32 256
  %add.ptr3 = getelementptr i8, ptr %call, i32 320
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call6 = call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end.do.body13_crit_edge

if.end.do.body13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body13

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #10, !srcloc !284
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %9 = and i32 %8, -520093697
  %10 = or i32 %9, 268435456
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %10) #10, !srcloc !287
  br label %do.body13

do.body13:                                        ; preds = %if.then8, %if.end.do.body13_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_probe.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_probe, %if.then18)) #10
          to label %do.end24 [label %if.then18], !srcloc !288

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #10, !srcloc !284
  %12 = call i32 @llvm.bswap.i32(i32 %11) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_fsl_probe.__UNIQUE_ID_ddebug337, ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %12) #10
  br label %do.end24

do.end24:                                         ; preds = %if.then18, %do.body13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 76) #14
  %tobool26.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool26.not, label %do.end24.if.then92_crit_edge, label %if.end28

do.end24.if.then92_crit_edge:                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then92

if.end28:                                         ; preds = %do.end24
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %call7.i.i, align 8
  %ssr_base30 = getelementptr inbounds %struct.sata_fsl_host_priv, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %ssr_base30 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %ssr_base30, align 4
  %csr_base31 = getelementptr inbounds %struct.sata_fsl_host_priv, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %csr_base31 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr3, ptr %csr_base31, align 8
  %call32 = call i32 @platform_get_irq(ptr noundef %ofdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp = icmp slt i32 %call32, 0
  br i1 %cmp, label %if.end28.if.then92_crit_edge, label %if.end34

if.end28.if.then92_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then92

if.end34:                                         ; preds = %if.end28
  %irq35 = getelementptr inbounds %struct.sata_fsl_host_priv, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %irq35 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call32, ptr %irq35, align 4
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %call38 = call i32 @of_device_is_compatible(ptr noundef %19, ptr noundef nonnull @.str.11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  %spec.select = select i1 %tobool39.not, i32 4194304, i32 268435456
  %20 = getelementptr inbounds %struct.sata_fsl_host_priv, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select, ptr %20, align 8
  %call44 = call ptr @ata_host_alloc_pinfo(ptr noundef %dev, ptr noundef nonnull %ppi, i32 noundef 1) #10
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %if.end34.if.then92_crit_edge, label %if.end47

if.end34.if.then92_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then92

if.end47:                                         ; preds = %if.end34
  %private_data = getelementptr inbounds %struct.ata_host, ptr %call44, i32 0, i32 5
  %22 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %private_data, align 4
  call fastcc void @sata_fsl_init_controller(ptr noundef nonnull %call44)
  %call49 = call i32 @ata_host_activate(ptr noundef nonnull %call44, i32 noundef %call32, ptr noundef nonnull @sata_fsl_interrupt, i32 noundef 128, ptr noundef nonnull @sata_fsl_sht) #10
  %intr_coalescing = getelementptr inbounds %struct.sata_fsl_host_priv, ptr %call7.i.i, i32 0, i32 5
  %show = getelementptr inbounds %struct.sata_fsl_host_priv, ptr %call7.i.i, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %show to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @fsl_sata_intr_coalescing_show, ptr %show, align 8
  %store = getelementptr inbounds %struct.sata_fsl_host_priv, ptr %call7.i.i, i32 0, i32 5, i32 2
  %24 = ptrtoint ptr %store to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @fsl_sata_intr_coalescing_store, ptr %store, align 4
  %key = getelementptr inbounds %struct.sata_fsl_host_priv, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 3
  %25 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @sata_fsl_probe.__key, ptr %key, align 4
  %26 = ptrtoint ptr %intr_coalescing to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.12, ptr %intr_coalescing, align 4
  %mode = getelementptr inbounds %struct.sata_fsl_host_priv, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %27 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 420, ptr %mode, align 8
  %dev59 = getelementptr inbounds %struct.ata_host, ptr %call44, i32 0, i32 1
  %28 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev59, align 4
  %call61 = call i32 @device_create_file(ptr noundef %29, ptr noundef %intr_coalescing) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end47.if.end90.thread_crit_edge

if.end47.if.end90.thread_crit_edge:               ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90.thread

if.end64:                                         ; preds = %if.end47
  %rx_watermark = getelementptr inbounds %struct.sata_fsl_host_priv, ptr %call7.i.i, i32 0, i32 6
  %show65 = getelementptr inbounds %struct.sata_fsl_host_priv, ptr %call7.i.i, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %show65 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @fsl_sata_rx_watermark_show, ptr %show65, align 4
  %store67 = getelementptr inbounds %struct.sata_fsl_host_priv, ptr %call7.i.i, i32 0, i32 6, i32 2
  %31 = ptrtoint ptr %store67 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @fsl_sata_rx_watermark_store, ptr %store67, align 8
  %key71 = getelementptr inbounds %struct.sata_fsl_host_priv, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 3
  %32 = ptrtoint ptr %key71 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @sata_fsl_probe.__key.13, ptr %key71, align 8
  %33 = ptrtoint ptr %rx_watermark to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.14, ptr %rx_watermark, align 8
  %mode79 = getelementptr inbounds %struct.sata_fsl_host_priv, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 1
  %34 = ptrtoint ptr %mode79 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 420, ptr %mode79, align 4
  %35 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev59, align 4
  %call82 = call i32 @device_create_file(ptr noundef %36, ptr noundef %rx_watermark) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end64.cleanup_crit_edge, label %if.then84

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then84:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  call void @device_remove_file(ptr noundef %dev, ptr noundef %intr_coalescing) #10
  br label %if.end90.thread

if.end90.thread:                                  ; preds = %if.then84, %if.end47.if.end90.thread_crit_edge
  %retval1.0 = phi i32 [ %call61, %if.end47.if.end90.thread_crit_edge ], [ %call82, %if.then84 ]
  call void @ata_host_detach(ptr noundef nonnull %call44) #10
  br label %if.then92

if.then92:                                        ; preds = %if.end90.thread, %if.end34.if.then92_crit_edge, %if.end28.if.then92_crit_edge, %do.end24.if.then92_crit_edge
  %retval1.0158161 = phi i32 [ %retval1.0, %if.end90.thread ], [ -6, %do.end24.if.then92_crit_edge ], [ %call32, %if.end28.if.then92_crit_edge ], [ -12, %if.end34.if.then92_crit_edge ]
  call void @iounmap(ptr noundef nonnull %call) #10
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %entry.if.end93_crit_edge
  %host_priv.0157164 = phi ptr [ %call7.i.i, %if.then92 ], [ null, %entry.if.end93_crit_edge ]
  %retval1.0158162 = phi i32 [ %retval1.0158161, %if.then92 ], [ -6, %entry.if.end93_crit_edge ]
  call void @kfree(ptr noundef %host_priv.0157164) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %if.end64.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0158162, %if.end93 ], [ 0, %if.end64.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pi) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_fsl_remove(ptr noundef %ofdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3
  %intr_coalescing = getelementptr inbounds %struct.sata_fsl_host_priv, ptr %3, i32 0, i32 5
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %intr_coalescing) #10
  %rx_watermark = getelementptr inbounds %struct.sata_fsl_host_priv, ptr %3, i32 0, i32 6
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef %rx_watermark) #10
  tail call void @ata_host_detach(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_fsl_suspend(ptr nocapture noundef readonly %op, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @ata_host_suspend(ptr noundef %1, [1 x i32] %state.coerce) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_fsl_resume(ptr nocapture noundef readonly %op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %ports = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports, align 4
  %private_data2 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 48
  %8 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data2, align 4
  tail call fastcc void @sata_fsl_init_controller(ptr noundef %1)
  %cmdslot_paddr = getelementptr inbounds %struct.sata_fsl_port_priv, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %cmdslot_paddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmdslot_paddr, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #10, !srcloc !287
  %add.ptr4 = getelementptr i8, ptr %5, i32 44
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #10, !srcloc !284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %14 = or i32 %13, 393344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %14) #10, !srcloc !287
  tail call void @ata_host_resume(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc_pinfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sata_fsl_init_controller(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 44
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %5 = and i32 %4, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #10, !srcloc !287
  %add.ptr3 = getelementptr i8, ptr %3, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #10, !srcloc !284
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %and5 = and i32 %7, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  %8 = shl nuw nsw i32 %and5, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %8) #10, !srcloc !287
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %10 = and i32 %9, -1056964609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #10, !srcloc !287
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_init_controller.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_init_controller, %if.then16)) #10
          to label %do.end [label %if.then16], !srcloc !288

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %add.ptr17 = getelementptr i8, ptr %3, i32 56
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #10, !srcloc !284
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_fsl_init_controller.__UNIQUE_ID_ddebug335, ptr noundef %12, ptr noundef nonnull @.str.72, i32 noundef %14) #10
  br label %do.end

do.end:                                           ; preds = %if.then16, %if.end
  %add.ptr20 = getelementptr i8, ptr %3, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 1) #10, !srcloc !287
  %add.ptr21 = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 -65536) #10, !srcloc !287
  %add.ptr22 = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 -65536) #10, !srcloc !287
  %15 = load i32, ptr @intr_coalescing_count, align 4
  %16 = load i32, ptr @intr_coalescing_ticks, align 4
  tail call fastcc void @fsl_sata_set_irq_coalescing(ptr noundef %host, i32 noundef %15, i32 noundef %16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_init_controller.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_init_controller, %if.then35)) #10
          to label %do.end43 [label %if.then35], !srcloc !288

if.then35:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev36 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %17 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev36, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #10, !srcloc !284
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !284
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sata_fsl_init_controller.__UNIQUE_ID_ddebug336, ptr noundef %18, ptr noundef nonnull @.str.73, i32 noundef %20, i32 noundef %22) #10
  br label %do.end43

do.end43:                                         ; preds = %if.then35, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_fsl_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 40
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !284
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %and = and i32 %5, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %dev_instance) #10
  %ports = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 12
  %6 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %do.end, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @sata_fsl_host_intr(ptr noundef nonnull %7)
  br label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.77) #13
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.then3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  %10 = shl nuw nsw i32 %and, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #10, !srcloc !287
  tail call void @_raw_spin_unlock(ptr noundef %dev_instance) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end4 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_sata_intr_coalescing_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @intr_coalescing_count, align 4
  %1 = load i32, ptr @intr_coalescing_ticks, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.95, i32 noundef %0, i32 noundef %1) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_sata_intr_coalescing_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %coalescing_count = alloca i32, align 4
  %coalescing_ticks = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %coalescing_count) #10
  %0 = ptrtoint ptr %coalescing_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %coalescing_count, align 4, !annotation !289
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %coalescing_ticks) #10
  %1 = ptrtoint ptr %coalescing_ticks to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %coalescing_ticks, align 4, !annotation !289
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.96, ptr noundef nonnull %coalescing_count, ptr noundef nonnull %coalescing_ticks)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.97) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %coalescing_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %coalescing_count, align 4
  %6 = ptrtoint ptr %coalescing_ticks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %coalescing_ticks, align 4
  call fastcc void @fsl_sata_set_irq_coalescing(ptr noundef %3, i32 noundef %5, i32 noundef %7)
  %call2 = call i32 @strlen(ptr noundef %buf) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call2, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %coalescing_ticks) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %coalescing_count) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_sata_rx_watermark_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %csr_base1 = getelementptr inbounds %struct.sata_fsl_host_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %csr_base1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr_base1, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !284
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %and = and i32 %7, 31
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call4) #10
  %call9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.100, i32 noundef %and) #10
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_sata_rx_watermark_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %rx_watermark = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_watermark) #10
  %0 = ptrtoint ptr %rx_watermark to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rx_watermark, align 4, !annotation !289
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %csr_base1 = getelementptr inbounds %struct.sata_fsl_host_priv, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %csr_base1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %csr_base1, align 4
  %call2 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %rx_watermark) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %do.body4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.97) #13
  br label %cleanup

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %7 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #10, !srcloc !284
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %8 = and i32 %7, -520093697
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %rx_watermark to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_watermark, align 4
  %or = or i32 %9, %11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  call void @arm_heavy_mb() #10
  %12 = call i32 @llvm.bswap.i32(i32 %or) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %12) #10, !srcloc !287
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %call7) #10
  %call15 = call i32 @strlen(ptr noundef %buf) #15
  br label %cleanup

cleanup:                                          ; preds = %do.body4, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call15, %do.body4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_watermark) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_qc_defer(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_fsl_qc_prep(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %hw_tag = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 8
  %8 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw_tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %9)
  %cmp.i = icmp ugt i32 %9, 15
  br i1 %cmp.i, label %do.body.i, label %if.end10.i, !prof !290

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_tag.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_qc_prep, %if.then9.i)) #10
          to label %sata_fsl_tag.exit [label %if.then9.i], !srcloc !288

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %print_id.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_tag.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.18, i32 noundef %11, i32 noundef %9) #10
  br label %sata_fsl_tag.exit

if.end10.i:                                       ; preds = %entry
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !284
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %shl.i = shl nuw nsw i32 1, %9
  %and.i = and i32 %15, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.sata_fsl_tag.exit_crit_edge, label %do.body20.i, !prof !291

if.end10.i.sata_fsl_tag.exit_crit_edge:           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sata_fsl_tag.exit

do.body20.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_tag.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_qc_prep, %if.then32.i)) #10
          to label %sata_fsl_tag.exit [label %if.then32.i], !srcloc !288

if.then32.i:                                      ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #12
  %print_id33.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %print_id33.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %print_id33.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_tag.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.19, i32 noundef %17, i32 noundef %9) #10
  br label %sata_fsl_tag.exit

sata_fsl_tag.exit:                                ; preds = %if.then32.i, %do.body20.i, %if.end10.i.sata_fsl_tag.exit_crit_edge, %if.then9.i, %do.body.i
  %retval.0.i49 = phi i32 [ 0, %if.then9.i ], [ 0, %if.then32.i ], [ %9, %if.end10.i.sata_fsl_tag.exit_crit_edge ], [ 0, %do.body.i ], [ 0, %do.body20.i ]
  %cmdentry = getelementptr inbounds %struct.sata_fsl_port_priv, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %cmdentry to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmdentry, align 4
  %add.ptr = getelementptr %struct.command_desc, ptr %19, i32 %retval.0.i49
  %cmdentry_paddr = getelementptr inbounds %struct.sata_fsl_port_priv, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %cmdentry_paddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmdentry_paddr, align 4
  %mul = mul nuw nsw i32 %retval.0.i49, 1104
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 128
  %pmp = getelementptr inbounds %struct.ata_link, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pmp, align 4
  %conv = trunc i32 %27 to i8
  tail call void @ata_tf_to_fis(ptr noundef %tf, i8 noundef zeroext %conv, i32 noundef 1, ptr noundef %add.ptr) #10
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %protocol, align 4
  %30 = and i8 %29, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.i.not = icmp eq i8 %30, 0
  br i1 %tobool.i.not, label %sata_fsl_tag.exit.if.end_crit_edge, label %if.then

sata_fsl_tag.exit.if.end_crit_edge:               ; preds = %sata_fsl_tag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %sata_fsl_tag.exit
  call void @__sanitizer_cov_trace_pc() #12
  %31 = getelementptr %struct.command_desc, ptr %19, i32 %retval.0.i49, i32 2
  %32 = call ptr @memset(ptr %31, i32 0, i32 32)
  %cdb = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 5
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %cdb_len = getelementptr inbounds %struct.ata_device, ptr %34, i32 0, i32 17
  %35 = ptrtoint ptr %cdb_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cdb_len, align 32
  %37 = call ptr @memcpy(ptr %31, ptr %cdb, i32 %36)
  br label %if.end

if.end:                                           ; preds = %if.then, %sata_fsl_tag.exit.if.end_crit_edge
  %desc_info.0 = phi i32 [ 2592, %if.then ], [ 2560, %sata_fsl_tag.exit.if.end_crit_edge ]
  %flags = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  %and = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %if.end
  %data_snoop = getelementptr inbounds %struct.sata_fsl_host_priv, ptr %7, i32 0, i32 4
  %40 = ptrtoint ptr %data_snoop to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_snoop, align 4
  %n_elem.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 9
  %42 = ptrtoint ptr %n_elem.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n_elem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp73.not.i = icmp eq i32 %43, 0
  br i1 %cmp73.not.i, label %if.then7.if.end9_crit_edge, label %for.body.lr.ph.i

if.then7.if.end9_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

for.body.lr.ph.i:                                 ; preds = %if.then7
  %sg2.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 17
  %44 = ptrtoint ptr %sg2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sg2.i, align 4
  %add = add nuw nsw i32 %mul, 352
  %add1.i = add i32 %add, %21
  %prdt.i = getelementptr %struct.command_desc, ptr %19, i32 %retval.0.i49, i32 3
  %46 = tail call i32 @llvm.bswap.i32(i32 %add1.i) #10
  br label %for.body.i

for.body.i:                                       ; preds = %if.end28.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %sg.080.i = phi ptr [ %45, %for.body.lr.ph.i ], [ %call39.i, %if.end28.i.for.body.i_crit_edge ]
  %num_prde.079.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc32.i, %if.end28.i.for.body.i_crit_edge ]
  %si.078.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc38.i, %if.end28.i.for.body.i_crit_edge ]
  %indirect_ext_segment_sz.077.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %spec.select.i, %if.end28.i.for.body.i_crit_edge ]
  %prd_ptr_to_indirect_ext.076.i = phi ptr [ null, %for.body.lr.ph.i ], [ %prd_ptr_to_indirect_ext.1.i, %if.end28.i.for.body.i_crit_edge ]
  %prd.075.i = phi ptr [ %prdt.i, %for.body.lr.ph.i ], [ %incdec.ptr33.i, %if.end28.i.for.body.i_crit_edge ]
  %ttl_dwords.074.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add29.i, %if.end28.i.for.body.i_crit_edge ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.080.i, i32 0, i32 3
  %47 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dma_address.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.080.i, i32 0, i32 4
  %49 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma_length.i, align 4
  %and.i50 = and i32 %48, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i50)
  %tobool.not.i = icmp eq i32 %and.i50, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %do.end.i, !prof !291

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %qc, align 4
  %print_id.i51 = getelementptr inbounds %struct.ata_port, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %print_id.i51 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %print_id.i51, align 4
  %conv.i = zext i32 %48 to i64
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %54, i64 noundef %conv.i) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body.i.if.end.i_crit_edge
  %and5.i = and i32 %50, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end21.i_crit_edge, label %do.end16.i, !prof !291

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

do.end16.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %qc, align 4
  %print_id19.i = getelementptr inbounds %struct.ata_port, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %print_id19.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %print_id19.i, align 4
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %58, i32 noundef %50) #13
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end16.i, %if.end.i.if.end21.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %num_prde.079.i)
  %cmp22.i = icmp eq i32 %num_prde.079.i, 15
  br i1 %cmp22.i, label %land.lhs.true.i, label %if.end21.i.if.end28.i_crit_edge

if.end21.i.if.end28.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

land.lhs.true.i:                                  ; preds = %if.end21.i
  %call24.i = tail call ptr @sg_next(ptr noundef %sg.080.i) #10
  %cmp25.not.i = icmp eq ptr %call24.i, null
  br i1 %cmp25.not.i, label %land.lhs.true.i.if.end28.i_crit_edge, label %if.then27.i

land.lhs.true.i.if.end28.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

if.then27.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %prd.075.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %46, ptr %prd.075.i, align 4
  %incdec.ptr.i = getelementptr %struct.prde, ptr %prd.075.i, i32 1
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then27.i, %land.lhs.true.i.if.end28.i_crit_edge, %if.end21.i.if.end28.i_crit_edge
  %prd.1.i = phi ptr [ %incdec.ptr.i, %if.then27.i ], [ %prd.075.i, %land.lhs.true.i.if.end28.i_crit_edge ], [ %prd.075.i, %if.end21.i.if.end28.i_crit_edge ]
  %prd_ptr_to_indirect_ext.1.i = phi ptr [ %prd.075.i, %if.then27.i ], [ %prd_ptr_to_indirect_ext.076.i, %land.lhs.true.i.if.end28.i_crit_edge ], [ %prd_ptr_to_indirect_ext.076.i, %if.end21.i.if.end28.i_crit_edge ]
  %indirect_ext_segment_sz.1.i = phi i32 [ 0, %if.then27.i ], [ %indirect_ext_segment_sz.077.i, %land.lhs.true.i.if.end28.i_crit_edge ], [ %indirect_ext_segment_sz.077.i, %if.end21.i.if.end28.i_crit_edge ]
  %num_prde.1.i = phi i32 [ 16, %if.then27.i ], [ 15, %land.lhs.true.i.if.end28.i_crit_edge ], [ %num_prde.079.i, %if.end21.i.if.end28.i_crit_edge ]
  %add29.i = add i32 %50, %ttl_dwords.074.i
  %60 = tail call i32 @llvm.bswap.i32(i32 %48) #10
  %61 = ptrtoint ptr %prd.1.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %prd.1.i, align 4
  %and31.i = and i32 %50, -4
  %or.i = or i32 %and31.i, %41
  %62 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %ddc_and_ext.i = getelementptr inbounds %struct.prde, ptr %prd.1.i, i32 0, i32 2
  %63 = ptrtoint ptr %ddc_and_ext.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %ddc_and_ext.i, align 4
  %inc32.i = add i32 %num_prde.1.i, 1
  %incdec.ptr33.i = getelementptr %struct.prde, ptr %prd.1.i, i32 1
  %tobool34.not.i = icmp eq ptr %prd_ptr_to_indirect_ext.1.i, null
  %add36.i = select i1 %tobool34.not.i, i32 0, i32 %50
  %spec.select.i = add i32 %add36.i, %indirect_ext_segment_sz.1.i
  %inc38.i = add nuw i32 %si.078.i, 1
  %call39.i = tail call ptr @sg_next(ptr noundef %sg.080.i) #10
  %64 = ptrtoint ptr %n_elem.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %n_elem.i, align 4
  %cmp.i52 = icmp ult i32 %inc38.i, %65
  br i1 %cmp.i52, label %if.end28.i.for.body.i_crit_edge, label %for.end.i

if.end28.i.for.body.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %if.end28.i
  br i1 %tobool34.not.i, label %for.end.i.if.end9_crit_edge, label %if.then41.i

for.end.i.if.end9_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then41.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo.i = and i32 %spec.select.i, 2147483644
  %or42.i = or i32 %41, %phi.bo.i
  %or44.i = or i32 %or42.i, -2147483648
  %66 = tail call i32 @llvm.bswap.i32(i32 %or44.i) #10
  %ddc_and_ext45.i = getelementptr inbounds %struct.prde, ptr %prd_ptr_to_indirect_ext.1.i, i32 0, i32 2
  %67 = ptrtoint ptr %ddc_and_ext45.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %ddc_and_ext45.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then41.i, %for.end.i.if.end9_crit_edge, %if.then7.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %ttl_dwords.0 = phi i32 [ 0, %if.end.if.end9_crit_edge ], [ %add29.i, %if.then41.i ], [ %add29.i, %for.end.i.if.end9_crit_edge ], [ 0, %if.then7.if.end9_crit_edge ]
  %num_prde.0 = phi i32 [ 0, %if.end.if.end9_crit_edge ], [ %inc32.i, %if.then41.i ], [ %inc32.i, %for.end.i.if.end9_crit_edge ], [ 0, %if.then7.if.end9_crit_edge ]
  %68 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %69)
  %cmp = icmp eq i8 %69, 6
  %or15 = or i32 %desc_info.0, 256
  %spec.select = select i1 %cmp, i32 %or15, i32 %desc_info.0
  %70 = ptrtoint ptr %cmdentry_paddr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cmdentry_paddr, align 4
  %add.i = add i32 %71, %mul
  %72 = tail call i32 @llvm.bswap.i32(i32 %add.i) #10
  %73 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %3, align 4
  %arrayidx.i = getelementptr %struct.cmdhdr_tbl_entry, ptr %74, i32 %retval.0.i49
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %72, ptr %arrayidx.i, align 4
  %conv.i53 = shl i32 %num_prde.0, 16
  %shl.i54 = and i32 %conv.i53, 16711680
  %or.i55 = or i32 %shl.i54, 20
  %76 = tail call i32 @llvm.bswap.i32(i32 %or.i55) #10
  %77 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %3, align 4
  %prde_fis_len.i = getelementptr %struct.cmdhdr_tbl_entry, ptr %78, i32 %retval.0.i49, i32 1
  %79 = ptrtoint ptr %prde_fis_len.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %76, ptr %prde_fis_len.i, align 4
  %and.i56 = and i32 %ttl_dwords.0, -4
  %80 = tail call i32 @llvm.bswap.i32(i32 %and.i56) #10
  %81 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %3, align 4
  %ttl.i = getelementptr %struct.cmdhdr_tbl_entry, ptr %82, i32 %retval.0.i49, i32 2
  %83 = ptrtoint ptr %ttl.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %80, ptr %ttl.i, align 4
  %and7.i = and i32 %retval.0.i49, 31
  %or8.i = or i32 %spec.select, %and7.i
  %84 = tail call i32 @llvm.bswap.i32(i32 %or8.i) #10
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %3, align 4
  %desc_info11.i = getelementptr %struct.cmdhdr_tbl_entry, ptr %86, i32 %retval.0.i49, i32 3
  %87 = ptrtoint ptr %desc_info11.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %84, ptr %desc_info11.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_setup_cmd_hdr_entry.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_qc_prep, %if.then.i)) #10
          to label %sata_fsl_setup_cmd_hdr_entry.exit [label %if.then.i], !srcloc !288

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %print_id.i57 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %88 = ptrtoint ptr %print_id.i57 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %print_id.i57, align 4
  %90 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %3, align 4
  %arrayidx15.i = getelementptr %struct.cmdhdr_tbl_entry, ptr %91, i32 %retval.0.i49
  %92 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx15.i, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #10
  %prde_fis_len19.i = getelementptr %struct.cmdhdr_tbl_entry, ptr %91, i32 %retval.0.i49, i32 1
  %95 = ptrtoint ptr %prde_fis_len19.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %prde_fis_len19.i, align 4
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #10
  %ttl22.i = getelementptr %struct.cmdhdr_tbl_entry, ptr %91, i32 %retval.0.i49, i32 2
  %98 = ptrtoint ptr %ttl22.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ttl22.i, align 4
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #10
  %desc_info25.i = getelementptr %struct.cmdhdr_tbl_entry, ptr %91, i32 %retval.0.i49, i32 3
  %101 = ptrtoint ptr %desc_info25.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %desc_info25.i, align 4
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_setup_cmd_hdr_entry.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.26, i32 noundef %89, i32 noundef %94, i32 noundef %97, i32 noundef %100, i32 noundef %103) #10
  br label %sata_fsl_setup_cmd_hdr_entry.exit

sata_fsl_setup_cmd_hdr_entry.exit:                ; preds = %if.then.i, %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_qc_prep.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_qc_prep, %if.then22)) #10
          to label %do.end [label %if.then22], !srcloc !288

if.then22:                                        ; preds = %sata_fsl_setup_cmd_hdr_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  %print_id = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %104 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %print_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_qc_prep.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.16, i32 noundef %105, i32 noundef %spec.select, i32 noundef %ttl_dwords.0, i32 noundef %num_prde.0) #10
  br label %do.end

do.end:                                           ; preds = %if.then22, %sata_fsl_setup_cmd_hdr_entry.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_fsl_qc_issue(ptr nocapture noundef readonly %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %hw_tag = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 8
  %8 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw_tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %9)
  %cmp.i = icmp ugt i32 %9, 15
  br i1 %cmp.i, label %do.body.i, label %if.end10.i, !prof !290

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_tag.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_qc_issue, %if.then9.i)) #10
          to label %sata_fsl_tag.exit [label %if.then9.i], !srcloc !288

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %print_id.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_tag.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.18, i32 noundef %11, i32 noundef %9) #10
  br label %sata_fsl_tag.exit

if.end10.i:                                       ; preds = %entry
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !284
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %shl.i = shl nuw nsw i32 1, %9
  %and.i = and i32 %13, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.sata_fsl_tag.exit_crit_edge, label %do.body20.i, !prof !291

if.end10.i.sata_fsl_tag.exit_crit_edge:           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sata_fsl_tag.exit

do.body20.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_tag.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_qc_issue, %if.then32.i)) #10
          to label %sata_fsl_tag.exit [label %if.then32.i], !srcloc !288

if.then32.i:                                      ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #12
  %print_id33.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %print_id33.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %print_id33.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_tag.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.19, i32 noundef %15, i32 noundef %9) #10
  br label %sata_fsl_tag.exit

sata_fsl_tag.exit:                                ; preds = %if.then32.i, %do.body20.i, %if.end10.i.sata_fsl_tag.exit_crit_edge, %if.then9.i, %do.body.i
  %retval.0.i86 = phi i32 [ 0, %if.then9.i ], [ 0, %if.then32.i ], [ %9, %if.end10.i.sata_fsl_tag.exit_crit_edge ], [ 0, %do.body.i ], [ 0, %do.body20.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_qc_issue.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_qc_issue, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !288

if.then:                                          ; preds = %sata_fsl_tag.exit
  call void @__sanitizer_cov_trace_pc() #12
  %print_id = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %print_id, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !284
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %add.ptr7 = getelementptr i8, ptr %7, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #10, !srcloc !284
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %add.ptr9 = getelementptr i8, ptr %7, i32 24
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #10, !srcloc !284
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %add.ptr11 = getelementptr i8, ptr %7, i32 16
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #10, !srcloc !284
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_qc_issue.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.28, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %sata_fsl_tag.exit
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 128
  %pmp = getelementptr inbounds %struct.ata_link, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pmp, align 4
  %add.ptr13 = getelementptr i8, ptr %7, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %32) #10, !srcloc !287
  %shl = shl nuw nsw i32 1, %retval.0.i86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  %33 = tail call i32 @llvm.bswap.i32(i32 %shl) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %33) #10, !srcloc !287
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_qc_issue.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_qc_issue, %if.then27)) #10
          to label %do.body36 [label %if.then27], !srcloc !288

if.then27:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %print_id28 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %print_id28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %print_id28, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !284
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %add.ptr31 = getelementptr i8, ptr %7, i32 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #10, !srcloc !284
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_qc_issue.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.29, i32 noundef %35, i32 noundef %retval.0.i86, i32 noundef %37, i32 noundef %39) #10
  br label %do.body36

do.body36:                                        ; preds = %if.then27, %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_qc_issue.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_qc_issue, %if.then48)) #10
          to label %do.end60 [label %if.then48], !srcloc !288

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  %print_id49 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %print_id49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %print_id49, align 4
  %add.ptr50 = getelementptr i8, ptr %7, i32 24
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #10, !srcloc !284
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %add.ptr52 = getelementptr i8, ptr %7, i32 32
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #10, !srcloc !284
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %add.ptr54 = getelementptr i8, ptr %7, i32 16
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #10, !srcloc !284
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %csr_base = getelementptr inbounds %struct.sata_fsl_host_priv, ptr %5, i32 0, i32 2
  %48 = ptrtoint ptr %csr_base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %csr_base, align 4
  %add.ptr56 = getelementptr i8, ptr %49, i32 32
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #10, !srcloc !284
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_qc_issue.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.30, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %51) #10
  br label %do.end60

do.end60:                                         ; preds = %if.then48, %do.body36
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @sata_fsl_qc_fill_rtf(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %hw_tag = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 8
  %4 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %5)
  %cmp.i = icmp ugt i32 %5, 15
  br i1 %cmp.i, label %do.body.i, label %if.end10.i, !prof !290

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_tag.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_qc_fill_rtf, %if.then9.i)) #10
          to label %sata_fsl_tag.exit [label %if.then9.i], !srcloc !288

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %print_id.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_tag.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.18, i32 noundef %7, i32 noundef %5) #10
  br label %sata_fsl_tag.exit

if.end10.i:                                       ; preds = %entry
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host, align 4
  %private_data2 = getelementptr inbounds %struct.ata_host, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data2, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !284
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %shl.i = shl nuw nsw i32 1, %5
  %and.i = and i32 %15, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.sata_fsl_tag.exit_crit_edge, label %do.body20.i, !prof !291

if.end10.i.sata_fsl_tag.exit_crit_edge:           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sata_fsl_tag.exit

do.body20.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_tag.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_qc_fill_rtf, %if.then32.i)) #10
          to label %sata_fsl_tag.exit [label %if.then32.i], !srcloc !288

if.then32.i:                                      ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #12
  %print_id33.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %print_id33.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %print_id33.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_tag.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.19, i32 noundef %17, i32 noundef %5) #10
  br label %sata_fsl_tag.exit

sata_fsl_tag.exit:                                ; preds = %if.then32.i, %do.body20.i, %if.end10.i.sata_fsl_tag.exit_crit_edge, %if.then9.i, %do.body.i
  %retval.0.i = phi i32 [ 0, %if.then9.i ], [ 0, %if.then32.i ], [ %5, %if.end10.i.sata_fsl_tag.exit_crit_edge ], [ 0, %do.body.i ], [ 0, %do.body20.i ]
  %cmdentry = getelementptr inbounds %struct.sata_fsl_port_priv, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %cmdentry to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmdentry, align 4
  %sfis = getelementptr %struct.command_desc, ptr %19, i32 %retval.0.i, i32 1
  %result_tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 21
  tail call void @ata_tf_from_fis(ptr noundef %sfis, ptr noundef %result_tf) #10
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sata_fsl_freeze(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_freeze.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_freeze, %if.then)) #10
          to label %do.body11 [label %if.then], !srcloc !288

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %6 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %print_id, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !284
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %add.ptr5 = getelementptr i8, ptr %5, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #10, !srcloc !284
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %add.ptr7 = getelementptr i8, ptr %5, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #10, !srcloc !284
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %add.ptr9 = getelementptr i8, ptr %5, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #10, !srcloc !284
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_freeze.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.32, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #10
  br label %do.body11

do.body11:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_freeze.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_freeze, %if.then23)) #10
          to label %do.end29 [label %if.then23], !srcloc !288

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %print_id24 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %16 = ptrtoint ptr %print_id24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %print_id24, align 4
  %csr_base = getelementptr inbounds %struct.sata_fsl_host_priv, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %csr_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %csr_base, align 4
  %add.ptr25 = getelementptr i8, ptr %19, i32 32
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #10, !srcloc !284
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_freeze.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.33, i32 noundef %17, i32 noundef %21) #10
  br label %do.end29

do.end29:                                         ; preds = %if.then23, %do.body11
  %add.ptr30 = getelementptr i8, ptr %5, i32 44
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #10, !srcloc !284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %23 = and i32 %22, -1056964609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %23) #10, !srcloc !287
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_freeze.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_freeze, %if.then45)) #10
          to label %do.end53 [label %if.then45], !srcloc !288

if.then45:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #12
  %print_id46 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %24 = ptrtoint ptr %print_id46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %print_id46, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #10, !srcloc !284
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %add.ptr49 = getelementptr i8, ptr %5, i32 40
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #10, !srcloc !284
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_freeze.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.34, i32 noundef %25, i32 noundef %27, i32 noundef %29) #10
  br label %do.end53

do.end53:                                         ; preds = %if.then45, %do.end29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sata_fsl_thaw(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !284
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_thaw.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_thaw, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !288

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %8 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %print_id, align 4
  %and = and i32 %7, 63
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_thaw.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.36, i32 noundef %9, i32 noundef %and) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and5 = and i32 %7, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.end.if.end10_crit_edge, label %if.then7

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  %10 = shl nuw nsw i32 %and5, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #10, !srcloc !287
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %do.end.if.end10_crit_edge
  %add.ptr11 = getelementptr i8, ptr %5, i32 44
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #10, !srcloc !284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %12 = or i32 %11, 1056964608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %12) #10, !srcloc !287
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_thaw.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_thaw, %if.then26)) #10
          to label %do.end34 [label %if.then26], !srcloc !288

if.then26:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %print_id27 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %13 = ptrtoint ptr %print_id27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %print_id27, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #10, !srcloc !284
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !284
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_thaw.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.34, i32 noundef %14, i32 noundef %16, i32 noundef %18) #10
  br label %do.end34

do.end34:                                         ; preds = %if.then26, %if.end10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_fsl_softreset(ptr noundef %link, ptr nocapture noundef writeonly %class, i32 noundef %deadline) #2 align 64 {
entry:
  %tf = alloca %struct.ata_taskfile, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
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
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %flags.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %11, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %link1.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25
  %cmp.i.i = icmp eq ptr %link1.i.i, %link
  br i1 %cmp.i.i, label %land.lhs.true.i.sata_srst_pmp.exit_crit_edge, label %ata_is_host_link.exit.i

land.lhs.true.i.sata_srst_pmp.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sata_srst_pmp.exit

ata_is_host_link.exit.i:                          ; preds = %land.lhs.true.i
  %slave_link.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 26
  %12 = ptrtoint ptr %slave_link.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %slave_link.i.i, align 128
  %cmp3.i.i = icmp eq ptr %13, %link
  br i1 %cmp3.i.i, label %ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge, label %ata_is_host_link.exit.i.if.end.i_crit_edge

ata_is_host_link.exit.i.if.end.i_crit_edge:       ; preds = %ata_is_host_link.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge: ; preds = %ata_is_host_link.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sata_srst_pmp.exit

if.end.i:                                         ; preds = %ata_is_host_link.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %pmp.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %14 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pmp.i, align 4
  br label %sata_srst_pmp.exit

sata_srst_pmp.exit:                               ; preds = %if.end.i, %ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge, %land.lhs.true.i.sata_srst_pmp.exit_crit_edge
  %retval.0.i231 = phi i32 [ %15, %if.end.i ], [ 15, %ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge ], [ 15, %land.lhs.true.i.sata_srst_pmp.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tf) #10
  %call4 = tail call zeroext i1 @ata_link_offline(ptr noundef %link) #10
  br i1 %call4, label %if.then, label %if.end

if.then:                                          ; preds = %sata_srst_pmp.exit
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 11, ptr %class, align 4
  br label %cleanup

if.end:                                           ; preds = %sata_srst_pmp.exit
  %device = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 14
  %17 = call ptr @memset(ptr %tf, i32 0, i32 24)
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device, align 128
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 128
  %ctl.i = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ctl.i, align 4
  %ctl1.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 2
  %24 = ptrtoint ptr %ctl1.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %ctl1.i, align 1
  %devno.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 14, i32 0, i32 1
  %25 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %devno.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i = icmp eq i32 %26, 0
  %spec.select.i = select i1 %cmp.i, i8 -96, i8 -80
  %27 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 13
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %spec.select.i, ptr %27, align 4
  %cmdentry = getelementptr inbounds %struct.sata_fsl_port_priv, ptr %3, i32 0, i32 2
  %29 = ptrtoint ptr %cmdentry to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cmdentry, align 4
  %cmdentry_paddr.i = getelementptr inbounds %struct.sata_fsl_port_priv, ptr %3, i32 0, i32 3
  %31 = ptrtoint ptr %cmdentry_paddr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cmdentry_paddr.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #10
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %35, align 4
  %37 = load ptr, ptr %3, align 4
  %prde_fis_len.i = getelementptr %struct.cmdhdr_tbl_entry, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prde_fis_len.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 335544320, ptr %prde_fis_len.i, align 4
  %39 = load ptr, ptr %3, align 4
  %ttl.i = getelementptr %struct.cmdhdr_tbl_entry, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %ttl.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %ttl.i, align 4
  %41 = load ptr, ptr %3, align 4
  %desc_info11.i = getelementptr %struct.cmdhdr_tbl_entry, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %desc_info11.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -2146828288, ptr %desc_info11.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_setup_cmd_hdr_entry.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_softreset, %if.then.i)) #10
          to label %sata_fsl_setup_cmd_hdr_entry.exit [label %if.then.i], !srcloc !288

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %43 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %print_id.i, align 4
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #10
  %prde_fis_len19.i = getelementptr %struct.cmdhdr_tbl_entry, ptr %46, i32 0, i32 1
  %50 = ptrtoint ptr %prde_fis_len19.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %prde_fis_len19.i, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #10
  %ttl22.i = getelementptr %struct.cmdhdr_tbl_entry, ptr %46, i32 0, i32 2
  %53 = ptrtoint ptr %ttl22.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ttl22.i, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #10
  %desc_info25.i = getelementptr %struct.cmdhdr_tbl_entry, ptr %46, i32 0, i32 3
  %56 = ptrtoint ptr %desc_info25.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %desc_info25.i, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_setup_cmd_hdr_entry.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.26, i32 noundef %44, i32 noundef %49, i32 noundef %52, i32 noundef %55, i32 noundef %58) #10
  br label %sata_fsl_setup_cmd_hdr_entry.exit

sata_fsl_setup_cmd_hdr_entry.exit:                ; preds = %if.then.i, %if.end
  %59 = ptrtoint ptr %ctl1.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %ctl1.i, align 1
  %61 = or i8 %60, 4
  store i8 %61, ptr %ctl1.i, align 1
  %conv7 = trunc i32 %retval.0.i231 to i8
  call void @ata_tf_to_fis(ptr noundef nonnull %tf, i8 noundef zeroext %conv7, i32 noundef 0, ptr noundef %30) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_softreset.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_softreset, %if.then11)) #10
          to label %do.body20 [label %if.then11], !srcloc !288

if.then11:                                        ; preds = %sata_fsl_setup_cmd_hdr_entry.exit
  call void @__sanitizer_cov_trace_pc() #12
  %print_id = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %62 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %print_id, align 4
  %64 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %30, align 1
  %conv12 = zext i8 %65 to i32
  %arrayidx13 = getelementptr i8, ptr %30, i32 1
  %66 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %67 to i32
  %arrayidx15 = getelementptr i8, ptr %30, i32 2
  %68 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %69 to i32
  %arrayidx17 = getelementptr i8, ptr %30, i32 3
  %70 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %71 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_softreset.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.38, i32 noundef %63, i32 noundef %conv12, i32 noundef %conv14, i32 noundef %conv16, i32 noundef %conv18) #10
  br label %do.body20

do.body20:                                        ; preds = %if.then11, %sata_fsl_setup_cmd_hdr_entry.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_softreset.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_softreset, %if.then32)) #10
          to label %do.end41 [label %if.then32], !srcloc !288

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  %print_id33 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %72 = ptrtoint ptr %print_id33 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %print_id33, align 4
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !284
  %75 = call i32 @llvm.bswap.i32(i32 %74) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %add.ptr35 = getelementptr i8, ptr %9, i32 8
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #10, !srcloc !284
  %77 = call i32 @llvm.bswap.i32(i32 %76) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %add.ptr37 = getelementptr i8, ptr %9, i32 16
  %78 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #10, !srcloc !284
  %79 = call i32 @llvm.bswap.i32(i32 %78) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_softreset.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.39, i32 noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %79) #10
  br label %do.end41

do.end41:                                         ; preds = %if.then32, %do.body20
  %add.ptr42 = getelementptr i8, ptr %9, i32 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 -65536) #10, !srcloc !287
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %retval.0.i231)
  %cmp.not = icmp eq i32 %retval.0.i231, 15
  br i1 %cmp.not, label %do.end41.if.end46_crit_edge, label %if.then44

do.end41.if.end46_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then44:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr45 = getelementptr i8, ptr %9, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  call void @arm_heavy_mb() #10
  %80 = call i32 @llvm.bswap.i32(i32 %retval.0.i231) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %80) #10, !srcloc !287
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %do.end41.if.end46_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 16777216) #10, !srcloc !287
  %call49 = call i32 @ata_wait_register(ptr noundef %1, ptr noundef %9, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 5000) #10
  %and = and i32 %call49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool50.not = icmp eq i32 %and, 0
  br i1 %tobool50.not, label %if.end104, label %do.end54

do.end54:                                         ; preds = %if.end46
  %print_id56 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %81 = ptrtoint ptr %print_id56 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %print_id56, align 4
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %82) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_softreset.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_softreset, %if.then70)) #10
          to label %do.end80 [label %if.then70], !srcloc !288

if.then70:                                        ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %print_id56 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %print_id56, align 4
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !284
  %86 = call i32 @llvm.bswap.i32(i32 %85) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %add.ptr74 = getelementptr i8, ptr %9, i32 8
  %87 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #10, !srcloc !284
  %88 = call i32 @llvm.bswap.i32(i32 %87) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #10, !srcloc !284
  %90 = call i32 @llvm.bswap.i32(i32 %89) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_softreset.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.41, i32 noundef %84, i32 noundef %86, i32 noundef %88, i32 noundef %90) #10
  br label %do.end80

do.end80:                                         ; preds = %if.then70, %do.end54
  %link81 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25
  %91 = ptrtoint ptr %link81 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %link81, align 128
  %host.i = getelementptr inbounds %struct.ata_port, ptr %92, i32 0, i32 31
  %93 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %host.i, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %94, i32 0, i32 5
  %95 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %private_data.i, align 4
  %ssr_base1.i = getelementptr inbounds %struct.sata_fsl_host_priv, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %ssr_base1.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ssr_base1.i, align 4
  %nr_pmp_links.i.i = getelementptr inbounds %struct.ata_port, ptr %92, i32 0, i32 27
  %99 = ptrtoint ptr %nr_pmp_links.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %nr_pmp_links.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp.i.not.i = icmp eq i32 %100, 0
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %do.end80.do.body4.i_crit_edge

do.end80.do.body4.i_crit_edge:                    ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i

lor.lhs.false.i:                                  ; preds = %do.end80
  %slave_link.i = getelementptr inbounds %struct.ata_port, ptr %92, i32 0, i32 26
  %101 = ptrtoint ptr %slave_link.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %slave_link.i, align 128
  %tobool.not.i = icmp eq ptr %102, null
  br i1 %tobool.not.i, label %do.body11.i, label %lor.lhs.false.i.do.body4.i_crit_edge

lor.lhs.false.i.do.body4.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i

do.body4.i:                                       ; preds = %lor.lhs.false.i.do.body4.i_crit_edge, %do.end80.do.body4.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_scr_read.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_softreset, %if.then9.i)) #10
          to label %sata_fsl_scr_read.exit [label %if.then9.i], !srcloc !288

if.then9.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  %103 = ptrtoint ptr %link81 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %link81, align 128
  %print_id.i232 = getelementptr inbounds %struct.ata_port, ptr %104, i32 0, i32 5
  %105 = ptrtoint ptr %print_id.i232 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %print_id.i232, align 4
  %pmp.i233 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25, i32 1
  %107 = ptrtoint ptr %pmp.i233 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %pmp.i233, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_scr_read.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.65, i32 noundef %106, i32 noundef %108, i32 noundef 1) #10
  br label %sata_fsl_scr_read.exit

do.body11.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_scr_read.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_softreset, %if.then23.i)) #10
          to label %sata_fsl_scr_read.exit [label %if.then23.i], !srcloc !288

if.then23.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %link81 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %link81, align 128
  %print_id25.i = getelementptr inbounds %struct.ata_port, ptr %110, i32 0, i32 5
  %111 = ptrtoint ptr %print_id25.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %print_id25.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_scr_read.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.66, i32 noundef %112, i32 noundef 1) #10
  br label %sata_fsl_scr_read.exit

sata_fsl_scr_read.exit:                           ; preds = %if.then23.i, %do.body11.i, %if.then9.i, %do.body4.i
  %add.ptr.i = getelementptr i8, ptr %98, i32 4
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !284
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_softreset.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_softreset, %if.then95)) #10
          to label %cleanup [label %if.then95], !srcloc !288

if.then95:                                        ; preds = %sata_fsl_scr_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  %114 = call i32 @llvm.bswap.i32(i32 %113) #10
  %115 = ptrtoint ptr %print_id56 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %print_id56, align 4
  %add.ptr97 = getelementptr i8, ptr %9, i32 40
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97) #10, !srcloc !284
  %118 = call i32 @llvm.bswap.i32(i32 %117) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %add.ptr99 = getelementptr i8, ptr %9, i32 44
  %119 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr99) #10, !srcloc !284
  %120 = call i32 @llvm.bswap.i32(i32 %119) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_softreset.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.42, i32 noundef %116, i32 noundef %118, i32 noundef %120, i32 noundef %114) #10
  br label %cleanup

if.end104:                                        ; preds = %if.end46
  call void @ata_msleep(ptr noundef %1, i32 noundef 1) #10
  %121 = ptrtoint ptr %cmdentry_paddr.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %cmdentry_paddr.i, align 4
  %123 = call i32 @llvm.bswap.i32(i32 %122) #10
  %124 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %3, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %123, ptr %125, align 4
  %127 = load ptr, ptr %3, align 4
  %prde_fis_len.i236 = getelementptr %struct.cmdhdr_tbl_entry, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %prde_fis_len.i236 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 335544320, ptr %prde_fis_len.i236, align 4
  %129 = load ptr, ptr %3, align 4
  %ttl.i237 = getelementptr %struct.cmdhdr_tbl_entry, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %ttl.i237 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %ttl.i237, align 4
  %131 = load ptr, ptr %3, align 4
  %desc_info11.i238 = getelementptr %struct.cmdhdr_tbl_entry, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %desc_info11.i238 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 655360, ptr %desc_info11.i238, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_setup_cmd_hdr_entry.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_softreset, %if.then.i243)) #10
          to label %sata_fsl_setup_cmd_hdr_entry.exit244 [label %if.then.i243], !srcloc !288

if.then.i243:                                     ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  %print_id.i239 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %133 = ptrtoint ptr %print_id.i239 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %print_id.i239, align 4
  %135 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %3, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %136, align 4
  %139 = call i32 @llvm.bswap.i32(i32 %138) #10
  %prde_fis_len19.i240 = getelementptr %struct.cmdhdr_tbl_entry, ptr %136, i32 0, i32 1
  %140 = ptrtoint ptr %prde_fis_len19.i240 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %prde_fis_len19.i240, align 4
  %142 = call i32 @llvm.bswap.i32(i32 %141) #10
  %ttl22.i241 = getelementptr %struct.cmdhdr_tbl_entry, ptr %136, i32 0, i32 2
  %143 = ptrtoint ptr %ttl22.i241 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %ttl22.i241, align 4
  %145 = call i32 @llvm.bswap.i32(i32 %144) #10
  %desc_info25.i242 = getelementptr %struct.cmdhdr_tbl_entry, ptr %136, i32 0, i32 3
  %146 = ptrtoint ptr %desc_info25.i242 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %desc_info25.i242, align 4
  %148 = call i32 @llvm.bswap.i32(i32 %147) #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_setup_cmd_hdr_entry.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.26, i32 noundef %134, i32 noundef %139, i32 noundef %142, i32 noundef %145, i32 noundef %148) #10
  br label %sata_fsl_setup_cmd_hdr_entry.exit244

sata_fsl_setup_cmd_hdr_entry.exit244:             ; preds = %if.then.i243, %if.end104
  %149 = ptrtoint ptr %ctl1.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %ctl1.i, align 1
  %151 = and i8 %150, -5
  store i8 %151, ptr %ctl1.i, align 1
  call void @ata_tf_to_fis(ptr noundef nonnull %tf, i8 noundef zeroext %conv7, i32 noundef 0, ptr noundef %30) #10
  br i1 %cmp.not, label %sata_fsl_setup_cmd_hdr_entry.exit244.if.end114_crit_edge, label %if.then112

sata_fsl_setup_cmd_hdr_entry.exit244.if.end114_crit_edge: ; preds = %sata_fsl_setup_cmd_hdr_entry.exit244
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.then112:                                       ; preds = %sata_fsl_setup_cmd_hdr_entry.exit244
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr113 = getelementptr i8, ptr %9, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  call void @arm_heavy_mb() #10
  %152 = call i32 @llvm.bswap.i32(i32 %retval.0.i231) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 %152) #10, !srcloc !287
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %sata_fsl_setup_cmd_hdr_entry.exit244.if.end114_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 16777216) #10, !srcloc !287
  call void @ata_msleep(ptr noundef %1, i32 noundef 150) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 16777216) #10, !srcloc !287
  %153 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 11, ptr %class, align 4
  %call117 = call zeroext i1 @ata_link_online(ptr noundef %link) #10
  br i1 %call117, label %if.then118, label %if.end114.cleanup_crit_edge

if.end114.cleanup_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then118:                                       ; preds = %if.end114
  %call119 = call fastcc i32 @sata_fsl_dev_classify(ptr noundef %1)
  %154 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %call119, ptr %class, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_softreset.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_softreset, %if.then132)) #10
          to label %do.body139 [label %if.then132], !srcloc !288

if.then132:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #12
  %print_id133 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %155 = ptrtoint ptr %print_id133 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %print_id133, align 4
  %157 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #10, !srcloc !284
  %158 = call i32 @llvm.bswap.i32(i32 %157) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_softreset.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.43, i32 noundef %156, i32 noundef %158) #10
  br label %do.body139

do.body139:                                       ; preds = %if.then132, %if.then118
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_softreset.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_softreset, %if.then151)) #10
          to label %cleanup [label %if.then151], !srcloc !288

if.then151:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #12
  %print_id152 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %159 = ptrtoint ptr %print_id152 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %print_id152, align 4
  %add.ptr153 = getelementptr i8, ptr %9, i32 24
  %161 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr153) #10, !srcloc !284
  %162 = call i32 @llvm.bswap.i32(i32 %161) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_softreset.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.44, i32 noundef %160, i32 noundef %162) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then151, %do.body139, %if.end114.cleanup_crit_edge, %if.then95, %sata_fsl_scr_read.exit, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then151 ], [ 0, %if.end114.cleanup_crit_edge ], [ -5, %if.then95 ], [ -5, %sata_fsl_scr_read.exit ], [ 0, %do.body139 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_fsl_hardreset(ptr noundef %link, ptr nocapture noundef writeonly %class, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 44
  %add.ptr4 = getelementptr i8, ptr %7, i32 40
  %print_id = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %9 = and i32 %8, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #10, !srcloc !287
  %call5 = tail call i32 @ata_wait_register(ptr noundef %1, ptr noundef %add.ptr4, i32 noundef -2147483648, i32 noundef -2147483648, i32 noundef 1, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5)
  %tobool.not = icmp sgt i32 %call5, -1
  br i1 %tobool.not, label %entry.do.body9_crit_edge, label %do.end

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9

do.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %print_id, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %11, i32 noundef 0) #13
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %13 = and i32 %12, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #10, !srcloc !287
  %call5.1 = tail call i32 @ata_wait_register(ptr noundef %1, ptr noundef %add.ptr4, i32 noundef -2147483648, i32 noundef -2147483648, i32 noundef 1, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.1)
  %tobool.not.1 = icmp sgt i32 %call5.1, -1
  br i1 %tobool.not.1, label %do.end.do.body9_crit_edge, label %do.end.1

do.end.do.body9_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9

do.end.1:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %print_id, align 4
  %call7.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %15, i32 noundef 1) #13
  br label %cleanup

do.body9:                                         ; preds = %do.end.do.body9_crit_edge, %entry.do.body9_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_hardreset.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_hardreset, %if.then15)) #10
          to label %do.end23 [label %if.then15], !srcloc !288

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %print_id, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #10, !srcloc !284
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !284
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_hardreset.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.50, i32 noundef %17, i32 noundef %19, i32 noundef %21) #10
  br label %do.end23

do.end23:                                         ; preds = %if.then15, %do.body9
  tail call void @ata_msleep(ptr noundef %1, i32 noundef 1) #10
  %call24 = tail call i32 @sata_set_spd(ptr noundef %link) #10
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %23 = or i32 %22, 393344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %23) #10, !srcloc !287
  %call30 = tail call i32 @ata_wait_register(ptr noundef %1, ptr noundef %add.ptr4, i32 noundef -2147483648, i32 noundef 0, i32 noundef 1, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call30)
  %tobool32.not = icmp sgt i32 %call30, -1
  br i1 %tobool32.not, label %do.end36, label %do.body41

do.end36:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %print_id, align 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %25) #13
  br label %cleanup

do.body41:                                        ; preds = %do.end23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_hardreset.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_hardreset, %if.then53)) #10
          to label %do.end61 [label %if.then53], !srcloc !288

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %print_id, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #10, !srcloc !284
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !284
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_hardreset.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.54, i32 noundef %27, i32 noundef %29, i32 noundef %31) #10
  br label %do.end61

do.end61:                                         ; preds = %if.then53, %do.body41
  %call63 = tail call i32 @ata_wait_register(ptr noundef %1, ptr noundef %add.ptr4, i32 noundef 255, i32 noundef 0, i32 noundef 1, i32 noundef 500) #10
  %and64 = and i32 %call63, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %do.end61.do.end70_crit_edge, label %lor.lhs.false

do.end61.do.end70_crit_edge:                      ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end70

lor.lhs.false:                                    ; preds = %do.end61
  %call66 = tail call zeroext i1 @ata_link_offline(ptr noundef %link) #10
  br i1 %call66, label %lor.lhs.false.do.end70_crit_edge, label %if.end76

lor.lhs.false.do.end70_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end70

do.end70:                                         ; preds = %lor.lhs.false.do.end70_crit_edge, %do.end61.do.end70_crit_edge
  %32 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %print_id, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #10, !srcloc !284
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %33, i32 noundef %35) #13
  %36 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 11, ptr %class, align 4
  br label %cleanup

if.end76:                                         ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %deadline, %37
  %call78 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #10
  %call79 = tail call i32 @ata_wait_register(ptr noundef %1, ptr noundef %add.ptr4, i32 noundef 255, i32 noundef 16, i32 noundef 500, i32 noundef %call78) #10
  %and80 = and i32 %call79, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and80)
  %cmp81.not = icmp eq i32 %and80, 24
  %38 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %print_id, align 4
  br i1 %cmp81.not, label %do.end92, label %do.end85

do.end85:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %39) #13
  %40 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 11, ptr %class, align 4
  br label %cleanup

do.end92:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %sub95 = sub i32 %41, %37
  %call96 = tail call i32 @jiffies_to_msecs(i32 noundef %sub95) #10
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %39, i32 noundef %call96) #13
  %call98 = tail call fastcc i32 @sata_fsl_dev_classify(ptr noundef %1)
  %42 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call98, ptr %class, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end92, %do.end85, %do.end70, %do.end36, %do.end.1
  %retval.0 = phi i32 [ 0, %do.end70 ], [ -11, %do.end85 ], [ 0, %do.end92 ], [ -5, %do.end36 ], [ -5, %do.end.1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sata_fsl_error_handler(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sata_pmp_error_handler(ptr noundef %ap) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sata_fsl_post_internal_cmd(ptr nocapture noundef %qc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %err_mask = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 20
  %2 = ptrtoint ptr %err_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %err_mask, align 4
  %or = or i32 %3, 256
  store i32 %or, ptr %err_mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_fsl_scr_read(ptr nocapture noundef readonly %link, i32 noundef %sc_reg_in, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %ssr_base1 = getelementptr inbounds %struct.sata_fsl_host_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ssr_base1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ssr_base1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sc_reg_in)
  %switch = icmp ult i32 %sc_reg_in, 4
  br i1 %switch, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %nr_pmp_links.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 27
  %8 = ptrtoint ptr %nr_pmp_links.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_pmp_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.not = icmp eq i32 %9, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %sw.bb.do.body4_crit_edge

sw.bb.do.body4_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4

lor.lhs.false:                                    ; preds = %sw.bb
  %slave_link = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 26
  %10 = ptrtoint ptr %slave_link to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slave_link, align 128
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %do.body11, label %lor.lhs.false.do.body4_crit_edge

lor.lhs.false.do.body4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4

do.body4:                                         ; preds = %lor.lhs.false.do.body4_crit_edge, %sw.bb.do.body4_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_scr_read.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_scr_read, %if.then9)) #10
          to label %do.end31 [label %if.then9], !srcloc !288

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link, align 128
  %print_id = getelementptr inbounds %struct.ata_port, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %16 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pmp, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_scr_read.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.65, i32 noundef %15, i32 noundef %17, i32 noundef %sc_reg_in) #10
  br label %do.end31

do.body11:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_scr_read.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_scr_read, %if.then23)) #10
          to label %do.end31 [label %if.then23], !srcloc !288

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link, align 128
  %print_id25 = getelementptr inbounds %struct.ata_port, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %print_id25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %print_id25, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_scr_read.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.66, i32 noundef %21, i32 noundef %sc_reg_in) #10
  br label %do.end31

do.end31:                                         ; preds = %if.then23, %do.body11, %if.then9, %do.body4
  %mul = shl nuw nsw i32 %sc_reg_in, 2
  %add.ptr = getelementptr i8, ptr %7, i32 %mul
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !284
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end31 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_fsl_scr_write(ptr nocapture noundef readonly %link, i32 noundef %sc_reg_in, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %ssr_base1 = getelementptr inbounds %struct.sata_fsl_host_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ssr_base1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ssr_base1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sc_reg_in)
  %switch = icmp ult i32 %sc_reg_in, 4
  br i1 %switch, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %nr_pmp_links.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 27
  %8 = ptrtoint ptr %nr_pmp_links.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_pmp_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.not = icmp eq i32 %9, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %sw.bb.do.body4_crit_edge

sw.bb.do.body4_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4

lor.lhs.false:                                    ; preds = %sw.bb
  %slave_link = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 26
  %10 = ptrtoint ptr %slave_link to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slave_link, align 128
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %do.body11, label %lor.lhs.false.do.body4_crit_edge

lor.lhs.false.do.body4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4

do.body4:                                         ; preds = %lor.lhs.false.do.body4_crit_edge, %sw.bb.do.body4_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_scr_write.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_scr_write, %if.then9)) #10
          to label %do.end31 [label %if.then9], !srcloc !288

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link, align 128
  %print_id = getelementptr inbounds %struct.ata_port, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %16 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pmp, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_scr_write.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.65, i32 noundef %15, i32 noundef %17, i32 noundef %sc_reg_in) #10
  br label %do.end31

do.body11:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_scr_write.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_scr_write, %if.then23)) #10
          to label %do.end31 [label %if.then23], !srcloc !288

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link, align 128
  %print_id25 = getelementptr inbounds %struct.ata_port, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %print_id25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %print_id25, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_scr_write.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.66, i32 noundef %21, i32 noundef %sc_reg_in) #10
  br label %do.end31

do.end31:                                         ; preds = %if.then23, %do.body11, %if.then9, %do.body4
  %mul = shl nuw nsw i32 %sc_reg_in, 2
  %add.ptr = getelementptr i8, ptr %7, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  %22 = tail call i32 @llvm.bswap.i32(i32 %val) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %22) #10, !srcloc !287
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end31 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sata_fsl_pmp_attach(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 44
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %7 = or i32 %6, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #10, !srcloc !287
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sata_fsl_pmp_detach(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 44
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %7 = and i32 %6, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #10, !srcloc !287
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %9 = or i32 %8, 1056964608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #10, !srcloc !287
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_fsl_port_start(ptr nocapture noundef %ap) #2 align 64 {
entry:
  %mem_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev1 = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem_dma) #10
  %4 = ptrtoint ptr %mem_dma to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %mem_dma, align 4, !annotation !289
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 16) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef 17920, ptr noundef nonnull %mem_dma, i32 noundef 3264, i32 noundef 0) #10
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %call7.i.i, align 8
  %11 = ptrtoint ptr %mem_dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mem_dma, align 4
  %cmdslot_paddr = getelementptr inbounds %struct.sata_fsl_port_priv, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %cmdslot_paddr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %cmdslot_paddr, align 4
  %add.ptr = getelementptr i8, ptr %call.i, i32 256
  %add = add i32 %12, 256
  store i32 %add, ptr %mem_dma, align 4
  %cmdentry = getelementptr inbounds %struct.sata_fsl_port_priv, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %cmdentry to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr, ptr %cmdentry, align 8
  %cmdentry_paddr = getelementptr inbounds %struct.sata_fsl_port_priv, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %cmdentry_paddr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %cmdentry_paddr, align 4
  %private_data8 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %16 = ptrtoint ptr %private_data8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %private_data8, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_port_start.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_port_start, %if.then13)) #10
          to label %do.end [label %if.then13], !srcloc !288

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %17 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %print_id, align 4
  %19 = ptrtoint ptr %cmdslot_paddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cmdslot_paddr, align 4
  %21 = ptrtoint ptr %cmdentry_paddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cmdentry_paddr, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_port_start.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.69, i32 noundef %18, i32 noundef %20, i32 noundef %22) #10
  br label %do.end

do.end:                                           ; preds = %if.then13, %if.end7
  %23 = ptrtoint ptr %cmdslot_paddr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cmdslot_paddr, align 4
  %add.ptr18 = getelementptr i8, ptr %8, i32 36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  call void @arm_heavy_mb() #10
  %25 = call i32 @llvm.bswap.i32(i32 %24) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %25) #10, !srcloc !287
  %add.ptr19 = getelementptr i8, ptr %8, i32 44
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #10, !srcloc !284
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %27 = or i32 %26, 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %27) #10, !srcloc !287
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_port_start.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_port_start, %if.then34)) #10
          to label %do.body41 [label %if.then34], !srcloc !288

if.then34:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %print_id35 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %28 = ptrtoint ptr %print_id35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %print_id35, align 4
  %add.ptr36 = getelementptr i8, ptr %8, i32 40
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #10, !srcloc !284
  %31 = call i32 @llvm.bswap.i32(i32 %30) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_port_start.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.46, i32 noundef %29, i32 noundef %31) #10
  br label %do.body41

do.body41:                                        ; preds = %if.then34, %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_port_start.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_port_start, %if.then53)) #10
          to label %do.body60 [label %if.then53], !srcloc !288

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #12
  %print_id54 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %32 = ptrtoint ptr %print_id54 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %print_id54, align 4
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #10, !srcloc !284
  %35 = call i32 @llvm.bswap.i32(i32 %34) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_port_start.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.47, i32 noundef %33, i32 noundef %35) #10
  br label %do.body60

do.body60:                                        ; preds = %if.then53, %do.body41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_port_start.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_port_start, %if.then72)) #10
          to label %cleanup [label %if.then72], !srcloc !288

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #12
  %print_id73 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %36 = ptrtoint ptr %print_id73 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %print_id73, align 4
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #10, !srcloc !284
  %39 = call i32 @llvm.bswap.i32(i32 %38) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_port_start.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.70, i32 noundef %37, i32 noundef %39) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %do.body60, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then6 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then72 ], [ 0, %do.body60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem_dma) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sata_fsl_port_stop(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev1 = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %private_data3 = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %private_data3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 44
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %11 = and i32 %10, -193
  %12 = or i32 %11, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #10, !srcloc !287
  %add.ptr6 = getelementptr i8, ptr %9, i32 40
  %call7 = tail call i32 @ata_wait_register(ptr noundef %ap, ptr noundef %add.ptr6, i32 noundef -2147483648, i32 noundef -2147483648, i32 noundef 1, i32 noundef 1) #10
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %private_data, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %cmdslot_paddr = getelementptr inbounds %struct.sata_fsl_port_priv, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %cmdslot_paddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cmdslot_paddr, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef 17920, ptr noundef %15, i32 noundef %17, i32 noundef 0) #10
  tail call void @kfree(ptr noundef %5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sata_fsl_host_stop(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @iounmap(ptr noundef %3) #10
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_tf_to_fis(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_tf_from_fis(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_link_offline(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_wait_register(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_msleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_link_online(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sata_fsl_dev_classify(ptr noundef %ap) unnamed_addr #2 align 64 {
entry:
  %tf = alloca %struct.ata_taskfile, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tf) #10
  %6 = call ptr @memset(ptr %tf, i32 255, i32 24)
  %add.ptr = getelementptr i8, ptr %5, i32 52
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_dev_classify.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_dev_classify, %if.then)) #10
          to label %do.body7 [label %if.then], !srcloc !288

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %8 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %print_id, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 40
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #10, !srcloc !284
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_dev_classify.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.46, i32 noundef %9, i32 noundef %11) #10
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_dev_classify.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_dev_classify, %if.then19)) #10
          to label %do.end25 [label %if.then19], !srcloc !288

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %print_id20 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %12 = ptrtoint ptr %print_id20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %print_id20, align 4
  %add.ptr21 = getelementptr i8, ptr %5, i32 44
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #10, !srcloc !284
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_dev_classify.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.47, i32 noundef %13, i32 noundef %15) #10
  br label %do.end25

do.end25:                                         ; preds = %if.then19, %do.body7
  %16 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  %shr = lshr i32 %16, 24
  %conv = trunc i32 %shr to i8
  %lbah = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 12
  %17 = ptrtoint ptr %lbah to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %lbah, align 1
  %shr26 = lshr i32 %16, 16
  %conv28 = trunc i32 %shr26 to i8
  %lbam = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 11
  %18 = ptrtoint ptr %lbam to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv28, ptr %lbam, align 2
  %shr29 = lshr i32 %16, 8
  %conv31 = trunc i32 %shr29 to i8
  %lbal = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 10
  %19 = ptrtoint ptr %lbal to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv31, ptr %lbal, align 1
  %conv33 = trunc i32 %16 to i8
  %nsect = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 9
  %20 = ptrtoint ptr %nsect to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv33, ptr %nsect, align 4
  %call34 = call i32 @ata_port_classify(ptr noundef %ap, ptr noundef nonnull %tf) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf) #10
  ret i32 %call34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_classify(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_set_spd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sata_pmp_error_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsl_sata_set_irq_coalescing(ptr noundef %host, i32 noundef %count, i32 noundef %ticks) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %count)
  %cmp = icmp ugt i32 %count, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp2 = icmp eq i32 %count, 0
  %spec.store.select = select i1 %cmp2, i32 1, i32 %count
  %count.addr.0 = select i1 %cmp, i32 31, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 524287, i32 %ticks)
  %cmp5 = icmp ugt i32 %ticks, 524287
  br i1 %cmp5, label %entry.do.body13_crit_edge, label %if.else7

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body13

if.else7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ticks)
  %cmp8 = icmp eq i32 %ticks, 0
  br i1 %cmp8, label %land.lhs.true, label %if.else7.do.body13_crit_edge

if.else7.do.body13_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body13

land.lhs.true:                                    ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.addr.0)
  %cmp9 = icmp ugt i32 %count.addr.0, 1
  %spec.select = zext i1 %cmp9 to i32
  br label %do.body13

do.body13:                                        ; preds = %land.lhs.true, %if.else7.do.body13_crit_edge, %entry.do.body13_crit_edge
  %ticks.addr.0 = phi i32 [ %ticks, %if.else7.do.body13_crit_edge ], [ 524287, %entry.do.body13_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %host) #10
  %shl = shl i32 %count.addr.0, 24
  %or = or i32 %ticks.addr.0, %shl
  %add.ptr = getelementptr i8, ptr %3, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #10, !srcloc !287
  store i32 %count.addr.0, ptr @intr_coalescing_count, align 4
  store i32 %ticks.addr.0, ptr @intr_coalescing_ticks, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %host, i32 noundef %call15) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_sata_set_irq_coalescing.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_sata_set_irq_coalescing, %if.then24)) #10
          to label %do.body28 [label %if.then24], !srcloc !288

if.then24:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %7 = load i32, ptr @intr_coalescing_count, align 4
  %8 = load i32, ptr @intr_coalescing_ticks, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_sata_set_irq_coalescing.__UNIQUE_ID_ddebug292, ptr noundef %6, ptr noundef nonnull @.str.75, i32 noundef %7, i32 noundef %8) #10
  br label %do.body28

do.body28:                                        ; preds = %if.then24, %do.body13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_sata_set_irq_coalescing.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_sata_set_irq_coalescing, %if.then40)) #10
          to label %do.end46 [label %if.then40], !srcloc !288

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  %dev41 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %9 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev41, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !284
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_sata_set_irq_coalescing.__UNIQUE_ID_ddebug293, ptr noundef %10, ptr noundef nonnull @.str.76, ptr noundef %3, i32 noundef %12) #10
  br label %do.end46

do.end46:                                         ; preds = %if.then40, %do.body28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sata_fsl_host_intr(ptr noundef %ap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !284
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %link = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25
  %8 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link, align 128
  %host.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 31
  %10 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host.i, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data.i, align 4
  %ssr_base1.i = getelementptr inbounds %struct.sata_fsl_host_priv, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ssr_base1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ssr_base1.i, align 4
  %nr_pmp_links.i.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 27
  %16 = ptrtoint ptr %nr_pmp_links.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_pmp_links.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.not.i = icmp eq i32 %17, 0
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %entry.do.body4.i_crit_edge

entry.do.body4.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i

lor.lhs.false.i:                                  ; preds = %entry
  %slave_link.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 26
  %18 = ptrtoint ptr %slave_link.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slave_link.i, align 128
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %do.body11.i, label %lor.lhs.false.i.do.body4.i_crit_edge

lor.lhs.false.i.do.body4.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i

do.body4.i:                                       ; preds = %lor.lhs.false.i.do.body4.i_crit_edge, %entry.do.body4.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_scr_read.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_host_intr, %if.then9.i)) #10
          to label %sata_fsl_scr_read.exit [label %if.then9.i], !srcloc !288

if.then9.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %link, align 128
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %print_id.i, align 4
  %pmp.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 1
  %24 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pmp.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_scr_read.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.65, i32 noundef %23, i32 noundef %25, i32 noundef 1) #10
  br label %sata_fsl_scr_read.exit

do.body11.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_scr_read.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_host_intr, %if.then23.i)) #10
          to label %sata_fsl_scr_read.exit [label %if.then23.i], !srcloc !288

if.then23.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %link, align 128
  %print_id25.i = getelementptr inbounds %struct.ata_port, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %print_id25.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %print_id25.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_scr_read.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.66, i32 noundef %29, i32 noundef 1) #10
  br label %sata_fsl_scr_read.exit

sata_fsl_scr_read.exit:                           ; preds = %if.then23.i, %do.body11.i, %if.then9.i, %do.body4.i
  %add.ptr.i = getelementptr i8, ptr %15, i32 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !284
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %add.ptr3 = getelementptr i8, ptr %5, i32 16
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #10, !srcloc !284
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %and = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sata_fsl_scr_read.exit.if.end20_crit_edge, label %for.cond.preheader, !prof !291

sata_fsl_scr_read.exit.if.end20_crit_edge:        ; preds = %sata_fsl_scr_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

for.cond.preheader:                               ; preds = %sata_fsl_scr_read.exit
  %ops.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.cond.preheader
  %tag.0330 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %tag.0330
  %tobool.not11.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not11.i, label %land.rhs.for.inc_crit_edge, label %lor.lhs.false.i303, !prof !290

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false.i303:                               ; preds = %land.rhs
  %34 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i, align 4
  %error_handler.i = getelementptr inbounds %struct.ata_port_operations, ptr %35, i32 0, i32 22
  %36 = ptrtoint ptr %error_handler.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %error_handler.i, align 4
  %tobool4.not.i = icmp eq ptr %37, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i303.land.lhs.true_crit_edge, label %if.end.i

lor.lhs.false.i303.land.lhs.true_crit_edge:       ; preds = %lor.lhs.false.i303
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end.i:                                         ; preds = %lor.lhs.false.i303
  %flags.i = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %tag.0330, i32 6
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %39, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1
  br i1 %cmp.i, label %if.end.i.land.lhs.true_crit_edge, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i.land.lhs.true_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.i.land.lhs.true_crit_edge, %lor.lhs.false.i303.land.lhs.true_crit_edge
  %protocol = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %tag.0330, i32 4, i32 1
  %40 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %protocol, align 4
  %42 = and i8 %41, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.i.not = icmp eq i8 %42, 0
  br i1 %tobool.i.not, label %land.lhs.true.for.inc_crit_edge, label %if.then11

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr12 = getelementptr i8, ptr %5, i32 44
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #10, !srcloc !284
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %or = or i32 %44, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  %45 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %45) #10, !srcloc !287
  %and15 = and i32 %44, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  %46 = tail call i32 @llvm.bswap.i32(i32 %and15) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %46) #10, !srcloc !287
  %call18 = tail call i32 @sata_fsl_scr_write(ptr noundef %link, i32 noundef 1, i32 noundef %31)
  br label %if.end20

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %land.rhs.for.inc_crit_edge
  %inc = add nuw nsw i32 %tag.0330, 1
  %exitcond.not = icmp eq i32 %inc, 33
  br i1 %exitcond.not, label %for.inc.if.end20_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

for.inc.if.end20_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end20:                                         ; preds = %for.inc.if.end20_crit_edge, %if.then11, %sata_fsl_scr_read.exit.if.end20_crit_edge
  %status_mask.0 = phi i32 [ 20, %if.then11 ], [ 54, %sata_fsl_scr_read.exit.if.end20_crit_edge ], [ 54, %for.inc.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %31)
  %tobool22.not = icmp ult i32 %31, 65536
  br i1 %tobool22.not, label %if.end20.if.end41_crit_edge, label %do.body, !prof !291

if.end20.if.end41_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

do.body:                                          ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_host_intr.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_host_intr, %if.then39)) #10
          to label %do.end [label %if.then39], !srcloc !288

if.then39:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %47 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %print_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_host_intr.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.81, i32 noundef %48, i32 noundef %31) #10
  br label %do.end

do.end:                                           ; preds = %if.then39, %do.body
  tail call fastcc void @sata_fsl_error_intr(ptr noundef %ap)
  br label %if.end41

if.end41:                                         ; preds = %do.end, %if.end20.if.end41_crit_edge
  %and42 = and i32 %status_mask.0, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %do.body69, label %do.body51, !prof !291

do.body51:                                        ; preds = %if.end41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_host_intr.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_host_intr, %if.then63)) #10
          to label %do.end67 [label %if.then63], !srcloc !288

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #12
  %print_id64 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %49 = ptrtoint ptr %print_id64 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %print_id64, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_host_intr.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.82, i32 noundef %50) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then63, %do.body51
  tail call fastcc void @sata_fsl_error_intr(ptr noundef %ap)
  br label %cleanup

do.body69:                                        ; preds = %if.end41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_host_intr.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_host_intr, %if.then81)) #10
          to label %do.body86 [label %if.then81], !srcloc !288

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #12
  %print_id82 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %51 = ptrtoint ptr %print_id82 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %print_id82, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_host_intr.__UNIQUE_ID_ddebug329, ptr noundef nonnull @.str.83, i32 noundef %52) #10
  br label %do.body86

do.body86:                                        ; preds = %if.then81, %do.body69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_host_intr.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_host_intr, %if.then98)) #10
          to label %do.end108 [label %if.then98], !srcloc !288

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #12
  %print_id99 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %53 = ptrtoint ptr %print_id99 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %print_id99, align 4
  %add.ptr100 = getelementptr i8, ptr %5, i32 8
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr100) #10, !srcloc !284
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %add.ptr102 = getelementptr i8, ptr %5, i32 24
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr102) #10, !srcloc !284
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !284
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %qc_active = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 21
  %61 = ptrtoint ptr %qc_active to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %qc_active, align 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_host_intr.__UNIQUE_ID_ddebug330, ptr noundef nonnull @.str.84, i32 noundef %54, i32 noundef %33, i32 noundef %56, i32 noundef %58, i32 noundef %60, i64 noundef %62) #10
  br label %do.end108

do.end108:                                        ; preds = %if.then98, %do.body86
  %conv = zext i32 %33 to i64
  %qc_active109 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 21
  %63 = ptrtoint ptr %qc_active109 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %qc_active109, align 16
  %and110 = and i64 %64, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and110)
  %tobool111.not = icmp eq i64 %and110, 0
  br i1 %tobool111.not, label %if.else, label %if.then112

if.then112:                                       ; preds = %do.end108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %32) #10, !srcloc !287
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_host_intr.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_host_intr, %if.then126)) #10
          to label %do.end134 [label %if.then126], !srcloc !288

if.then126:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  %print_id127 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %65 = ptrtoint ptr %print_id127 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %print_id127, align 4
  %add.ptr128 = getelementptr i8, ptr %5, i32 8
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr128) #10, !srcloc !284
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %add.ptr130 = getelementptr i8, ptr %5, i32 24
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr130) #10, !srcloc !284
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_host_intr.__UNIQUE_ID_ddebug331, ptr noundef nonnull @.str.85, i32 noundef %66, i32 noundef %33, i32 noundef %68, i32 noundef %70) #10
  br label %do.end134

do.end134:                                        ; preds = %if.then126, %if.then112
  %print_id155 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %add.ptr158 = getelementptr i8, ptr %5, i32 8
  br label %for.body138

for.body138:                                      ; preds = %for.inc164.for.body138_crit_edge, %do.end134
  %i.0332 = phi i32 [ 0, %do.end134 ], [ %inc165, %for.inc164.for.body138_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.0332
  %and139 = and i32 %shl, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %for.body138.for.inc164_crit_edge, label %do.body142

for.body138.for.inc164_crit_edge:                 ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc164

do.body142:                                       ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_host_intr.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_host_intr, %if.then154)) #10
          to label %for.inc164 [label %if.then154], !srcloc !288

if.then154:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %print_id155 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %print_id155, align 4
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #10, !srcloc !284
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr158) #10, !srcloc !284
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_host_intr.__UNIQUE_ID_ddebug332, ptr noundef nonnull @.str.86, i32 noundef %72, i32 noundef %i.0332, i32 noundef %74, i32 noundef %76) #10
  br label %for.inc164

for.inc164:                                       ; preds = %if.then154, %do.body142, %for.body138.for.inc164_crit_edge
  %inc165 = add nuw nsw i32 %i.0332, 1
  %exitcond334.not = icmp eq i32 %inc165, 16
  br i1 %exitcond334.not, label %for.end166, label %for.inc164.for.body138_crit_edge

for.inc164.for.body138_crit_edge:                 ; preds = %for.inc164
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body138

for.end166:                                       ; preds = %for.inc164
  call void @__sanitizer_cov_trace_pc() #12
  %call167 = tail call i64 @ata_qc_get_active(ptr noundef %ap) #10
  %xor = xor i64 %call167, %conv
  %call169 = tail call i32 @ata_qc_complete_multiple(ptr noundef %ap, i64 noundef %xor) #10
  br label %cleanup

if.else:                                          ; preds = %do.end108
  %and171 = and i64 %64, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and171)
  %tobool172.not = icmp eq i64 %and171, 0
  br i1 %tobool172.not, label %do.body199, label %if.then173

if.then173:                                       ; preds = %if.else
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 16777216) #10, !srcloc !287
  %arrayidx.i.i305 = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 32
  %tobool.not11.i306 = icmp eq ptr %arrayidx.i.i305, null
  br i1 %tobool.not11.i306, label %if.then173.ata_qc_from_tag.exit317_crit_edge, label %lor.lhs.false.i310, !prof !290

if.then173.ata_qc_from_tag.exit317_crit_edge:     ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #12
  br label %ata_qc_from_tag.exit317

lor.lhs.false.i310:                               ; preds = %if.then173
  %ops.i307 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  %77 = ptrtoint ptr %ops.i307 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ops.i307, align 4
  %error_handler.i308 = getelementptr inbounds %struct.ata_port_operations, ptr %78, i32 0, i32 22
  %79 = ptrtoint ptr %error_handler.i308 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %error_handler.i308, align 4
  %tobool4.not.i309 = icmp eq ptr %80, null
  br i1 %tobool4.not.i309, label %lor.lhs.false.i310.ata_qc_from_tag.exit317_crit_edge, label %if.end.i315

lor.lhs.false.i310.ata_qc_from_tag.exit317_crit_edge: ; preds = %lor.lhs.false.i310
  call void @__sanitizer_cov_trace_pc() #12
  br label %ata_qc_from_tag.exit317

if.end.i315:                                      ; preds = %lor.lhs.false.i310
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i311 = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 32, i32 6
  %81 = ptrtoint ptr %flags.i311 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags.i311, align 4
  %and.i312 = and i32 %82, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i312)
  %cmp.i313 = icmp eq i32 %and.i312, 1
  %call..i314 = select i1 %cmp.i313, ptr %arrayidx.i.i305, ptr null
  br label %ata_qc_from_tag.exit317

ata_qc_from_tag.exit317:                          ; preds = %if.end.i315, %lor.lhs.false.i310.ata_qc_from_tag.exit317_crit_edge, %if.then173.ata_qc_from_tag.exit317_crit_edge
  %retval.0.i316 = phi ptr [ %arrayidx.i.i305, %lor.lhs.false.i310.ata_qc_from_tag.exit317_crit_edge ], [ null, %if.then173.ata_qc_from_tag.exit317_crit_edge ], [ %call..i314, %if.end.i315 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_host_intr.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_host_intr, %if.then188)) #10
          to label %do.end194 [label %if.then188], !srcloc !288

if.then188:                                       ; preds = %ata_qc_from_tag.exit317
  call void @__sanitizer_cov_trace_pc() #12
  %print_id189 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %83 = ptrtoint ptr %print_id189 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %print_id189, align 4
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #10, !srcloc !284
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_host_intr.__UNIQUE_ID_ddebug333, ptr noundef nonnull @.str.87, i32 noundef %84, i32 noundef %86) #10
  br label %do.end194

do.end194:                                        ; preds = %if.then188, %ata_qc_from_tag.exit317
  %tobool195.not = icmp eq ptr %retval.0.i316, null
  br i1 %tobool195.not, label %do.end194.cleanup_crit_edge, label %if.then196

do.end194.cleanup_crit_edge:                      ; preds = %do.end194
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then196:                                       ; preds = %do.end194
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ata_qc_complete(ptr noundef nonnull %retval.0.i316) #10
  br label %cleanup

do.body199:                                       ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_host_intr.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_host_intr, %if.then211)) #10
          to label %do.end217 [label %if.then211], !srcloc !288

if.then211:                                       ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #12
  %print_id212 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %87 = ptrtoint ptr %print_id212 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %print_id212, align 4
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #10, !srcloc !284
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_host_intr.__UNIQUE_ID_ddebug334, ptr noundef nonnull @.str.88, i32 noundef %88, i32 noundef %90) #10
  br label %do.end217

do.end217:                                        ; preds = %if.then211, %do.body199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %32) #10, !srcloc !287
  br label %cleanup

cleanup:                                          ; preds = %do.end217, %if.then196, %do.end194.cleanup_crit_edge, %for.end166, %do.end67
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sata_fsl_error_intr(ptr noundef %ap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !284
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %add.ptr2 = getelementptr i8, ptr %5, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #10, !srcloc !284
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %link4 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25
  %eh_info = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11
  tail call void @ata_ehi_clear_desc(ptr noundef %eh_info) #10
  %10 = ptrtoint ptr %link4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link4, align 128
  %host.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 31
  %12 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host.i, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private_data.i, align 4
  %ssr_base1.i = getelementptr inbounds %struct.sata_fsl_host_priv, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ssr_base1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ssr_base1.i, align 4
  %nr_pmp_links.i.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 27
  %18 = ptrtoint ptr %nr_pmp_links.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_pmp_links.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.not.i = icmp eq i32 %19, 0
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %entry.do.body4.i_crit_edge

entry.do.body4.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i

lor.lhs.false.i:                                  ; preds = %entry
  %slave_link.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 26
  %20 = ptrtoint ptr %slave_link.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %slave_link.i, align 128
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %do.body11.i, label %lor.lhs.false.i.do.body4.i_crit_edge

lor.lhs.false.i.do.body4.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i

do.body4.i:                                       ; preds = %lor.lhs.false.i.do.body4.i_crit_edge, %entry.do.body4.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_scr_read.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_error_intr, %if.then9.i)) #10
          to label %sata_fsl_scr_read.exit [label %if.then9.i], !srcloc !288

if.then9.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %link4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link4, align 128
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %print_id.i, align 4
  %pmp.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 1
  %26 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pmp.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_scr_read.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.65, i32 noundef %25, i32 noundef %27, i32 noundef 1) #10
  br label %sata_fsl_scr_read.exit

do.body11.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_scr_read.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_error_intr, %if.then23.i)) #10
          to label %sata_fsl_scr_read.exit [label %if.then23.i], !srcloc !288

if.then23.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %link4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %link4, align 128
  %print_id25.i = getelementptr inbounds %struct.ata_port, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %print_id25.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %print_id25.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_scr_read.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.66, i32 noundef %31, i32 noundef 1) #10
  br label %sata_fsl_scr_read.exit

sata_fsl_scr_read.exit:                           ; preds = %if.then23.i, %do.body11.i, %if.then9.i, %do.body4.i
  %add.ptr.i = getelementptr i8, ptr %17, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !284
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %33)
  %tobool.not = icmp ult i32 %33, 65536
  br i1 %tobool.not, label %sata_fsl_scr_read.exit.do.body_crit_edge, label %if.then, !prof !291

sata_fsl_scr_read.exit.do.body_crit_edge:         ; preds = %sata_fsl_scr_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then:                                          ; preds = %sata_fsl_scr_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 @sata_fsl_scr_write(ptr noundef %link4, i32 noundef 1, i32 noundef %33)
  br label %do.body

do.body:                                          ; preds = %if.then, %sata_fsl_scr_read.exit.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_error_intr.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_error_intr, %if.then19)) #10
          to label %do.end [label %if.then19], !srcloc !288

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %34 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %print_id, align 4
  %add.ptr20 = getelementptr i8, ptr %5, i32 32
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #10, !srcloc !284
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_error_intr.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.90, i32 noundef %35, i32 noundef %7, i32 noundef %9, i32 noundef %37, i32 noundef %33) #10
  br label %do.end

do.end:                                           ; preds = %if.then19, %do.body
  %and23 = and i32 %7, 474880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.end.if.end29_crit_edge, label %if.then25

do.end.if.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then25:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %err_mask26 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 2
  %38 = ptrtoint ptr %err_mask26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %err_mask26, align 4
  %or = or i32 %39, 16
  store i32 %or, ptr %err_mask26, align 4
  %action27 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 3
  %40 = ptrtoint ptr %action27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %action27, align 4
  %or28 = or i32 %41, 2
  store i32 %or28, ptr %action27, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %do.end.if.end29_crit_edge
  %freeze.0 = phi i32 [ 1, %if.then25 ], [ 0, %do.end.if.end29_crit_edge ]
  %and30 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end34_crit_edge, label %if.then32

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %call33 = tail call i32 @sata_async_notification(ptr noundef %ap) #10
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end29.if.end34_crit_edge
  %and35 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end55_crit_edge, label %do.body38

if.end34.if.end55_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

do.body38:                                        ; preds = %if.end34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_error_intr.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_error_intr, %if.then50)) #10
          to label %do.end54 [label %if.then50], !srcloc !288

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #12
  %print_id51 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %42 = ptrtoint ptr %print_id51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %print_id51, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_error_intr.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.91, i32 noundef %43) #10
  br label %do.end54

do.end54:                                         ; preds = %if.then50, %do.body38
  %probe_mask.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 6
  %44 = ptrtoint ptr %probe_mask.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %probe_mask.i, align 4
  %or.i = or i32 %45, 3
  store i32 %or.i, ptr %probe_mask.i, align 4
  %flags.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 5
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i, align 4
  %or1.i = or i32 %47, 1
  store i32 %or1.i, ptr %flags.i, align 4
  %action.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 3
  %48 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %action.i, align 4
  %or2.i = or i32 %49, 14
  store i32 %or2.i, ptr %action.i, align 4
  %err_mask.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 2
  %50 = ptrtoint ptr %err_mask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %err_mask.i, align 4
  %or3.i = or i32 %51, 16
  store i32 %or3.i, ptr %err_mask.i, align 4
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93) #10
  br label %if.end55

if.end55:                                         ; preds = %do.end54, %if.end34.if.end55_crit_edge
  %freeze.1 = phi i32 [ 1, %do.end54 ], [ %freeze.0, %if.end34.if.end55_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool56.not = icmp eq i32 %8, 0
  br i1 %tobool56.not, label %if.end55.if.end111_crit_edge, label %if.then57

if.end55.if.end111_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

if.then57:                                        ; preds = %if.end55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_fsl_error_intr.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_fsl_error_intr, %if.then70)) #10
          to label %do.end78 [label %if.then70], !srcloc !288

if.then70:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  %print_id71 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %52 = ptrtoint ptr %print_id71 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %print_id71, align 4
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #10, !srcloc !284
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %add.ptr74 = getelementptr i8, ptr %5, i32 32
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #10, !srcloc !284
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_fsl_error_intr.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.94, i32 noundef %53, i32 noundef %55, i32 noundef %57) #10
  br label %do.end78

do.end78:                                         ; preds = %if.then70, %if.then57
  %nr_pmp_links = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 27
  %58 = ptrtoint ptr %nr_pmp_links to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nr_pmp_links, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool79.not = icmp eq i32 %59, 0
  %add.ptr95 = getelementptr i8, ptr %5, i32 32
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr95) #10
  br i1 %tobool79.not, label %if.else94, label %if.then80

if.then80:                                        ; preds = %do.end78
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 %60) #10, !srcloc !287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %8) #10, !srcloc !287
  %62 = tail call i32 @llvm.cttz.i32(i32 %61, i1 true), !range !292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %iszero = icmp eq i32 %60, 0
  %sub = select i1 %iszero, i32 -1, i32 %62
  %63 = ptrtoint ptr %nr_pmp_links to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nr_pmp_links, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %64)
  %cmp = icmp uge i32 %sub, %64
  %or.cond = or i1 %iszero, %cmp
  br i1 %or.cond, label %if.then80.if.end111_crit_edge, label %if.then87

if.then80.if.end111_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

if.then87:                                        ; preds = %if.then80
  %pmp_link = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 28
  %65 = ptrtoint ptr %pmp_link to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pmp_link, align 8
  %eh_info88 = getelementptr %struct.ata_link, ptr %66, i32 %sub, i32 11
  %active_tag = getelementptr %struct.ata_link, ptr %66, i32 %sub, i32 3
  %67 = ptrtoint ptr %active_tag to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %active_tag, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %68)
  %69 = icmp ugt i32 %68, 32
  %arrayidx.i.i = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %68
  %tobool.not11.i = icmp eq ptr %arrayidx.i.i, null
  %tobool.not.i187 = or i1 %69, %tobool.not11.i
  br i1 %tobool.not.i187, label %if.then87.if.end111_crit_edge, label %lor.lhs.false.i188, !prof !290

if.then87.if.end111_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

lor.lhs.false.i188:                               ; preds = %if.then87
  %ops.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  %70 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops.i, align 4
  %error_handler.i = getelementptr inbounds %struct.ata_port_operations, ptr %71, i32 0, i32 22
  %72 = ptrtoint ptr %error_handler.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %error_handler.i, align 4
  %tobool4.not.i = icmp eq ptr %73, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i188.if.end111.thread_crit_edge, label %if.end.i

lor.lhs.false.i188.if.end111.thread_crit_edge:    ; preds = %lor.lhs.false.i188
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111.thread

if.end.i:                                         ; preds = %lor.lhs.false.i188
  %flags.i189 = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %68, i32 6
  %74 = ptrtoint ptr %flags.i189 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags.i189, align 4
  %and.i = and i32 %75, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1
  br i1 %cmp.i, label %if.end.i.if.end111.thread_crit_edge, label %if.end.i.if.end111_crit_edge

if.end.i.if.end111_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

if.end.i.if.end111.thread_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111.thread

if.else94:                                        ; preds = %do.end78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 %60) #10, !srcloc !287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %8) #10, !srcloc !287
  %active_tag99 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 3
  %76 = ptrtoint ptr %active_tag99 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %active_tag99, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %77)
  %78 = icmp ugt i32 %77, 32
  %arrayidx.i.i191 = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %77
  %tobool.not11.i192 = icmp eq ptr %arrayidx.i.i191, null
  %tobool.not.i193 = or i1 %78, %tobool.not11.i192
  br i1 %tobool.not.i193, label %if.else94.if.end111_crit_edge, label %lor.lhs.false.i197, !prof !290

if.else94.if.end111_crit_edge:                    ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

lor.lhs.false.i197:                               ; preds = %if.else94
  %ops.i194 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  %79 = ptrtoint ptr %ops.i194 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops.i194, align 4
  %error_handler.i195 = getelementptr inbounds %struct.ata_port_operations, ptr %80, i32 0, i32 22
  %81 = ptrtoint ptr %error_handler.i195 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %error_handler.i195, align 4
  %tobool4.not.i196 = icmp eq ptr %82, null
  br i1 %tobool4.not.i196, label %lor.lhs.false.i197.if.end111.thread_crit_edge, label %if.end.i202

lor.lhs.false.i197.if.end111.thread_crit_edge:    ; preds = %lor.lhs.false.i197
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111.thread

if.end.i202:                                      ; preds = %lor.lhs.false.i197
  %flags.i198 = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %77, i32 6
  %83 = ptrtoint ptr %flags.i198 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags.i198, align 4
  %and.i199 = and i32 %84, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i199)
  %cmp.i200 = icmp eq i32 %and.i199, 1
  br i1 %cmp.i200, label %if.end.i202.if.end111.thread_crit_edge, label %if.end.i202.if.end111_crit_edge

if.end.i202.if.end111_crit_edge:                  ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

if.end.i202.if.end111.thread_crit_edge:           ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111.thread

if.end111:                                        ; preds = %if.end.i202.if.end111_crit_edge, %if.else94.if.end111_crit_edge, %if.end.i.if.end111_crit_edge, %if.then87.if.end111_crit_edge, %if.then80.if.end111_crit_edge, %if.end55.if.end111_crit_edge
  %freeze.3.ph = phi i32 [ %freeze.1, %if.end.i202.if.end111_crit_edge ], [ %freeze.1, %if.else94.if.end111_crit_edge ], [ %freeze.1, %if.end.i.if.end111_crit_edge ], [ %freeze.1, %if.then87.if.end111_crit_edge ], [ 1, %if.then80.if.end111_crit_edge ], [ %freeze.1, %if.end55.if.end111_crit_edge ]
  %ehi.1.ph = phi ptr [ %eh_info, %if.end.i202.if.end111_crit_edge ], [ %eh_info, %if.else94.if.end111_crit_edge ], [ %eh_info88, %if.end.i.if.end111_crit_edge ], [ %eh_info88, %if.then87.if.end111_crit_edge ], [ %eh_info, %if.then80.if.end111_crit_edge ], [ %eh_info, %if.end55.if.end111_crit_edge ]
  %action.1.ph = phi i32 [ 0, %if.end.i202.if.end111_crit_edge ], [ 0, %if.else94.if.end111_crit_edge ], [ 0, %if.end.i.if.end111_crit_edge ], [ 0, %if.then87.if.end111_crit_edge ], [ 4, %if.then80.if.end111_crit_edge ], [ 0, %if.end55.if.end111_crit_edge ]
  %err_mask.1.ph = phi i32 [ 1, %if.end.i202.if.end111_crit_edge ], [ 1, %if.else94.if.end111_crit_edge ], [ 1, %if.end.i.if.end111_crit_edge ], [ 1, %if.then87.if.end111_crit_edge ], [ 2, %if.then80.if.end111_crit_edge ], [ 0, %if.end55.if.end111_crit_edge ]
  %err_mask109 = getelementptr inbounds %struct.ata_eh_info, ptr %ehi.1.ph, i32 0, i32 2
  %85 = ptrtoint ptr %err_mask109 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %err_mask109, align 4
  %or110 = or i32 %86, %err_mask.1.ph
  store i32 %or110, ptr %err_mask109, align 4
  %action112 = getelementptr inbounds %struct.ata_eh_info, ptr %ehi.1.ph, i32 0, i32 3
  %87 = ptrtoint ptr %action112 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %action112, align 4
  %or113 = or i32 %88, %action.1.ph
  store i32 %or113, ptr %action112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freeze.3.ph)
  %tobool114.not = icmp eq i32 %freeze.3.ph, 0
  br i1 %tobool114.not, label %if.else117, label %if.end111.if.then115_crit_edge

if.end111.if.then115_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then115

if.end111.thread:                                 ; preds = %if.end.i202.if.end111.thread_crit_edge, %lor.lhs.false.i197.if.end111.thread_crit_edge, %if.end.i.if.end111.thread_crit_edge, %lor.lhs.false.i188.if.end111.thread_crit_edge
  %qc.1 = phi ptr [ %arrayidx.i.i, %lor.lhs.false.i188.if.end111.thread_crit_edge ], [ %arrayidx.i.i191, %lor.lhs.false.i197.if.end111.thread_crit_edge ], [ %arrayidx.i.i, %if.end.i.if.end111.thread_crit_edge ], [ %arrayidx.i.i191, %if.end.i202.if.end111.thread_crit_edge ]
  %err_mask106 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc.1, i32 0, i32 20
  %89 = ptrtoint ptr %err_mask106 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %err_mask106, align 4
  %or107 = or i32 %90, 1
  store i32 %or107, ptr %err_mask106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freeze.1)
  %tobool114.not234 = icmp eq i32 %freeze.1, 0
  br i1 %tobool114.not234, label %if.then121, label %if.end111.thread.if.then115_crit_edge

if.end111.thread.if.then115_crit_edge:            ; preds = %if.end111.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then115

if.then115:                                       ; preds = %if.end111.thread.if.then115_crit_edge, %if.end111.if.then115_crit_edge
  %call116 = tail call i32 @ata_port_freeze(ptr noundef %ap) #10
  br label %if.end128

if.else117:                                       ; preds = %if.end111
  br i1 %tobool56.not, label %if.else117.if.end128_crit_edge, label %if.else124

if.else117.if.end128_crit_edge:                   ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

if.then121:                                       ; preds = %if.end111.thread
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc.1, i32 0, i32 1
  %91 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 128
  %call123 = tail call i32 @ata_link_abort(ptr noundef %94) #10
  br label %if.end128

if.else124:                                       ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #12
  %call125 = tail call i32 @ata_port_abort(ptr noundef %ap) #10
  br label %if.end128

if.end128:                                        ; preds = %if.else124, %if.then121, %if.else117.if.end128_crit_edge, %if.then115
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_qc_complete_multiple(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ata_qc_get_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_qc_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_clear_desc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_async_notification(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_push_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_freeze(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_link_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

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
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !16, !18, !20, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !38, !39, !40, !41, !42, !43, !44, !46, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !69, !70, !71, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !96, !97, !99, !100, !101, !103, !104, !106, !107, !109, !110, !111, !113, !115, !116, !117, !119, !120, !122, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !140, !142, !143, !145, !146, !147, !148, !150, !151, !153, !154, !155, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !188, !190, !191, !193, !194, !195, !197, !198, !200, !201, !202, !204, !205, !207, !208, !209, !210, !211, !213, !214, !215, !217, !218, !220, !221, !223, !224, !226, !227, !229, !230, !232, !233, !235, !236, !238, !239, !240, !242, !243, !245, !247, !249, !250, !252, !254, !256, !258, !259, !260, !261, !262, !264, !266, !267, !268, !270, !271, !272, !273}
!llvm.module.flags = !{!275, !276, !277, !278, !279, !280, !281, !282}
!llvm.ident = !{!283}

!0 = !{ptr @__param_intr_coalescing_count, !1, !"__param_intr_coalescing_count", i1 false, i1 false}
!1 = !{!"../drivers/ata/sata_fsl.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_intr_coalescing_counttype288, !1, !"__UNIQUE_ID_intr_coalescing_counttype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_intr_coalescing_count289, !4, !"__UNIQUE_ID_intr_coalescing_count289", i1 false, i1 false}
!4 = !{!"../drivers/ata/sata_fsl.c", i32 28, i32 1}
!5 = !{ptr @__param_intr_coalescing_ticks, !6, !"__param_intr_coalescing_ticks", i1 false, i1 false}
!6 = !{!"../drivers/ata/sata_fsl.c", i32 32, i32 1}
!7 = !{ptr @__UNIQUE_ID_intr_coalescing_tickstype290, !6, !"__UNIQUE_ID_intr_coalescing_tickstype290", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_intr_coalescing_ticks291, !9, !"__UNIQUE_ID_intr_coalescing_ticks291", i1 false, i1 false}
!9 = !{!"../drivers/ata/sata_fsl.c", i32 33, i32 1}
!10 = !{ptr @__initcall__kmod_sata_fsl__338_1604_fsl_sata_driver_init6, !11, !"__initcall__kmod_sata_fsl__338_1604_fsl_sata_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/ata/sata_fsl.c", i32 1604, i32 1}
!12 = !{ptr @__exitcall_fsl_sata_driver_exit, !11, !"__exitcall_fsl_sata_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_file339, !14, !"__UNIQUE_ID_file339", i1 false, i1 false}
!14 = !{!"../drivers/ata/sata_fsl.c", i32 1606, i32 1}
!15 = !{ptr @__UNIQUE_ID_license340, !14, !"__UNIQUE_ID_license340", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_author341, !17, !"__UNIQUE_ID_author341", i1 false, i1 false}
!17 = !{!"../drivers/ata/sata_fsl.c", i32 1607, i32 1}
!18 = !{ptr @__UNIQUE_ID_description342, !19, !"__UNIQUE_ID_description342", i1 false, i1 false}
!19 = !{!"../drivers/ata/sata_fsl.c", i32 1608, i32 1}
!20 = !{ptr @__UNIQUE_ID_version343, !21, !"__UNIQUE_ID_version343", i1 false, i1 false}
!21 = !{!"../drivers/ata/sata_fsl.c", i32 1609, i32 1}
!22 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__modver_attr, !21, !"__modver_attr", i1 false, i1 false}
!26 = !{ptr @intr_coalescing_count, !27, !"intr_coalescing_count", i1 false, i1 false}
!27 = !{!"../drivers/ata/sata_fsl.c", i32 26, i32 21}
!28 = !{ptr @intr_coalescing_ticks, !29, !"intr_coalescing_ticks", i1 false, i1 false}
!29 = !{!"../drivers/ata/sata_fsl.c", i32 31, i32 21}
!30 = !{ptr @__param_str_intr_coalescing_count, !1, !"__param_str_intr_coalescing_count", i1 false, i1 false}
!31 = !{ptr @__param_str_intr_coalescing_ticks, !6, !"__param_str_intr_coalescing_ticks", i1 false, i1 false}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/ata/sata_fsl.c", i32 1593, i32 11}
!34 = !{ptr @fsl_sata_driver, !35, !"fsl_sata_driver", i1 false, i1 false}
!35 = !{!"../drivers/ata/sata_fsl.c", i32 1591, i32 31}
!36 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/ata/sata_fsl.c", i32 1437, i32 2}
!38 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @sata_fsl_probe._entry, !37, !"_entry", i1 false, i1 false}
!43 = !{ptr @sata_fsl_probe._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/ata/sata_fsl.c", i32 1446, i32 51}
!46 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/ata/sata_fsl.c", i32 1452, i32 2}
!48 = !{ptr @sata_fsl_probe.__UNIQUE_ID_ddebug337, !47, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/ata/sata_fsl.c", i32 1470, i32 50}
!51 = !{ptr @sata_fsl_probe.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/ata/sata_fsl.c", i32 1498, i32 2}
!53 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/ata/sata_fsl.c", i32 1499, i32 41}
!55 = !{ptr @sata_fsl_probe.__key.13, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/ata/sata_fsl.c", i32 1507, i32 2}
!57 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/ata/sata_fsl.c", i32 1508, i32 38}
!59 = !{ptr @sata_fsl_port_info, !60, !"sata_fsl_port_info", i1 false, i1 false}
!60 = !{!"../drivers/ata/sata_fsl.c", i32 1414, i32 35}
!61 = !{ptr @sata_fsl_ops, !62, !"sata_fsl_ops", i1 false, i1 false}
!62 = !{!"../drivers/ata/sata_fsl.c", i32 1386, i32 35}
!63 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/ata/sata_fsl.c", i32 534, i32 2}
!65 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @sata_fsl_qc_prep.__UNIQUE_ID_ddebug297, !64, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!67 = !{ptr @.str.17, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/ata/sata_fsl.c", i32 395, i32 3}
!69 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @sata_fsl_tag.__UNIQUE_ID_ddebug294, !68, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!71 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/ata/sata_fsl.c", i32 400, i32 3}
!73 = !{ptr @sata_fsl_tag.__UNIQUE_ID_ddebug295, !72, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!74 = !{ptr @.str.20, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/ata/sata_fsl.c", i32 461, i32 4}
!76 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @sata_fsl_fill_sg._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @sata_fsl_fill_sg._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.23, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/ata/sata_fsl.c", i32 464, i32 4}
!81 = !{ptr @sata_fsl_fill_sg._entry.22, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @sata_fsl_fill_sg._entry_ptr.24, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.25, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/ata/sata_fsl.c", i32 426, i32 2}
!85 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @sata_fsl_setup_cmd_hdr_entry.__UNIQUE_ID_ddebug296, !84, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!87 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/ata/sata_fsl.c", i32 547, i32 2}
!89 = !{ptr @.str.28, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @sata_fsl_qc_issue.__UNIQUE_ID_ddebug298, !88, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!91 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/ata/sata_fsl.c", i32 557, i32 2}
!93 = !{ptr @sata_fsl_qc_issue.__UNIQUE_ID_ddebug299, !92, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/ata/sata_fsl.c", i32 560, i32 2}
!96 = !{ptr @sata_fsl_qc_issue.__UNIQUE_ID_ddebug300, !95, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!97 = !{ptr @.str.31, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/ata/sata_fsl.c", i32 637, i32 2}
!99 = !{ptr @.str.32, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @sata_fsl_freeze.__UNIQUE_ID_ddebug305, !98, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!101 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/ata/sata_fsl.c", i32 641, i32 2}
!103 = !{ptr @sata_fsl_freeze.__UNIQUE_ID_ddebug306, !102, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!104 = !{ptr @.str.34, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/ata/sata_fsl.c", i32 648, i32 2}
!106 = !{ptr @sata_fsl_freeze.__UNIQUE_ID_ddebug307, !105, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!107 = !{ptr @.str.35, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/ata/sata_fsl.c", i32 661, i32 2}
!109 = !{ptr @.str.36, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @sata_fsl_thaw.__UNIQUE_ID_ddebug308, !108, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!111 = !{ptr @sata_fsl_thaw.__UNIQUE_ID_ddebug309, !112, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!112 = !{!"../drivers/ata/sata_fsl.c", i32 670, i32 2}
!113 = !{ptr @.str.37, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/ata/sata_fsl.c", i32 952, i32 2}
!115 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @sata_fsl_softreset.__UNIQUE_ID_ddebug318, !114, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!117 = !{ptr @.str.39, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/ata/sata_fsl.c", i32 960, i32 2}
!119 = !{ptr @sata_fsl_softreset.__UNIQUE_ID_ddebug319, !118, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!120 = !{ptr @.str.40, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/ata/sata_fsl.c", i32 971, i32 3}
!122 = !{ptr @sata_fsl_softreset._entry, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @sata_fsl_softreset._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.41, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/ata/sata_fsl.c", i32 973, i32 3}
!126 = !{ptr @sata_fsl_softreset.__UNIQUE_ID_ddebug320, !125, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!127 = !{ptr @.str.42, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/ata/sata_fsl.c", i32 979, i32 3}
!129 = !{ptr @sata_fsl_softreset.__UNIQUE_ID_ddebug321, !128, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!130 = !{ptr @.str.43, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/ata/sata_fsl.c", i32 1028, i32 3}
!132 = !{ptr @sata_fsl_softreset.__UNIQUE_ID_ddebug322, !131, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!133 = !{ptr @.str.44, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/ata/sata_fsl.c", i32 1029, i32 3}
!135 = !{ptr @sata_fsl_softreset.__UNIQUE_ID_ddebug323, !134, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!136 = !{ptr @.str.45, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/ata/sata_fsl.c", i32 792, i32 2}
!138 = !{ptr @.str.46, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @sata_fsl_dev_classify.__UNIQUE_ID_ddebug314, !137, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!140 = !{ptr @.str.47, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/ata/sata_fsl.c", i32 793, i32 2}
!142 = !{ptr @sata_fsl_dev_classify.__UNIQUE_ID_ddebug315, !141, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!143 = !{ptr @.str.48, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/ata/sata_fsl.c", i32 826, i32 3}
!145 = !{ptr @.str.49, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @sata_fsl_hardreset._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @sata_fsl_hardreset._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.50, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/ata/sata_fsl.c", i32 838, i32 2}
!150 = !{ptr @sata_fsl_hardreset.__UNIQUE_ID_ddebug316, !149, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!151 = !{ptr @.str.52, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/ata/sata_fsl.c", i32 865, i32 3}
!153 = !{ptr @sata_fsl_hardreset._entry.51, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @sata_fsl_hardreset._entry_ptr.53, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.54, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/ata/sata_fsl.c", i32 869, i32 2}
!157 = !{ptr @sata_fsl_hardreset.__UNIQUE_ID_ddebug317, !156, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!158 = !{ptr @.str.56, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/ata/sata_fsl.c", i32 882, i32 3}
!160 = !{ptr @sata_fsl_hardreset._entry.55, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @sata_fsl_hardreset._entry_ptr.57, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.59, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/ata/sata_fsl.c", i32 896, i32 3}
!164 = !{ptr @sata_fsl_hardreset._entry.58, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @sata_fsl_hardreset._entry_ptr.60, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.62, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/ata/sata_fsl.c", i32 900, i32 3}
!168 = !{ptr @sata_fsl_hardreset._entry.61, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @sata_fsl_hardreset._entry_ptr.63, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.64, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/ata/sata_fsl.c", i32 625, i32 2}
!172 = !{ptr @.str.65, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @sata_fsl_scr_read.__UNIQUE_ID_ddebug303, !171, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!174 = !{ptr @.str.66, !171, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @sata_fsl_scr_read.__UNIQUE_ID_ddebug304, !171, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!176 = !{ptr @.str.67, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/ata/sata_fsl.c", i32 601, i32 2}
!178 = !{ptr @sata_fsl_scr_write.__UNIQUE_ID_ddebug301, !177, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!179 = !{ptr @sata_fsl_scr_write.__UNIQUE_ID_ddebug302, !177, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!180 = !{ptr @.str.68, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/ata/sata_fsl.c", i32 732, i32 2}
!182 = !{ptr @.str.69, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @sata_fsl_port_start.__UNIQUE_ID_ddebug310, !181, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!184 = !{ptr @sata_fsl_port_start.__UNIQUE_ID_ddebug311, !185, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!185 = !{!"../drivers/ata/sata_fsl.c", i32 750, i32 2}
!186 = !{ptr @sata_fsl_port_start.__UNIQUE_ID_ddebug312, !187, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!187 = !{!"../drivers/ata/sata_fsl.c", i32 751, i32 2}
!188 = !{ptr @.str.70, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/ata/sata_fsl.c", i32 752, i32 2}
!190 = !{ptr @sata_fsl_port_start.__UNIQUE_ID_ddebug313, !189, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!191 = !{ptr @.str.71, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/ata/sata_fsl.c", i32 1344, i32 2}
!193 = !{ptr @.str.72, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @sata_fsl_init_controller.__UNIQUE_ID_ddebug335, !192, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!195 = !{ptr @.str.73, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/ata/sata_fsl.c", i32 1363, i32 2}
!197 = !{ptr @sata_fsl_init_controller.__UNIQUE_ID_ddebug336, !196, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!198 = !{ptr @.str.74, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/ata/sata_fsl.c", i32 316, i32 2}
!200 = !{ptr @.str.75, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @fsl_sata_set_irq_coalescing.__UNIQUE_ID_ddebug292, !199, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!202 = !{ptr @.str.76, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/ata/sata_fsl.c", i32 318, i32 2}
!204 = !{ptr @fsl_sata_set_irq_coalescing.__UNIQUE_ID_ddebug293, !203, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!205 = !{ptr @.str.77, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/ata/sata_fsl.c", i32 1303, i32 3}
!207 = !{ptr @.str.78, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.79, !206, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @sata_fsl_interrupt._entry, !206, !"_entry", i1 false, i1 false}
!210 = !{ptr @sata_fsl_interrupt._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.80, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/ata/sata_fsl.c", i32 1224, i32 3}
!213 = !{ptr @.str.81, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @sata_fsl_host_intr.__UNIQUE_ID_ddebug327, !212, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!215 = !{ptr @.str.82, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/ata/sata_fsl.c", i32 1229, i32 3}
!217 = !{ptr @sata_fsl_host_intr.__UNIQUE_ID_ddebug328, !216, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!218 = !{ptr @.str.83, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/ata/sata_fsl.c", i32 1234, i32 2}
!220 = !{ptr @sata_fsl_host_intr.__UNIQUE_ID_ddebug329, !219, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!221 = !{ptr @.str.84, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/ata/sata_fsl.c", i32 1235, i32 2}
!223 = !{ptr @sata_fsl_host_intr.__UNIQUE_ID_ddebug330, !222, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!224 = !{ptr @.str.85, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/ata/sata_fsl.c", i32 1247, i32 3}
!226 = !{ptr @sata_fsl_host_intr.__UNIQUE_ID_ddebug331, !225, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!227 = !{ptr @.str.86, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/ata/sata_fsl.c", i32 1253, i32 5}
!229 = !{ptr @sata_fsl_host_intr.__UNIQUE_ID_ddebug332, !228, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!230 = !{ptr @.str.87, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/ata/sata_fsl.c", i32 1264, i32 3}
!232 = !{ptr @sata_fsl_host_intr.__UNIQUE_ID_ddebug333, !231, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!233 = !{ptr @.str.88, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/ata/sata_fsl.c", i32 1272, i32 3}
!235 = !{ptr @sata_fsl_host_intr.__UNIQUE_ID_ddebug334, !234, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!236 = !{ptr @.str.89, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/ata/sata_fsl.c", i32 1081, i32 2}
!238 = !{ptr @.str.90, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @sata_fsl_error_intr.__UNIQUE_ID_ddebug324, !237, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!240 = !{ptr @.str.91, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/ata/sata_fsl.c", i32 1098, i32 3}
!242 = !{ptr @sata_fsl_error_intr.__UNIQUE_ID_ddebug325, !241, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!243 = !{ptr @.str.92, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/ata/sata_fsl.c", i32 1102, i32 26}
!245 = !{ptr @.str.93, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/ata/sata_fsl.c", i32 1102, i32 32}
!247 = !{ptr @.str.94, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/ata/sata_fsl.c", i32 1119, i32 3}
!249 = !{ptr @sata_fsl_error_intr.__UNIQUE_ID_ddebug326, !248, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!250 = !{ptr @sata_fsl_sht, !251, !"sata_fsl_sht", i1 false, i1 false}
!251 = !{!"../drivers/ata/sata_fsl.c", i32 1380, i32 34}
!252 = !{ptr @.str.95, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/ata/sata_fsl.c", i32 325, i32 25}
!254 = !{ptr @.str.96, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/ata/sata_fsl.c", i32 335, i32 18}
!256 = !{ptr @.str.97, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/ata/sata_fsl.c", i32 336, i32 3}
!258 = !{ptr @.str.98, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.99, !257, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @fsl_sata_intr_coalescing_store._entry, !257, !"_entry", i1 false, i1 false}
!261 = !{ptr @fsl_sata_intr_coalescing_store._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.100, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/ata/sata_fsl.c", i32 360, i32 25}
!264 = !{ptr @.str.101, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/ata/sata_fsl.c", i32 375, i32 3}
!266 = !{ptr @fsl_sata_rx_watermark_store._entry, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @fsl_sata_rx_watermark_store._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.102, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/ata/sata_fsl.c", i32 1561, i32 3}
!270 = !{ptr @.str.103, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @sata_fsl_resume._entry, !269, !"_entry", i1 false, i1 false}
!272 = !{ptr @sata_fsl_resume._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @fsl_sata_match, !274, !"fsl_sata_match", i1 false, i1 false}
!274 = !{!"../drivers/ata/sata_fsl.c", i32 1579, i32 34}
!275 = !{i32 1, !"wchar_size", i32 2}
!276 = !{i32 1, !"min_enum_size", i32 4}
!277 = !{i32 8, !"branch-target-enforcement", i32 0}
!278 = !{i32 8, !"sign-return-address", i32 0}
!279 = !{i32 8, !"sign-return-address-all", i32 0}
!280 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!281 = !{i32 7, !"uwtable", i32 1}
!282 = !{i32 7, !"frame-pointer", i32 2}
!283 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!284 = !{i64 6545717}
!285 = !{i64 2154086066}
!286 = !{i64 2154087421}
!287 = !{i64 6545299}
!288 = !{i64 2148732993, i64 2148732998, i64 2148733011, i64 2148733055, i64 2148733089, i64 2148733110}
!289 = !{!"auto-init"}
!290 = !{!"branch_weights", i32 1, i32 2000}
!291 = !{!"branch_weights", i32 2000, i32 1}
!292 = !{i32 0, i32 33}
