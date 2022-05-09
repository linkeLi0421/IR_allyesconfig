; ModuleID = '/llk/IR_all_yes/drivers/ata/sata_mv.c_pt.bc'
source_filename = "../drivers/ata/sata_mv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.83 }
%union.anon.83 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.mv_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.92, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.92 = type { ptr }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.mv_host_priv = type { i32, i32, i32, [8 x %struct.mv_port_signal], ptr, i32, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mv_port_signal = type { i32, i32 }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.93, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.93 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.mv_port_priv = type { ptr, i32, ptr, i32, [32 x ptr], [32 x i32], i32, i32, i32, %struct.mv_cached_regs, i32 }
%struct.mv_cached_regs = type { i32, i32, i32, i32 }
%struct.mv_crqb = type { i32, i32, i16, [11 x i16] }
%struct.mv_sg = type { i32, i32, i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.mv_crqb_iie = type { i32, i32, i32, i32, [4 x i32] }
%struct.mv_crpb = type { i16, i16, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.pdev_archdata = type { ptr }
%struct.mbus_dram_target_info = type { i8, i32, [4 x %struct.mbus_dram_window] }
%struct.mbus_dram_window = type { i8, i8, i64, i64 }

@__param_str_msi = internal constant [12 x i8] c"sata_mv.msi\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@msi = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_msi = internal constant %struct.kernel_param { ptr @__param_str_msi, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.83 { ptr @msi } }, section "__param", align 4
@__UNIQUE_ID_msitype321 = internal constant [25 x i8] c"sata_mv.parmtype=msi:int\00", section ".modinfo", align 1
@__UNIQUE_ID_msi322 = internal constant [53 x i8] c"sata_mv.parm=msi:Enable use of PCI MSI (0=off, 1=on)\00", section ".modinfo", align 1
@__param_str_irq_coalescing_io_count = internal constant [32 x i8] c"sata_mv.irq_coalescing_io_count\00", align 1
@irq_coalescing_io_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_irq_coalescing_io_count = internal constant %struct.kernel_param { ptr @__param_str_irq_coalescing_io_count, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.83 { ptr @irq_coalescing_io_count } }, section "__param", align 4
@__UNIQUE_ID_irq_coalescing_io_counttype323 = internal constant [45 x i8] c"sata_mv.parmtype=irq_coalescing_io_count:int\00", section ".modinfo", align 1
@__UNIQUE_ID_irq_coalescing_io_count324 = internal constant [81 x i8] c"sata_mv.parm=irq_coalescing_io_count:IRQ coalescing I/O count threshold (0..255)\00", section ".modinfo", align 1
@__param_str_irq_coalescing_usecs = internal constant [29 x i8] c"sata_mv.irq_coalescing_usecs\00", align 1
@irq_coalescing_usecs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_irq_coalescing_usecs = internal constant %struct.kernel_param { ptr @__param_str_irq_coalescing_usecs, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.83 { ptr @irq_coalescing_usecs } }, section "__param", align 4
@__UNIQUE_ID_irq_coalescing_usecstype325 = internal constant [42 x i8] c"sata_mv.parmtype=irq_coalescing_usecs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_irq_coalescing_usecs326 = internal constant [73 x i8] c"sata_mv.parm=irq_coalescing_usecs:IRQ coalescing time threshold in usecs\00", section ".modinfo", align 1
@mv_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @mv_pci_tbl, ptr @mv_pci_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @mv_pci_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@mv_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mv_platform_probe, ptr @mv_platform_remove, ptr null, ptr @mv_platform_suspend, ptr @mv_platform_resume, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mv_sata_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author337 = internal constant [26 x i8] c"sata_mv.author=Brett Russ\00", section ".modinfo", align 1
@__UNIQUE_ID_description338 = internal constant [71 x i8] c"sata_mv.description=SCSI low-level driver for Marvell SATA controllers\00", section ".modinfo", align 1
@__UNIQUE_ID_file339 = internal constant [33 x i8] c"sata_mv.file=drivers/ata/sata_mv\00", section ".modinfo", align 1
@__UNIQUE_ID_license340 = internal constant [23 x i8] c"sata_mv.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version341 = internal constant [21 x i8] c"sata_mv.version=1.28\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sata_mv\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.28\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_alias342 = internal constant [31 x i8] c"sata_mv.alias=platform:sata_mv\00", section ".modinfo", align 1
@__initcall__kmod_sata_mv__343_4492_mv_init6 = internal global ptr @mv_init, section ".initcall6.init", align 4
@__exitcall_mv_exit = internal global ptr @mv_exit, section ".exitcall.exit", align 4
@mv_pci_tbl = internal constant { [18 x %struct.pci_device_id], [128 x i8] } { [18 x %struct.pci_device_id] [%struct.pci_device_id { i32 4523, i32 20544, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4523, i32 20545, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4523, i32 20608, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4523, i32 20609, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4355, i32 5920, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4355, i32 5952, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4355, i32 5954, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4523, i32 24640, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4523, i32 24641, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4523, i32 24642, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4523, i32 24704, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4523, i32 24705, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 36869, i32 577, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 36869, i32 579, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4523, i32 28738, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4355, i32 8960, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4355, i32 8976, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id zeroinitializer], [128 x i8] zeroinitializer }, align 32
@mv_port_info = internal constant { [8 x %struct.ata_port_info], [32 x i8] } { [8 x %struct.ata_port_info] [%struct.ata_port_info { i32 578, i32 0, i32 31, i32 0, i32 127, ptr @mv5_ops, ptr null }, %struct.ata_port_info { i32 1073742402, i32 0, i32 31, i32 0, i32 127, ptr @mv5_ops, ptr null }, %struct.ata_port_info { i32 1073742402, i32 0, i32 31, i32 0, i32 127, ptr @mv5_ops, ptr null }, %struct.ata_port_info { i32 656898, i32 0, i32 31, i32 0, i32 127, ptr @mv6_ops, ptr null }, %struct.ata_port_info { i32 1074398722, i32 0, i32 31, i32 0, i32 127, ptr @mv6_ops, ptr null }, %struct.ata_port_info { i32 919042, i32 0, i32 31, i32 0, i32 127, ptr @mv_iie_ops, ptr null }, %struct.ata_port_info { i32 919042, i32 0, i32 31, i32 0, i32 127, ptr @mv_iie_ops, ptr null }, %struct.ata_port_info { i32 919042, i32 0, i32 31, i32 0, i32 127, ptr @mv_iie_ops, ptr null }], [32 x i8] zeroinitializer }, align 32
@mv_pci_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@mv_pci_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 4403, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA enable failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mv_pci_init_one\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/ata/sata_mv.c\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mv_pci_init_one._entry_ptr = internal global ptr @mv_pci_init_one._entry, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmio\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@mv5_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@mv6_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 31, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_ncq_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@mv5_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr @mv_qc_defer, ptr null, ptr @mv_qc_prep, ptr @mv_qc_issue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv_eh_freeze, ptr @mv_eh_thaw, ptr null, ptr null, ptr @mv_hardreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 -2 to ptr), ptr null, ptr null, ptr null, ptr @mv5_scr_read, ptr @mv5_scr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv_port_start, ptr @mv_port_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_sff_port_ops }, [44 x i8] zeroinitializer }, align 32
@mv6_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr @mv_qc_defer, ptr @mv_check_atapi_dma, ptr @mv_qc_prep, ptr @mv_qc_issue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv6_dev_config, ptr @mv_eh_freeze, ptr @mv_eh_thaw, ptr null, ptr @mv_softreset, ptr @mv_hardreset, ptr null, ptr null, ptr @mv_softreset, ptr @mv_pmp_hardreset, ptr null, ptr @mv_pmp_error_handler, ptr inttoptr (i32 -2 to ptr), ptr null, ptr null, ptr null, ptr @mv_scr_read, ptr @mv_scr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv_port_start, ptr @mv_port_stop, ptr null, ptr null, ptr null, ptr @mv_sff_check_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv_sff_irq_clear, ptr null, ptr @mv_bmdma_setup, ptr @mv_bmdma_start, ptr @mv_bmdma_stop, ptr @mv_bmdma_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@mv_iie_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr @mv_qc_prep_iie, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 -2 to ptr), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv6_ops }, [44 x i8] zeroinitializer }, align 32
@ata_sff_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@mv_qc_prep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 2099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013ata%u: %s: unsupported command: %.2x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mv_qc_prep\00", [21 x i8] zeroinitializer }, align 32
@mv_qc_prep._entry_ptr = internal global ptr @mv_qc_prep._entry, section ".printk_index", align 4
@mv_qc_issue.limit_warnings = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@mv_qc_issue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 2374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\014ata%u.%02u: sata_mv: attempting PIO w/multiple DRQ: this may fail due to h/w errata\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mv_qc_issue\00", [20 x i8] zeroinitializer }, align 32
@mv_qc_issue._entry_ptr = internal global ptr @mv_qc_issue._entry, section ".printk_index", align 4
@mv_qc_issue._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.5, i32 2374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014ata%u: sata_mv: attempting PIO w/multiple DRQ: this may fail due to h/w errata\0A\00", [46 x i8] zeroinitializer }, align 32
@mv_qc_issue._entry_ptr.16 = internal global ptr @mv_qc_issue._entry.14, section ".printk_index", align 4
@mv_stop_edma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 1244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013ata%u: Unable to stop eDMA\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mv_stop_edma\00", [19 x i8] zeroinitializer }, align 32
@mv_stop_edma._entry_ptr = internal global ptr @mv_stop_edma._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mv_send_fis._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 2257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014ata%u: %s transmission error, ifstat=%08x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mv_send_fis\00", [20 x i8] zeroinitializer }, align 32
@mv_send_fis._entry_ptr = internal global ptr @mv_send_fis._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sata_deb_timing_hotplug = external dso_local constant [0 x i32], align 4
@sata_deb_timing_normal = external dso_local constant [0 x i32], align 4
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@mv6_dev_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 1413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016ata%u.%02u: NCQ disabled for command-based switching\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mv6_dev_config\00", [17 x i8] zeroinitializer }, align 32
@mv6_dev_config._entry_ptr = internal global ptr @mv6_dev_config._entry, section ".printk_index", align 4
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"crqb_q\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"crpb_q\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sg_tbl\00", [25 x i8] zeroinitializer }, align 32
@mv_init_host.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.5, ptr @.str.27, i8 3, i8 -32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mv_init_host\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"HC%i: HC config=0x%08x HC IRQ cause (before clear)=0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@mv5xxx_ops = internal constant { %struct.mv_hw_ops, [40 x i8] } { %struct.mv_hw_ops { ptr @mv5_phy_errata, ptr @mv5_enable_leds, ptr @mv5_read_preamp, ptr @mv5_reset_hc, ptr @mv5_reset_flash, ptr @mv5_reset_bus }, [40 x i8] zeroinitializer }, align 32
@mv_chip_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.5, i32 3783, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Applying 50XXB2 workarounds to unknown rev\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mv_chip_id\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mv_chip_id._entry_ptr = internal global ptr @mv_chip_id._entry, section ".printk_index", align 4
@mv_chip_id._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.5, i32 3803, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Applying B2 workarounds to unknown rev\0A\00", [56 x i8] zeroinitializer }, align 32
@mv_chip_id._entry_ptr.33 = internal global ptr @mv_chip_id._entry.31, section ".printk_index", align 4
@mv6xxx_ops = internal constant { %struct.mv_hw_ops, [40 x i8] } { %struct.mv_hw_ops { ptr @mv6_phy_errata, ptr @mv6_enable_leds, ptr @mv6_read_preamp, ptr @mv6_reset_hc, ptr @mv6_reset_flash, ptr @mv_reset_pci_bus }, [40 x i8] zeroinitializer }, align 32
@mv_chip_id._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.5, i32 3824, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@mv_chip_id._entry_ptr.35 = internal global ptr @mv_chip_id._entry.34, section ".printk_index", align 4
@mv_chip_id._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.5, i32 3855, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"Highpoint RocketRAID BIOS CORRUPTS DATA on all attached drives, regardless of if/how they are configured. BEWARE!\0A\00", [45 x i8] zeroinitializer }, align 32
@mv_chip_id._entry_ptr.38 = internal global ptr @mv_chip_id._entry.36, section ".printk_index", align 4
@mv_chip_id._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.29, ptr @.str.5, i32 3859, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [138 x i8], [54 x i8] } { [138 x i8] c"For data safety, do not use sectors 8-9 on \22Legacy\22 drives, and avoid the final two gigabytes on all RocketRAID BIOS initialized drives.\0A\00", [54 x i8] zeroinitializer }, align 32
@mv_chip_id._entry_ptr.41 = internal global ptr @mv_chip_id._entry.39, section ".printk_index", align 4
@mv_chip_id._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.29, ptr @.str.5, i32 3874, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Applying 60X1C0 workarounds to unknown rev\0A\00", [52 x i8] zeroinitializer }, align 32
@mv_chip_id._entry_ptr.44 = internal global ptr @mv_chip_id._entry.42, section ".printk_index", align 4
@mv_soc_65n_ops = internal constant { %struct.mv_hw_ops, [40 x i8] } { %struct.mv_hw_ops { ptr @mv_soc_65n_phy_errata, ptr @mv_soc_enable_leds, ptr null, ptr @mv_soc_reset_hc, ptr @mv_soc_reset_flash, ptr @mv_soc_reset_bus }, [40 x i8] zeroinitializer }, align 32
@mv_soc_ops = internal constant { %struct.mv_hw_ops, [40 x i8] } { %struct.mv_hw_ops { ptr @mv6_phy_errata, ptr @mv_soc_enable_leds, ptr @mv_soc_read_preamp, ptr @mv_soc_reset_hc, ptr @mv_soc_reset_flash, ptr @mv_soc_reset_bus }, [40 x i8] zeroinitializer }, align 32
@mv_chip_id._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.29, ptr @.str.5, i32 3889, ptr @.str.47, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"BUG: invalid board index %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\011\00", [29 x i8] zeroinitializer }, align 32
@mv_chip_id._entry_ptr.48 = internal global ptr @mv_chip_id._entry.45, section ".printk_index", align 4
@mv6_reset_hc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.5, i32 3279, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PCI master won't flush\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mv6_reset_hc\00", [19 x i8] zeroinitializer }, align 32
@mv6_reset_hc._entry_ptr = internal global ptr @mv6_reset_hc._entry, section ".printk_index", align 4
@mv6_reset_hc._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.5, i32 3293, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't set global reset\0A\00", [40 x i8] zeroinitializer }, align 32
@mv6_reset_hc._entry_ptr.53 = internal global ptr @mv6_reset_hc._entry.51, section ".printk_index", align 4
@mv6_reset_hc._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.5, i32 3307, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't clear global reset\0A\00", [38 x i8] zeroinitializer }, align 32
@mv6_reset_hc._entry_ptr.56 = internal global ptr @mv6_reset_hc._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%08x \00", [26 x i8] zeroinitializer }, align 32
@mv_dump_pci_cfg.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.58, ptr @.str.5, ptr @.str.59, i8 1, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mv_dump_pci_cfg\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: %02x: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SCSI\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RAID\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"I\00", [30 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"II\00", [29 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IIE\00", [28 x i8] zeroinitializer }, align 32
@mv_print_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.5, i32 4355, ptr @.str.68, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Gen-%s %u slots %u ports %s mode IRQ via %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mv_print_info\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mv_print_info._entry_ptr = internal global ptr @mv_print_info._entry, section ".printk_index", align 4
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MSI\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INTx\00", [27 x i8] zeroinitializer }, align 32
@mv_pci_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.5, i32 2956, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PCI ERROR; PCI IRQ cause=0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mv_pci_error\00", [19 x i8] zeroinitializer }, align 32
@mv_pci_error._entry_ptr = internal global ptr @mv_pci_error._entry, section ".printk_index", align 4
@mv_pci_error.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.72, ptr @.str.5, ptr @.str.73, i8 2, i8 -29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: All regs @ PCI error\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PCI err cause 0x%08x\00", [43 x i8] zeroinitializer }, align 32
@mv_dump_all_regs.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.75, ptr @.str.5, ptr @.str.76, i8 1, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mv_dump_all_regs\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: All registers for port(s) %u-%u:\0A\00", [58 x i8] zeroinitializer }, align 32
@mv_dump_all_regs.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.75, ptr @.str.5, ptr @.str.77, i8 1, i8 68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: PCI config space regs:\0A\00", [36 x i8] zeroinitializer }, align 32
@mv_dump_all_regs.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.75, ptr @.str.5, ptr @.str.78, i8 1, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: PCI regs:\0A\00", [17 x i8] zeroinitializer }, align 32
@mv_dump_all_regs.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.75, ptr @.str.5, ptr @.str.79, i8 1, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: HC regs (HC %i):\0A\00", [42 x i8] zeroinitializer }, align 32
@mv_dump_all_regs.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.75, ptr @.str.5, ptr @.str.80, i8 1, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: EDMA regs (port %i):\0A\00", [38 x i8] zeroinitializer }, align 32
@mv_dump_all_regs.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.75, ptr @.str.5, ptr @.str.81, i8 1, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: SATA regs (port %i):\0A\00", [38 x i8] zeroinitializer }, align 32
@mv_dump_mem.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.82, ptr @.str.5, ptr @.str.83, i8 1, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mv_dump_mem\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: %p: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@mv_handle_fbs_ncq_dev_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.5, i32 2531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\016ata%u: %s: pmp_map=%04x qc_map=%04llx failed_links=%d nr_active_links=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mv_handle_fbs_ncq_dev_err\00", [38 x i8] zeroinitializer }, align 32
@mv_handle_fbs_ncq_dev_err._entry_ptr = internal global ptr @mv_handle_fbs_ncq_dev_err._entry, section ".printk_index", align 4
@mv_handle_fbs_ncq_dev_err._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.5, i32 2537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016ata%u: %s: done\0A\00", [45 x i8] zeroinitializer }, align 32
@mv_handle_fbs_ncq_dev_err._entry_ptr.88 = internal global ptr @mv_handle_fbs_ncq_dev_err._entry.86, section ".printk_index", align 4
@mv_handle_fbs_ncq_dev_err._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.5, i32 2540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016ata%u: %s: waiting\0A\00", [42 x i8] zeroinitializer }, align 32
@mv_handle_fbs_ncq_dev_err._entry_ptr.91 = internal global ptr @mv_handle_fbs_ncq_dev_err._entry.89, section ".printk_index", align 4
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dev err\00", [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"edma_err_cause=%08x pp_flags=%08x\00", [62 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fis_cause=%08x\00", [17 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SDB notify\00", [21 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dev error\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"parity error\00", [19 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dev disconnect\00", [17 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dev connect\00", [20 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EDMA self-disable\00", [46 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SError=%08x\00", [20 x i8] zeroinitializer }, align 32
@mv_handle_dev_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.5, i32 2583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014ata%u: %s: err_cause=0x%x pp_flags=0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mv_handle_dev_err\00", [46 x i8] zeroinitializer }, align 32
@mv_handle_dev_err._entry_ptr = internal global ptr @mv_handle_dev_err._entry, section ".printk_index", align 4
@mv_handle_dev_err._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.5, i32 2595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mv_handle_dev_err._entry_ptr.105 = internal global ptr @mv_handle_dev_err._entry.104, section ".printk_index", align 4
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idle\00", [27 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"polling\00", [24 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unexpected device interrupt while %s\00", [59 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@ata_ncq_sdev_groups = external dso_local global [0 x ptr], align 4
@mv_sata_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-370-sata\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-sata\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@__const.mv_platform_probe.ppi = private unnamed_addr constant [2 x ptr] [ptr getelementptr (i8, ptr @mv_port_info, i64 196), ptr null], align 8
@mv_platform_probe.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@mv_platform_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.5, i32 4061, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid number of resources\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mv_platform_probe\00", [46 x i8] zeroinitializer }, align 32
@mv_platform_probe._entry_ptr = internal global ptr @mv_platform_probe._entry, section ".printk_index", align 4
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nr-ports\00", [23 x i8] zeroinitializer }, align 32
@mv_platform_probe._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.111, ptr @.str.5, i32 4078, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error parsing nr-ports property: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@mv_platform_probe._entry_ptr.115 = internal global ptr @mv_platform_probe._entry.113, section ".printk_index", align 4
@mv_platform_probe._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.111, ptr @.str.5, i32 4084, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nr-ports must be positive: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mv_platform_probe._entry_ptr.118 = internal global ptr @mv_platform_probe._entry.116, section ".printk_index", align 4
@mv_platform_probe._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.111, ptr @.str.5, i32 4127, ptr @.str.121, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot get optional clkdev\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@mv_platform_probe._entry_ptr.122 = internal global ptr @mv_platform_probe._entry.119, section ".printk_index", align 4
@.str.123 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"port%d\00", [25 x i8] zeroinitializer }, align 32
@mv_platform_probe._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.111, ptr @.str.5, i32 4145, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error getting phy %d\00", [43 x i8] zeroinitializer }, align 32
@mv_platform_probe._entry_ptr.127 = internal global ptr @mv_platform_probe._entry.125, section ".printk_index", align 4
@.str.128 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"marvell,armada-370-sata\00", [40 x i8] zeroinitializer }, align 32
@mv_platform_probe._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.111, ptr @.str.5, i32 4183, ptr @.str.68, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"slots %u ports %d\0A\00", [45 x i8] zeroinitializer }, align 32
@mv_platform_probe._entry_ptr.131 = internal global ptr @mv_platform_probe._entry.129, section ".printk_index", align 4
@mv_platform_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.5, i32 4263, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error during HW init\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mv_platform_resume\00", [45 x i8] zeroinitializer }, align 32
@mv_platform_resume._entry_ptr = internal global ptr @mv_platform_resume._entry, section ".printk_index", align 4
@switch.table.mv_scr_read = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 768, i32 772, i32 776, i32 848], [16 x i8] zeroinitializer }, align 32
@switch.table.mv_scr_write = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 768, i32 772, i32 776, i32 848], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.134 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 9]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 16, i64 8960, i64 8976]
@__sancov_gen_cov_switch_values.139 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.140 = internal global [7 x i64] [i64 5, i64 8, i64 41, i64 57, i64 196, i64 197, i64 206]
@__sancov_gen_cov_switch_values.141 = internal global [5 x i64] [i64 3, i64 8, i64 57, i64 197, i64 206]
@__sancov_gen_cov_switch_values.142 = internal global [9 x i64] [i64 7, i64 8, i64 37, i64 53, i64 61, i64 96, i64 97, i64 200, i64 202]
@__sancov_gen_cov_switch_values.143 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.144 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 8, i64 9]
@__sancov_gen_cov_switch_values.145 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 275, i64 291]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 12]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 12]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 12]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 12]
@__sancov_gen_cov_switch_values.150 = internal global [11 x i64] [i64 9, i64 8, i64 8, i64 10, i64 40, i64 42, i64 93, i64 168, i64 170, i64 190, i64 191]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 6]
@___asan_gen_.152 = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 71, i32 12 }
@___asan_gen_.155 = private unnamed_addr constant [24 x i8] c"irq_coalescing_io_count\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 76, i32 12 }
@___asan_gen_.158 = private unnamed_addr constant [21 x i8] c"irq_coalescing_usecs\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 81, i32 12 }
@___asan_gen_.161 = private unnamed_addr constant [14 x i8] c"mv_pci_driver\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4305, i32 26 }
@___asan_gen_.164 = private unnamed_addr constant [19 x i8] c"mv_platform_driver\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4285, i32 31 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4489, i32 1 }
@___asan_gen_.176 = private unnamed_addr constant [11 x i8] c"mv_pci_tbl\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 790, i32 35 }
@___asan_gen_.179 = private unnamed_addr constant [13 x i8] c"mv_port_info\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 739, i32 35 }
@___asan_gen_.182 = private unnamed_addr constant [29 x i8] c"mv_pci_init_one.__print_once\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4403, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4416, i32 46 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4417, i32 50 }
@___asan_gen_.207 = private unnamed_addr constant [8 x i8] c"mv5_sht\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 662, i32 34 }
@___asan_gen_.210 = private unnamed_addr constant [8 x i8] c"mv6_sht\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 668, i32 34 }
@___asan_gen_.213 = private unnamed_addr constant [8 x i8] c"mv5_ops\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 679, i32 35 }
@___asan_gen_.216 = private unnamed_addr constant [8 x i8] c"mv6_ops\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 699, i32 35 }
@___asan_gen_.219 = private unnamed_addr constant [11 x i8] c"mv_iie_ops\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 733, i32 35 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2098, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant [15 x i8] c"limit_warnings\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2331, i32 13 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2372, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1244, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2256, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1412, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 3995, i32 40 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4000, i32 40 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4005, i32 40 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 3965, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant [11 x i8] c"mv5xxx_ops\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 821, i32 31 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 3782, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 3802, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant [11 x i8] c"mv6xxx_ops\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 830, i32 31 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 3823, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 3852, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 3856, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 3873, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant [15 x i8] c"mv_soc_65n_ops\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 848, i32 31 }
@___asan_gen_.339 = private unnamed_addr constant [11 x i8] c"mv_soc_ops\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 839, i32 31 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 3889, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 3279, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 3293, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 3307, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1277, i32 11 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1280, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4338, i32 11 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4340, i32 11 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4342, i32 11 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4345, i32 9 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4347, i32 9 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4349, i32 9 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4353, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2956, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2958, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2970, i32 6 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1295, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1299, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1302, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1309, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1314, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1316, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1262, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2527, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2537, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2540, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2480, i32 27 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2671, i32 25 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2675, i32 26 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2682, i32 27 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2691, i32 26 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2698, i32 26 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2703, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2703, i32 23 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2715, i32 27 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2724, i32 27 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2582, i32 4 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2594, i32 4 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2606, i32 15 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2614, i32 11 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 2616, i32 25 }
@___asan_gen_.531 = private unnamed_addr constant [15 x i8] c"mv_sata_dt_ids\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4277, i32 34 }
@___asan_gen_.534 = private unnamed_addr constant [31 x i8] c"mv_platform_probe.__print_once\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4061, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4074, i32 48 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4077, i32 4 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4083, i32 4 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4127, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4133, i32 24 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4138, i32 24 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4145, i32 5 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4174, i32 6 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4182, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.595 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.596 = private constant [25 x i8] c"../drivers/ata/sata_mv.c\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 4263, i32 4 }
@___asan_gen_.598 = private unnamed_addr constant [25 x i8] c"switch.table.mv_scr_read\00", align 1
@___asan_gen_.599 = private unnamed_addr constant [26 x i8] c"switch.table.mv_scr_write\00", align 1
@llvm.compiler.used = appending global [202 x ptr] [ptr @__UNIQUE_ID_alias342, ptr @__UNIQUE_ID_author337, ptr @__UNIQUE_ID_description338, ptr @__UNIQUE_ID_file339, ptr @__UNIQUE_ID_irq_coalescing_io_count324, ptr @__UNIQUE_ID_irq_coalescing_io_counttype323, ptr @__UNIQUE_ID_irq_coalescing_usecs326, ptr @__UNIQUE_ID_irq_coalescing_usecstype325, ptr @__UNIQUE_ID_license340, ptr @__UNIQUE_ID_msi322, ptr @__UNIQUE_ID_msitype321, ptr @__UNIQUE_ID_version341, ptr @__exitcall_mv_exit, ptr @__initcall__kmod_sata_mv__343_4492_mv_init6, ptr @__modver_attr, ptr @__param_irq_coalescing_io_count, ptr @__param_irq_coalescing_usecs, ptr @__param_msi, ptr @mv6_dev_config._entry, ptr @mv6_dev_config._entry_ptr, ptr @mv6_reset_hc._entry, ptr @mv6_reset_hc._entry.51, ptr @mv6_reset_hc._entry.54, ptr @mv6_reset_hc._entry_ptr, ptr @mv6_reset_hc._entry_ptr.53, ptr @mv6_reset_hc._entry_ptr.56, ptr @mv_chip_id._entry, ptr @mv_chip_id._entry.31, ptr @mv_chip_id._entry.34, ptr @mv_chip_id._entry.36, ptr @mv_chip_id._entry.39, ptr @mv_chip_id._entry.42, ptr @mv_chip_id._entry.45, ptr @mv_chip_id._entry_ptr, ptr @mv_chip_id._entry_ptr.33, ptr @mv_chip_id._entry_ptr.35, ptr @mv_chip_id._entry_ptr.38, ptr @mv_chip_id._entry_ptr.41, ptr @mv_chip_id._entry_ptr.44, ptr @mv_chip_id._entry_ptr.48, ptr @mv_exit, ptr @mv_handle_dev_err._entry, ptr @mv_handle_dev_err._entry.104, ptr @mv_handle_dev_err._entry_ptr, ptr @mv_handle_dev_err._entry_ptr.105, ptr @mv_handle_fbs_ncq_dev_err._entry, ptr @mv_handle_fbs_ncq_dev_err._entry.86, ptr @mv_handle_fbs_ncq_dev_err._entry.89, ptr @mv_handle_fbs_ncq_dev_err._entry_ptr, ptr @mv_handle_fbs_ncq_dev_err._entry_ptr.88, ptr @mv_handle_fbs_ncq_dev_err._entry_ptr.91, ptr @mv_pci_error._entry, ptr @mv_pci_error._entry_ptr, ptr @mv_pci_init_one._entry, ptr @mv_pci_init_one._entry_ptr, ptr @mv_platform_probe._entry, ptr @mv_platform_probe._entry.113, ptr @mv_platform_probe._entry.116, ptr @mv_platform_probe._entry.119, ptr @mv_platform_probe._entry.125, ptr @mv_platform_probe._entry.129, ptr @mv_platform_probe._entry_ptr, ptr @mv_platform_probe._entry_ptr.115, ptr @mv_platform_probe._entry_ptr.118, ptr @mv_platform_probe._entry_ptr.122, ptr @mv_platform_probe._entry_ptr.127, ptr @mv_platform_probe._entry_ptr.131, ptr @mv_platform_resume._entry, ptr @mv_platform_resume._entry_ptr, ptr @mv_print_info._entry, ptr @mv_print_info._entry_ptr, ptr @mv_qc_issue._entry, ptr @mv_qc_issue._entry.14, ptr @mv_qc_issue._entry_ptr, ptr @mv_qc_issue._entry_ptr.16, ptr @mv_qc_prep._entry, ptr @mv_qc_prep._entry_ptr, ptr @mv_send_fis._entry, ptr @mv_send_fis._entry_ptr, ptr @mv_stop_edma._entry, ptr @mv_stop_edma._entry_ptr, ptr @msi, ptr @irq_coalescing_io_count, ptr @irq_coalescing_usecs, ptr @mv_pci_driver, ptr @mv_platform_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mv_pci_tbl, ptr @mv_port_info, ptr @mv_pci_init_one.__print_once, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @mv5_sht, ptr @mv6_sht, ptr @mv5_ops, ptr @mv6_ops, ptr @mv_iie_ops, ptr @.str.10, ptr @.str.11, ptr @mv_qc_issue.limit_warnings, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @mv5xxx_ops, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @mv6xxx_ops, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @mv_soc_65n_ops, ptr @mv_soc_ops, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @mv_sata_dt_ids, ptr @mv_platform_probe.__print_once, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.128, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @switch.table.mv_scr_read, ptr @switch.table.mv_scr_write], section "llvm.metadata"
@0 = internal global [152 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_coalescing_io_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_coalescing_usecs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_pci_tbl to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_port_info to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_pci_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_pci_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv5_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv6_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv5_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv6_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_iie_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_qc_prep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_qc_issue.limit_warnings to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_qc_issue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_qc_issue._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_stop_edma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_send_fis._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv6_dev_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv5xxx_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_chip_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_chip_id._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv6xxx_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_chip_id._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_chip_id._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_chip_id._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 138, i32 192, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_chip_id._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_soc_65n_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_soc_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_chip_id._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv6_reset_hc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv6_reset_hc._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv6_reset_hc._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_print_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_pci_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_handle_fbs_ncq_dev_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_handle_fbs_ncq_dev_err._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_handle_fbs_ncq_dev_err._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_handle_dev_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_handle_dev_err._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_sata_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_platform_probe.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_platform_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_platform_probe._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_platform_probe._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_platform_probe._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_platform_probe._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_platform_probe._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv_platform_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mv_scr_read to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mv_scr_write to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @mv_pci_driver) #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @mv_platform_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @mv_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mv_platform_driver, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @mv_pci_driver) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_pci_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #10
  %2 = getelementptr inbounds [2 x ptr], ptr %ppi, i32 0, i32 1
  %arrayidx = getelementptr [8 x %struct.ata_port_info], ptr @mv_port_info, i32 0, i32 %1
  %3 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx, ptr %ppi, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %2, align 4
  %.b108 = load i1, ptr @mv_pci_init_one.__print_once, align 1
  br i1 %.b108, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mv_pci_init_one.__print_once, align 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @ata_print_version(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %ppi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ppi, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %and.i = and i32 %8, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 4, i32 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call3 = call ptr @ata_host_alloc_pinfo(ptr noundef %dev2, ptr noundef nonnull %ppi, i32 noundef %cond.i) #10
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 132, i32 noundef 3520) #10
  %tobool6.not = icmp eq ptr %call3, null
  %tobool7.not = icmp eq ptr %call.i, null
  %or.cond = select i1 %tobool6.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %private_data = getelementptr inbounds %struct.ata_host, ptr %call3, i32 0, i32 5
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %private_data, align 4
  %n_ports10 = getelementptr inbounds %struct.mv_host_priv, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %n_ports10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond.i, ptr %n_ports10, align 4
  %board_idx11 = getelementptr inbounds %struct.mv_host_priv, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %board_idx11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %1, ptr %board_idx11, align 4
  %call12 = call i32 @pcim_enable_device(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %call16 = call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 1, ptr noundef nonnull @.str.1) #10
  %12 = zext i32 %call16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call16, label %if.end15.cleanup_crit_edge [
    i32 -16, label %if.then17
    i32 0, label %if.end21
  ]

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  call void @pcim_pin_device(ptr noundef %pdev) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %call22 = call ptr @pcim_iomap_table(ptr noundef %pdev) #10
  %iomap = getelementptr inbounds %struct.ata_host, ptr %call3, i32 0, i32 2
  %13 = ptrtoint ptr %iomap to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call22, ptr %iomap, align 4
  %14 = ptrtoint ptr %call22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call22, align 4
  %base = getelementptr inbounds %struct.mv_host_priv, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %base, align 4
  %call.i109 = call i32 @dma_set_mask(ptr noundef %dev2, i64 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %cmp.i = icmp eq i32 %call.i109, 0
  br i1 %cmp.i, label %if.end30, label %do.end

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.3) #13
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %dev2, i64 noundef -1) #10
  %call.i110 = call ptr @dmam_pool_create(ptr noundef nonnull @.str.23, ptr noundef %dev2, i32 noundef 1024, i32 noundef 1024, i32 noundef 0) #10
  %crqb_pool.i = getelementptr inbounds %struct.mv_host_priv, ptr %call.i, i32 0, i32 15
  %17 = ptrtoint ptr %crqb_pool.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i110, ptr %crqb_pool.i, align 4
  %tobool.not.i111 = icmp eq ptr %call.i110, null
  br i1 %tobool.not.i111, label %if.end30.cleanup_crit_edge, label %if.end.i

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end30
  %call2.i = call ptr @dmam_pool_create(ptr noundef nonnull @.str.24, ptr noundef %dev2, i32 noundef 256, i32 noundef 256, i32 noundef 0) #10
  %crpb_pool.i = getelementptr inbounds %struct.mv_host_priv, ptr %call.i, i32 0, i32 16
  %18 = ptrtoint ptr %crpb_pool.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call2.i, ptr %crpb_pool.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = call ptr @dmam_pool_create(ptr noundef nonnull @.str.25, ptr noundef %dev2, i32 noundef 4096, i32 noundef 4096, i32 noundef 0) #10
  %sg_tbl_pool.i = getelementptr inbounds %struct.mv_host_priv, ptr %call.i, i32 0, i32 17
  %19 = ptrtoint ptr %sg_tbl_pool.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i, ptr %sg_tbl_pool.i, align 4
  %tobool9.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool9.not.i, label %if.end6.i.cleanup_crit_edge, label %for.cond.preheader

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end6.i
  %n_ports36 = getelementptr inbounds %struct.ata_host, ptr %call3, i32 0, i32 3
  %20 = ptrtoint ptr %n_ports36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_ports36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp37114.not = icmp eq i32 %21, 0
  br i1 %cmp37114.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %port.0115 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx38 = getelementptr %struct.ata_host, ptr %call3, i32 0, i32 12, i32 %port.0115
  %22 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx38, align 4
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %26 = shl i32 %port.0115, 14
  %mul.i.i.i = and i32 %26, -65536
  %add.ptr1.i.i.i = getelementptr i8, ptr %25, i32 139264
  %add.ptr.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 %mul.i.i.i
  %and.i.i = shl i32 %port.0115, 13
  %mul.i = and i32 %and.i.i, 24576
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr2.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %25 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @ata_port_pbar_desc(ptr noundef %23, i32 noundef 0, i32 noundef -1, ptr noundef nonnull @.str.8) #10
  call void @ata_port_pbar_desc(ptr noundef %23, i32 noundef 0, i32 noundef %sub.ptr.sub, ptr noundef nonnull @.str.9) #10
  %inc = add nuw i32 %port.0115, 1
  %27 = ptrtoint ptr %n_ports36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n_ports36, align 4
  %cmp37 = icmp ult i32 %inc, %28
  br i1 %cmp37, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call42 = call fastcc i32 @mv_init_host(ptr noundef nonnull %call3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end45:                                         ; preds = %for.end
  %29 = load i32, ptr @msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool46.not = icmp eq i32 %29, 0
  br i1 %tobool46.not, label %if.end45.if.end50_crit_edge, label %land.lhs.true

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

land.lhs.true:                                    ; preds = %if.end45
  %call47 = call i32 @pci_enable_msi(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then49, label %land.lhs.true.if.end50_crit_edge

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then49:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call.i, align 4
  %or = or i32 %31, 1
  store i32 %or, ptr %call.i, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %land.lhs.true.if.end50_crit_edge, %if.end45.if.end50_crit_edge
  call fastcc void @mv_dump_pci_cfg(ptr noundef %pdev)
  call fastcc void @mv_print_info(ptr noundef nonnull %call3)
  call void @pci_set_master(ptr noundef %pdev) #10
  %call51 = call i32 @pci_try_set_mwi(ptr noundef %pdev) #10
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq, align 4
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call.i, align 4
  %and = and i32 %35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool53.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool53.not, ptr @mv6_sht, ptr @mv5_sht
  %call54 = call i32 @ata_host_activate(ptr noundef nonnull %call3, i32 noundef %33, ptr noundef nonnull @mv_interrupt, i32 noundef 128, ptr noundef nonnull %cond) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %for.end.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %do.end, %if.then17, %if.end15.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i109, %do.end ], [ %call54, %if.end50 ], [ -12, %if.end.cleanup_crit_edge ], [ %call12, %if.end9.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ -16, %if.then17 ], [ %call42, %for.end.cleanup_crit_edge ], [ -12, %if.end30.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -12, %if.end6.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_pci_device_resume(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @ata_pci_device_do_resume(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @mv_init_host(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ata_host_resume(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc_pinfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcim_pin_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv_create_dma_pools(ptr nocapture noundef writeonly %hpriv, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dmam_pool_create(ptr noundef nonnull @.str.23, ptr noundef %dev, i32 noundef 1024, i32 noundef 1024, i32 noundef 0) #10
  %crqb_pool = getelementptr inbounds %struct.mv_host_priv, ptr %hpriv, i32 0, i32 15
  %0 = ptrtoint ptr %crqb_pool to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %crqb_pool, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @dmam_pool_create(ptr noundef nonnull @.str.24, ptr noundef %dev, i32 noundef 256, i32 noundef 256, i32 noundef 0) #10
  %crpb_pool = getelementptr inbounds %struct.mv_host_priv, ptr %hpriv, i32 0, i32 16
  %1 = ptrtoint ptr %crpb_pool to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %crpb_pool, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.return_crit_edge, label %if.end6

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call ptr @dmam_pool_create(ptr noundef nonnull @.str.25, ptr noundef %dev, i32 noundef 4096, i32 noundef 4096, i32 noundef 0) #10
  %sg_tbl_pool = getelementptr inbounds %struct.mv_host_priv, ptr %hpriv, i32 0, i32 17
  %2 = ptrtoint ptr %sg_tbl_pool to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %sg_tbl_pool, align 4
  %tobool9.not = icmp eq ptr %call7, null
  %. = select i1 %tobool9.not, i32 -12, i32 0
  br label %return

return:                                           ; preds = %if.end6, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %entry.return_crit_edge ], [ -12, %if.end.return_crit_edge ], [ %., %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_pbar_desc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv_init_host(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %base = getelementptr inbounds %struct.mv_host_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %board_idx = getelementptr inbounds %struct.mv_host_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %board_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %board_idx, align 4
  %dev.i = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %10 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %5, label %mv_chip_id.exit [
    i32 2, label %sw.bb.i
    i32 0, label %entry.sw.bb8.i_crit_edge
    i32 1, label %entry.sw.bb8.i_crit_edge169
    i32 3, label %entry.sw.bb24.i_crit_edge
    i32 4, label %entry.sw.bb24.i_crit_edge170
    i32 6, label %sw.bb40.i
    i32 5, label %land.lhs.true64.i
    i32 7, label %sw.bb79.i
  ]

entry.sw.bb24.i_crit_edge170:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24.i

entry.sw.bb24.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb24.i

entry.sw.bb8.i_crit_edge169:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8.i

entry.sw.bb8.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8.i

sw.bb.i:                                          ; preds = %entry
  %ops.i = getelementptr inbounds %struct.mv_host_priv, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mv5xxx_ops, ptr %ops.i, align 4
  %revision.i = getelementptr i8, ptr %7, i32 -92
  %12 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %revision.i, align 4
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.135)
  switch i8 %13, label %do.end.i [
    i8 1, label %sw.bb2.i
    i8 3, label %sw.bb4.i
  ]

sw.bb2.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %or3.i = or i32 %9, 66
  br label %sw.epilog91.i

sw.bb4.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %or5.i = or i32 %9, 68
  br label %sw.epilog91.i

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.28) #13
  %or7.i = or i32 %9, 68
  br label %sw.epilog91.i

sw.bb8.i:                                         ; preds = %entry.sw.bb8.i_crit_edge, %entry.sw.bb8.i_crit_edge169
  %ops9.i = getelementptr inbounds %struct.mv_host_priv, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %ops9.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mv5xxx_ops, ptr %ops9.i, align 4
  %revision11.i = getelementptr i8, ptr %7, i32 -92
  %16 = ptrtoint ptr %revision11.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %revision11.i, align 4
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.136)
  switch i8 %17, label %do.end20.i [
    i8 0, label %sw.bb13.i
    i8 3, label %sw.bb15.i
  ]

sw.bb13.i:                                        ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #12
  %or14.i = or i32 %9, 66
  br label %sw.epilog91.i

sw.bb15.i:                                        ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #12
  %or16.i = or i32 %9, 68
  br label %sw.epilog91.i

do.end20.i:                                       ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.32) #13
  %or22.i = or i32 %9, 68
  br label %sw.epilog91.i

sw.bb24.i:                                        ; preds = %entry.sw.bb24.i_crit_edge, %entry.sw.bb24.i_crit_edge170
  %ops25.i = getelementptr inbounds %struct.mv_host_priv, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %ops25.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mv6xxx_ops, ptr %ops25.i, align 4
  %revision27.i = getelementptr i8, ptr %7, i32 -92
  %20 = ptrtoint ptr %revision27.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %revision27.i, align 4
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.137)
  switch i8 %21, label %do.end36.i [
    i8 7, label %sw.bb29.i
    i8 9, label %sw.bb31.i
  ]

sw.bb29.i:                                        ; preds = %sw.bb24.i
  %23 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %private_data, align 4
  %base.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %24, align 4
  %29 = and i32 %28, 2560
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %29)
  %.not.i.i.i = icmp eq i32 %29, 512
  br i1 %.not.i.i.i, label %mv_in_pcix_mode.exit.i.i, label %sw.bb29.i.mv_60x1b2_errata_pci7.exit.i_crit_edge

sw.bb29.i.mv_60x1b2_errata_pci7.exit.i_crit_edge: ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_60x1b2_errata_pci7.exit.i

mv_in_pcix_mode.exit.i.i:                         ; preds = %sw.bb29.i
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 3328
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !327
  %31 = and i32 %30, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.not.i.i = icmp eq i32 %31, 0
  br i1 %cmp.i.not.i.i, label %mv_in_pcix_mode.exit.i.i.mv_60x1b2_errata_pci7.exit.i_crit_edge, label %if.then.i.i

mv_in_pcix_mode.exit.i.i.mv_60x1b2_errata_pci7.exit.i_crit_edge: ; preds = %mv_in_pcix_mode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_60x1b2_errata_pci7.exit.i

if.then.i.i:                                      ; preds = %mv_in_pcix_mode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 3072
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !328
  %33 = and i32 %32, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %33) #10, !srcloc !330
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %mv_60x1b2_errata_pci7.exit.i

mv_60x1b2_errata_pci7.exit.i:                     ; preds = %if.then.i.i, %mv_in_pcix_mode.exit.i.i.mv_60x1b2_errata_pci7.exit.i_crit_edge, %sw.bb29.i.mv_60x1b2_errata_pci7.exit.i_crit_edge
  %or30.i = or i32 %9, 136
  br label %sw.epilog91.i

sw.bb31.i:                                        ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #12
  %or32.i = or i32 %9, 144
  br label %sw.epilog91.i

do.end36.i:                                       ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.32) #13
  %or38.i = or i32 %9, 136
  br label %sw.epilog91.i

sw.bb40.i:                                        ; preds = %entry
  %vendor.i = getelementptr i8, ptr %7, i32 -104
  %35 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4355, i16 %36)
  %cmp.i = icmp eq i16 %36, 4355
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb40.i.sw.bb59.thread.i_crit_edge

sw.bb40.i.sw.bb59.thread.i_crit_edge:             ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb59.thread.i

land.lhs.true.i:                                  ; preds = %sw.bb40.i
  %device.i = getelementptr i8, ptr %7, i32 -102
  %37 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %device.i, align 2
  %39 = zext i16 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.138)
  switch i16 %38, label %land.lhs.true.i.sw.bb59.thread.i_crit_edge [
    i16 8960, label %land.lhs.true.i.do.end53.i_crit_edge
    i16 8976, label %land.lhs.true.i.do.end53.i_crit_edge171
  ]

land.lhs.true.i.do.end53.i_crit_edge171:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end53.i

land.lhs.true.i.do.end53.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end53.i

land.lhs.true.i.sw.bb59.thread.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb59.thread.i

do.end53.i:                                       ; preds = %land.lhs.true.i.do.end53.i_crit_edge, %land.lhs.true.i.do.end53.i_crit_edge171
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.37) #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.40) #13
  br label %sw.bb59.thread.i

sw.bb59.thread.i:                                 ; preds = %do.end53.i, %land.lhs.true.i.sw.bb59.thread.i_crit_edge, %sw.bb40.i.sw.bb59.thread.i_crit_edge
  %ops60164.i = getelementptr inbounds %struct.mv_host_priv, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %ops60164.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @mv6xxx_ops, ptr %ops60164.i, align 4
  %or61165.i = or i32 %9, 1792
  br label %if.end67.i

land.lhs.true64.i:                                ; preds = %entry
  %ops60.i = getelementptr inbounds %struct.mv_host_priv, ptr %1, i32 0, i32 4
  %41 = ptrtoint ptr %ops60.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @mv6xxx_ops, ptr %ops60.i, align 4
  %or61.i = or i32 %9, 256
  %42 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %private_data, align 4
  %base.i154.i = getelementptr inbounds %struct.mv_host_priv, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %base.i154.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i154.i, align 4
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %43, align 4
  %48 = and i32 %47, 2560
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %48)
  %.not.i.i155.i = icmp eq i32 %48, 512
  br i1 %.not.i.i155.i, label %mv_in_pcix_mode.exit.i158.i, label %land.lhs.true64.i.if.then.i160.i_crit_edge

land.lhs.true64.i.if.then.i160.i_crit_edge:       ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i160.i

mv_in_pcix_mode.exit.i158.i:                      ; preds = %land.lhs.true64.i
  %add.ptr.i.i156.i = getelementptr i8, ptr %45, i32 3328
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i156.i) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !327
  %50 = and i32 %49, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i.not.i157.i = icmp eq i32 %50, 0
  br i1 %cmp.i.not.i157.i, label %mv_in_pcix_mode.exit.i158.i.if.then.i160.i_crit_edge, label %mv_in_pcix_mode.exit.i158.i.mv_pci_cut_through_okay.exit.i_crit_edge

mv_in_pcix_mode.exit.i158.i.mv_pci_cut_through_okay.exit.i_crit_edge: ; preds = %mv_in_pcix_mode.exit.i158.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_pci_cut_through_okay.exit.i

mv_in_pcix_mode.exit.i158.i.if.then.i160.i_crit_edge: ; preds = %mv_in_pcix_mode.exit.i158.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i160.i

if.then.i160.i:                                   ; preds = %mv_in_pcix_mode.exit.i158.i.if.then.i160.i_crit_edge, %land.lhs.true64.i.if.then.i160.i_crit_edge
  %add.ptr.i159.i = getelementptr i8, ptr %45, i32 3072
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i159.i) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !332
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %tobool3.not.i.i = icmp sgt i32 %51, -1
  br i1 %tobool3.not.i.i, label %if.then.i160.i.mv_pci_cut_through_okay.exit.i_crit_edge, label %if.then.i160.i.if.end67.i_crit_edge

if.then.i160.i.if.end67.i_crit_edge:              ; preds = %if.then.i160.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67.i

if.then.i160.i.mv_pci_cut_through_okay.exit.i_crit_edge: ; preds = %if.then.i160.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_pci_cut_through_okay.exit.i

mv_pci_cut_through_okay.exit.i:                   ; preds = %if.then.i160.i.mv_pci_cut_through_okay.exit.i_crit_edge, %mv_in_pcix_mode.exit.i158.i.mv_pci_cut_through_okay.exit.i_crit_edge
  %or66.i = or i32 %9, 1280
  br label %if.end67.i

if.end67.i:                                       ; preds = %mv_pci_cut_through_okay.exit.i, %if.then.i160.i.if.end67.i_crit_edge, %sw.bb59.thread.i
  %hp_flags.1.i = phi i32 [ %or61165.i, %sw.bb59.thread.i ], [ %or66.i, %mv_pci_cut_through_okay.exit.i ], [ %or61.i, %if.then.i160.i.if.end67.i_crit_edge ]
  %revision68.i = getelementptr i8, ptr %7, i32 -92
  %52 = ptrtoint ptr %revision68.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %revision68.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %53)
  %cond.i = icmp eq i8 %53, 2
  br i1 %cond.i, label %sw.bb70.i, label %do.end75.i

sw.bb70.i:                                        ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #12
  %or71.i = or i32 %hp_flags.1.i, 16
  br label %sw.epilog91.i

do.end75.i:                                       ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.43) #13
  %or77.i = or i32 %hp_flags.1.i, 16
  br label %sw.epilog91.i

sw.bb79.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i162.i = getelementptr i8, ptr %3, i32 140192
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i162.i) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !333
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.not.i = icmp eq i32 %54, 0
  %spec.select.i = select i1 %tobool.not.i.not.i, ptr @mv_soc_ops, ptr @mv_soc_65n_ops
  %55 = getelementptr inbounds %struct.mv_host_priv, ptr %1, i32 0, i32 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %spec.select.i, ptr %55, align 4
  %or85.i = or i32 %9, 2320
  br label %sw.epilog91.i

sw.epilog91.i:                                    ; preds = %sw.bb79.i, %do.end75.i, %sw.bb70.i, %do.end36.i, %sw.bb31.i, %mv_60x1b2_errata_pci7.exit.i, %do.end20.i, %sw.bb15.i, %sw.bb13.i, %do.end.i, %sw.bb4.i, %sw.bb2.i
  %hp_flags.2.i = phi i32 [ %or85.i, %sw.bb79.i ], [ %or71.i, %sw.bb70.i ], [ %or77.i, %do.end75.i ], [ %or38.i, %do.end36.i ], [ %or32.i, %sw.bb31.i ], [ %or30.i, %mv_60x1b2_errata_pci7.exit.i ], [ %or22.i, %do.end20.i ], [ %or16.i, %sw.bb15.i ], [ %or14.i, %sw.bb13.i ], [ %or7.i, %do.end.i ], [ %or5.i, %sw.bb4.i ], [ %or3.i, %sw.bb2.i ]
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %hp_flags.2.i, ptr %1, align 4
  %and.i = and i32 %hp_flags.2.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool93.not.i = icmp eq i32 %and.i, 0
  %irq_cause_offset96.i = getelementptr inbounds %struct.mv_host_priv, ptr %1, i32 0, i32 9
  %storemerge = select i1 %tobool93.not.i, i32 7512, i32 6400
  %.sink166 = select i1 %tobool93.not.i, i32 7516, i32 6416
  %.sink = select i1 %tobool93.not.i, i32 8388607, i32 1034
  %58 = ptrtoint ptr %irq_cause_offset96.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %storemerge, ptr %irq_cause_offset96.i, align 4
  %59 = getelementptr inbounds %struct.mv_host_priv, ptr %1, i32 0, i32 10
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %.sink166, ptr %59, align 4
  %61 = getelementptr inbounds %struct.mv_host_priv, ptr %1, i32 0, i32 11
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %.sink, ptr %61, align 4
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %1, align 4
  %and = and i32 %64, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %.sink168 = select i1 %tobool1.not, i32 7520, i32 131104
  %.sink167 = select i1 %tobool1.not, i32 7524, i32 131108
  %add.ptr4 = getelementptr i8, ptr %3, i32 %.sink168
  %add.ptr6 = getelementptr i8, ptr %3, i32 %.sink167
  %65 = getelementptr inbounds %struct.mv_host_priv, ptr %1, i32 0, i32 7
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr4, ptr %65, align 4
  %67 = getelementptr inbounds %struct.mv_host_priv, ptr %1, i32 0, i32 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr6, ptr %67, align 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #10, !srcloc !326
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !334
  %main_irq_mask = getelementptr inbounds %struct.mv_host_priv, ptr %1, i32 0, i32 2
  %71 = ptrtoint ptr %main_irq_mask to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %main_irq_mask, align 4
  %72 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %private_data, align 4
  %main_irq_mask.i = getelementptr inbounds %struct.mv_host_priv, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %main_irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %main_irq_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.not.i = icmp eq i32 %75, 0
  br i1 %cmp.not.i, label %sw.epilog91.i.mv_set_main_irq_mask.exit_crit_edge, label %if.then.i

sw.epilog91.i.mv_set_main_irq_mask.exit_crit_edge: ; preds = %sw.epilog91.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_set_main_irq_mask.exit

mv_chip_id.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %7, ptr noundef nonnull @.str.46, i32 noundef %5) #13
  br label %done

if.then.i:                                        ; preds = %sw.epilog91.i
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %main_irq_mask.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %main_irq_mask.i, align 4
  %main_irq_mask_addr.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %73, i32 0, i32 8
  %77 = ptrtoint ptr %main_irq_mask_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %main_irq_mask_addr.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 0) #10, !srcloc !330
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %mv_set_main_irq_mask.exit

mv_set_main_irq_mask.exit:                        ; preds = %if.then.i, %sw.epilog91.i.mv_set_main_irq_mask.exit_crit_edge
  %ports = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 12
  %80 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ports, align 4
  %flags = getelementptr inbounds %struct.ata_port, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags, align 4
  %and.i130 = and i32 %83, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130)
  %tobool.not.i = icmp eq i32 %and.i130, 0
  %cond.i131 = select i1 %tobool.not.i, i32 1, i32 2
  %n_ports = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 3
  %84 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp159.not = icmp eq i32 %85, 0
  br i1 %cmp159.not, label %mv_set_main_irq_mask.exit.for.end_crit_edge, label %for.body.lr.ph

mv_set_main_irq_mask.exit.for.end_crit_edge:      ; preds = %mv_set_main_irq_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %mv_set_main_irq_mask.exit
  %ops = getelementptr inbounds %struct.mv_host_priv, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %port.0160 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %86 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ops, align 4
  %read_preamp = getelementptr inbounds %struct.mv_hw_ops, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %read_preamp to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %read_preamp, align 4
  %tobool13.not = icmp eq ptr %89, null
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %if.then14

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %89(ptr noundef %1, i32 noundef %port.0160, ptr noundef %3) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %port.0160, 1
  %90 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %n_ports, align 4
  %cmp = icmp ult i32 %inc, %91
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %mv_set_main_irq_mask.exit.for.end_crit_edge
  %ops18 = getelementptr inbounds %struct.mv_host_priv, ptr %1, i32 0, i32 4
  %92 = ptrtoint ptr %ops18 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ops18, align 4
  %reset_hc = getelementptr inbounds %struct.mv_hw_ops, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %reset_hc to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %reset_hc, align 4
  %call19 = tail call i32 %95(ptr noundef %host, ptr noundef %3, i32 noundef %cond.i131) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %for.end.done_crit_edge

for.end.done_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end22:                                         ; preds = %for.end
  %96 = ptrtoint ptr %ops18 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ops18, align 4
  %reset_flash = getelementptr inbounds %struct.mv_hw_ops, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %reset_flash to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reset_flash, align 4
  tail call void %99(ptr noundef %1, ptr noundef %3) #10
  %100 = ptrtoint ptr %ops18 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops18, align 4
  %reset_bus = getelementptr inbounds %struct.mv_hw_ops, ptr %101, i32 0, i32 5
  %102 = ptrtoint ptr %reset_bus to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %reset_bus, align 4
  tail call void %103(ptr noundef %host, ptr noundef %3) #10
  %104 = ptrtoint ptr %ops18 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ops18, align 4
  %enable_leds = getelementptr inbounds %struct.mv_hw_ops, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %enable_leds to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %enable_leds, align 4
  tail call void %107(ptr noundef %1, ptr noundef %3) #10
  %108 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp28162.not = icmp eq i32 %109, 0
  br i1 %cmp28162.not, label %if.end22.for.cond36.preheader_crit_edge, label %for.body29.lr.ph

if.end22.for.cond36.preheader_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond36.preheader

for.body29.lr.ph:                                 ; preds = %if.end22
  %add.ptr1.i.i.i = getelementptr i8, ptr %3, i32 139264
  br label %for.body29

for.cond36.preheader:                             ; preds = %for.body29.for.cond36.preheader_crit_edge, %if.end22.for.cond36.preheader_crit_edge
  %add.ptr.i135 = getelementptr i8, ptr %3, i32 131072
  br label %for.body38

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %for.body29.lr.ph
  %port.1163 = phi i32 [ 0, %for.body29.lr.ph ], [ %inc34, %for.body29.for.body29_crit_edge ]
  %arrayidx31 = getelementptr %struct.ata_host, ptr %host, i32 0, i32 12, i32 %port.1163
  %110 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx31, align 4
  %112 = shl i32 %port.1163, 14
  %mul.i.i.i = and i32 %112, -65536
  %add.ptr.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 %mul.i.i.i
  %and.i.i = shl i32 %port.1163, 13
  %mul.i = and i32 %and.i.i, 24576
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %add.ptr.i133 = getelementptr i8, ptr %add.ptr2.i, i32 256
  %data_addr.i = getelementptr inbounds %struct.ata_port, ptr %111, i32 0, i32 8, i32 1
  %113 = ptrtoint ptr %data_addr.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %add.ptr.i133, ptr %data_addr.i, align 4
  %add.ptr2.i134 = getelementptr i8, ptr %add.ptr2.i, i32 260
  %feature_addr.i = getelementptr inbounds %struct.ata_port, ptr %111, i32 0, i32 8, i32 3
  %114 = ptrtoint ptr %feature_addr.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %add.ptr2.i134, ptr %feature_addr.i, align 4
  %error_addr.i = getelementptr inbounds %struct.ata_port, ptr %111, i32 0, i32 8, i32 2
  %115 = ptrtoint ptr %error_addr.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %add.ptr2.i134, ptr %error_addr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %add.ptr2.i, i32 264
  %nsect_addr.i = getelementptr inbounds %struct.ata_port, ptr %111, i32 0, i32 8, i32 4
  %116 = ptrtoint ptr %nsect_addr.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %add.ptr3.i, ptr %nsect_addr.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %add.ptr2.i, i32 268
  %lbal_addr.i = getelementptr inbounds %struct.ata_port, ptr %111, i32 0, i32 8, i32 5
  %117 = ptrtoint ptr %lbal_addr.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %add.ptr4.i, ptr %lbal_addr.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %add.ptr2.i, i32 272
  %lbam_addr.i = getelementptr inbounds %struct.ata_port, ptr %111, i32 0, i32 8, i32 6
  %118 = ptrtoint ptr %lbam_addr.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %add.ptr5.i, ptr %lbam_addr.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %add.ptr2.i, i32 276
  %lbah_addr.i = getelementptr inbounds %struct.ata_port, ptr %111, i32 0, i32 8, i32 7
  %119 = ptrtoint ptr %lbah_addr.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %add.ptr6.i, ptr %lbah_addr.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %add.ptr2.i, i32 280
  %device_addr.i = getelementptr inbounds %struct.ata_port, ptr %111, i32 0, i32 8, i32 8
  %120 = ptrtoint ptr %device_addr.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %add.ptr7.i, ptr %device_addr.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %add.ptr2.i, i32 284
  %command_addr.i = getelementptr inbounds %struct.ata_port, ptr %111, i32 0, i32 8, i32 10
  %121 = ptrtoint ptr %command_addr.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %add.ptr8.i, ptr %command_addr.i, align 4
  %status_addr.i = getelementptr inbounds %struct.ata_port, ptr %111, i32 0, i32 8, i32 9
  %122 = ptrtoint ptr %status_addr.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %add.ptr8.i, ptr %status_addr.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %add.ptr2.i, i32 288
  %ctl_addr.i = getelementptr inbounds %struct.ata_port, ptr %111, i32 0, i32 8, i32 12
  %123 = ptrtoint ptr %ctl_addr.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %add.ptr9.i, ptr %ctl_addr.i, align 4
  %altstatus_addr.i = getelementptr inbounds %struct.ata_port, ptr %111, i32 0, i32 8, i32 11
  %124 = ptrtoint ptr %altstatus_addr.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %add.ptr9.i, ptr %altstatus_addr.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %add.ptr2.i, i32 772
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !335
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %125) #10, !srcloc !330
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  %add.ptr13.i = getelementptr i8, ptr %add.ptr2.i, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 0) #10, !srcloc !330
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  %add.ptr14.i = getelementptr i8, ptr %add.ptr2.i, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 -6349060) #10, !srcloc !330
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  %inc34 = add nuw i32 %port.1163, 1
  %129 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %n_ports, align 4
  %cmp28 = icmp ult i32 %inc34, %130
  br i1 %cmp28, label %for.body29.for.body29_crit_edge, label %for.body29.for.cond36.preheader_crit_edge

for.body29.for.cond36.preheader_crit_edge:        ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond36.preheader

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body29

for.body38:                                       ; preds = %do.end.for.body38_crit_edge, %for.cond36.preheader
  %hc.0164 = phi i32 [ 0, %for.cond36.preheader ], [ %inc61, %do.end.for.body38_crit_edge ]
  %mul.i136 = shl i32 %hc.0164, 16
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i135, i32 %mul.i136
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_init_host.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_init_host, %if.then45)) #10
          to label %do.end [label %if.then45], !srcloc !336

if.then45:                                        ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #12
  %131 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev.i, align 4
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #10, !srcloc !326
  %134 = tail call i32 @llvm.bswap.i32(i32 %133)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !337
  %add.ptr54 = getelementptr i8, ptr %add.ptr1.i, i32 20
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #10, !srcloc !326
  %136 = tail call i32 @llvm.bswap.i32(i32 %135)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !338
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_init_host.__UNIQUE_ID_ddebug336, ptr noundef %132, ptr noundef nonnull @.str.27, i32 noundef %hc.0164, i32 noundef %134, i32 noundef %136) #10
  br label %do.end

do.end:                                           ; preds = %if.then45, %for.body38
  %add.ptr59 = getelementptr i8, ptr %add.ptr1.i, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 0) #10, !srcloc !330
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  %inc61 = add nuw nsw i32 %hc.0164, 1
  %exitcond.not = icmp eq i32 %inc61, %cond.i131
  br i1 %exitcond.not, label %for.end62, label %do.end.for.body38_crit_edge

do.end.for.body38_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38

for.end62:                                        ; preds = %do.end
  %138 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %1, align 4
  %and64 = and i32 %139, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.then66, label %for.end62.if.end69_crit_edge

for.end62.if.end69_crit_edge:                     ; preds = %for.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then66:                                        ; preds = %for.end62
  call void @__sanitizer_cov_trace_pc() #12
  %140 = ptrtoint ptr %irq_cause_offset96.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %irq_cause_offset96.i, align 4
  %add.ptr67 = getelementptr i8, ptr %3, i32 %141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 0) #10, !srcloc !330
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  %143 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %61, align 4
  %145 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %59, align 4
  %add.ptr68 = getelementptr i8, ptr %3, i32 %146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %147 = tail call i32 @llvm.bswap.i32(i32 %144) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %147) #10, !srcloc !330
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %for.end62.if.end69_crit_edge
  %149 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %private_data, align 4
  %main_irq_mask.i138 = getelementptr inbounds %struct.mv_host_priv, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %main_irq_mask.i138 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %main_irq_mask.i138, align 4
  %or.i = or i32 %152, 262144
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %152)
  %cmp.not.i139 = icmp eq i32 %or.i, %152
  br i1 %cmp.not.i139, label %if.end69.mv_set_main_irq_mask.exit144_crit_edge, label %if.then.i143

if.end69.mv_set_main_irq_mask.exit144_crit_edge:  ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_set_main_irq_mask.exit144

if.then.i143:                                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %153 = ptrtoint ptr %main_irq_mask.i138 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %or.i, ptr %main_irq_mask.i138, align 4
  %and.i.i140 = and i32 %152, 2097408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i140)
  %tobool.not.i.i = icmp eq i32 %and.i.i140, 0
  %and1.i.i = and i32 %or.i, -171
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 %or.i, i32 %and1.i.i
  %and2.i.i = and i32 %spec.select.i.i, 2228224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i141 = icmp eq i32 %and2.i.i, 0
  %and5.i.i = and i32 %spec.select.i.i, -87041
  %mask.addr.1.i.i = select i1 %tobool3.not.i.i141, i32 %spec.select.i.i, i32 %and5.i.i
  %main_irq_mask_addr.i.i142 = getelementptr inbounds %struct.mv_host_priv, ptr %150, i32 0, i32 8
  %154 = ptrtoint ptr %main_irq_mask_addr.i.i142 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %main_irq_mask_addr.i.i142, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %156 = tail call i32 @llvm.bswap.i32(i32 %mask.addr.1.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %156) #10, !srcloc !330
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %mv_set_main_irq_mask.exit144

mv_set_main_irq_mask.exit144:                     ; preds = %if.then.i143, %if.end69.mv_set_main_irq_mask.exit144_crit_edge
  %158 = load i32, ptr @irq_coalescing_io_count, align 4
  %159 = load i32, ptr @irq_coalescing_usecs, align 4
  %160 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %private_data, align 4
  %base.i = getelementptr inbounds %struct.mv_host_priv, ptr %161, i32 0, i32 6
  %162 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %base.i, align 4
  %n_ports.i = getelementptr inbounds %struct.mv_host_priv, ptr %161, i32 0, i32 5
  %164 = ptrtoint ptr %n_ports.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %n_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %165)
  %cmp.i146 = icmp sgt i32 %165, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool.not.i147 = icmp eq i32 %159, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool1.not.i = icmp eq i32 %158, 0
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i147
  br i1 %or.cond.i, label %mv_set_main_irq_mask.exit144.do.body10.i_crit_edge, label %if.else.i

mv_set_main_irq_mask.exit144.do.body10.i_crit_edge: ; preds = %mv_set_main_irq_mask.exit144
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10.i

if.else.i:                                        ; preds = %mv_set_main_irq_mask.exit144
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i148 = mul i32 %159, 150
  %166 = tail call i32 @llvm.umin.i32(i32 %mul.i148, i32 16777215) #10
  %167 = tail call i32 @llvm.umin.i32(i32 %158, i32 255) #10
  br label %do.body10.i

do.body10.i:                                      ; preds = %if.else.i, %mv_set_main_irq_mask.exit144.do.body10.i_crit_edge
  %clks.0.i = phi i32 [ %166, %if.else.i ], [ 0, %mv_set_main_irq_mask.exit144.do.body10.i_crit_edge ]
  %count.addr.0.i = phi i32 [ %167, %if.else.i ], [ 0, %mv_set_main_irq_mask.exit144.do.body10.i_crit_edge ]
  %call13.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %host) #10
  %168 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %private_data, align 4
  %main_irq_mask.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %169, i32 0, i32 2
  %170 = ptrtoint ptr %main_irq_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %main_irq_mask.i.i, align 4
  %and.i.i149 = and i32 %171, -2228481
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i149, i32 %171)
  %cmp.not.i.i = icmp eq i32 %and.i.i149, %171
  br i1 %cmp.not.i.i, label %do.body10.i.mv_set_main_irq_mask.exit.i_crit_edge, label %if.then.i.i150

do.body10.i.mv_set_main_irq_mask.exit.i_crit_edge: ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_set_main_irq_mask.exit.i

if.then.i.i150:                                   ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #12
  %172 = ptrtoint ptr %main_irq_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %and.i.i149, ptr %main_irq_mask.i.i, align 4
  %main_irq_mask_addr.i.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %169, i32 0, i32 8
  %173 = ptrtoint ptr %main_irq_mask_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %main_irq_mask_addr.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %175 = tail call i32 @llvm.bswap.i32(i32 %and.i.i149) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 %175) #10, !srcloc !330
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %174) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %mv_set_main_irq_mask.exit.i

mv_set_main_irq_mask.exit.i:                      ; preds = %if.then.i.i150, %do.body10.i.mv_set_main_irq_mask.exit.i_crit_edge
  br i1 %cmp.i146, label %land.lhs.true.i152, label %mv_set_main_irq_mask.exit.i.if.end33.i_crit_edge

mv_set_main_irq_mask.exit.i.if.end33.i_crit_edge: ; preds = %mv_set_main_irq_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

land.lhs.true.i152:                               ; preds = %mv_set_main_irq_mask.exit.i
  %177 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %161, align 4
  %and.i151 = and i32 %178, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i151)
  %tobool17.not.i = icmp eq i32 %and.i151, 0
  br i1 %tobool17.not.i, label %do.body19.i, label %land.lhs.true.i152.if.end33.i_crit_edge

land.lhs.true.i152.if.end33.i_crit_edge:          ; preds = %land.lhs.true.i152
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

do.body19.i:                                      ; preds = %land.lhs.true.i152
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !339
  tail call void @arm_heavy_mb() #10
  %179 = tail call i32 @llvm.bswap.i32(i32 %clks.0.i) #10
  %add.ptr.i153 = getelementptr i8, ptr %163, i32 98512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153, i32 %179) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !340
  tail call void @arm_heavy_mb() #10
  %180 = shl nuw i32 %count.addr.0.i, 24
  %add.ptr25.i = getelementptr i8, ptr %163, i32 98508
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %180) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !341
  tail call void @arm_heavy_mb() #10
  %add.ptr29.i = getelementptr i8, ptr %163, i32 98312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 -268435457) #10, !srcloc !330
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.0.i)
  %tobool30.not.i = icmp eq i32 %count.addr.0.i, 0
  %spec.select.i154 = select i1 %tobool30.not.i, i32 0, i32 2097152
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.body19.i, %land.lhs.true.i152.if.end33.i_crit_edge, %mv_set_main_irq_mask.exit.i.if.end33.i_crit_edge
  %coal_enable.1.i = phi i32 [ 0, %land.lhs.true.i152.if.end33.i_crit_edge ], [ %spec.select.i154, %do.body19.i ], [ 0, %mv_set_main_irq_mask.exit.i.if.end33.i_crit_edge ]
  %clks.1.i = phi i32 [ %clks.0.i, %land.lhs.true.i152.if.end33.i_crit_edge ], [ 0, %do.body19.i ], [ %clks.0.i, %mv_set_main_irq_mask.exit.i.if.end33.i_crit_edge ]
  %count.addr.1.i = phi i32 [ %count.addr.0.i, %land.lhs.true.i152.if.end33.i_crit_edge ], [ 0, %do.body19.i ], [ %count.addr.0.i, %mv_set_main_irq_mask.exit.i.if.end33.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !342
  tail call void @arm_heavy_mb() #10
  %181 = tail call i32 @llvm.bswap.i32(i32 %clks.1.i) #10
  %add.ptr38.i = getelementptr i8, ptr %163, i32 131088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 %181) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !343
  tail call void @arm_heavy_mb() #10
  %182 = tail call i32 @llvm.bswap.i32(i32 %count.addr.1.i) #10
  %add.ptr42.i = getelementptr i8, ptr %163, i32 131084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 %182) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !344
  tail call void @arm_heavy_mb() #10
  %add.ptr46.i = getelementptr i8, ptr %163, i32 131092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i, i32 -268435457) #10, !srcloc !330
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.1.i)
  %tobool47.not.i = icmp eq i32 %count.addr.1.i, 0
  %or.i155 = or i32 %coal_enable.1.i, 256
  %spec.select101.i = select i1 %tobool47.not.i, i32 %coal_enable.1.i, i32 %or.i155
  br i1 %cmp.i146, label %if.then51.i, label %if.end33.i.if.end69.i_crit_edge

if.end33.i.if.end69.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69.i

if.then51.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !345
  tail call void @arm_heavy_mb() #10
  %add.ptr56.i = getelementptr i8, ptr %163, i32 196624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56.i, i32 %181) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !346
  tail call void @arm_heavy_mb() #10
  %add.ptr60.i = getelementptr i8, ptr %163, i32 196620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60.i, i32 %182) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !347
  tail call void @arm_heavy_mb() #10
  %add.ptr64.i = getelementptr i8, ptr %163, i32 196628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64.i, i32 -268435457) #10, !srcloc !330
  %or67.i = or i32 %coal_enable.1.i, 131328
  %spec.select102.i = select i1 %tobool47.not.i, i32 %coal_enable.1.i, i32 %or67.i
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then51.i, %if.end33.i.if.end69.i_crit_edge
  %coal_enable.3.i = phi i32 [ %spec.select101.i, %if.end33.i.if.end69.i_crit_edge ], [ %spec.select102.i, %if.then51.i ]
  %183 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %private_data, align 4
  %main_irq_mask.i105.i = getelementptr inbounds %struct.mv_host_priv, ptr %184, i32 0, i32 2
  %185 = ptrtoint ptr %main_irq_mask.i105.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %main_irq_mask.i105.i, align 4
  %or.i.i = or i32 %186, %coal_enable.3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %186)
  %cmp.not.i106.i = icmp eq i32 %or.i.i, %186
  br i1 %cmp.not.i106.i, label %if.end69.i.mv_set_irq_coalescing.exit_crit_edge, label %if.then.i110.i

if.end69.i.mv_set_irq_coalescing.exit_crit_edge:  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_set_irq_coalescing.exit

if.then.i110.i:                                   ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #12
  %187 = ptrtoint ptr %main_irq_mask.i105.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %or.i.i, ptr %main_irq_mask.i105.i, align 4
  %and.i.i.i = and i32 %or.i.i, 2097408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %and1.i.i107.i = and i32 %or.i.i, -171
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, i32 %or.i.i, i32 %and1.i.i107.i
  %and2.i.i.i = and i32 %spec.select.i.i.i, 2228224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  %and5.i.i108.i = and i32 %spec.select.i.i.i, -87041
  %mask.addr.1.i.i.i = select i1 %tobool3.not.i.i.i, i32 %spec.select.i.i.i, i32 %and5.i.i108.i
  %main_irq_mask_addr.i.i109.i = getelementptr inbounds %struct.mv_host_priv, ptr %184, i32 0, i32 8
  %188 = ptrtoint ptr %main_irq_mask_addr.i.i109.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %main_irq_mask_addr.i.i109.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %190 = tail call i32 @llvm.bswap.i32(i32 %mask.addr.1.i.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 %190) #10, !srcloc !330
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %189) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %mv_set_irq_coalescing.exit

mv_set_irq_coalescing.exit:                       ; preds = %if.then.i110.i, %if.end69.i.mv_set_irq_coalescing.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %host, i32 noundef %call13.i) #10
  br label %done

done:                                             ; preds = %mv_set_irq_coalescing.exit, %for.end.done_crit_edge, %mv_chip_id.exit
  %rc.0 = phi i32 [ -22, %mv_chip_id.exit ], [ %call19, %for.end.done_crit_edge ], [ 0, %mv_set_irq_coalescing.exit ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_dump_pci_cfg(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %dw = alloca i32, align 4
  %linebuf = alloca [38 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dw) #10
  %0 = ptrtoint ptr %dw to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %dw, align 4
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %linebuf) #10
  %1 = call ptr @memset(ptr %linebuf, i32 255, i32 38)
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br label %for.body4

for.body4:                                        ; preds = %for.body4.backedge, %entry
  %b.16 = phi i32 [ 0, %entry ], [ %add6, %for.body4.backedge ]
  %w.05 = phi i32 [ 0, %entry ], [ %w.05.be, %for.body4.backedge ]
  %o.04 = phi i32 [ 0, %entry ], [ %o.04.be, %for.body4.backedge ]
  %call = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %b.16, ptr noundef nonnull %dw) #10
  %add.ptr = getelementptr i8, ptr %linebuf, i32 %o.04
  %sub = sub i32 38, %o.04
  %2 = ptrtoint ptr %dw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dw, align 4
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.57, i32 noundef %3)
  %add = add i32 %call5, %o.04
  %add6 = add nuw nsw i32 %b.16, 4
  %inc = add nuw nsw i32 %w.05, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %b.16)
  %cmp2 = icmp ult i32 %b.16, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %w.05)
  %cmp3 = icmp ult i32 %w.05, 3
  %or.cond = select i1 %cmp2, i1 %cmp3, i1 false
  br i1 %or.cond, label %for.body4.for.body4.backedge_crit_edge, label %do.body

for.body4.for.body4.backedge_crit_edge:           ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.backedge

for.body4.backedge:                               ; preds = %do.end.for.body4.backedge_crit_edge, %for.body4.for.body4.backedge_crit_edge
  %w.05.be = phi i32 [ %inc, %for.body4.for.body4.backedge_crit_edge ], [ 0, %do.end.for.body4.backedge_crit_edge ]
  %o.04.be = phi i32 [ %add, %for.body4.for.body4.backedge_crit_edge ], [ 0, %do.end.for.body4.backedge_crit_edge ]
  br label %for.body4

do.body:                                          ; preds = %for.body4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_dump_pci_cfg.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_dump_pci_cfg, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !336

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_dump_pci_cfg.__UNIQUE_ID_ddebug328, ptr noundef %dev, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58, i32 noundef %add6, ptr noundef nonnull %linebuf) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %b.16)
  %cmp = icmp ult i32 %b.16, 100
  br i1 %cmp, label %do.end.for.body4.backedge_crit_edge, label %for.end11

do.end.for.body4.backedge_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.backedge

for.end11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %linebuf) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dw) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_print_info(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  %scc = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  %private_data = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scc) #10
  %4 = ptrtoint ptr %scc to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %scc, align 1, !annotation !348
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 10, ptr noundef nonnull %scc) #10
  %5 = ptrtoint ptr %scc to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %scc, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  %and = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else9, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.else9:                                         ; preds = %entry
  %and11 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else14, label %if.else9.do.end_crit_edge

if.else9.do.end_crit_edge:                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.else14:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #12
  %and16 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %.str.62..str.65 = select i1 %tobool17.not, ptr @.str.62, ptr @.str.65
  br label %do.end

do.end:                                           ; preds = %if.else14, %if.else9.do.end_crit_edge, %entry.do.end_crit_edge
  %gen.0 = phi ptr [ @.str.63, %entry.do.end_crit_edge ], [ @.str.64, %if.else9.do.end_crit_edge ], [ %.str.62..str.65, %if.else14 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %switch.selectcmp33 = icmp eq i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %switch.selectcmp = icmp eq i8 %6, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.61, ptr @.str.62
  %switch.select34 = select i1 %switch.selectcmp33, ptr @.str.60, ptr %switch.select
  %n_ports = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 3
  %9 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_ports, align 4
  %and25 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %cond = select i1 %tobool26.not, ptr @.str.70, ptr @.str.69
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.66, ptr noundef nonnull %gen.0, i32 noundef 32, i32 noundef %10, ptr noundef nonnull %switch.select34, ptr noundef nonnull %cond) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scc) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_try_set_mwi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  %serr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 1
  tail call void @_raw_spin_lock(ptr noundef %dev_instance) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %main_irq_mask_addr.i = getelementptr inbounds %struct.mv_host_priv, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %main_irq_mask_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %main_irq_mask_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #10, !srcloc !330
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %main_irq_cause_addr = getelementptr inbounds %struct.mv_host_priv, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %main_irq_cause_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %main_irq_cause_addr, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !326
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !349
  %main_irq_mask = getelementptr inbounds %struct.mv_host_priv, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %main_irq_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %main_irq_mask, align 4
  %and2 = and i32 %12, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.not = icmp eq i32 %9, -1
  %or.cond = select i1 %tobool3.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end.if.end17_crit_edge, label %if.then4

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then4:                                         ; preds = %if.end
  %and5 = and i32 %and2, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then4.if.else_crit_edge, label %land.rhs

if.then4.if.else_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.rhs:                                         ; preds = %if.then4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %and8 = and i32 %14, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then13, label %land.rhs.if.else_crit_edge, !prof !350

land.rhs.if.else_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then13:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %base = getelementptr inbounds %struct.mv_host_priv, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  tail call fastcc void @mv_pci_error(ptr noundef %dev_instance, ptr noundef %16)
  br label %if.end17

if.else:                                          ; preds = %land.rhs.if.else_crit_edge, %if.then4.if.else_crit_edge
  %17 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private_data, align 4
  %base.i = getelementptr inbounds %struct.mv_host_priv, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %and.i = and i32 %and2, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.if.end.i_crit_edge, label %do.body.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.body.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !351
  tail call void @arm_heavy_mb() #10
  %add.ptr.i = getelementptr i8, ptr %20, i32 98312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -268435457) #10, !srcloc !330
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %if.else.if.end.i_crit_edge
  %n_ports.i = getelementptr inbounds %struct.mv_host_priv, ptr %18, i32 0, i32 5
  %21 = ptrtoint ptr %n_ports.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp117.not.i = icmp eq i32 %22, 0
  br i1 %cmp117.not.i, label %if.end.i.if.end17_crit_edge, label %for.body.lr.ph.i

if.end.i.if.end17_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %add.ptr1.i.i.i = getelementptr i8, ptr %20, i32 131092
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup38.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %23 = phi i32 [ %22, %for.body.lr.ph.i ], [ %158, %cleanup38.i.for.body.i_crit_edge ]
  %port.0119.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc46.i, %cleanup38.i.for.body.i_crit_edge ]
  %handled.0118.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %handled.3.i, %cleanup38.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ata_host, ptr %dev_instance, i32 0, i32 12, i32 %port.0119.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %shr.i.i = lshr i32 %port.0119.i, 2
  %mul.i = mul i32 %shr.i.i, 9
  %and.i.i = and i32 %port.0119.i, 3
  %mul2.i = shl nuw nsw i32 %and.i.i, 1
  %add.i = add i32 %mul.i, %mul2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp3.i = icmp eq i32 %and.i.i, 0
  %shr.i = lshr i32 %and2, %add.i
  br i1 %cmp3.i, label %if.then4.i, label %for.body.i.if.end32.i_crit_edge

for.body.i.if.end32.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

if.then4.i:                                       ; preds = %for.body.i
  %and5.i = and i32 %shr.i, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %cleanup.thread.i, label %if.end9.i

cleanup.thread.i:                                 ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  %add8.i = add nuw i32 %port.0119.i, 3
  br label %cleanup38.i

if.end9.i:                                        ; preds = %if.then4.i
  %and10.i = lshr i32 %shr.i, 4
  %26 = and i32 %and10.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %port.0119.i, i32 %23)
  %cmp19.not113.i = icmp ult i32 %port.0119.i, %23
  br i1 %cmp19.not113.i, label %if.end21.i, label %if.end9.i.cleanup.i_crit_edge

if.end9.i.cleanup.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end21.i:                                       ; preds = %if.end9.i
  %and23.i = and i32 %shr.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  %or.i = select i1 %tobool24.not.i, i32 0, i32 257
  %ack_irqs.1.i = or i32 %or.i, %26
  %add17.i = add nuw i32 %port.0119.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add17.i, i32 %23)
  %cmp19.not.i = icmp ult i32 %add17.i, %23
  br i1 %cmp19.not.i, label %if.end21.i.1, label %if.end21.i.cleanup.i_crit_edge

if.end21.i.cleanup.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end21.i.1:                                     ; preds = %if.end21.i
  %and23.i.1 = and i32 %shr.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.1)
  %tobool24.not.i.1 = icmp eq i32 %and23.i.1, 0
  %or.i.1 = select i1 %tobool24.not.i.1, i32 0, i32 514
  %ack_irqs.1.i.1 = or i32 %or.i.1, %ack_irqs.1.i
  %add17.i.1 = add nuw i32 %port.0119.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add17.i.1, i32 %23)
  %cmp19.not.i.1 = icmp ult i32 %add17.i.1, %23
  br i1 %cmp19.not.i.1, label %if.end21.i.2, label %if.end21.i.1.cleanup.i_crit_edge

if.end21.i.1.cleanup.i_crit_edge:                 ; preds = %if.end21.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end21.i.2:                                     ; preds = %if.end21.i.1
  %and23.i.2 = and i32 %shr.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.2)
  %tobool24.not.i.2 = icmp eq i32 %and23.i.2, 0
  %or.i.2 = select i1 %tobool24.not.i.2, i32 0, i32 1028
  %ack_irqs.1.i.2 = or i32 %or.i.2, %ack_irqs.1.i.1
  %add17.i.2 = add nuw i32 %port.0119.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add17.i.2, i32 %23)
  %cmp19.not.i.2 = icmp ult i32 %add17.i.2, %23
  br i1 %cmp19.not.i.2, label %if.end21.i.3, label %if.end21.i.2.cleanup.i_crit_edge

if.end21.i.2.cleanup.i_crit_edge:                 ; preds = %if.end21.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end21.i.3:                                     ; preds = %if.end21.i.2
  call void @__sanitizer_cov_trace_pc() #12
  %and23.i.3 = and i32 %shr.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.3)
  %tobool24.not.i.3 = icmp eq i32 %and23.i.3, 0
  %or.i.3 = select i1 %tobool24.not.i.3, i32 0, i32 2056
  %ack_irqs.1.i.3 = or i32 %or.i.3, %ack_irqs.1.i.2
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end21.i.3, %if.end21.i.2.cleanup.i_crit_edge, %if.end21.i.1.cleanup.i_crit_edge, %if.end21.i.cleanup.i_crit_edge, %if.end9.i.cleanup.i_crit_edge
  %ack_irqs.0.lcssa.i = phi i32 [ %26, %if.end9.i.cleanup.i_crit_edge ], [ %ack_irqs.1.i, %if.end21.i.cleanup.i_crit_edge ], [ %ack_irqs.1.i.1, %if.end21.i.1.cleanup.i_crit_edge ], [ %ack_irqs.1.i.2, %if.end21.i.2.cleanup.i_crit_edge ], [ %ack_irqs.1.i.3, %if.end21.i.3 ]
  %27 = shl i32 %port.0119.i, 14
  %mul.i.i.i = and i32 %27, -65536
  %neg.i = xor i32 %ack_irqs.0.lcssa.i, -1
  %add.ptr29.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 %mul.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  call void @arm_heavy_mb() #10
  %28 = call i32 @llvm.bswap.i32(i32 %neg.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 %28) #10, !srcloc !330
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29.i) #10, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %if.end32.i

if.end32.i:                                       ; preds = %cleanup.i, %for.body.i.if.end32.i_crit_edge
  %handled.2.i = phi i32 [ 1, %cleanup.i ], [ %handled.0118.i, %for.body.i.if.end32.i_crit_edge ]
  %and34.i = and i32 %shr.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.end32.i.cleanup38.i_crit_edge, label %if.then36.i

if.end32.i.cleanup38.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38.i

if.then36.i:                                      ; preds = %if.end32.i
  %private_data.i.i = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 48
  %30 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %private_data.i.i, align 4
  %pp_flags.i.i = getelementptr inbounds %struct.mv_port_priv, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %pp_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pp_flags.i.i, align 4
  %and.i77.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77.i)
  %tobool.not.i.i = icmp eq i32 %and.i77.i, 0
  %and1.i.i = and i32 %shr.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  %or.cond.i.i = or i1 %tobool2.not.i.i, %tobool.not.i.i
  br i1 %or.cond.i.i, label %if.then36.i.if.end7.i.i_crit_edge, label %if.then.i.i

if.then36.i.if.end7.i.i_crit_edge:                ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

if.then.i.i:                                      ; preds = %if.then36.i
  call fastcc void @mv_process_crpb_entries(ptr noundef %25, ptr noundef %31) #10
  %34 = ptrtoint ptr %pp_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pp_flags.i.i, align 4
  %and4.i.i = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.then.i.i.if.end7.i.i_crit_edge, label %if.then6.i.i

if.then.i.i.if.end7.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

if.then6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @mv_handle_fbs_ncq_dev_err(ptr noundef %25) #10
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then6.i.i, %if.then.i.i.if.end7.i.i_crit_edge, %if.then36.i.if.end7.i.i_crit_edge
  %and8.i.i = and i32 %shr.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.else.i.i, label %if.then12.i.i, !prof !352

if.then12.i.i:                                    ; preds = %if.end7.i.i
  %host.i.i.i = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 31
  %36 = ptrtoint ptr %host.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %host.i.i.i, align 4
  %private_data.i.i.i.i = getelementptr inbounds %struct.ata_host, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %private_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %private_data.i.i.i.i, align 4
  %base.i.i.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i.i.i, align 4
  %port_no.i.i.i = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 7
  %42 = ptrtoint ptr %port_no.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port_no.i.i.i, align 4
  %44 = shl i32 %43, 14
  %mul.i.i.i.i.i.i = and i32 %44, -65536
  %add.ptr1.i.i.i.i.i.i = getelementptr i8, ptr %41, i32 139264
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr1.i.i.i.i.i.i, i32 %mul.i.i.i.i.i.i
  %and.i.i.i.i.i = shl i32 %43, 13
  %mul.i.i.i.i = and i32 %and.i.i.i.i.i, 24576
  %add.ptr2.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %mul.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %serr.i.i) #10
  %45 = ptrtoint ptr %serr.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %serr.i.i, align 4
  %46 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %private_data.i.i, align 4
  %link.i.i = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 25
  %eh_info.i.i = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 25, i32 11
  %call3.i.i = call i32 @sata_scr_read(ptr noundef %link.i.i, i32 noundef 1, ptr noundef nonnull %serr.i.i) #10
  %48 = ptrtoint ptr %serr.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %serr.i.i, align 4
  %call5.i.i = call i32 @sata_scr_write_flush(ptr noundef %link.i.i, i32 noundef 1, i32 noundef %49) #10
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr2.i.i.i.i, i32 8
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !326
  %51 = call i32 @llvm.bswap.i32(i32 %50) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !353
  %52 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %39, align 4
  %and.i79.i = and i32 %53, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i79.i)
  %tobool.not.i80.i = icmp eq i32 %and.i79.i, 0
  %and8.i81.i = and i32 %51, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i81.i)
  %tobool9.not.i82.i = icmp eq i32 %and8.i81.i, 0
  %or.cond.i83.i = select i1 %tobool.not.i80.i, i1 true, i1 %tobool9.not.i82.i
  br i1 %or.cond.i83.i, label %if.then12.i.i.if.end.i.i_crit_edge, label %if.then.i84.i

if.then12.i.i.if.end.i.i_crit_edge:               ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i84.i:                                    ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr12.i.i = getelementptr i8, ptr %add.ptr2.i.i.i.i, i32 868
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i.i) #10, !srcloc !326
  %55 = call i32 @llvm.bswap.i32(i32 %54) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !354
  %neg.i.i = xor i32 %55, -1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  call void @arm_heavy_mb() #10
  %56 = call i32 @llvm.bswap.i32(i32 %neg.i.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 %56) #10, !srcloc !330
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i.i) #10, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i84.i, %if.then12.i.i.if.end.i.i_crit_edge
  %fis_cause.0.i.i = phi i32 [ %55, %if.then.i84.i ], [ 0, %if.then12.i.i.if.end.i.i_crit_edge ]
  %neg17.i.i = xor i32 %51, -1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  call void @arm_heavy_mb() #10
  %58 = call i32 @llvm.bswap.i32(i32 %neg17.i.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %58) #10, !srcloc !330
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  %and19.i.i = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool20.not.i.i = icmp eq i32 %and19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end.i.i.if.end26.i.i_crit_edge, label %if.then21.i.i

if.end.i.i.if.end26.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i.i

if.then21.i.i:                                    ; preds = %if.end.i.i
  %60 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %private_data.i.i, align 4
  %pp_flags.i.i85.i = getelementptr inbounds %struct.mv_port_priv, ptr %61, i32 0, i32 8
  %62 = ptrtoint ptr %pp_flags.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pp_flags.i.i85.i, align 4
  %64 = and i32 %63, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %64)
  %.not.i.i = icmp eq i32 %64, 5
  br i1 %.not.i.i, label %if.end9.i.i.i, label %if.then21.i.i.if.end26.i.i_crit_edge

if.then21.i.i.if.end26.i.i_crit_edge:             ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i.i

if.end9.i.i.i:                                    ; preds = %if.then21.i.i
  %and10.i.i.i = and i32 %51, -65101825
  %and11.i.i.i = and i32 %51, -65101957
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i.i)
  %tobool12.not.i.i.i = icmp eq i32 %and11.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %if.end14.i.i.i, label %if.end9.i.i.i.if.end26.i.i_crit_edge

if.end9.i.i.i.if.end26.i.i_crit_edge:             ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i.i

if.end14.i.i.i:                                   ; preds = %if.end9.i.i.i
  %and16.i.i.i = and i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i.i)
  %tobool17.not.i.i.i = icmp eq i32 %and16.i.i.i, 0
  %and25.i.i.i = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i)
  %tobool26.not.i.i.i = icmp eq i32 %and25.i.i.i, 0
  br i1 %tobool17.not.i.i.i, label %if.else.i.i.i, label %if.then18.i.i.i

if.then18.i.i.i:                                  ; preds = %if.end14.i.i.i
  br i1 %tobool26.not.i.i.i, label %mv_handle_dev_err.exit.i.i, label %if.then18.i.i.i.if.end26.sink.split.i.i_crit_edge

if.then18.i.i.i.if.end26.sink.split.i.i_crit_edge: ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.sink.split.i.i

if.else.i.i.i:                                    ; preds = %if.end14.i.i.i
  br i1 %tobool26.not.i.i.i, label %if.else.i.i.i.if.end26.sink.split.i.i_crit_edge, label %if.else.i.i.i.if.end26.i.i_crit_edge

if.else.i.i.i.if.end26.i.i_crit_edge:             ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i.i

if.else.i.i.i.if.end26.sink.split.i.i_crit_edge:  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.sink.split.i.i

mv_handle_dev_err.exit.i.i:                       ; preds = %if.then18.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @mv_handle_fbs_ncq_dev_err(ptr noundef %25) #10
  br label %mv_err_intr.exit.i

if.end26.sink.split.i.i:                          ; preds = %if.else.i.i.i.if.end26.sink.split.i.i_crit_edge, %if.then18.i.i.i.if.end26.sink.split.i.i_crit_edge
  %print_id32.i.i.i = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 5
  %65 = ptrtoint ptr %print_id32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %print_id32.i.i.i, align 4
  %call34.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, i32 noundef %66, ptr noundef nonnull @.str.103, i32 noundef %and10.i.i.i, i32 noundef %63) #13
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.end26.sink.split.i.i, %if.else.i.i.i.if.end26.i.i_crit_edge, %if.end9.i.i.i.if.end26.i.i_crit_edge, %if.then21.i.i.if.end26.i.i_crit_edge, %if.end.i.i.if.end26.i.i_crit_edge
  %67 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %private_data.i.i, align 4
  %pp_flags.i199.i.i = getelementptr inbounds %struct.mv_port_priv, ptr %68, i32 0, i32 8
  %69 = ptrtoint ptr %pp_flags.i199.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pp_flags.i199.i.i, align 4
  %and.i.i86.i = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i86.i)
  %tobool.not.i.i87.i = icmp eq i32 %and.i.i86.i, 0
  br i1 %tobool.not.i.i87.i, label %if.end.i.i92.i, label %if.end26.i.i.mv_get_active_qc.exit.i.i_crit_edge

if.end26.i.i.mv_get_active_qc.exit.i.i_crit_edge: ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_get_active_qc.exit.i.i

if.end.i.i92.i:                                   ; preds = %if.end26.i.i
  %active_tag.i.i88.i = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 25, i32 3
  %71 = ptrtoint ptr %active_tag.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %active_tag.i.i88.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %72)
  %73 = icmp ugt i32 %72, 32
  %arrayidx.i.i.i.i89.i = getelementptr %struct.ata_port, ptr %25, i32 0, i32 19, i32 %72
  %tobool.not11.i.i.i90.i = icmp eq ptr %arrayidx.i.i.i.i89.i, null
  %tobool.not.i.i.i91.i = or i1 %73, %tobool.not11.i.i.i90.i
  br i1 %tobool.not.i.i.i91.i, label %if.end.i.i92.i.if.end5.i.i.i_crit_edge, label %lor.lhs.false.i.i.i96.i, !prof !350

if.end.i.i92.i.if.end5.i.i.i_crit_edge:           ; preds = %if.end.i.i92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i.i.i

lor.lhs.false.i.i.i96.i:                          ; preds = %if.end.i.i92.i
  %ops.i.i.i93.i = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 1
  %74 = ptrtoint ptr %ops.i.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops.i.i.i93.i, align 4
  %error_handler.i.i.i94.i = getelementptr inbounds %struct.ata_port_operations, ptr %75, i32 0, i32 22
  %76 = ptrtoint ptr %error_handler.i.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %error_handler.i.i.i94.i, align 4
  %tobool4.not.i.i.i95.i = icmp eq ptr %77, null
  br i1 %tobool4.not.i.i.i95.i, label %lor.lhs.false.i.i.i96.i.land.lhs.true.i.i104.i_crit_edge, label %if.end.i.i.i100.i

lor.lhs.false.i.i.i96.i.land.lhs.true.i.i104.i_crit_edge: ; preds = %lor.lhs.false.i.i.i96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i104.i

if.end.i.i.i100.i:                                ; preds = %lor.lhs.false.i.i.i96.i
  %flags.i.i.i97.i = getelementptr %struct.ata_port, ptr %25, i32 0, i32 19, i32 %72, i32 6
  %78 = ptrtoint ptr %flags.i.i.i97.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags.i.i.i97.i, align 4
  %and.i.i.i98.i = and i32 %79, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i98.i)
  %cmp.i.i.i99.i = icmp eq i32 %and.i.i.i98.i, 1
  br i1 %cmp.i.i.i99.i, label %if.end.i.i.i100.i.land.lhs.true.i.i104.i_crit_edge, label %if.end.i.i.i100.i.if.end5.i.i.i_crit_edge

if.end.i.i.i100.i.if.end5.i.i.i_crit_edge:        ; preds = %if.end.i.i.i100.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i.i.i

if.end.i.i.i100.i.land.lhs.true.i.i104.i_crit_edge: ; preds = %if.end.i.i.i100.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i104.i

land.lhs.true.i.i104.i:                           ; preds = %if.end.i.i.i100.i.land.lhs.true.i.i104.i_crit_edge, %lor.lhs.false.i.i.i96.i.land.lhs.true.i.i104.i_crit_edge
  %tf.i.i101.i = getelementptr %struct.ata_port, ptr %25, i32 0, i32 19, i32 %72, i32 4
  %80 = ptrtoint ptr %tf.i.i101.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tf.i.i101.i, align 4
  %and2.i.i102.i = and i32 %81, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i102.i)
  %tobool3.not.i.i103.i = icmp eq i32 %and2.i.i102.i, 0
  br i1 %tobool3.not.i.i103.i, label %land.lhs.true.i.i104.i.mv_get_active_qc.exit.i.i_crit_edge, label %land.lhs.true.i.i104.i.if.end5.i.i.i_crit_edge

land.lhs.true.i.i104.i.if.end5.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i104.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i.i.i

land.lhs.true.i.i104.i.mv_get_active_qc.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i104.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_get_active_qc.exit.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true.i.i104.i.if.end5.i.i.i_crit_edge, %if.end.i.i.i100.i.if.end5.i.i.i_crit_edge, %if.end.i.i92.i.if.end5.i.i.i_crit_edge
  br label %mv_get_active_qc.exit.i.i

mv_get_active_qc.exit.i.i:                        ; preds = %if.end5.i.i.i, %land.lhs.true.i.i104.i.mv_get_active_qc.exit.i.i_crit_edge, %if.end26.i.i.mv_get_active_qc.exit.i.i_crit_edge
  %retval.0.i200.i.i = phi ptr [ null, %if.end5.i.i.i ], [ null, %if.end26.i.i.mv_get_active_qc.exit.i.i_crit_edge ], [ %arrayidx.i.i.i.i89.i, %land.lhs.true.i.i104.i.mv_get_active_qc.exit.i.i_crit_edge ]
  call void @ata_ehi_clear_desc(ptr noundef %eh_info.i.i) #10
  %pp_flags.i105.i = getelementptr inbounds %struct.mv_port_priv, ptr %47, i32 0, i32 8
  %82 = ptrtoint ptr %pp_flags.i105.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pp_flags.i105.i, align 4
  call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info.i.i, ptr noundef nonnull @.str.93, i32 noundef %51, i32 noundef %83) #10
  %84 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %39, align 4
  %and29.i.i = and i32 %85, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  %or.cond196.i.i = select i1 %tobool30.not.i.i, i1 true, i1 %tobool9.not.i82.i
  br i1 %or.cond196.i.i, label %mv_get_active_qc.exit.i.i.if.end44.i.i_crit_edge, label %if.then34.i.i

mv_get_active_qc.exit.i.i.if.end44.i.i_crit_edge: ; preds = %mv_get_active_qc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i.i

if.then34.i.i:                                    ; preds = %mv_get_active_qc.exit.i.i
  call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info.i.i, ptr noundef nonnull @.str.94, i32 noundef %fis_cause.0.i.i) #10
  %and35.i.i = and i32 %fis_cause.0.i.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i.i)
  %tobool36.not.i.i = icmp eq i32 %and35.i.i, 0
  br i1 %tobool36.not.i.i, label %if.then34.i.i.if.end44.i.i_crit_edge, label %if.then37.i.i

if.then34.i.i.if.end44.i.i_crit_edge:             ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i.i

if.then37.i.i:                                    ; preds = %if.then34.i.i
  %and38.i.i = and i32 %51, -65102081
  %call39.i.i = call i32 @sata_async_notification(ptr noundef %25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i.i)
  %tobool40.not.i.i = icmp eq i32 %and38.i.i, 0
  br i1 %tobool40.not.i.i, label %if.then37.i.i.mv_err_intr.exit.i_crit_edge, label %if.end42.i.i

if.then37.i.i.mv_err_intr.exit.i_crit_edge:       ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_err_intr.exit.i

if.end42.i.i:                                     ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info.i.i, ptr noundef nonnull @.str.95) #10
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.end42.i.i, %if.then34.i.i.if.end44.i.i_crit_edge, %mv_get_active_qc.exit.i.i.if.end44.i.i_crit_edge
  br i1 %tobool20.not.i.i, label %if.end44.i.i.if.end49.i.i_crit_edge, label %if.then47.i.i

if.end44.i.i.if.end49.i.i_crit_edge:              ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i.i

if.then47.i.i:                                    ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info.i.i, ptr noundef nonnull @.str.96) #10
  br label %if.end49.i.i

if.end49.i.i:                                     ; preds = %if.then47.i.i, %if.end44.i.i.if.end49.i.i_crit_edge
  %err_mask.0.i.i = phi i32 [ 1, %if.then47.i.i ], [ 0, %if.end44.i.i.if.end49.i.i_crit_edge ]
  %action.0.i.i = phi i32 [ 6, %if.then47.i.i ], [ 0, %if.end44.i.i.if.end49.i.i_crit_edge ]
  %and50.i.i = and i32 %51, 3587
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i.i)
  %tobool51.not.i.i = icmp eq i32 %and50.i.i, 0
  br i1 %tobool51.not.i.i, label %if.end49.i.i.if.end55.i.i_crit_edge, label %if.then52.i.i

if.end49.i.i.if.end55.i.i_crit_edge:              ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i.i

if.then52.i.i:                                    ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or53.i.i = or i32 %err_mask.0.i.i, 16
  call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info.i.i, ptr noundef nonnull @.str.97) #10
  br label %if.end55.i.i

if.end55.i.i:                                     ; preds = %if.then52.i.i, %if.end49.i.i.if.end55.i.i_crit_edge
  %err_mask.1.i.i = phi i32 [ %or53.i.i, %if.then52.i.i ], [ %err_mask.0.i.i, %if.end49.i.i.if.end55.i.i_crit_edge ]
  %action.1.i.i = phi i32 [ 6, %if.then52.i.i ], [ %action.0.i.i, %if.end49.i.i.if.end55.i.i_crit_edge ]
  %and56.i.i = and i32 %51, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i.i)
  %tobool57.not.i.i = icmp eq i32 %and56.i.i, 0
  br i1 %tobool57.not.i.i, label %if.end55.i.i.if.end62.i.i_crit_edge, label %if.then58.i.i

if.end55.i.i.if.end62.i.i_crit_edge:              ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.i.i

if.then58.i.i:                                    ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %probe_mask.i.i.i = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 25, i32 11, i32 6
  %86 = ptrtoint ptr %probe_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %probe_mask.i.i.i, align 4
  %or.i.i106.i = or i32 %87, 3
  store i32 %or.i.i106.i, ptr %probe_mask.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 25, i32 11, i32 5
  %88 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags.i.i.i, align 4
  %or1.i.i.i = or i32 %89, 1
  store i32 %or1.i.i.i, ptr %flags.i.i.i, align 4
  %action.i.i107.i = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 25, i32 11, i32 3
  %90 = ptrtoint ptr %action.i.i107.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %action.i.i107.i, align 4
  %or2.i.i.i = or i32 %91, 14
  store i32 %or2.i.i.i, ptr %action.i.i107.i, align 4
  %err_mask.i.i108.i = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 25, i32 11, i32 2
  %92 = ptrtoint ptr %err_mask.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %err_mask.i.i108.i, align 4
  %or3.i.i.i = or i32 %93, 16
  store i32 %or3.i.i.i, ptr %err_mask.i.i108.i, align 4
  %and59.i.i = and i32 %51, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i.i)
  %tobool60.not.i.i = icmp eq i32 %and59.i.i, 0
  %cond.i.i = select i1 %tobool60.not.i.i, ptr @.str.99, ptr @.str.98
  call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info.i.i, ptr noundef nonnull %cond.i.i) #10
  br label %if.end62.i.i

if.end62.i.i:                                     ; preds = %if.then58.i.i, %if.end55.i.i.if.end62.i.i_crit_edge
  %action.2.i.i = phi i32 [ 6, %if.then58.i.i ], [ %action.1.i.i, %if.end55.i.i.if.end62.i.i_crit_edge ]
  %94 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %39, align 4
  %and64.i.i = and i32 %95, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i.i)
  %tobool65.not.i.i = icmp eq i32 %and64.i.i, 0
  br i1 %tobool65.not.i.i, label %if.else.i109.i, label %if.then66.i.i

if.then66.i.i:                                    ; preds = %if.end62.i.i
  br i1 %tobool9.not.i82.i, label %if.then66.i.i.if.end85.i.i_crit_edge, label %if.then69.i.i

if.then66.i.i.if.end85.i.i_crit_edge:             ; preds = %if.then66.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85.i.i

if.then69.i.i:                                    ; preds = %if.then66.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %pp_flags.i105.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pp_flags.i105.i, align 4
  %and71.i.i = and i32 %97, -2
  store i32 %and71.i.i, ptr %pp_flags.i105.i, align 4
  call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info.i.i, ptr noundef nonnull @.str.100) #10
  br label %if.end85.i.i

if.else.i109.i:                                   ; preds = %if.end62.i.i
  %and73.i.i = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i.i)
  %tobool74.not.i.i = icmp eq i32 %and73.i.i, 0
  br i1 %tobool74.not.i.i, label %if.else.i109.i.if.end78.i.i_crit_edge, label %if.then75.i.i

if.else.i109.i.if.end78.i.i_crit_edge:            ; preds = %if.else.i109.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78.i.i

if.then75.i.i:                                    ; preds = %if.else.i109.i
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %pp_flags.i105.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pp_flags.i105.i, align 4
  %and77.i.i = and i32 %99, -2
  store i32 %and77.i.i, ptr %pp_flags.i105.i, align 4
  call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info.i.i, ptr noundef nonnull @.str.100) #10
  br label %if.end78.i.i

if.end78.i.i:                                     ; preds = %if.then75.i.i, %if.else.i109.i.if.end78.i.i_crit_edge
  %and79.i.i = and i32 %51, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i.i)
  %tobool80.not.i.i = icmp eq i32 %and79.i.i, 0
  br i1 %tobool80.not.i.i, label %if.end78.i.i.if.end85.i.i_crit_edge, label %if.then81.i.i

if.end78.i.i.if.end85.i.i_crit_edge:              ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85.i.i

if.then81.i.i:                                    ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %serr.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %serr.i.i, align 4
  call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info.i.i, ptr noundef nonnull @.str.101, i32 noundef %101) #10
  %or82.i.i = or i32 %err_mask.1.i.i, 16
  br label %if.end85.i.i

if.end85.i.i:                                     ; preds = %if.then81.i.i, %if.end78.i.i.if.end85.i.i_crit_edge, %if.then69.i.i, %if.then66.i.i.if.end85.i.i_crit_edge
  %err_mask.2.i.i = phi i32 [ %err_mask.1.i.i, %if.then69.i.i ], [ %err_mask.1.i.i, %if.then66.i.i.if.end85.i.i_crit_edge ], [ %or82.i.i, %if.then81.i.i ], [ %err_mask.1.i.i, %if.end78.i.i.if.end85.i.i_crit_edge ]
  %action.3.i.i = phi i32 [ %action.2.i.i, %if.then69.i.i ], [ %action.2.i.i, %if.then66.i.i.if.end85.i.i_crit_edge ], [ 6, %if.then81.i.i ], [ %action.2.i.i, %if.end78.i.i.if.end85.i.i_crit_edge ]
  %eh_freeze_mask.0.i.i = phi i32 [ 8059, %if.then69.i.i ], [ 8059, %if.then66.i.i.if.end85.i.i_crit_edge ], [ -65102149, %if.then81.i.i ], [ -65102149, %if.end78.i.i.if.end85.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err_mask.2.i.i)
  %tobool86.not.i.i = icmp eq i32 %err_mask.2.i.i, 0
  %or88.i.i = or i32 %action.3.i.i, 6
  %spec.select.i.i = select i1 %tobool86.not.i.i, i32 256, i32 %err_mask.2.i.i
  %spec.select197.i.i = select i1 %tobool86.not.i.i, i32 %or88.i.i, i32 %action.3.i.i
  %102 = ptrtoint ptr %serr.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %serr.i.i, align 4
  %serror.i.i = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 25, i32 11, i32 1
  %104 = ptrtoint ptr %serror.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %serror.i.i, align 4
  %or90.i.i = or i32 %105, %103
  store i32 %or90.i.i, ptr %serror.i.i, align 4
  %action91.i.i = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 25, i32 11, i32 3
  %106 = ptrtoint ptr %action91.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %action91.i.i, align 4
  %or92.i.i = or i32 %107, %spec.select197.i.i
  store i32 %or92.i.i, ptr %action91.i.i, align 4
  %tobool93.not.i.i = icmp eq ptr %retval.0.i200.i.i, null
  %err_mask98.i.i = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 25, i32 11, i32 2
  %err_mask95.i.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %retval.0.i200.i.i, i32 0, i32 20
  %err_mask98.sink205.i.i = select i1 %tobool93.not.i.i, ptr %err_mask98.i.i, ptr %err_mask95.i.i
  %108 = ptrtoint ptr %err_mask98.sink205.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %err_mask98.sink205.i.i, align 4
  %or99.i.i = or i32 %109, %spec.select.i.i
  store i32 %or99.i.i, ptr %err_mask98.sink205.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.i.i)
  %cmp.i.i = icmp eq i32 %spec.select.i.i, 1
  br i1 %cmp.i.i, label %if.then101.i.i, label %if.else102.i.i

if.then101.i.i:                                   ; preds = %if.end85.i.i
  call fastcc void @mv_stop_edma(ptr noundef %25) #10
  %110 = ptrtoint ptr %port_no.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %port_no.i.i.i, align 4
  %shr.i.i.i.i.i = lshr i32 %111, 2
  %mul.i.i201.i.i = mul i32 %shr.i.i.i.i.i, 9
  %and.i.i.i202.i.i = shl i32 %111, 1
  %mul2.i.i.i.i = and i32 %and.i.i.i202.i.i, 6
  %add.i.i.i.i = add i32 %mul.i.i201.i.i, %mul2.i.i.i.i
  %shl.i.i.i.i = shl i32 3, %add.i.i.i.i
  %112 = ptrtoint ptr %host.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %host.i.i.i, align 4
  %private_data.i.i.i.i.i = getelementptr inbounds %struct.ata_host, ptr %113, i32 0, i32 5
  %114 = ptrtoint ptr %private_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %private_data.i.i.i.i.i, align 4
  %main_irq_mask.i.i.i.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %main_irq_mask.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %main_irq_mask.i.i.i.i.i, align 4
  %neg.i.i.i.i.i = xor i32 %shl.i.i.i.i, -1
  %and.i8.i.i.i.i = and i32 %117, %neg.i.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i8.i.i.i.i, i32 %117)
  %cmp.not.i.i.i.i.i = icmp eq i32 %and.i8.i.i.i.i, %117
  br i1 %cmp.not.i.i.i.i.i, label %if.then101.i.i.if.then111.i.i_crit_edge, label %if.then.i.i.i.i.i

if.then101.i.i.if.then111.i.i_crit_edge:          ; preds = %if.then101.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then111.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then101.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %main_irq_mask.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %and.i8.i.i.i.i, ptr %main_irq_mask.i.i.i.i.i, align 4
  %and.i.i.i.i.i.i = and i32 %and.i8.i.i.i.i, 2097408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  %and1.i.i.i.i.i.i = and i32 %and.i8.i.i.i.i, -171
  %spec.select.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 %and.i8.i.i.i.i, i32 %and1.i.i.i.i.i.i
  %and2.i.i.i.i.i.i = and i32 %spec.select.i.i.i.i.i.i, 2228224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i.i.i)
  %tobool3.not.i.i.i.i.i.i = icmp eq i32 %and2.i.i.i.i.i.i, 0
  %and5.i.i.i.i.i.i = and i32 %spec.select.i.i.i.i.i.i, -87041
  %mask.addr.1.i.i.i.i.i.i = select i1 %tobool3.not.i.i.i.i.i.i, i32 %spec.select.i.i.i.i.i.i, i32 %and5.i.i.i.i.i.i
  %main_irq_mask_addr.i.i.i.i.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %115, i32 0, i32 8
  %119 = ptrtoint ptr %main_irq_mask_addr.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %main_irq_mask_addr.i.i.i.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  call void @arm_heavy_mb() #10
  %121 = call i32 @llvm.bswap.i32(i32 %mask.addr.1.i.i.i.i.i.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 %121) #10, !srcloc !330
  %122 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #10, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %if.then111.i.i

if.else102.i.i:                                   ; preds = %if.end85.i.i
  %and103.i.i = and i32 %eh_freeze_mask.0.i.i, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103.i.i)
  %tobool104.not.i.i = icmp eq i32 %and103.i.i, 0
  br i1 %tobool104.not.i.i, label %if.else102.i.i.if.then111.i.i_crit_edge, label %if.then105.i.i

if.else102.i.i.if.then111.i.i_crit_edge:          ; preds = %if.else102.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then111.i.i

if.then105.i.i:                                   ; preds = %if.else102.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call106.i.i = call i32 @ata_port_freeze(ptr noundef %25) #10
  br label %mv_err_intr.exit.i

if.then111.i.i:                                   ; preds = %if.else102.i.i.if.then111.i.i_crit_edge, %if.then.i.i.i.i.i, %if.then101.i.i.if.then111.i.i_crit_edge
  br i1 %tobool93.not.i.i, label %if.else116.i.i, label %if.then113.i.i

if.then113.i.i:                                   ; preds = %if.then111.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %retval.0.i200.i.i, i32 0, i32 1
  %123 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.i.i, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 128
  %call115.i.i = call i32 @ata_link_abort(ptr noundef %126) #10
  br label %mv_err_intr.exit.i

if.else116.i.i:                                   ; preds = %if.then111.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call117.i.i = call i32 @ata_port_abort(ptr noundef %25) #10
  br label %mv_err_intr.exit.i

mv_err_intr.exit.i:                               ; preds = %if.else116.i.i, %if.then113.i.i, %if.then105.i.i, %if.then37.i.i.mv_err_intr.exit.i_crit_edge, %mv_handle_dev_err.exit.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %serr.i.i) #10
  br label %cleanup38.i

if.else.i.i:                                      ; preds = %if.end7.i.i
  br i1 %tobool.not.i.i, label %if.then14.i.i, label %if.else.i.i.cleanup38.i_crit_edge

if.else.i.i.cleanup38.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup38.i

if.then14.i.i:                                    ; preds = %if.else.i.i
  %127 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %private_data.i.i, align 4
  %pp_flags.i.i.i = getelementptr inbounds %struct.mv_port_priv, ptr %128, i32 0, i32 8
  %129 = ptrtoint ptr %pp_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %pp_flags.i.i.i, align 4
  %and.i.i.i = and i32 %130, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then14.i.i.if.else19.i.i_crit_edge

if.then14.i.i.if.else19.i.i_crit_edge:            ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else19.i.i

if.end.i.i.i:                                     ; preds = %if.then14.i.i
  %active_tag.i.i.i = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 25, i32 3
  %131 = ptrtoint ptr %active_tag.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %active_tag.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %132)
  %133 = icmp ugt i32 %132, 32
  %arrayidx.i.i.i.i.i = getelementptr %struct.ata_port, ptr %25, i32 0, i32 19, i32 %132
  %tobool.not11.i.i.i.i = icmp eq ptr %arrayidx.i.i.i.i.i, null
  %tobool.not.i.i.i.i = or i1 %133, %tobool.not11.i.i.i.i
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.if.else19.i.i_crit_edge, label %lor.lhs.false.i.i.i.i, !prof !350

if.end.i.i.i.if.else19.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else19.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i
  %ops.i.i.i.i = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 1
  %134 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ops.i.i.i.i, align 4
  %error_handler.i.i.i.i = getelementptr inbounds %struct.ata_port_operations, ptr %135, i32 0, i32 22
  %136 = ptrtoint ptr %error_handler.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %error_handler.i.i.i.i, align 4
  %tobool4.not.i.i.i.i = icmp eq ptr %137, null
  br i1 %tobool4.not.i.i.i.i, label %lor.lhs.false.i.i.i.i.land.lhs.true.i.i.i_crit_edge, label %if.end.i.i.i.i

lor.lhs.false.i.i.i.i.land.lhs.true.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i.i

if.end.i.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i.i
  %flags.i.i.i.i = getelementptr %struct.ata_port, ptr %25, i32 0, i32 19, i32 %132, i32 6
  %138 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %flags.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %139, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end.i.i.i.i.land.lhs.true.i.i.i_crit_edge, label %if.end.i.i.i.i.if.else19.i.i_crit_edge

if.end.i.i.i.i.if.else19.i.i_crit_edge:           ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else19.i.i

if.end.i.i.i.i.land.lhs.true.i.i.i_crit_edge:     ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i.i.i.land.lhs.true.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.land.lhs.true.i.i.i_crit_edge
  %tf.i.i.i = getelementptr %struct.ata_port, ptr %25, i32 0, i32 19, i32 %132, i32 4
  %140 = ptrtoint ptr %tf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %tf.i.i.i, align 4
  %and2.i.i.i = and i32 %141, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.then17.i.i, label %land.lhs.true.i.i.i.if.else19.i.i_crit_edge

land.lhs.true.i.i.i.if.else19.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else19.i.i

if.then17.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call18.i.i = call i32 @ata_bmdma_port_intr(ptr noundef %25, ptr noundef nonnull %arrayidx.i.i.i.i.i) #10
  br label %cleanup38.i

if.else19.i.i:                                    ; preds = %land.lhs.true.i.i.i.if.else19.i.i_crit_edge, %if.end.i.i.i.i.if.else19.i.i_crit_edge, %if.end.i.i.i.if.else19.i.i_crit_edge, %if.then14.i.i.if.else19.i.i_crit_edge
  %eh_info.i.i.i = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 25, i32 11
  call void @ata_ehi_clear_desc(ptr noundef %eh_info.i.i.i) #10
  %active_tag.i35.i.i = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 25, i32 3
  %142 = ptrtoint ptr %active_tag.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %active_tag.i35.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %143)
  %144 = icmp ugt i32 %143, 32
  %arrayidx.i.i.i36.i.i = getelementptr %struct.ata_port, ptr %25, i32 0, i32 19, i32 %143
  %tobool.not11.i.i37.i.i = icmp eq ptr %arrayidx.i.i.i36.i.i, null
  %tobool.not.i.i38.i.i = or i1 %144, %tobool.not11.i.i37.i.i
  br i1 %tobool.not.i.i38.i.i, label %if.else19.i.i.mv_unexpected_intr.exit.i.i_crit_edge, label %lor.lhs.false.i.i42.i.i, !prof !350

if.else19.i.i.mv_unexpected_intr.exit.i.i_crit_edge: ; preds = %if.else19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_unexpected_intr.exit.i.i

lor.lhs.false.i.i42.i.i:                          ; preds = %if.else19.i.i
  %ops.i.i39.i.i = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 1
  %145 = ptrtoint ptr %ops.i.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ops.i.i39.i.i, align 4
  %error_handler.i.i40.i.i = getelementptr inbounds %struct.ata_port_operations, ptr %146, i32 0, i32 22
  %147 = ptrtoint ptr %error_handler.i.i40.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %error_handler.i.i40.i.i, align 4
  %tobool4.not.i.i41.i.i = icmp eq ptr %148, null
  br i1 %tobool4.not.i.i41.i.i, label %lor.lhs.false.i.i42.i.i.land.lhs.true.i50.i.i_crit_edge, label %if.end.i.i46.i.i

lor.lhs.false.i.i42.i.i.land.lhs.true.i50.i.i_crit_edge: ; preds = %lor.lhs.false.i.i42.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i50.i.i

if.end.i.i46.i.i:                                 ; preds = %lor.lhs.false.i.i42.i.i
  %flags.i.i43.i.i = getelementptr %struct.ata_port, ptr %25, i32 0, i32 19, i32 %143, i32 6
  %149 = ptrtoint ptr %flags.i.i43.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %flags.i.i43.i.i, align 4
  %and.i.i44.i.i = and i32 %150, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i44.i.i)
  %cmp.i.i45.i.i = icmp eq i32 %and.i.i44.i.i, 1
  br i1 %cmp.i.i45.i.i, label %if.end.i.i46.i.i.land.lhs.true.i50.i.i_crit_edge, label %if.end.i.i46.i.i.mv_unexpected_intr.exit.i.i_crit_edge

if.end.i.i46.i.i.mv_unexpected_intr.exit.i.i_crit_edge: ; preds = %if.end.i.i46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_unexpected_intr.exit.i.i

if.end.i.i46.i.i.land.lhs.true.i50.i.i_crit_edge: ; preds = %if.end.i.i46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i50.i.i

land.lhs.true.i50.i.i:                            ; preds = %if.end.i.i46.i.i.land.lhs.true.i50.i.i_crit_edge, %lor.lhs.false.i.i42.i.i.land.lhs.true.i50.i.i_crit_edge
  %tf.i47.i.i = getelementptr %struct.ata_port, ptr %25, i32 0, i32 19, i32 %143, i32 4
  %151 = ptrtoint ptr %tf.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %tf.i47.i.i, align 4
  %and.i48.i.i = and i32 %152, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48.i.i)
  %tobool3.not.i49.i.i = icmp eq i32 %and.i48.i.i, 0
  %spec.select.i.i.i = select i1 %tobool3.not.i49.i.i, ptr @.str.106, ptr @.str.108
  br label %mv_unexpected_intr.exit.i.i

mv_unexpected_intr.exit.i.i:                      ; preds = %land.lhs.true.i50.i.i, %if.end.i.i46.i.i.mv_unexpected_intr.exit.i.i_crit_edge, %if.else19.i.i.mv_unexpected_intr.exit.i.i_crit_edge
  %when.0.i.i.i = phi ptr [ %spec.select.i.i.i, %land.lhs.true.i50.i.i ], [ @.str.106, %if.else19.i.i.mv_unexpected_intr.exit.i.i_crit_edge ], [ @.str.106, %if.end.i.i46.i.i.mv_unexpected_intr.exit.i.i_crit_edge ]
  call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info.i.i.i, ptr noundef nonnull @.str.109, ptr noundef nonnull %when.0.i.i.i) #10
  %err_mask.i.i.i = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 25, i32 11, i32 2
  %153 = ptrtoint ptr %err_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %err_mask.i.i.i, align 4
  %or.i.i.i = or i32 %154, 256
  store i32 %or.i.i.i, ptr %err_mask.i.i.i, align 4
  %action.i.i.i = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 25, i32 11, i32 3
  %155 = ptrtoint ptr %action.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %action.i.i.i, align 4
  %or6.i.i.i = or i32 %156, 6
  store i32 %or6.i.i.i, ptr %action.i.i.i, align 4
  %call7.i.i.i = call i32 @ata_port_freeze(ptr noundef %25) #10
  br label %cleanup38.i

cleanup38.i:                                      ; preds = %mv_unexpected_intr.exit.i.i, %if.then17.i.i, %if.else.i.i.cleanup38.i_crit_edge, %mv_err_intr.exit.i, %if.end32.i.cleanup38.i_crit_edge, %cleanup.thread.i
  %handled.3.i = phi i32 [ %handled.2.i, %if.end32.i.cleanup38.i_crit_edge ], [ %handled.0118.i, %cleanup.thread.i ], [ %handled.2.i, %mv_err_intr.exit.i ], [ %handled.2.i, %if.else.i.i.cleanup38.i_crit_edge ], [ %handled.2.i, %if.then17.i.i ], [ %handled.2.i, %mv_unexpected_intr.exit.i.i ]
  %port.3.i = phi i32 [ %port.0119.i, %if.end32.i.cleanup38.i_crit_edge ], [ %add8.i, %cleanup.thread.i ], [ %port.0119.i, %mv_err_intr.exit.i ], [ %port.0119.i, %if.else.i.i.cleanup38.i_crit_edge ], [ %port.0119.i, %if.then17.i.i ], [ %port.0119.i, %mv_unexpected_intr.exit.i.i ]
  %inc46.i = add i32 %port.3.i, 1
  %157 = ptrtoint ptr %n_ports.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %n_ports.i, align 4
  %cmp.i = icmp ult i32 %inc46.i, %158
  br i1 %cmp.i, label %cleanup38.i.for.body.i_crit_edge, label %cleanup38.i.if.end17_crit_edge

cleanup38.i.if.end17_crit_edge:                   ; preds = %cleanup38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

cleanup38.i.for.body.i_crit_edge:                 ; preds = %cleanup38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end17:                                         ; preds = %cleanup38.i.if.end17_crit_edge, %if.end.i.if.end17_crit_edge, %if.then13, %if.end.if.end17_crit_edge
  %handled.0 = phi i32 [ 1, %if.then13 ], [ 0, %if.end.if.end17_crit_edge ], [ 0, %if.end.i.if.end17_crit_edge ], [ %handled.3.i, %cleanup38.i.if.end17_crit_edge ]
  br i1 %tobool.not, label %if.end17.if.end21_crit_edge, label %if.then19

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %159 = ptrtoint ptr %main_irq_mask to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %main_irq_mask, align 4
  %and.i39 = and i32 %160, 2097408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39)
  %tobool.not.i40 = icmp eq i32 %and.i39, 0
  %and1.i = and i32 %160, -171
  %spec.select.i = select i1 %tobool.not.i40, i32 %160, i32 %and1.i
  %and2.i = and i32 %spec.select.i, 2228224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %and5.i41 = and i32 %spec.select.i, -87041
  %mask.addr.1.i = select i1 %tobool3.not.i, i32 %spec.select.i, i32 %and5.i41
  %main_irq_mask_addr.i42 = getelementptr inbounds %struct.mv_host_priv, ptr %1, i32 0, i32 8
  %161 = ptrtoint ptr %main_irq_mask_addr.i42 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %main_irq_mask_addr.i42, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  call void @arm_heavy_mb() #10
  %163 = call i32 @llvm.bswap.i32(i32 %mask.addr.1.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %163) #10, !srcloc !330
  %164 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #10, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge
  call void @_raw_spin_unlock(ptr noundef %dev_instance) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.0)
  %tobool23.not = icmp ne i32 %handled.0, 0
  %cond = zext i1 %tobool23.not to i32
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mv_qc_defer(ptr nocapture noundef %qc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %private_data = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 48
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %pp_flags = getelementptr inbounds %struct.mv_port_priv, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %pp_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pp_flags, align 4
  %and = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %excl_link = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 29
  %10 = ptrtoint ptr %excl_link to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %excl_link, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %if.end12, label %if.then6, !prof !352

if.then6:                                         ; preds = %if.end
  %cmp = icmp eq ptr %3, %11
  br i1 %cmp, label %if.then8, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.then6
  %nr_active_links = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 22
  %12 = ptrtoint ptr %nr_active_links to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_active_links, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not = icmp eq i32 %13, 0
  br i1 %tobool9.not, label %if.end11, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %or = or i32 %15, 32
  store i32 %or, ptr %flags, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %nr_active_links13 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 22
  %16 = ptrtoint ptr %nr_active_links13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_active_links13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp14 = icmp eq i32 %17, 0
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %18 = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %.not = icmp eq i32 %18, 3
  br i1 %.not, label %if.then23, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then23:                                        ; preds = %if.end16
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %protocol, align 4
  %21 = and i8 %20, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.i.not = icmp eq i8 %21, 0
  br i1 %tobool.i.not, label %if.else25, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else25:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %excl_link to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %3, ptr %excl_link, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else25, %if.then23.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end11, %if.then8.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ 2, %if.else25 ], [ 2, %entry.cleanup_crit_edge ], [ 2, %if.then8.cleanup_crit_edge ], [ 2, %if.then6.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %if.then23.cleanup_crit_edge ], [ 2, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_qc_prep(ptr noundef %qc) #2 align 64 {
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
  %tf2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %protocol, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.139)
  switch i8 %5, label %entry.cleanup_crit_edge [
    i8 2, label %sw.bb
    i8 6, label %entry.sw.epilog_crit_edge
    i8 1, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %command = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 14
  %7 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %command, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %8)
  %cmp = icmp eq i8 %8, 6
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %9 = ptrtoint ptr %tf2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tf2, align 4
  %and.i = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb5.cleanup_crit_edge, label %land.lhs.true.i

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i:                                  ; preds = %sw.bb5
  %command.i.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 14
  %11 = ptrtoint ptr %command.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %command.i.i, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.140)
  switch i8 %12, label %land.lhs.true.i.cleanup_crit_edge [
    i8 -60, label %land.lhs.true.i.if.then.i_crit_edge
    i8 -59, label %land.lhs.true.i.if.then.i_crit_edge175
    i8 41, label %land.lhs.true.i.if.then.i_crit_edge176
    i8 57, label %land.lhs.true.i.if.then.i_crit_edge177
    i8 -50, label %land.lhs.true.i.if.then.i_crit_edge178
  ]

land.lhs.true.i.if.then.i_crit_edge178:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

land.lhs.true.i.if.then.i_crit_edge177:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

land.lhs.true.i.if.then.i_crit_edge176:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

land.lhs.true.i.if.then.i_crit_edge175:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge175, %land.lhs.true.i.if.then.i_crit_edge176, %land.lhs.true.i.if.then.i_crit_edge177, %land.lhs.true.i.if.then.i_crit_edge178
  %dev.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %multi_count.i = getelementptr inbounds %struct.ata_device, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %multi_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %multi_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %17)
  %cmp.i = icmp ugt i32 %17, 7
  br i1 %cmp.i, label %if.then3.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.i:                                       ; preds = %if.then.i
  %18 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.141)
  switch i8 %12, label %if.then3.i.cleanup_crit_edge [
    i8 -59, label %if.then3.i.if.end10.sink.split.i_crit_edge
    i8 -50, label %sw.bb5.i
    i8 57, label %if.then3.i.sw.bb8.i_crit_edge
  ]

if.then3.i.sw.bb8.i_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8.i

if.then3.i.if.end10.sink.split.i_crit_edge:       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.sink.split.i

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb5.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %and7.i = and i32 %10, -33
  %19 = ptrtoint ptr %tf2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and7.i, ptr %tf2, align 4
  br label %sw.bb8.i

sw.bb8.i:                                         ; preds = %sw.bb5.i, %if.then3.i.sw.bb8.i_crit_edge
  br label %if.end10.sink.split.i

if.end10.sink.split.i:                            ; preds = %sw.bb8.i, %if.then3.i.if.end10.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 52, %sw.bb8.i ], [ 48, %if.then3.i.if.end10.sink.split.i_crit_edge ]
  %20 = ptrtoint ptr %command.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink.i, ptr %command.i.i, align 1
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %21 = ptrtoint ptr %tf2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tf2, align 4
  %and = lshr i32 %22, 3
  %and.lobit = and i32 %and, 1
  %hw_tag = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 8
  %23 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hw_tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %24)
  %cmp11 = icmp ugt i32 %24, 31
  br i1 %cmp11, label %do.end, label %sw.epilog.if.end27_crit_edge, !prof !350

sw.epilog.if.end27_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2057, i32 noundef 9, ptr noundef null) #10
  br label %if.end27

if.end27:                                         ; preds = %do.end, %sw.epilog.if.end27_crit_edge
  %25 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hw_tag, align 4
  %shl = shl i32 %26, 1
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 128
  %pmp = getelementptr inbounds %struct.ata_link, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pmp, align 4
  %and38 = shl i32 %32, 12
  %33 = or i32 %shl, %and.lobit
  %34 = or i32 %and38, %33
  %35 = trunc i32 %34 to i16
  %conv42 = xor i16 %35, 1
  %req_idx = getelementptr inbounds %struct.mv_port_priv, ptr %3, i32 0, i32 6
  %36 = ptrtoint ptr %req_idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %req_idx, align 4
  %arrayidx = getelementptr %struct.mv_port_priv, ptr %3, i32 0, i32 5, i32 %26
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %3, align 4
  %arrayidx45 = getelementptr %struct.mv_crqb, ptr %42, i32 %37
  %43 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %40, ptr %arrayidx45, align 4
  %44 = load ptr, ptr %3, align 4
  %sg_addr_hi = getelementptr %struct.mv_crqb, ptr %44, i32 %37, i32 1
  %45 = ptrtoint ptr %sg_addr_hi to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %sg_addr_hi, align 4
  %46 = tail call i16 @llvm.bswap.i16(i16 %conv42)
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %3, align 4
  %ctrl_flags = getelementptr %struct.mv_crqb, ptr %48, i32 %37, i32 2
  %49 = ptrtoint ptr %ctrl_flags to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %46, ptr %ctrl_flags, align 4
  %50 = load ptr, ptr %3, align 4
  %ata_cmd = getelementptr %struct.mv_crqb, ptr %50, i32 %37, i32 3
  %command57 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 14
  %51 = ptrtoint ptr %command57 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %command57, align 1
  %53 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.142)
  switch i8 %52, label %do.end66 [
    i8 -56, label %if.end27.sw.bb59_crit_edge
    i8 37, label %if.end27.sw.bb59_crit_edge179
    i8 -54, label %if.end27.sw.bb59_crit_edge180
    i8 53, label %if.end27.sw.bb59_crit_edge181
    i8 61, label %if.end27.sw.bb59_crit_edge182
    i8 96, label %if.end27.sw.bb60_crit_edge
    i8 97, label %if.end27.sw.bb60_crit_edge183
  ]

if.end27.sw.bb60_crit_edge183:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb60

if.end27.sw.bb60_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb60

if.end27.sw.bb59_crit_edge182:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb59

if.end27.sw.bb59_crit_edge181:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb59

if.end27.sw.bb59_crit_edge180:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb59

if.end27.sw.bb59_crit_edge179:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb59

if.end27.sw.bb59_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb59

sw.bb59:                                          ; preds = %if.end27.sw.bb59_crit_edge, %if.end27.sw.bb59_crit_edge179, %if.end27.sw.bb59_crit_edge180, %if.end27.sw.bb59_crit_edge181, %if.end27.sw.bb59_crit_edge182
  %incdec.ptr = getelementptr i16, ptr %ata_cmd, i32 1
  %hob_nsect = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 4
  br label %sw.epilog70

sw.bb60:                                          ; preds = %if.end27.sw.bb60_crit_edge, %if.end27.sw.bb60_crit_edge183
  %incdec.ptr61 = getelementptr i16, ptr %ata_cmd, i32 1
  %hob_feature = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 3
  %54 = ptrtoint ptr %hob_feature to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %hob_feature, align 2
  %conv.i141 = zext i8 %55 to i16
  %or3.i143 = or i16 %conv.i141, 4352
  %56 = tail call i16 @llvm.bswap.i16(i16 %or3.i143) #10
  %57 = ptrtoint ptr %ata_cmd to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %ata_cmd, align 2
  %incdec.ptr62 = getelementptr i16, ptr %ata_cmd, i32 2
  %feature = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 8
  br label %sw.epilog70

do.end66:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %conv58 = zext i8 %52 to i32
  %print_id = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %58 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %print_id, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %59, ptr noundef nonnull @.str.11, i32 noundef %conv58) #13
  br label %cleanup

sw.epilog70:                                      ; preds = %sw.bb60, %sw.bb59
  %feature.sink = phi ptr [ %feature, %sw.bb60 ], [ %hob_nsect, %sw.bb59 ]
  %.sink = phi i16 [ 4352, %sw.bb60 ], [ 4608, %sw.bb59 ]
  %incdec.ptr61.sink = phi ptr [ %incdec.ptr61, %sw.bb60 ], [ %ata_cmd, %sw.bb59 ]
  %cw.0 = phi ptr [ %incdec.ptr62, %sw.bb60 ], [ %incdec.ptr, %sw.bb59 ]
  %60 = ptrtoint ptr %feature.sink to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %feature.sink, align 1
  %conv.i144 = zext i8 %61 to i16
  %or3.i146 = or i16 %.sink, %conv.i144
  %62 = tail call i16 @llvm.bswap.i16(i16 %or3.i146) #10
  %63 = ptrtoint ptr %incdec.ptr61.sink to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %incdec.ptr61.sink, align 2
  %incdec.ptr71 = getelementptr i16, ptr %cw.0, i32 1
  %nsect = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 9
  %64 = ptrtoint ptr %nsect to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %nsect, align 4
  %conv.i147 = zext i8 %65 to i16
  %or3.i149 = or i16 %conv.i147, 4608
  %66 = tail call i16 @llvm.bswap.i16(i16 %or3.i149) #10
  %67 = ptrtoint ptr %cw.0 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %cw.0, align 2
  %incdec.ptr72 = getelementptr i16, ptr %cw.0, i32 2
  %hob_lbal = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 5
  %68 = ptrtoint ptr %hob_lbal to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %hob_lbal, align 4
  %conv.i150 = zext i8 %69 to i16
  %or3.i152 = or i16 %conv.i150, 4864
  %70 = tail call i16 @llvm.bswap.i16(i16 %or3.i152) #10
  %71 = ptrtoint ptr %incdec.ptr71 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %incdec.ptr71, align 2
  %incdec.ptr73 = getelementptr i16, ptr %cw.0, i32 3
  %lbal = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 10
  %72 = ptrtoint ptr %lbal to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %lbal, align 1
  %conv.i153 = zext i8 %73 to i16
  %or3.i155 = or i16 %conv.i153, 4864
  %74 = tail call i16 @llvm.bswap.i16(i16 %or3.i155) #10
  %75 = ptrtoint ptr %incdec.ptr72 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %incdec.ptr72, align 2
  %incdec.ptr74 = getelementptr i16, ptr %cw.0, i32 4
  %hob_lbam = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 6
  %76 = ptrtoint ptr %hob_lbam to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %hob_lbam, align 1
  %conv.i156 = zext i8 %77 to i16
  %or3.i158 = or i16 %conv.i156, 5120
  %78 = tail call i16 @llvm.bswap.i16(i16 %or3.i158) #10
  %79 = ptrtoint ptr %incdec.ptr73 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %incdec.ptr73, align 2
  %incdec.ptr75 = getelementptr i16, ptr %cw.0, i32 5
  %lbam = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 11
  %80 = ptrtoint ptr %lbam to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %lbam, align 2
  %conv.i159 = zext i8 %81 to i16
  %or3.i161 = or i16 %conv.i159, 5120
  %82 = tail call i16 @llvm.bswap.i16(i16 %or3.i161) #10
  %83 = ptrtoint ptr %incdec.ptr74 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %incdec.ptr74, align 2
  %incdec.ptr76 = getelementptr i16, ptr %cw.0, i32 6
  %hob_lbah = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 7
  %84 = ptrtoint ptr %hob_lbah to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %hob_lbah, align 2
  %conv.i162 = zext i8 %85 to i16
  %or3.i164 = or i16 %conv.i162, 5376
  %86 = tail call i16 @llvm.bswap.i16(i16 %or3.i164) #10
  %87 = ptrtoint ptr %incdec.ptr75 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %incdec.ptr75, align 2
  %incdec.ptr77 = getelementptr i16, ptr %cw.0, i32 7
  %lbah = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 12
  %88 = ptrtoint ptr %lbah to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %lbah, align 1
  %conv.i165 = zext i8 %89 to i16
  %or3.i167 = or i16 %conv.i165, 5376
  %90 = tail call i16 @llvm.bswap.i16(i16 %or3.i167) #10
  %91 = ptrtoint ptr %incdec.ptr76 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %incdec.ptr76, align 2
  %incdec.ptr78 = getelementptr i16, ptr %cw.0, i32 8
  %device = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 13
  %92 = ptrtoint ptr %device to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %device, align 4
  %conv.i168 = zext i8 %93 to i16
  %or3.i170 = or i16 %conv.i168, 5632
  %94 = tail call i16 @llvm.bswap.i16(i16 %or3.i170) #10
  %95 = ptrtoint ptr %incdec.ptr77 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %incdec.ptr77, align 2
  %96 = ptrtoint ptr %command57 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %command57, align 1
  %conv.i171 = zext i8 %97 to i16
  %or3.i173 = or i16 %conv.i171, -26880
  %98 = tail call i16 @llvm.bswap.i16(i16 %or3.i173) #10
  %99 = ptrtoint ptr %incdec.ptr78 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %incdec.ptr78, align 2
  %flags81 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %100 = ptrtoint ptr %flags81 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %flags81, align 4
  %and82 = and i32 %101, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %sw.epilog70.cleanup_crit_edge, label %if.end85

sw.epilog70.cleanup_crit_edge:                    ; preds = %sw.epilog70
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end85:                                         ; preds = %sw.epilog70
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mv_fill_sg(ptr noundef %qc)
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %sw.epilog70.cleanup_crit_edge, %do.end66, %if.end10.sink.split.i, %if.then3.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 128, %do.end66 ], [ 0, %if.end85 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.epilog70.cleanup_crit_edge ], [ 0, %sw.bb5.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %if.then3.i.cleanup_crit_edge ], [ 0, %if.end10.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_qc_issue(ptr noundef %qc) #2 align 64 {
entry:
  %fis.i = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 131072
  %10 = shl i32 %9, 14
  %mul.i.i.i.i = and i32 %10, -65536
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %mul.i.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr1.i.i.i.i, i32 8192
  %and.i.i.i = shl i32 %9, 13
  %mul.i.i = and i32 %and.i.i.i, 24576
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data, align 4
  %pp_flags = getelementptr inbounds %struct.mv_port_priv, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %pp_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pp_flags, align 4
  %and = and i32 %14, -17
  store i32 %and, ptr %pp_flags, align 4
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %protocol, align 4
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.143)
  switch i8 %16, label %entry.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 6, label %entry.sw.bb7_crit_edge
    i8 1, label %sw.bb14
    i8 0, label %entry.sw.bb48_crit_edge
    i8 9, label %entry.sw.bb48_crit_edge145
    i8 8, label %entry.sw.bb48_crit_edge146
  ]

entry.sw.bb48_crit_edge146:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb48

entry.sw.bb48_crit_edge145:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb48

entry.sw.bb48_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb48

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %command = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 14
  %18 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %command, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %19)
  %cmp = icmp eq i8 %19, 6
  br i1 %cmp, label %if.then, label %sw.bb.sw.bb7_crit_edge

sw.bb.sw.bb7_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

if.then:                                          ; preds = %sw.bb
  %ops = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %bmdma_setup = getelementptr inbounds %struct.ata_port_operations, ptr %21, i32 0, i32 49
  %22 = ptrtoint ptr %bmdma_setup to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bmdma_setup, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.then.cleanup82_crit_edge, label %if.then.sw.epilog_crit_edge

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then.cleanup82_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup82

sw.bb7:                                           ; preds = %sw.bb.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %16)
  %cmp.i = icmp eq i8 %16, 6
  %conv1.i = zext i1 %cmp.i to i32
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and3.i = lshr i32 %14, 1
  %and3.lobit.i = and i32 %and3.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.lobit.i, i32 %conv1.i)
  %cmp6.not.i = icmp eq i32 %and3.lobit.i, %conv1.i
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp6.not.i
  br i1 %or.cond.i, label %sw.bb7.if.end9.i_crit_edge, label %if.then8.i

sw.bb7.if.end9.i_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then8.i:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mv_stop_edma(ptr noundef %1) #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %sw.bb7.if.end9.i_crit_edge
  %24 = ptrtoint ptr %pp_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pp_flags, align 4
  %and11.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end9.i.mv_start_edma.exit_crit_edge

if.end9.i.mv_start_edma.exit_crit_edge:           ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_start_edma.exit

if.then13.i:                                      ; preds = %if.end9.i
  tail call fastcc void @mv_edma_cfg(ptr noundef %1, i32 noundef %conv1.i, i32 noundef 1) #10
  %req_idx.i.i = getelementptr inbounds %struct.mv_port_priv, ptr %12, i32 0, i32 6
  %26 = ptrtoint ptr %req_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %req_idx.i.i, align 4
  %and.i.i = and i32 %27, 31
  store i32 %and.i.i, ptr %req_idx.i.i, align 4
  %shl.i.i = shl nuw nsw i32 %and.i.i, 5
  %crqb_dma.i.i = getelementptr inbounds %struct.mv_port_priv, ptr %12, i32 0, i32 1
  %28 = ptrtoint ptr %crqb_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %crqb_dma.i.i, align 4
  %and2.i.i = and i32 %29, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %if.then13.i.if.end.i.i_crit_edge, label %do.end.i.i, !prof !352

if.then13.i.if.end.i.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1004, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then13.i.if.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !355
  tail call void @arm_heavy_mb() #10
  %add.ptr.i.i118 = getelementptr i8, ptr %add.ptr2.i.i, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i118, i32 0) #10, !srcloc !330
  %30 = ptrtoint ptr %crqb_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %crqb_dma.i.i, align 4
  %and28.i.i = and i32 %31, -1024
  %or.i.i = or i32 %and28.i.i, %shl.i.i
  %add.ptr29.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i.i, i32 %32) #10, !srcloc !330
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29.i.i) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  %add.ptr30.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %34 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.i, i32 %34) #10, !srcloc !330
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i.i) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  %resp_idx.i.i = getelementptr inbounds %struct.mv_port_priv, ptr %12, i32 0, i32 7
  %36 = ptrtoint ptr %resp_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %resp_idx.i.i, align 4
  %and31.i.i = and i32 %37, 31
  store i32 %and31.i.i, ptr %resp_idx.i.i, align 4
  %crpb_dma.i.i = getelementptr inbounds %struct.mv_port_priv, ptr %12, i32 0, i32 3
  %38 = ptrtoint ptr %crpb_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %crpb_dma.i.i, align 4
  %and35.i.i = and i32 %39, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i.i)
  %tobool36.not.i.i = icmp eq i32 %and35.i.i, 0
  br i1 %tobool36.not.i.i, label %if.end.i.i.mv_set_edma_ptrs.exit.i_crit_edge, label %do.end52.i.i, !prof !352

if.end.i.i.mv_set_edma_ptrs.exit.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_set_edma_ptrs.exit.i

do.end52.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1016, i32 noundef 9, ptr noundef null) #10
  br label %mv_set_edma_ptrs.exit.i

mv_set_edma_ptrs.exit.i:                          ; preds = %do.end52.i.i, %if.end.i.i.mv_set_edma_ptrs.exit.i_crit_edge
  %shl33.i.i = shl nuw nsw i32 %and31.i.i, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !356
  tail call void @arm_heavy_mb() #10
  %add.ptr72.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72.i.i, i32 0) #10, !srcloc !330
  %add.ptr73.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %40 = shl nuw i32 %and31.i.i, 27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.i.i, i32 %40) #10, !srcloc !330
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73.i.i) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  %42 = ptrtoint ptr %crpb_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %crpb_dma.i.i, align 4
  %and75.i.i = and i32 %43, -256
  %or76.i.i = or i32 %and75.i.i, %shl33.i.i
  %add.ptr77.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %44 = tail call i32 @llvm.bswap.i32(i32 %or76.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77.i.i, i32 %44) #10, !srcloc !330
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77.i.i) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  tail call fastcc void @mv_clear_and_enable_port_irqs(ptr noundef %1, ptr noundef %add.ptr2.i.i, i32 noundef 3) #10
  %add.ptr.i = getelementptr i8, ptr %add.ptr2.i.i, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #10, !srcloc !330
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  %47 = ptrtoint ptr %pp_flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pp_flags, align 4
  %or.i = or i32 %48, 1
  store i32 %or.i, ptr %pp_flags, align 4
  br label %mv_start_edma.exit

mv_start_edma.exit:                               ; preds = %mv_set_edma_ptrs.exit.i, %if.end9.i.mv_start_edma.exit_crit_edge
  %req_idx = getelementptr inbounds %struct.mv_port_priv, ptr %12, i32 0, i32 6
  %49 = ptrtoint ptr %req_idx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %req_idx, align 4
  %add = add i32 %50, 1
  %and10 = and i32 %add, 31
  store i32 %and10, ptr %req_idx, align 4
  %shl = shl nuw nsw i32 %and10, 5
  %crqb_dma = getelementptr inbounds %struct.mv_port_priv, ptr %12, i32 0, i32 1
  %51 = ptrtoint ptr %crqb_dma to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %crqb_dma, align 4
  %and13 = and i32 %52, -1024
  %or = or i32 %and13, %shl
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %53 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %53) #10, !srcloc !330
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %cleanup82

sw.bb14:                                          ; preds = %entry
  %55 = load i32, ptr @mv_qc_issue.limit_warnings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp15 = icmp sgt i32 %55, 0
  br i1 %cmp15, label %land.lhs.true, label %sw.bb14.sw.bb48_crit_edge

sw.bb14.sw.bb48_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb48

land.lhs.true:                                    ; preds = %sw.bb14
  %nbytes = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 13
  %56 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nbytes, align 4
  %sect_size = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 12
  %58 = ptrtoint ptr %sect_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sect_size, align 4
  %div = udiv i32 %57, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div)
  %cmp17 = icmp ugt i32 %div, 1
  br i1 %cmp17, label %if.then19, label %land.lhs.true.sw.bb48_crit_edge

land.lhs.true.sw.bb48_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb48

if.then19:                                        ; preds = %land.lhs.true
  %dec = add nsw i32 %55, -1
  store i32 %dec, ptr @mv_qc_issue.limit_warnings, align 4
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 128
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 128
  %nr_pmp_links.i = getelementptr inbounds %struct.ata_port, ptr %65, i32 0, i32 27
  %66 = ptrtoint ptr %nr_pmp_links.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nr_pmp_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.i119.not = icmp eq i32 %67, 0
  br i1 %cmp.i119.not, label %lor.lhs.false, label %if.then19.do.end_crit_edge

if.then19.do.end_crit_edge:                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %if.then19
  %slave_link = getelementptr inbounds %struct.ata_port, ptr %65, i32 0, i32 26
  %68 = ptrtoint ptr %slave_link to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %slave_link, align 128
  %tobool26.not = icmp eq ptr %69, null
  br i1 %tobool26.not, label %do.end37, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.then19.do.end_crit_edge
  %print_id = getelementptr inbounds %struct.ata_port, ptr %65, i32 0, i32 5
  %70 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %63, i32 0, i32 1
  %72 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pmp, align 4
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %71, i32 noundef %73) #13
  br label %sw.bb48

do.end37:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %print_id42 = getelementptr inbounds %struct.ata_port, ptr %65, i32 0, i32 5
  %74 = ptrtoint ptr %print_id42 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %print_id42, align 4
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %75) #13
  br label %sw.bb48

sw.bb48:                                          ; preds = %do.end37, %do.end, %land.lhs.true.sw.bb48_crit_edge, %sw.bb14.sw.bb48_crit_edge, %entry.sw.bb48_crit_edge, %entry.sw.bb48_crit_edge145, %entry.sw.bb48_crit_edge146
  %flags = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 3
  %76 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags, align 4
  %and49 = and i32 %77, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %sw.bb48.sw.epilog_crit_edge, label %if.then51

sw.bb48.sw.epilog_crit_edge:                      ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then51:                                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tf, align 4
  %or54 = or i32 %79, 64
  store i32 %or54, ptr %tf, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then51, %sw.bb48.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %80 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tf, align 4
  %and58 = and i32 %81, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  %. = select i1 %tobool59.not, i32 3, i32 1
  tail call fastcc void @mv_stop_edma(ptr noundef %1)
  %82 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %host.i, align 4
  %private_data.i.i121 = getelementptr inbounds %struct.ata_host, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %private_data.i.i121 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %private_data.i.i121, align 4
  %base.i.i122 = getelementptr inbounds %struct.mv_host_priv, ptr %85, i32 0, i32 6
  %86 = ptrtoint ptr %base.i.i122 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i.i122, align 4
  %88 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %port_no.i, align 4
  %add.ptr.i.i.i.i124 = getelementptr i8, ptr %87, i32 131072
  %90 = shl i32 %89, 14
  %mul.i.i.i.i125 = and i32 %90, -65536
  %add.ptr1.i.i.i.i126 = getelementptr i8, ptr %add.ptr.i.i.i.i124, i32 %mul.i.i.i.i125
  %add.ptr.i.i127 = getelementptr i8, ptr %add.ptr1.i.i.i.i126, i32 8192
  %and.i.i.i128 = shl i32 %89, 13
  %mul.i.i129 = and i32 %and.i.i.i128, 24576
  %add.ptr2.i.i130 = getelementptr i8, ptr %add.ptr.i.i127, i32 %mul.i.i129
  tail call fastcc void @mv_clear_and_enable_port_irqs(ptr noundef %1, ptr noundef %add.ptr2.i.i130, i32 noundef %.)
  %dev65 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %91 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev65, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 128
  %pmp67 = getelementptr inbounds %struct.ata_link, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %pmp67 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %pmp67, align 4
  %flags.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 3
  %97 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flags.i.i, align 4
  %and.i.i131 = and i32 %98, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i131)
  %tobool.i.not.i = icmp eq i32 %and.i.i131, 0
  br i1 %tobool.i.not.i, label %sw.epilog.mv_pmp_select.exit_crit_edge, label %if.then.i

sw.epilog.mv_pmp_select.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_pmp_select.exit

if.then.i:                                        ; preds = %sw.epilog
  %99 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %host.i, align 4
  %private_data.i.i.i = getelementptr inbounds %struct.ata_host, ptr %100, i32 0, i32 5
  %101 = ptrtoint ptr %private_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %private_data.i.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %102, i32 0, i32 6
  %103 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base.i.i.i, align 4
  %105 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %port_no.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %104, i32 131072
  %107 = shl i32 %106, 14
  %mul.i.i.i.i.i = and i32 %107, -65536
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %mul.i.i.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr1.i.i.i.i.i, i32 8192
  %and.i.i.i.i = shl i32 %106, 13
  %mul.i.i.i = and i32 %and.i.i.i.i, 24576
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %add.ptr.i132 = getelementptr i8, ptr %add.ptr2.i.i.i, i32 836
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i132) #10, !srcloc !326
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !357
  %and.i133 = and i32 %109, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i133, i32 %96)
  %cmp.not.i = icmp eq i32 %and.i133, %96
  br i1 %cmp.not.i, label %if.then.i.mv_pmp_select.exit_crit_edge, label %if.then4.i

if.then.i.mv_pmp_select.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_pmp_select.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %and5.i = and i32 %109, -16
  %or.i134 = or i32 %and5.i, %96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %110 = tail call i32 @llvm.bswap.i32(i32 %or.i134) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 %110) #10, !srcloc !330
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i132) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %mv_pmp_select.exit

mv_pmp_select.exit:                               ; preds = %if.then4.i, %if.then.i.mv_pmp_select.exit_crit_edge, %sw.epilog.mv_pmp_select.exit_crit_edge
  %command69 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 14
  %112 = ptrtoint ptr %command69 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %command69, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %113)
  %cmp71 = icmp eq i8 %113, 47
  br i1 %cmp71, label %if.then73, label %mv_pmp_select.exit.if.end80_crit_edge

mv_pmp_select.exit.if.end80_crit_edge:            ; preds = %mv_pmp_select.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then73:                                        ; preds = %mv_pmp_select.exit
  %114 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %host.i, align 4
  %private_data74 = getelementptr inbounds %struct.ata_host, ptr %115, i32 0, i32 5
  %116 = ptrtoint ptr %private_data74 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %private_data74, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %117, align 4
  %and75 = and i32 %119, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.then73.if.end80_crit_edge, label %if.then77

if.then73.if.end80_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then77:                                        ; preds = %if.then73
  %120 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %qc, align 4
  %private_data.i = getelementptr inbounds %struct.ata_port, ptr %121, i32 0, i32 48
  %122 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %private_data.i, align 4
  %124 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev65, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 128
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fis.i) #10
  %128 = getelementptr inbounds [5 x i32], ptr %fis.i, i32 0, i32 1
  %129 = getelementptr inbounds [5 x i32], ptr %fis.i, i32 0, i32 2
  %130 = getelementptr inbounds [5 x i32], ptr %fis.i, i32 0, i32 3
  %131 = getelementptr inbounds [5 x i32], ptr %fis.i, i32 0, i32 4
  %pmp.i = getelementptr inbounds %struct.ata_link, ptr %127, i32 0, i32 1
  %132 = call ptr @memset(ptr %fis.i, i32 255, i32 20)
  %133 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %pmp.i, align 4
  %conv.i = trunc i32 %134 to i8
  call void @ata_tf_to_fis(ptr noundef %tf, i8 noundef zeroext %conv.i, i32 noundef 1, ptr noundef nonnull %fis.i) #10
  %host.i.i.i = getelementptr inbounds %struct.ata_port, ptr %121, i32 0, i32 31
  %135 = ptrtoint ptr %host.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %host.i.i.i, align 4
  %private_data.i.i.i.i = getelementptr inbounds %struct.ata_host, ptr %136, i32 0, i32 5
  %137 = ptrtoint ptr %private_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %private_data.i.i.i.i, align 4
  %base.i.i.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %138, i32 0, i32 6
  %139 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %base.i.i.i.i, align 4
  %port_no.i.i.i = getelementptr inbounds %struct.ata_port, ptr %121, i32 0, i32 7
  %141 = ptrtoint ptr %port_no.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %port_no.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %140, i32 131072
  %143 = shl i32 %142, 14
  %mul.i.i.i.i.i.i = and i32 %143, -65536
  %add.ptr1.i.i.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i.i, i32 %mul.i.i.i.i.i.i
  %add.ptr.i.i.i.i135 = getelementptr i8, ptr %add.ptr1.i.i.i.i.i.i, i32 8192
  %and.i.i.i.i.i = shl i32 %142, 13
  %mul.i.i.i.i136 = and i32 %and.i.i.i.i.i, 24576
  %add.ptr2.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i135, i32 %mul.i.i.i.i136
  %add.ptr.i.i137 = getelementptr i8, ptr %add.ptr2.i.i.i.i, i32 836
  %144 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i137) #10, !srcloc !326
  %145 = lshr i32 %144, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !358
  %and.i.i138 = and i32 %145, 15
  %or.i.i139 = or i32 %and.i.i138, 256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  call void @arm_heavy_mb() #10
  %146 = call i32 @llvm.bswap.i32(i32 %or.i.i139) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i137, i32 %146) #10, !srcloc !330
  %147 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i137) #10, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr2.i.i.i.i, i32 860
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !359
  call void @arm_heavy_mb() #10
  %148 = ptrtoint ptr %fis.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %fis.i, align 4
  %150 = call i32 @llvm.bswap.i32(i32 %149) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %150) #10, !srcloc !330
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !359
  call void @arm_heavy_mb() #10
  %151 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %128, align 4
  %153 = call i32 @llvm.bswap.i32(i32 %152) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %153) #10, !srcloc !330
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !359
  call void @arm_heavy_mb() #10
  %154 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %129, align 4
  %156 = call i32 @llvm.bswap.i32(i32 %155) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %156) #10, !srcloc !330
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !359
  call void @arm_heavy_mb() #10
  %157 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %130, align 4
  %159 = call i32 @llvm.bswap.i32(i32 %158) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %159) #10, !srcloc !330
  %or5.i.i = or i32 %and.i.i138, 768
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  call void @arm_heavy_mb() #10
  %160 = call i32 @llvm.bswap.i32(i32 %or5.i.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i137, i32 %160) #10, !srcloc !330
  %161 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i137) #10, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  %162 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %131, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  call void @arm_heavy_mb() #10
  %164 = call i32 @llvm.bswap.i32(i32 %163) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %164) #10, !srcloc !330
  %165 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #10, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  %add.ptr12.i.i = getelementptr i8, ptr %add.ptr2.i.i.i.i, i32 844
  br label %do.body9.i.i

do.body9.i.i:                                     ; preds = %do.body9.i.i.do.body9.i.i_crit_edge, %if.then77
  %timeout.0.i.i = phi i32 [ 200, %if.then77 ], [ %dec.i.i, %do.body9.i.i.do.body9.i.i_crit_edge ]
  %166 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i.i) #10, !srcloc !326
  %167 = call i32 @llvm.bswap.i32(i32 %166) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !360
  %and17.i.i = and i32 %167, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool.not.i.i140 = icmp ne i32 %and17.i.i, 0
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool18.not.i.i = icmp eq i32 %dec.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i140, i1 true, i1 %tobool18.not.i.i
  br i1 %or.cond.i.i, label %do.end19.i.i, label %do.body9.i.i.do.body9.i.i_crit_edge

do.body9.i.i.do.body9.i.i_crit_edge:              ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9.i.i

do.end19.i.i:                                     ; preds = %do.body9.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i137, i32 %144) #10, !srcloc !330
  %168 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i137) #10, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  %and21.i.i = and i32 %167, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and21.i.i)
  %cmp22.not.i.i = icmp eq i32 %and21.i.i, 4096
  br i1 %cmp22.not.i.i, label %if.end.i, label %mv_send_fis.exit.i

mv_send_fis.exit.i:                               ; preds = %do.end19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %print_id.i.i = getelementptr inbounds %struct.ata_port, ptr %121, i32 0, i32 5
  %169 = ptrtoint ptr %print_id.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %print_id.i.i, align 4
  %call27.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %170, ptr noundef nonnull @.str.20, i32 noundef %167) #13
  br label %cleanup

if.end.i:                                         ; preds = %do.end19.i.i
  %171 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %protocol, align 4
  %173 = zext i8 %172 to i64
  call void @__sanitizer_cov_trace_switch(i64 %173, ptr @__sancov_gen_cov_switch_values.144)
  switch i8 %172, label %sw.default.i [
    i8 9, label %sw.bb.i
    i8 8, label %if.end.i.sw.bb6.i_crit_edge
    i8 1, label %sw.bb7.i
  ]

if.end.i.sw.bb6.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %pp_flags.i141 = getelementptr inbounds %struct.mv_port_priv, ptr %123, i32 0, i32 8
  %174 = ptrtoint ptr %pp_flags.i141 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %pp_flags.i141, align 4
  %or.i142 = or i32 %175, 16
  store i32 %or.i142, ptr %pp_flags.i141, align 4
  br label %sw.bb6.i

sw.bb6.i:                                         ; preds = %sw.bb.i, %if.end.i.sw.bb6.i_crit_edge
  %hsm_task_state.i = getelementptr inbounds %struct.ata_port, ptr %121, i32 0, i32 37
  %176 = ptrtoint ptr %hsm_task_state.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 1, ptr %hsm_task_state.i, align 4
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end.i
  %pp_flags8.i = getelementptr inbounds %struct.mv_port_priv, ptr %123, i32 0, i32 8
  %177 = ptrtoint ptr %pp_flags8.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %pp_flags8.i, align 4
  %or9.i = or i32 %178, 16
  store i32 %or9.i, ptr %pp_flags8.i, align 4
  %179 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %tf, align 4
  %and.i143 = and i32 %180, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i143)
  %tobool11.not.i = icmp eq i32 %and.i143, 0
  %hsm_task_state14.i = getelementptr inbounds %struct.ata_port, ptr %121, i32 0, i32 37
  br i1 %tobool11.not.i, label %if.else.i, label %if.then12.i

if.then12.i:                                      ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #12
  %181 = ptrtoint ptr %hsm_task_state14.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 1, ptr %hsm_task_state14.i, align 4
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #12
  %182 = ptrtoint ptr %hsm_task_state14.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 2, ptr %hsm_task_state14.i, align 4
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %hsm_task_state16.i = getelementptr inbounds %struct.ata_port, ptr %121, i32 0, i32 37
  %183 = ptrtoint ptr %hsm_task_state16.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 3, ptr %hsm_task_state16.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %if.else.i, %if.then12.i, %sw.bb6.i
  %184 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %tf, align 4
  %and19.i = and i32 %185, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %sw.epilog.i.cleanup_crit_edge, label %if.then21.i

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then21.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @ata_sff_queue_pio_task(ptr noundef %127, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then21.i, %sw.epilog.i.cleanup_crit_edge, %mv_send_fis.exit.i
  %retval.0.i = phi i32 [ 256, %mv_send_fis.exit.i ], [ 0, %if.then21.i ], [ 0, %sw.epilog.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fis.i) #10
  br label %cleanup82

if.end80:                                         ; preds = %if.then73.if.end80_crit_edge, %mv_pmp_select.exit.if.end80_crit_edge
  %call81 = call i32 @ata_bmdma_qc_issue(ptr noundef %qc) #10
  br label %cleanup82

cleanup82:                                        ; preds = %if.end80, %cleanup, %mv_start_edma.exit, %if.then.cleanup82_crit_edge
  %retval.1 = phi i32 [ %call81, %if.end80 ], [ %retval.0.i, %cleanup ], [ 0, %mv_start_edma.exit ], [ 256, %if.then.cleanup82_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_eh_freeze(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mv_stop_edma(ptr noundef %ap)
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %0 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_no.i, align 4
  %shr.i.i = lshr i32 %1, 2
  %mul.i = mul i32 %shr.i.i, 9
  %and.i.i = shl i32 %1, 1
  %mul2.i = and i32 %and.i.i, 6
  %add.i = add i32 %mul.i, %mul2.i
  %shl.i = shl i32 3, %add.i
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i.i, align 4
  %main_irq_mask.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %main_irq_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %main_irq_mask.i.i, align 4
  %neg.i.i = xor i32 %shl.i, -1
  %and.i8.i = and i32 %7, %neg.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i8.i, i32 %7)
  %cmp.not.i.i = icmp eq i32 %and.i8.i, %7
  br i1 %cmp.not.i.i, label %entry.mv_enable_port_irqs.exit_crit_edge, label %if.then.i.i

entry.mv_enable_port_irqs.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_enable_port_irqs.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %main_irq_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and.i8.i, ptr %main_irq_mask.i.i, align 4
  %and.i.i.i = and i32 %and.i8.i, 2097408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %and1.i.i.i = and i32 %and.i8.i, -171
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, i32 %and.i8.i, i32 %and1.i.i.i
  %and2.i.i.i = and i32 %spec.select.i.i.i, 2228224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  %and5.i.i.i = and i32 %spec.select.i.i.i, -87041
  %mask.addr.1.i.i.i = select i1 %tobool3.not.i.i.i, i32 %spec.select.i.i.i, i32 %and5.i.i.i
  %main_irq_mask_addr.i.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 8
  %9 = ptrtoint ptr %main_irq_mask_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %main_irq_mask_addr.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %mask.addr.1.i.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %11) #10, !srcloc !330
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %mv_enable_port_irqs.exit

mv_enable_port_irqs.exit:                         ; preds = %if.then.i.i, %entry.mv_enable_port_irqs.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_eh_thaw(ptr nocapture noundef readonly %ap) #2 align 64 {
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
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %4 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no, align 4
  %and.i = and i32 %5, 3
  %base = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 131072
  %8 = shl i32 %5, 14
  %mul.i.i = and i32 %8, -65536
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr.i.i8 = getelementptr i8, ptr %add.ptr1.i.i, i32 8192
  %and.i.i.i = shl i32 %5, 13
  %mul.i.i9 = and i32 %and.i.i.i, 24576
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i8, i32 %mul.i.i9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !361
  tail call void @arm_heavy_mb() #10
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !330
  %shl = shl nuw nsw i32 257, %and.i
  %neg = xor i32 %shl, -1
  %add.ptr3 = getelementptr i8, ptr %add.ptr1.i.i, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %9 = tail call i32 @llvm.bswap.i32(i32 %neg) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %9) #10, !srcloc !330
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  %11 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_no, align 4
  %shr.i.i = lshr i32 %12, 2
  %mul.i = mul i32 %shr.i.i, 9
  %and.i.i = shl i32 %12, 1
  %mul2.i = and i32 %and.i.i, 6
  %add.i = add i32 %mul.i, %mul2.i
  %shl.i = shl i32 3, %add.i
  %shl3.i = shl nuw i32 1, %add.i
  %13 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host, align 4
  %private_data.i.i12 = getelementptr inbounds %struct.ata_host, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %private_data.i.i12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private_data.i.i12, align 4
  %main_irq_mask.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %main_irq_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %main_irq_mask.i.i, align 4
  %neg.i.i = xor i32 %shl.i, -1
  %and.i8.i = and i32 %18, %neg.i.i
  %or.i.i = or i32 %and.i8.i, %shl3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %18)
  %cmp.not.i.i = icmp eq i32 %or.i.i, %18
  br i1 %cmp.not.i.i, label %entry.mv_enable_port_irqs.exit_crit_edge, label %if.then.i.i

entry.mv_enable_port_irqs.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_enable_port_irqs.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %main_irq_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i.i, ptr %main_irq_mask.i.i, align 4
  %and.i.i.i13 = and i32 %or.i.i, 2097408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i13)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i13, 0
  %and1.i.i.i = and i32 %or.i.i, -171
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, i32 %or.i.i, i32 %and1.i.i.i
  %and2.i.i.i = and i32 %spec.select.i.i.i, 2228224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  %and5.i.i.i = and i32 %spec.select.i.i.i, -87041
  %mask.addr.1.i.i.i = select i1 %tobool3.not.i.i.i, i32 %spec.select.i.i.i, i32 %and5.i.i.i
  %main_irq_mask_addr.i.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %16, i32 0, i32 8
  %20 = ptrtoint ptr %main_irq_mask_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %main_irq_mask_addr.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %22 = tail call i32 @llvm.bswap.i32(i32 %mask.addr.1.i.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %22) #10, !srcloc !330
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %mv_enable_port_irqs.exit

mv_enable_port_irqs.exit:                         ; preds = %if.then.i.i, %entry.mv_enable_port_irqs.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_hardreset(ptr noundef %link, ptr nocapture noundef readnone %class, i32 noundef %deadline) #2 align 64 {
entry:
  %sstatus = alloca i32, align 4
  %online = alloca i8, align 1
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
  %private_data2 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %6 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data2, align 4
  %base = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sstatus) #10
  %10 = ptrtoint ptr %sstatus to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %sstatus, align 4, !annotation !348
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %online) #10
  %11 = ptrtoint ptr %online to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %online, align 1, !annotation !348
  %port_no = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_no, align 4
  tail call fastcc void @mv_reset_channel(ptr noundef %5, ptr noundef %9, i32 noundef %13)
  %pp_flags = getelementptr inbounds %struct.mv_port_priv, ptr %7, i32 0, i32 8
  %14 = ptrtoint ptr %pp_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pp_flags, align 4
  %and4 = and i32 %15, -24
  store i32 %and4, ptr %pp_flags, align 4
  %flags.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 12, i32 0, i32 5
  %add14.neg = add i32 %deadline, -100
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %attempts.0 = phi i32 [ 0, %entry ], [ %attempts.2.ph, %do.cond.do.body_crit_edge ]
  %extra.0 = phi i32 [ 0, %entry ], [ %extra.2.ph, %do.cond.do.body_crit_edge ]
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %sata_deb_timing_normal.sata_deb_timing_hotplug.i = select i1 %tobool.not.i, ptr @sata_deb_timing_normal, ptr @sata_deb_timing_hotplug
  %add = add i32 %extra.0, %deadline
  %call5 = call i32 @sata_link_hardreset(ptr noundef %link, ptr noundef nonnull %sata_deb_timing_normal.sata_deb_timing_hotplug.i, i32 noundef %add, ptr noundef nonnull %online, ptr noundef null) #10
  %18 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %online, align 1, !range !362
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  %spec.select = select i1 %tobool.not, i32 %call5, i32 -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool6.not = icmp eq i32 %spec.select, 0
  br i1 %tobool6.not, label %if.end, label %do.body.cleanup23_crit_edge

do.body.cleanup23_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup23

if.end:                                           ; preds = %do.body
  %call7 = call i32 @sata_scr_read(ptr noundef %link, i32 noundef 0, ptr noundef nonnull %sstatus) #10
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %5, align 4
  %and8 = and i32 %21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true, label %if.end.do.condthread-pre-split_crit_edge

if.end.do.condthread-pre-split_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.condthread-pre-split

land.lhs.true:                                    ; preds = %if.end
  %inc = add i32 %attempts.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc)
  %cmp = icmp sgt i32 %inc, 4
  br i1 %cmp, label %land.lhs.true10, label %land.lhs.true.do.condthread-pre-split_crit_edge

land.lhs.true.do.condthread-pre-split_crit_edge:  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.condthread-pre-split

land.lhs.true10:                                  ; preds = %land.lhs.true
  %22 = ptrtoint ptr %sstatus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sstatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 289, i32 %23)
  %cmp11 = icmp eq i32 %23, 289
  br i1 %cmp11, label %if.then12, label %land.lhs.true10.do.cond_crit_edge

land.lhs.true10.do.cond_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %host, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %private_data.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i, align 4
  %30 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port_no, align 4
  %32 = shl i32 %31, 14
  %mul.i.i.i.i = and i32 %32, -65536
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 139344
  %and.i.i.i = shl i32 %31, 13
  %mul.i.i = and i32 %and.i.i.i, 24576
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr2.i.i, i32 %mul.i.i
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !363
  %34 = and i32 %33, 2131689472
  %35 = or i32 %34, 1088256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %35) #10, !srcloc !330
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add14.neg, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp15 = icmp slt i32 %sub, 0
  %spec.select49 = select i1 %cmp15, i32 100, i32 %extra.0
  br label %do.condthread-pre-split

do.condthread-pre-split:                          ; preds = %if.then12, %land.lhs.true.do.condthread-pre-split_crit_edge, %if.end.do.condthread-pre-split_crit_edge
  %attempts.2.ph.ph = phi i32 [ %attempts.0, %if.end.do.condthread-pre-split_crit_edge ], [ %inc, %land.lhs.true.do.condthread-pre-split_crit_edge ], [ %inc, %if.then12 ]
  %extra.2.ph.ph = phi i32 [ %extra.0, %if.end.do.condthread-pre-split_crit_edge ], [ %extra.0, %land.lhs.true.do.condthread-pre-split_crit_edge ], [ %spec.select49, %if.then12 ]
  %38 = ptrtoint ptr %sstatus to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr = load i32, ptr %sstatus, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.condthread-pre-split, %land.lhs.true10.do.cond_crit_edge
  %39 = phi i32 [ %.pr, %do.condthread-pre-split ], [ %23, %land.lhs.true10.do.cond_crit_edge ]
  %attempts.2.ph = phi i32 [ %attempts.2.ph.ph, %do.condthread-pre-split ], [ %inc, %land.lhs.true10.do.cond_crit_edge ]
  %extra.2.ph = phi i32 [ %extra.2.ph.ph, %do.condthread-pre-split ], [ %extra.0, %land.lhs.true10.do.cond_crit_edge ]
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %39, label %do.cond.do.body_crit_edge [
    i32 0, label %do.cond.do.end_crit_edge
    i32 275, label %do.cond.do.end_crit_edge67
    i32 291, label %do.cond.do.end_crit_edge68
  ]

do.cond.do.end_crit_edge68:                       ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.cond.do.end_crit_edge67:                       ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %do.cond.do.end_crit_edge67, %do.cond.do.end_crit_edge68
  %41 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %host, align 4
  %private_data.i.i.i = getelementptr inbounds %struct.ata_host, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %private_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %private_data.i.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i.i, align 4
  %47 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port_no, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %46, i32 131072
  %49 = shl i32 %48, 14
  %mul.i.i.i.i.i = and i32 %49, -65536
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %mul.i.i.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr1.i.i.i.i.i, i32 8192
  %and.i.i.i.i = shl i32 %48, 13
  %mul.i.i.i = and i32 %and.i.i.i.i, 24576
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %50 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %private_data2, align 4
  %add.ptr.i50 = getelementptr i8, ptr %add.ptr2.i.i.i, i32 864
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #10, !srcloc !326
  %53 = call i32 @llvm.bswap.i32(i32 %52) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !364
  %cached.i = getelementptr inbounds %struct.mv_port_priv, ptr %51, i32 0, i32 9
  %54 = ptrtoint ptr %cached.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %cached.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 780
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #10, !srcloc !326
  %56 = call i32 @llvm.bswap.i32(i32 %55) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !365
  %ltmode.i = getelementptr inbounds %struct.mv_port_priv, ptr %51, i32 0, i32 9, i32 1
  %57 = ptrtoint ptr %ltmode.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %ltmode.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 96
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #10, !srcloc !326
  %59 = call i32 @llvm.bswap.i32(i32 %58) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !366
  %haltcond.i = getelementptr inbounds %struct.mv_port_priv, ptr %51, i32 0, i32 9, i32 2
  %60 = ptrtoint ptr %haltcond.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %haltcond.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 108
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #10, !srcloc !326
  %62 = call i32 @llvm.bswap.i32(i32 %61) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !367
  %unknown_rsvd.i = getelementptr inbounds %struct.mv_port_priv, ptr %51, i32 0, i32 9, i32 3
  %63 = ptrtoint ptr %unknown_rsvd.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %unknown_rsvd.i, align 4
  call fastcc void @mv_edma_cfg(ptr noundef %1, i32 noundef 0, i32 noundef 0)
  br label %cleanup23

cleanup23:                                        ; preds = %do.end, %do.body.cleanup23_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %online) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sstatus) #10
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv5_scr_read(ptr nocapture noundef readonly %link, i32 noundef %sc_reg_in, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sc_reg_in)
  %switch.i = icmp ugt i32 %sc_reg_in, 2
  br i1 %switch.i, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i10 = shl nuw nsw i32 %sc_reg_in, 2
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
  %base = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 131072
  %port_no = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no, align 4
  %10 = shl i32 %9, 14
  %mul.i.i.i = and i32 %10, -65536
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %and.i.i = shl i32 %9, 8
  %add.i = and i32 %and.i.i, 768
  %mul.i = add nuw nsw i32 %add.i, 256
  %add.ptr.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 %mul.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %mul.i10
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !368
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv5_scr_write(ptr nocapture noundef readonly %link, i32 noundef %sc_reg_in, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sc_reg_in)
  %switch.i = icmp ugt i32 %sc_reg_in, 2
  br i1 %switch.i, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i8 = shl nuw nsw i32 %sc_reg_in, 2
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
  %base = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 131072
  %port_no = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no, align 4
  %10 = shl i32 %9, 14
  %mul.i.i.i = and i32 %10, -65536
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %and.i.i = shl i32 %9, 8
  %add.i = and i32 %and.i.i, 768
  %mul.i = add nuw nsw i32 %add.i, 256
  %add.ptr.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 %mul.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %mul.i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %val) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #10, !srcloc !330
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_port_start(ptr nocapture noundef %ap) #2 align 64 {
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
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 304, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data3 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %6 = ptrtoint ptr %private_data3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %private_data3, align 4
  %crqb_pool = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 15
  %7 = ptrtoint ptr %crqb_pool to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %crqb_pool, align 4
  %crqb_dma = getelementptr inbounds %struct.mv_port_priv, ptr %call.i, i32 0, i32 1
  %call.i83 = tail call ptr @dma_pool_alloc(ptr noundef %8, i32 noundef 3520, ptr noundef %crqb_dma) #10
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i83, ptr %call.i, align 4
  %tobool6.not = icmp eq ptr %call.i83, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %crpb_pool = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 16
  %10 = ptrtoint ptr %crpb_pool to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crpb_pool, align 4
  %crpb_dma = getelementptr inbounds %struct.mv_port_priv, ptr %call.i, i32 0, i32 3
  %call.i84 = tail call ptr @dma_pool_alloc(ptr noundef %11, i32 noundef 3520, ptr noundef %crpb_dma) #10
  %crpb = getelementptr inbounds %struct.mv_port_priv, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %crpb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i84, ptr %crpb, align 4
  %tobool11.not = icmp eq ptr %call.i84, null
  br i1 %tobool11.not, label %if.end8.out_port_free_dma_mem_crit_edge, label %if.end13

if.end8.out_port_free_dma_mem_crit_edge:          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_port_free_dma_mem

if.end13:                                         ; preds = %if.end8
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %5, align 4
  %and = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end13.if.end17_crit_edge, label %if.then15

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %flags16 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 3
  %15 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags16, align 4
  %or = or i32 %16, 262144
  store i32 %or, ptr %flags16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13.if.end17_crit_edge
  %sg_tbl30 = getelementptr inbounds %struct.mv_port_priv, ptr %call.i, i32 0, i32 4
  %sg_tbl_dma34 = getelementptr inbounds %struct.mv_port_priv, ptr %call.i, i32 0, i32 5
  %sg_tbl_pool = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end17
  %tag.085 = phi i32 [ 0, %if.end17 ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tag.085)
  %cmp18 = icmp eq i32 %tag.085, 0
  br i1 %cmp18, label %for.body.if.then22_crit_edge, label %lor.lhs.false

for.body.if.then22_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

lor.lhs.false:                                    ; preds = %for.body
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %5, align 4
  %and20 = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %lor.lhs.false.if.then22_crit_edge, label %if.else

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %for.body.if.then22_crit_edge
  %19 = ptrtoint ptr %sg_tbl_pool to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sg_tbl_pool, align 4
  %arrayidx = getelementptr %struct.mv_port_priv, ptr %call.i, i32 0, i32 5, i32 %tag.085
  %call23 = tail call ptr @dma_pool_alloc(ptr noundef %20, i32 noundef 3264, ptr noundef %arrayidx) #10
  %arrayidx24 = getelementptr %struct.mv_port_priv, ptr %call.i, i32 0, i32 4, i32 %tag.085
  %21 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call23, ptr %arrayidx24, align 4
  %tobool27.not = icmp eq ptr %call23, null
  br i1 %tobool27.not, label %if.then22.out_port_free_dma_mem_crit_edge, label %if.then22.for.inc_crit_edge

if.then22.for.inc_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then22.out_port_free_dma_mem_crit_edge:        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_port_free_dma_mem

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %sg_tbl30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sg_tbl30, align 4
  %arrayidx33 = getelementptr %struct.mv_port_priv, ptr %call.i, i32 0, i32 4, i32 %tag.085
  %24 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %arrayidx33, align 4
  %25 = ptrtoint ptr %sg_tbl_dma34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sg_tbl_dma34, align 4
  %arrayidx37 = getelementptr %struct.mv_port_priv, ptr %call.i, i32 0, i32 5, i32 %tag.085
  %27 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx37, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then22.for.inc_crit_edge
  %inc = add nuw nsw i32 %tag.085, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %do.body39, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body39:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 2
  %28 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lock, align 8
  %call42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #10
  %30 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %host, align 4
  %private_data.i.i.i = getelementptr inbounds %struct.ata_host, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %private_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %private_data.i.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i.i, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %36 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port_no.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %35, i32 131072
  %38 = shl i32 %37, 14
  %mul.i.i.i.i.i = and i32 %38, -65536
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %mul.i.i.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr1.i.i.i.i.i, i32 8192
  %and.i.i.i.i = shl i32 %37, 13
  %mul.i.i.i = and i32 %and.i.i.i.i, 24576
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %39 = ptrtoint ptr %private_data3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %private_data3, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 864
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !326
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !364
  %cached.i = getelementptr inbounds %struct.mv_port_priv, ptr %40, i32 0, i32 9
  %43 = ptrtoint ptr %cached.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %cached.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 780
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #10, !srcloc !326
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !365
  %ltmode.i = getelementptr inbounds %struct.mv_port_priv, ptr %40, i32 0, i32 9, i32 1
  %46 = ptrtoint ptr %ltmode.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %ltmode.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 96
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #10, !srcloc !326
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !366
  %haltcond.i = getelementptr inbounds %struct.mv_port_priv, ptr %40, i32 0, i32 9, i32 2
  %49 = ptrtoint ptr %haltcond.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %haltcond.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 108
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #10, !srcloc !326
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !367
  %unknown_rsvd.i = getelementptr inbounds %struct.mv_port_priv, ptr %40, i32 0, i32 9, i32 3
  %52 = ptrtoint ptr %unknown_rsvd.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %unknown_rsvd.i, align 4
  tail call fastcc void @mv_edma_cfg(ptr noundef %ap, i32 noundef 0, i32 noundef 0)
  %53 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %lock, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %54, i32 noundef %call42) #10
  br label %cleanup

out_port_free_dma_mem:                            ; preds = %if.then22.out_port_free_dma_mem_crit_edge, %if.end8.out_port_free_dma_mem_crit_edge
  tail call fastcc void @mv_port_free_dma_mem(ptr noundef %ap)
  br label %cleanup

cleanup:                                          ; preds = %out_port_free_dma_mem, %do.body39, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %out_port_free_dma_mem ], [ 0, %do.body39 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_port_stop(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 2
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  tail call fastcc void @mv_stop_edma(ptr noundef %ap)
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %2 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_no.i, align 4
  %shr.i.i = lshr i32 %3, 2
  %mul.i = mul i32 %shr.i.i, 9
  %and.i.i = shl i32 %3, 1
  %mul2.i = and i32 %and.i.i, 6
  %add.i = add i32 %mul.i, %mul2.i
  %shl.i = shl i32 3, %add.i
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %4 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i.i, align 4
  %main_irq_mask.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %main_irq_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %main_irq_mask.i.i, align 4
  %neg.i.i = xor i32 %shl.i, -1
  %and.i8.i = and i32 %9, %neg.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i8.i, i32 %9)
  %cmp.not.i.i = icmp eq i32 %and.i8.i, %9
  br i1 %cmp.not.i.i, label %entry.mv_enable_port_irqs.exit_crit_edge, label %if.then.i.i

entry.mv_enable_port_irqs.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_enable_port_irqs.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %main_irq_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and.i8.i, ptr %main_irq_mask.i.i, align 4
  %and.i.i.i = and i32 %and.i8.i, 2097408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %and1.i.i.i = and i32 %and.i8.i, -171
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, i32 %and.i8.i, i32 %and1.i.i.i
  %and2.i.i.i = and i32 %spec.select.i.i.i, 2228224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  %and5.i.i.i = and i32 %spec.select.i.i.i, -87041
  %mask.addr.1.i.i.i = select i1 %tobool3.not.i.i.i, i32 %spec.select.i.i.i, i32 %and5.i.i.i
  %main_irq_mask_addr.i.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %7, i32 0, i32 8
  %11 = ptrtoint ptr %main_irq_mask_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %main_irq_mask_addr.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %13 = tail call i32 @llvm.bswap.i32(i32 %mask.addr.1.i.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %13) #10, !srcloc !330
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %mv_enable_port_irqs.exit

mv_enable_port_irqs.exit:                         ; preds = %if.then.i.i, %entry.mv_enable_port_irqs.exit_crit_edge
  %15 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %call2) #10
  tail call fastcc void @mv_port_free_dma_mem(ptr noundef %ap)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_fill_sg(ptr nocapture noundef readonly %qc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %n_elem = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 9
  %0 = ptrtoint ptr %n_elem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_elem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp41.not = icmp eq i32 %1, 0
  br i1 %cmp41.not, label %entry.do.body_crit_edge, label %for.body.preheader

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.body.preheader:                               ; preds = %entry
  %sg1 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 17
  %2 = ptrtoint ptr %sg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg1, align 4
  %4 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qc, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 48
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %hw_tag = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 8
  %8 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw_tag, align 4
  %arrayidx = getelementptr %struct.mv_port_priv, ptr %7, i32 0, i32 4, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %for.body.preheader
  %si.045 = phi i32 [ %inc, %while.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %last_sg.044 = phi ptr [ %last_sg.1.lcssa, %while.end.for.body_crit_edge ], [ null, %for.body.preheader ]
  %mv_sg.043 = phi ptr [ %mv_sg.1.lcssa, %while.end.for.body_crit_edge ], [ %11, %for.body.preheader ]
  %sg.042 = phi ptr [ %call, %while.end.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.042, i32 0, i32 4
  %12 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not36 = icmp eq i32 %13, 0
  br i1 %tobool.not36, label %for.body.while.end_crit_edge, label %while.body.preheader

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.preheader:                             ; preds = %for.body
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.042, i32 0, i32 3
  %14 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_address, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %sg_len.039 = phi i32 [ %sub7, %while.body.while.body_crit_edge ], [ %13, %while.body.preheader ]
  %addr.038 = phi i32 [ %add8, %while.body.while.body_crit_edge ], [ %15, %while.body.preheader ]
  %mv_sg.137 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %mv_sg.043, %while.body.preheader ]
  %and = and i32 %addr.038, 65535
  %add = add i32 %and, %sg_len.039
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp2 = icmp ugt i32 %add, 65536
  %sub = sub nuw nsw i32 65536, %and
  %spec.select = select i1 %cmp2, i32 %sub, i32 %sg_len.039
  %16 = tail call i32 @llvm.bswap.i32(i32 %addr.038)
  %17 = ptrtoint ptr %mv_sg.137 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %mv_sg.137, align 4
  %addr_hi = getelementptr inbounds %struct.mv_sg, ptr %mv_sg.137, i32 0, i32 2
  %18 = ptrtoint ptr %addr_hi to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %addr_hi, align 4
  %and6 = and i32 %spec.select, 65535
  %19 = tail call i32 @llvm.bswap.i32(i32 %and6)
  %flags_size = getelementptr inbounds %struct.mv_sg, ptr %mv_sg.137, i32 0, i32 1
  %20 = ptrtoint ptr %flags_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %flags_size, align 4
  %reserved = getelementptr inbounds %struct.mv_sg, ptr %mv_sg.137, i32 0, i32 3
  %21 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %reserved, align 4
  %sub7 = sub i32 %sg_len.039, %spec.select
  %add8 = add i32 %spec.select, %addr.038
  %incdec.ptr = getelementptr %struct.mv_sg, ptr %mv_sg.137, i32 1
  %tobool.not = icmp eq i32 %sub7, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.body.while.end_crit_edge
  %mv_sg.1.lcssa = phi ptr [ %mv_sg.043, %for.body.while.end_crit_edge ], [ %incdec.ptr, %while.body.while.end_crit_edge ]
  %last_sg.1.lcssa = phi ptr [ %last_sg.044, %for.body.while.end_crit_edge ], [ %mv_sg.137, %while.body.while.end_crit_edge ]
  %inc = add nuw i32 %si.045, 1
  %call = tail call ptr @sg_next(ptr noundef %sg.042) #10
  %22 = ptrtoint ptr %n_elem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_elem, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %while.end.for.body_crit_edge, label %for.end

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %while.end
  %tobool9.not = icmp eq ptr %last_sg.1.lcssa, null
  br i1 %tobool9.not, label %for.end.do.body_crit_edge, label %if.then12, !prof !350

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then12:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %flags_size13 = getelementptr inbounds %struct.mv_sg, ptr %last_sg.1.lcssa, i32 0, i32 1
  %24 = ptrtoint ptr %flags_size13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags_size13, align 4
  %or = or i32 %25, 128
  store i32 %or, ptr %flags_size13, align 4
  br label %do.body

do.body:                                          ; preds = %if.then12, %for.end.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !369
  tail call void @arm_heavy_mb() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_stop_edma(ptr nocapture noundef readonly %ap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %5, i32 131072
  %8 = shl i32 %7, 14
  %mul.i.i.i.i = and i32 %8, -65536
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %mul.i.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr1.i.i.i.i, i32 8192
  %and.i.i.i = shl i32 %7, 13
  %mul.i.i = and i32 %and.i.i.i, 24576
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data, align 4
  %pp_flags = getelementptr inbounds %struct.mv_port_priv, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %pp_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pp_flags, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %12, -2
  %13 = ptrtoint ptr %pp_flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and2, ptr %pp_flags, align 4
  %14 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host.i, align 4
  %private_data.i.i.i = getelementptr inbounds %struct.ata_host, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %private_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private_data.i.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i.i, align 4
  %20 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port_no.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %19, i32 131072
  %22 = shl i32 %21, 14
  %mul.i.i.i.i.i = and i32 %22, -65536
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %mul.i.i.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr1.i.i.i.i.i, i32 8192
  %and.i.i.i.i = shl i32 %21, 13
  %mul.i.i.i = and i32 %and.i.i.i.i, 24576
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 48
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %i.07.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !370
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %23)
  %cmp3.i = icmp ugt i32 %23, -1073741825
  br i1 %cmp3.i, label %for.body.i.mv_wait_for_edma_empty_idle.exit_crit_edge, label %for.inc.i

for.body.i.mv_wait_for_edma_empty_idle.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_wait_for_edma_empty_idle.exit

for.inc.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 1073740) #10
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3000
  br i1 %exitcond.not.i, label %for.inc.i.mv_wait_for_edma_empty_idle.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.mv_wait_for_edma_empty_idle.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_wait_for_edma_empty_idle.exit

mv_wait_for_edma_empty_idle.exit:                 ; preds = %for.inc.i.mv_wait_for_edma_empty_idle.exit_crit_edge, %for.body.i.mv_wait_for_edma_empty_idle.exit_crit_edge
  %add.ptr.i1 = getelementptr i8, ptr %add.ptr2.i.i, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1, i32 33554432) #10, !srcloc !330
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %for.body.i2

for.body.i2:                                      ; preds = %if.end.i.for.body.i2_crit_edge, %mv_wait_for_edma_empty_idle.exit
  %i.06.i = phi i32 [ 10000, %mv_wait_for_edma_empty_idle.exit ], [ %dec.i, %if.end.i.for.body.i2_crit_edge ]
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !371
  %27 = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %for.body.i2.if.end7_crit_edge, label %if.end.i

for.body.i2.if.end7_crit_edge:                    ; preds = %for.body.i2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end.i:                                         ; preds = %for.body.i2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 2147480) #10
  %dec.i = add nsw i32 %i.06.i, -1
  %cmp.i = icmp ugt i32 %i.06.i, 1
  br i1 %cmp.i, label %if.end.i.for.body.i2_crit_edge, label %do.end

if.end.i.for.body.i2_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i2

do.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %29 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %print_id, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %30) #13
  br label %if.end7

if.end7:                                          ; preds = %do.end, %for.body.i2.if.end7_crit_edge
  tail call fastcc void @mv_edma_cfg(ptr noundef %ap, i32 noundef 0, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_clear_and_enable_port_irqs(ptr nocapture noundef readonly %ap, ptr noundef %port_mmio, i32 noundef %port_irqs) unnamed_addr #2 align 64 {
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
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %4 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no, align 4
  %and.i = and i32 %5, 3
  %base.i = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 131072
  %8 = shl i32 %5, 14
  %mul.i.i = and i32 %8, -65536
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr = getelementptr i8, ptr %port_mmio, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !330
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  %shl = shl nuw nsw i32 257, %and.i
  %neg = xor i32 %shl, -1
  %add.ptr5 = getelementptr i8, ptr %add.ptr1.i.i, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %10 = tail call i32 @llvm.bswap.i32(i32 %neg) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %10) #10, !srcloc !330
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 4
  %and = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr6 = getelementptr i8, ptr %port_mmio, i32 868
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #10, !srcloc !330
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %15 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port_no, align 4
  %shr.i.i = lshr i32 %16, 2
  %mul.i = mul i32 %shr.i.i, 9
  %and.i.i = shl i32 %16, 1
  %mul2.i = and i32 %and.i.i, 6
  %add.i = add i32 %mul.i, %mul2.i
  %shl.i = shl i32 3, %add.i
  %shl3.i = shl i32 %port_irqs, %add.i
  %17 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %host, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private_data.i.i, align 4
  %main_irq_mask.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %main_irq_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %main_irq_mask.i.i, align 4
  %neg.i.i = xor i32 %shl.i, -1
  %and.i8.i = and i32 %22, %neg.i.i
  %or.i.i = or i32 %and.i8.i, %shl3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %22)
  %cmp.not.i.i = icmp eq i32 %or.i.i, %22
  br i1 %cmp.not.i.i, label %if.end.mv_enable_port_irqs.exit_crit_edge, label %if.then.i.i

if.end.mv_enable_port_irqs.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_enable_port_irqs.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %main_irq_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i.i, ptr %main_irq_mask.i.i, align 4
  %and.i.i.i = and i32 %or.i.i, 2097408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %and1.i.i.i = and i32 %or.i.i, -171
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, i32 %or.i.i, i32 %and1.i.i.i
  %and2.i.i.i = and i32 %spec.select.i.i.i, 2228224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  %and5.i.i.i = and i32 %spec.select.i.i.i, -87041
  %mask.addr.1.i.i.i = select i1 %tobool3.not.i.i.i, i32 %spec.select.i.i.i, i32 %and5.i.i.i
  %main_irq_mask_addr.i.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %20, i32 0, i32 8
  %24 = ptrtoint ptr %main_irq_mask_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %main_irq_mask_addr.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %26 = tail call i32 @llvm.bswap.i32(i32 %mask.addr.1.i.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %26) #10, !srcloc !330
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %mv_enable_port_irqs.exit

mv_enable_port_irqs.exit:                         ; preds = %if.then.i.i, %if.end.mv_enable_port_irqs.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_qc_issue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_edma_cfg(ptr nocapture noundef readonly %ap, i32 noundef %want_ncq, i32 noundef %want_edma) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %base.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i, align 4
  %pp_flags = getelementptr inbounds %struct.mv_port_priv, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %pp_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pp_flags, align 4
  %and = and i32 %11, -23
  store i32 %and, ptr %pp_flags, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 4
  %and2 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end49_crit_edge

entry.if.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.else:                                          ; preds = %entry
  %and4 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else8, label %if.then6

if.then6:                                         ; preds = %if.else
  %14 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private_data.i, align 4
  %base.i = getelementptr inbounds %struct.mv_host_priv, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 66800
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !326
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !372
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %want_ncq)
  %tobool.not.i = icmp eq i32 %want_ncq, 0
  %and.i = and i32 %21, -4194305
  %masksel.i = select i1 %tobool.not.i, i32 0, i32 4194304
  %new.0.i = or i32 %and.i, %masksel.i
  call void @__sanitizer_cov_trace_cmp4(i32 %new.0.i, i32 %21)
  %cmp.not.i = icmp eq i32 %new.0.i, %21
  br i1 %cmp.not.i, label %if.then6.if.end49_crit_edge, label %do.body.i

if.then6.if.end49_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

do.body.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !373
  tail call void @arm_heavy_mb() #10
  %22 = tail call i32 @llvm.bswap.i32(i32 %new.0.i) #10
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %24, i32 66800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %22) #10, !srcloc !330
  br label %if.end49

if.else8:                                         ; preds = %if.else
  %and10 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else8.if.end49_crit_edge, label %if.then12

if.else8.if.end49_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then12:                                        ; preds = %if.else8
  %nr_pmp_links.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 27
  %25 = ptrtoint ptr %nr_pmp_links.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_pmp_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i = icmp ne i32 %26, 0
  %conv = zext i1 %cmp.i to i32
  %and14 = and i32 %conv, %want_ncq
  %27 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private_data, align 4
  %cached.i = getelementptr inbounds %struct.mv_port_priv, ptr %28, i32 0, i32 9
  %ltmode3.i = getelementptr inbounds %struct.mv_port_priv, ptr %28, i32 0, i32 9, i32 1
  %haltcond5.i = getelementptr inbounds %struct.mv_port_priv, ptr %28, i32 0, i32 9, i32 2
  %29 = ptrtoint ptr %ltmode3.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ltmode3.i, align 4
  %31 = ptrtoint ptr %haltcond5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %haltcond5.i, align 4
  %or.i = or i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool.not.i89 = icmp eq i32 %and14, 0
  br i1 %tobool.not.i89, label %if.else12.i, label %if.then.i

if.then.i:                                        ; preds = %if.then12
  %33 = ptrtoint ptr %cached.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cached.i, align 4
  %or7.i = or i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %want_ncq)
  %tobool8.not.i = icmp eq i32 %want_ncq, 0
  br i1 %tobool8.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %or6.i = or i32 %34, 65536
  %and10.i = and i32 %32, -5
  br label %if.end14.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %or11.i = or i32 %34, 65792
  br label %if.end14.i

if.else12.i:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %and.i90 = and i32 %30, -257
  %35 = ptrtoint ptr %cached.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cached.i, align 4
  %and13.i = and i32 %36, -65793
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else12.i, %if.else.i, %if.then9.i
  %fiscfg.0.i = phi i32 [ %or6.i, %if.then9.i ], [ %or11.i, %if.else.i ], [ %and13.i, %if.else12.i ]
  %ltmode.0.i = phi i32 [ %or7.i, %if.then9.i ], [ %or7.i, %if.else.i ], [ %and.i90, %if.else12.i ]
  %haltcond.0.i = phi i32 [ %and10.i, %if.then9.i ], [ %or.i, %if.else.i ], [ %or.i, %if.else12.i ]
  %37 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %host, align 4
  %private_data.i.i.i = getelementptr inbounds %struct.ata_host, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %private_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %private_data.i.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i.i, align 4
  %43 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port_no.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %42, i32 131072
  %45 = shl i32 %44, 14
  %mul.i.i.i.i.i = and i32 %45, -65536
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %mul.i.i.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr1.i.i.i.i.i, i32 8192
  %and.i.i.i.i = shl i32 %44, 13
  %mul.i.i.i = and i32 %and.i.i.i.i, 24576
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %add.ptr.i91 = getelementptr i8, ptr %add.ptr2.i.i.i, i32 864
  %46 = ptrtoint ptr %cached.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cached.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %fiscfg.0.i)
  %cmp.not.i.i = icmp eq i32 %47, %fiscfg.0.i
  br i1 %cmp.not.i.i, label %if.end14.i.mv_write_cached_reg.exit.i_crit_edge, label %if.then.i.i

if.end14.i.mv_write_cached_reg.exit.i_crit_edge:  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_write_cached_reg.exit.i

if.then.i.i:                                      ; preds = %if.end14.i
  %48 = ptrtoint ptr %cached.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %fiscfg.0.i, ptr %cached.i, align 4
  %49 = ptrtoint ptr %add.ptr.i91 to i32
  %and.i.i = and i32 %49, 65535
  %50 = add nsw i32 %and.i.i, -768
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %50)
  %51 = icmp ult i32 %50, 61
  br i1 %51, label %if.then3.i.i, label %if.then.i.i.do.body.i.i_crit_edge

if.then.i.i.do.body.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  %and4.i.i = and i32 %49, 15
  %52 = zext i32 %and4.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %and4.i.i, label %if.then3.i.i.do.body.i.i_crit_edge [
    i32 4, label %if.then3.i.i.if.then7.i.i_crit_edge
    i32 12, label %if.then3.i.i.if.then7.i.i_crit_edge141
  ]

if.then3.i.i.if.then7.i.i_crit_edge141:           ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i.i

if.then3.i.i.if.then7.i.i_crit_edge:              ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i.i

if.then3.i.i.do.body.i.i_crit_edge:               ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

if.then7.i.i:                                     ; preds = %if.then3.i.i.if.then7.i.i_crit_edge, %if.then3.i.i.if.then7.i.i_crit_edge141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %53 = tail call i32 @llvm.bswap.i32(i32 %fiscfg.0.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 %53) #10, !srcloc !330
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i91) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %mv_write_cached_reg.exit.i

do.body.i.i:                                      ; preds = %if.then3.i.i.do.body.i.i_crit_edge, %if.then.i.i.do.body.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !374
  tail call void @arm_heavy_mb() #10
  %55 = tail call i32 @llvm.bswap.i32(i32 %fiscfg.0.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 %55) #10, !srcloc !330
  br label %mv_write_cached_reg.exit.i

mv_write_cached_reg.exit.i:                       ; preds = %do.body.i.i, %if.then7.i.i, %if.end14.i.mv_write_cached_reg.exit.i_crit_edge
  %add.ptr15.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 780
  %56 = ptrtoint ptr %ltmode3.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ltmode3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %ltmode.0.i)
  %cmp.not.i29.i = icmp eq i32 %57, %ltmode.0.i
  br i1 %cmp.not.i29.i, label %mv_write_cached_reg.exit.i.mv_write_cached_reg.exit36.i_crit_edge, label %if.then.i31.i

mv_write_cached_reg.exit.i.mv_write_cached_reg.exit36.i_crit_edge: ; preds = %mv_write_cached_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_write_cached_reg.exit36.i

if.then.i31.i:                                    ; preds = %mv_write_cached_reg.exit.i
  %58 = ptrtoint ptr %ltmode3.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %ltmode.0.i, ptr %ltmode3.i, align 4
  %59 = ptrtoint ptr %add.ptr15.i to i32
  %and.i30.i = and i32 %59, 65535
  %60 = add nsw i32 %and.i30.i, -768
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %60)
  %61 = icmp ult i32 %60, 61
  br i1 %61, label %if.then3.i33.i, label %if.then.i31.i.do.body.i35.i_crit_edge

if.then.i31.i.do.body.i35.i_crit_edge:            ; preds = %if.then.i31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i35.i

if.then3.i33.i:                                   ; preds = %if.then.i31.i
  %and4.i32.i = and i32 %59, 15
  %62 = zext i32 %and4.i32.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %and4.i32.i, label %if.then3.i33.i.do.body.i35.i_crit_edge [
    i32 4, label %if.then3.i33.i.if.then7.i34.i_crit_edge
    i32 12, label %if.then3.i33.i.if.then7.i34.i_crit_edge142
  ]

if.then3.i33.i.if.then7.i34.i_crit_edge142:       ; preds = %if.then3.i33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i34.i

if.then3.i33.i.if.then7.i34.i_crit_edge:          ; preds = %if.then3.i33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i34.i

if.then3.i33.i.do.body.i35.i_crit_edge:           ; preds = %if.then3.i33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i35.i

if.then7.i34.i:                                   ; preds = %if.then3.i33.i.if.then7.i34.i_crit_edge, %if.then3.i33.i.if.then7.i34.i_crit_edge142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %63 = tail call i32 @llvm.bswap.i32(i32 %ltmode.0.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %63) #10, !srcloc !330
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %mv_write_cached_reg.exit36.i

do.body.i35.i:                                    ; preds = %if.then3.i33.i.do.body.i35.i_crit_edge, %if.then.i31.i.do.body.i35.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !374
  tail call void @arm_heavy_mb() #10
  %65 = tail call i32 @llvm.bswap.i32(i32 %ltmode.0.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %65) #10, !srcloc !330
  br label %mv_write_cached_reg.exit36.i

mv_write_cached_reg.exit36.i:                     ; preds = %do.body.i35.i, %if.then7.i34.i, %mv_write_cached_reg.exit.i.mv_write_cached_reg.exit36.i_crit_edge
  %add.ptr16.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 96
  %66 = ptrtoint ptr %haltcond5.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %haltcond5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %haltcond.0.i)
  %cmp.not.i37.i = icmp eq i32 %67, %haltcond.0.i
  br i1 %cmp.not.i37.i, label %mv_write_cached_reg.exit36.i.mv_config_fbs.exit_crit_edge, label %if.then.i39.i

mv_write_cached_reg.exit36.i.mv_config_fbs.exit_crit_edge: ; preds = %mv_write_cached_reg.exit36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_config_fbs.exit

if.then.i39.i:                                    ; preds = %mv_write_cached_reg.exit36.i
  %68 = ptrtoint ptr %haltcond5.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %haltcond.0.i, ptr %haltcond5.i, align 4
  %69 = ptrtoint ptr %add.ptr16.i to i32
  %and.i38.i = and i32 %69, 65535
  %70 = add nsw i32 %and.i38.i, -768
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %70)
  %71 = icmp ult i32 %70, 61
  br i1 %71, label %if.then3.i41.i, label %if.then.i39.i.do.body.i43.i_crit_edge

if.then.i39.i.do.body.i43.i_crit_edge:            ; preds = %if.then.i39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i43.i

if.then3.i41.i:                                   ; preds = %if.then.i39.i
  %and4.i40.i = and i32 %69, 15
  %72 = zext i32 %and4.i40.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %and4.i40.i, label %if.then3.i41.i.do.body.i43.i_crit_edge [
    i32 4, label %if.then3.i41.i.if.then7.i42.i_crit_edge
    i32 12, label %if.then3.i41.i.if.then7.i42.i_crit_edge143
  ]

if.then3.i41.i.if.then7.i42.i_crit_edge143:       ; preds = %if.then3.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i42.i

if.then3.i41.i.if.then7.i42.i_crit_edge:          ; preds = %if.then3.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i42.i

if.then3.i41.i.do.body.i43.i_crit_edge:           ; preds = %if.then3.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i43.i

if.then7.i42.i:                                   ; preds = %if.then3.i41.i.if.then7.i42.i_crit_edge, %if.then3.i41.i.if.then7.i42.i_crit_edge143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %73 = tail call i32 @llvm.bswap.i32(i32 %haltcond.0.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %73) #10, !srcloc !330
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %mv_config_fbs.exit

do.body.i43.i:                                    ; preds = %if.then3.i41.i.do.body.i43.i_crit_edge, %if.then.i39.i.do.body.i43.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !374
  tail call void @arm_heavy_mb() #10
  %75 = tail call i32 @llvm.bswap.i32(i32 %haltcond.0.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %75) #10, !srcloc !330
  br label %mv_config_fbs.exit

mv_config_fbs.exit:                               ; preds = %do.body.i43.i, %if.then7.i42.i, %mv_write_cached_reg.exit36.i.mv_config_fbs.exit_crit_edge
  br i1 %tobool.not.i89, label %mv_config_fbs.exit.if.end_crit_edge, label %if.then16

mv_config_fbs.exit.if.end_crit_edge:              ; preds = %mv_config_fbs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then16:                                        ; preds = %mv_config_fbs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %pp_flags to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pp_flags, align 4
  %or18 = or i32 %77, 4
  store i32 %or18, ptr %pp_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then16, %mv_config_fbs.exit.if.end_crit_edge
  %cfg.0 = phi i32 [ 8454175, %if.then16 ], [ 8388639, %mv_config_fbs.exit.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %want_edma)
  %tobool21.not = icmp eq i32 %want_edma, 0
  br i1 %tobool21.not, label %if.end.if.end30_crit_edge, label %if.then22

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %5, align 4
  %and25 = and i32 %79, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %spec.select.v = select i1 %tobool26.not, i32 4456448, i32 4194304
  %spec.select = or i32 %spec.select.v, %cfg.0
  br label %if.end30

if.end30:                                         ; preds = %if.then22, %if.end.if.end30_crit_edge
  %cfg.1 = phi i32 [ %cfg.0, %if.end.if.end30_crit_edge ], [ %spec.select, %if.then22 ]
  %80 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %5, align 4
  %and32 = shl i32 %81, 7
  %82 = and i32 %and32, 131072
  %83 = or i32 %82, %cfg.1
  %84 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %private_data, align 4
  %unknown_rsvd.i = getelementptr inbounds %struct.mv_port_priv, ptr %85, i32 0, i32 9, i32 3
  %86 = ptrtoint ptr %unknown_rsvd.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %unknown_rsvd.i, align 4
  %and.i93 = and i32 %87, -2
  %masksel.i94 = zext i1 %tobool21.not to i32
  %new.0.i95 = or i32 %and.i93, %masksel.i94
  %88 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %host, align 4
  %private_data.i.i.i97 = getelementptr inbounds %struct.ata_host, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %private_data.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %private_data.i.i.i97, align 4
  %base.i.i.i98 = getelementptr inbounds %struct.mv_host_priv, ptr %91, i32 0, i32 6
  %92 = ptrtoint ptr %base.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base.i.i.i98, align 4
  %94 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %port_no.i, align 4
  %add.ptr.i.i.i.i.i100 = getelementptr i8, ptr %93, i32 131072
  %96 = shl i32 %95, 14
  %mul.i.i.i.i.i101 = and i32 %96, -65536
  %add.ptr1.i.i.i.i.i102 = getelementptr i8, ptr %add.ptr.i.i.i.i.i100, i32 %mul.i.i.i.i.i101
  %add.ptr.i.i.i103 = getelementptr i8, ptr %add.ptr1.i.i.i.i.i102, i32 8192
  %and.i.i.i.i104 = shl i32 %95, 13
  %mul.i.i.i105 = and i32 %and.i.i.i.i104, 24576
  %add.ptr2.i.i.i106 = getelementptr i8, ptr %add.ptr.i.i.i103, i32 %mul.i.i.i105
  %add.ptr.i107 = getelementptr i8, ptr %add.ptr2.i.i.i106, i32 108
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %new.0.i95)
  %cmp.not.i.i108 = icmp eq i32 %87, %new.0.i95
  br i1 %cmp.not.i.i108, label %if.end30.mv_bmdma_enable_iie.exit_crit_edge, label %if.then.i.i110

if.end30.mv_bmdma_enable_iie.exit_crit_edge:      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_bmdma_enable_iie.exit

if.then.i.i110:                                   ; preds = %if.end30
  %97 = ptrtoint ptr %unknown_rsvd.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %new.0.i95, ptr %unknown_rsvd.i, align 4
  %98 = ptrtoint ptr %add.ptr.i107 to i32
  %and.i.i109 = and i32 %98, 65535
  %99 = add nsw i32 %and.i.i109, -768
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %99)
  %100 = icmp ult i32 %99, 61
  br i1 %100, label %if.then3.i.i112, label %if.then.i.i110.do.body.i.i114_crit_edge

if.then.i.i110.do.body.i.i114_crit_edge:          ; preds = %if.then.i.i110
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i114

if.then3.i.i112:                                  ; preds = %if.then.i.i110
  %and4.i.i111 = and i32 %98, 15
  %101 = zext i32 %and4.i.i111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %and4.i.i111, label %if.then3.i.i112.do.body.i.i114_crit_edge [
    i32 4, label %if.then3.i.i112.if.then7.i.i113_crit_edge
    i32 12, label %if.then3.i.i112.if.then7.i.i113_crit_edge144
  ]

if.then3.i.i112.if.then7.i.i113_crit_edge144:     ; preds = %if.then3.i.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i.i113

if.then3.i.i112.if.then7.i.i113_crit_edge:        ; preds = %if.then3.i.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i.i113

if.then3.i.i112.do.body.i.i114_crit_edge:         ; preds = %if.then3.i.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i114

if.then7.i.i113:                                  ; preds = %if.then3.i.i112.if.then7.i.i113_crit_edge, %if.then3.i.i112.if.then7.i.i113_crit_edge144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %102 = tail call i32 @llvm.bswap.i32(i32 %new.0.i95) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 %102) #10, !srcloc !330
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %mv_bmdma_enable_iie.exit

do.body.i.i114:                                   ; preds = %if.then3.i.i112.do.body.i.i114_crit_edge, %if.then.i.i110.do.body.i.i114_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !374
  tail call void @arm_heavy_mb() #10
  %104 = tail call i32 @llvm.bswap.i32(i32 %new.0.i95) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 %104) #10, !srcloc !330
  br label %mv_bmdma_enable_iie.exit

mv_bmdma_enable_iie.exit:                         ; preds = %do.body.i.i114, %if.then7.i.i113, %if.end30.mv_bmdma_enable_iie.exit_crit_edge
  %105 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %5, align 4
  %and39 = and i32 %106, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %mv_bmdma_enable_iie.exit.if.end49_crit_edge, label %if.then41

mv_bmdma_enable_iie.exit.if.end49_crit_edge:      ; preds = %mv_bmdma_enable_iie.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then41:                                        ; preds = %mv_bmdma_enable_iie.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %want_ncq)
  %tobool42.not = icmp eq i32 %want_ncq, 0
  %107 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %host, align 4
  %private_data.i126 = getelementptr inbounds %struct.ata_host, ptr %108, i32 0, i32 5
  %109 = ptrtoint ptr %private_data.i126 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %private_data.i126, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %and.i127 = and i32 %112, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i127)
  %tobool.not.i128 = icmp eq i32 %and.i127, 0
  br i1 %tobool42.not, label %if.else44, label %if.then43

if.then43:                                        ; preds = %if.then41
  br i1 %tobool.not.i128, label %if.end.i, label %if.then43.if.then51_crit_edge

if.then43.if.then51_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then51

if.end.i:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  %or.i119 = or i32 %112, 4096
  %113 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %or.i119, ptr %110, align 4
  %114 = ptrtoint ptr %private_data.i126 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %private_data.i126, align 4
  %base.i.i120 = getelementptr inbounds %struct.mv_host_priv, ptr %115, i32 0, i32 6
  %116 = ptrtoint ptr %base.i.i120 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %base.i.i120, align 4
  %118 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %port_no.i, align 4
  %add.ptr.i.i.i122 = getelementptr i8, ptr %117, i32 131072
  %120 = shl i32 %119, 14
  %mul.i.i.i123 = and i32 %120, -65536
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i122, i32 %mul.i.i.i123
  %add.ptr.i124 = getelementptr i8, ptr %add.ptr1.i.i.i, i32 44
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !375
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !376
  tail call void @arm_heavy_mb() #10
  %122 = or i32 %121, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 %122) #10, !srcloc !330
  br label %if.then51

if.else44:                                        ; preds = %if.then41
  br i1 %tobool.not.i128, label %if.else44.if.end55_crit_edge, label %for.cond.preheader.i

if.else44.if.end55_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

for.cond.preheader.i:                             ; preds = %if.else44
  %n_ports.i = getelementptr inbounds %struct.mv_host_priv, ptr %110, i32 0, i32 5
  %123 = ptrtoint ptr %n_ports.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %n_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp30.not.i = icmp eq i32 %124, 0
  br i1 %cmp30.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %port.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %124
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %port.031.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ata_host, ptr %108, i32 0, i32 12, i32 %port.031.i
  %125 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx.i, align 4
  %private_data2.i = getelementptr inbounds %struct.ata_port, ptr %126, i32 0, i32 48
  %127 = ptrtoint ptr %private_data2.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %private_data2.i, align 4
  %pp_flags.i = getelementptr inbounds %struct.mv_port_priv, ptr %128, i32 0, i32 8
  %129 = ptrtoint ptr %pp_flags.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %pp_flags.i, align 4
  %and3.i = and i32 %130, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %for.cond.i, label %for.body.i.if.end49_crit_edge

for.body.i.if.end49_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %and9.i = and i32 %112, -4097
  %131 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %and9.i, ptr %110, align 4
  %132 = ptrtoint ptr %private_data.i126 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %private_data.i126, align 4
  %base.i.i129 = getelementptr inbounds %struct.mv_host_priv, ptr %133, i32 0, i32 6
  %134 = ptrtoint ptr %base.i.i129 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %base.i.i129, align 4
  %136 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %port_no.i, align 4
  %add.ptr.i.i.i131 = getelementptr i8, ptr %135, i32 131072
  %138 = shl i32 %137, 14
  %mul.i.i.i132 = and i32 %138, -65536
  %add.ptr1.i.i.i133 = getelementptr i8, ptr %add.ptr.i.i.i131, i32 %mul.i.i.i132
  %add.ptr.i134 = getelementptr i8, ptr %add.ptr1.i.i.i133, i32 44
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i134) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !377
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !378
  tail call void @arm_heavy_mb() #10
  %140 = and i32 %139, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 %140) #10, !srcloc !330
  br label %if.end49

if.end49:                                         ; preds = %for.end.i, %for.body.i.if.end49_crit_edge, %mv_bmdma_enable_iie.exit.if.end49_crit_edge, %if.else8.if.end49_crit_edge, %do.body.i, %if.then6.if.end49_crit_edge, %entry.if.end49_crit_edge
  %cfg.3 = phi i32 [ 31, %if.else8.if.end49_crit_edge ], [ 287, %entry.if.end49_crit_edge ], [ %83, %mv_bmdma_enable_iie.exit.if.end49_crit_edge ], [ 10271, %if.then6.if.end49_crit_edge ], [ 10271, %do.body.i ], [ %83, %for.end.i ], [ %83, %for.body.i.if.end49_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %want_ncq)
  %tobool50.not = icmp eq i32 %want_ncq, 0
  br i1 %tobool50.not, label %if.end49.if.end55_crit_edge, label %if.end49.if.then51_crit_edge

if.end49.if.then51_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then51

if.end49.if.end55_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then51:                                        ; preds = %if.end49.if.then51_crit_edge, %if.end.i, %if.then43.if.then51_crit_edge
  %cfg.3137 = phi i32 [ %cfg.3, %if.end49.if.then51_crit_edge ], [ %83, %if.end.i ], [ %83, %if.then43.if.then51_crit_edge ]
  %or52 = or i32 %cfg.3137, 32
  %141 = ptrtoint ptr %pp_flags to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %pp_flags, align 4
  %or54 = or i32 %142, 2
  store i32 %or54, ptr %pp_flags, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.end49.if.end55_crit_edge, %if.else44.if.end55_crit_edge
  %cfg.4 = phi i32 [ %or52, %if.then51 ], [ %cfg.3, %if.end49.if.end55_crit_edge ], [ %83, %if.else44.if.end55_crit_edge ]
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 131072
  %143 = shl i32 %9, 14
  %mul.i.i.i.i = and i32 %143, -65536
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %mul.i.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr1.i.i.i.i, i32 8192
  %and.i.i.i = shl i32 %9, 13
  %mul.i.i = and i32 %and.i.i.i, 24576
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %144 = tail call i32 @llvm.bswap.i32(i32 %cfg.4) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %144) #10, !srcloc !330
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_tf_to_fis(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_queue_pio_task(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_reset_channel(ptr noundef %hpriv, ptr noundef %mmio, i32 noundef %port_no) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %mmio, i32 131072
  %0 = shl i32 %port_no, 14
  %mul.i.i.i = and i32 %0, -65536
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 8192
  %and.i.i = shl i32 %port_no, 13
  %mul.i = and i32 %and.i.i, 24576
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %add.ptr.i18 = getelementptr i8, ptr %add.ptr2.i, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 33554432) #10, !srcloc !330
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.06.i = phi i32 [ 10000, %entry ], [ %dec.i, %if.end.i.for.body.i_crit_edge ]
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !371
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %for.body.i.mv_stop_edma_engine.exit_crit_edge, label %if.end.i

for.body.i.mv_stop_edma_engine.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_stop_edma_engine.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #10
  %dec.i = add nsw i32 %i.06.i, -1
  %cmp.i = icmp ugt i32 %i.06.i, 1
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.mv_stop_edma_engine.exit_crit_edge

if.end.i.mv_stop_edma_engine.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_stop_edma_engine.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

mv_stop_edma_engine.exit:                         ; preds = %if.end.i.mv_stop_edma_engine.exit_crit_edge, %for.body.i.mv_stop_edma_engine.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 67108864) #10, !srcloc !330
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  %6 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hpriv, align 4
  %and = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %mv_stop_edma_engine.exit.if.end_crit_edge

mv_stop_edma_engine.exit.if.end_crit_edge:        ; preds = %mv_stop_edma_engine.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %mv_stop_edma_engine.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i19 = getelementptr i8, ptr %add.ptr2.i, i32 80
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !363
  %9 = and i32 %8, 2131689472
  %10 = or i32 %9, -2146395392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %10) #10, !srcloc !330
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %if.end

if.end:                                           ; preds = %if.then, %mv_stop_edma_engine.exit.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 67108864) #10, !srcloc !330
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 5368700) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 0) #10, !srcloc !330
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  %ops = getelementptr inbounds %struct.mv_host_priv, ptr %hpriv, i32 0, i32 4
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  tail call void %18(ptr noundef %hpriv, ptr noundef %mmio, i32 noundef %port_no) #10
  %19 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hpriv, align 4
  %and5 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_link_hardreset(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_scr_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_port_free_dma_mem(ptr nocapture noundef readonly %ap) unnamed_addr #2 align 64 {
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
  %private_data1 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %crqb_pool = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 15
  %8 = ptrtoint ptr %crqb_pool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crqb_pool, align 4
  %crqb_dma = getelementptr inbounds %struct.mv_port_priv, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %crqb_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crqb_dma, align 4
  tail call void @dma_pool_free(ptr noundef %9, ptr noundef nonnull %7, i32 noundef %11) #10
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %crpb = getelementptr inbounds %struct.mv_port_priv, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %crpb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %crpb, align 4
  %tobool4.not = icmp eq ptr %14, null
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %crpb_pool = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 16
  %15 = ptrtoint ptr %crpb_pool to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %crpb_pool, align 4
  %crpb_dma = getelementptr inbounds %struct.mv_port_priv, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %crpb_dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %crpb_dma, align 4
  tail call void @dma_pool_free(ptr noundef %16, ptr noundef nonnull %14, i32 noundef %18) #10
  %19 = ptrtoint ptr %crpb to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %crpb, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %sg_tbl_pool = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 17
  %arrayidx.peel = getelementptr %struct.mv_port_priv, ptr %5, i32 0, i32 4, i32 0
  %20 = ptrtoint ptr %arrayidx.peel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.peel, align 4
  %tobool9.not.peel = icmp eq ptr %21, null
  br i1 %tobool9.not.peel, label %if.end8.for.body.preheader_crit_edge, label %if.end17.peel

if.end8.for.body.preheader_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

if.end17.peel:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %sg_tbl_pool to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sg_tbl_pool, align 4
  %arrayidx16.peel = getelementptr %struct.mv_port_priv, ptr %5, i32 0, i32 5, i32 0
  %24 = ptrtoint ptr %arrayidx16.peel to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx16.peel, align 4
  tail call void @dma_pool_free(ptr noundef %23, ptr noundef nonnull %21, i32 noundef %25) #10
  %26 = ptrtoint ptr %arrayidx.peel to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx.peel, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end17.peel, %if.end8.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %tag.043 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %arrayidx = getelementptr %struct.mv_port_priv, ptr %5, i32 0, i32 4, i32 %tag.043
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %28, null
  br i1 %tobool9.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %3, align 4
  %and = and i32 %30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.then13, label %lor.lhs.false.if.end17_crit_edge

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then13:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %sg_tbl_pool to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sg_tbl_pool, align 4
  %arrayidx16 = getelementptr %struct.mv_port_priv, ptr %5, i32 0, i32 5, i32 %tag.043
  %33 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx16, align 4
  tail call void @dma_pool_free(ptr noundef %32, ptr noundef nonnull %28, i32 noundef %34) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %lor.lhs.false.if.end17_crit_edge
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end17, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %tag.043, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge, !llvm.loop !379

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mv_check_atapi_dma(ptr nocapture noundef readonly %qc) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %scsicmd = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 2
  %0 = ptrtoint ptr %scsicmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scsicmd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmnd, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.150)
  switch i8 %5, label %if.then.if.end_crit_edge [
    i8 8, label %if.then.cleanup_crit_edge
    i8 40, label %if.then.cleanup_crit_edge2
    i8 -88, label %if.then.cleanup_crit_edge3
    i8 10, label %if.then.cleanup_crit_edge4
    i8 42, label %if.then.cleanup_crit_edge5
    i8 -86, label %if.then.cleanup_crit_edge6
    i8 -66, label %if.then.cleanup_crit_edge7
    i8 -65, label %if.then.cleanup_crit_edge8
    i8 93, label %if.then.cleanup_crit_edge9
  ]

if.then.cleanup_crit_edge9:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.cleanup_crit_edge8:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.cleanup_crit_edge7:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.cleanup_crit_edge6:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.cleanup_crit_edge5:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.cleanup_crit_edge4:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.cleanup_crit_edge3:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.cleanup_crit_edge2:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %if.then.cleanup_crit_edge2, %if.then.cleanup_crit_edge3, %if.then.cleanup_crit_edge4, %if.then.cleanup_crit_edge5, %if.then.cleanup_crit_edge6, %if.then.cleanup_crit_edge7, %if.then.cleanup_crit_edge8, %if.then.cleanup_crit_edge9
  %retval.0 = phi i32 [ -95, %if.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge2 ], [ 0, %if.then.cleanup_crit_edge3 ], [ 0, %if.then.cleanup_crit_edge4 ], [ 0, %if.then.cleanup_crit_edge5 ], [ 0, %if.then.cleanup_crit_edge6 ], [ 0, %if.then.cleanup_crit_edge7 ], [ 0, %if.then.cleanup_crit_edge8 ], [ 0, %if.then.cleanup_crit_edge9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv6_dev_config(ptr nocapture noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev, align 128
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %nr_pmp_links.i = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %nr_pmp_links.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_pmp_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 0
  br i1 %cmp.i.not, label %if.then.if.end8_crit_edge, label %if.then1

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %and3 = and i32 %1, -9
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and3, ptr %flags, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 128
  %print_id = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pmp, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %15 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %devno, align 4
  %add = add i32 %16, %14
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %12, i32 noundef %add) #13
  br label %if.end8

if.end8:                                          ; preds = %if.then1, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_softreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %flags.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.mv_pmp_select.exit_crit_edge, label %land.lhs.true.i

entry.mv_pmp_select.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_pmp_select.exit

land.lhs.true.i:                                  ; preds = %entry
  %link1.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25
  %cmp.i.i = icmp eq ptr %link1.i.i, %link
  br i1 %cmp.i.i, label %land.lhs.true.i.if.then.i_crit_edge, label %ata_is_host_link.exit.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

ata_is_host_link.exit.i:                          ; preds = %land.lhs.true.i
  %slave_link.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %slave_link.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave_link.i.i, align 128
  %cmp3.i.i = icmp eq ptr %5, %link
  br i1 %cmp3.i.i, label %ata_is_host_link.exit.i.if.then.i_crit_edge, label %sata_srst_pmp.exit

ata_is_host_link.exit.i.if.then.i_crit_edge:      ; preds = %ata_is_host_link.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

sata_srst_pmp.exit:                               ; preds = %ata_is_host_link.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %pmp.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %6 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pmp.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %sata_srst_pmp.exit, %ata_is_host_link.exit.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  %retval.0.i8 = phi i32 [ %7, %sata_srst_pmp.exit ], [ 15, %land.lhs.true.i.if.then.i_crit_edge ], [ 15, %ata_is_host_link.exit.i.if.then.i_crit_edge ]
  %host.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host.i.i, align 4
  %private_data.i.i.i = getelementptr inbounds %struct.ata_host, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %private_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data.i.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i.i, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_no.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %13, i32 131072
  %16 = shl i32 %15, 14
  %mul.i.i.i.i.i = and i32 %16, -65536
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %mul.i.i.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr1.i.i.i.i.i, i32 8192
  %and.i.i.i.i = shl i32 %15, 13
  %mul.i.i.i = and i32 %and.i.i.i.i, 24576
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 836
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !326
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !357
  %and.i = and i32 %18, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %retval.0.i8)
  %cmp.not.i = icmp eq i32 %and.i, %retval.0.i8
  br i1 %cmp.not.i, label %if.then.i.mv_pmp_select.exit_crit_edge, label %if.then4.i

if.then.i.mv_pmp_select.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_pmp_select.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %and5.i = and i32 %18, -16
  %or.i = or i32 %and5.i, %retval.0.i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %19) #10, !srcloc !330
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %mv_pmp_select.exit

mv_pmp_select.exit:                               ; preds = %if.then4.i, %if.then.i.mv_pmp_select.exit_crit_edge, %entry.mv_pmp_select.exit_crit_edge
  %call1 = tail call i32 @ata_sff_softreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_pmp_hardreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %flags.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.mv_pmp_select.exit_crit_edge, label %land.lhs.true.i

entry.mv_pmp_select.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_pmp_select.exit

land.lhs.true.i:                                  ; preds = %entry
  %link1.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25
  %cmp.i.i = icmp eq ptr %link1.i.i, %link
  br i1 %cmp.i.i, label %land.lhs.true.i.if.then.i_crit_edge, label %ata_is_host_link.exit.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

ata_is_host_link.exit.i:                          ; preds = %land.lhs.true.i
  %slave_link.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %slave_link.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave_link.i.i, align 128
  %cmp3.i.i = icmp eq ptr %5, %link
  br i1 %cmp3.i.i, label %ata_is_host_link.exit.i.if.then.i_crit_edge, label %sata_srst_pmp.exit

ata_is_host_link.exit.i.if.then.i_crit_edge:      ; preds = %ata_is_host_link.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

sata_srst_pmp.exit:                               ; preds = %ata_is_host_link.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %pmp.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %6 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pmp.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %sata_srst_pmp.exit, %ata_is_host_link.exit.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  %retval.0.i8 = phi i32 [ %7, %sata_srst_pmp.exit ], [ 15, %land.lhs.true.i.if.then.i_crit_edge ], [ 15, %ata_is_host_link.exit.i.if.then.i_crit_edge ]
  %host.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host.i.i, align 4
  %private_data.i.i.i = getelementptr inbounds %struct.ata_host, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %private_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data.i.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i.i, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_no.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %13, i32 131072
  %16 = shl i32 %15, 14
  %mul.i.i.i.i.i = and i32 %16, -65536
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %mul.i.i.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr1.i.i.i.i.i, i32 8192
  %and.i.i.i.i = shl i32 %15, 13
  %mul.i.i.i = and i32 %and.i.i.i.i, 24576
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 836
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !326
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !357
  %and.i = and i32 %18, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %retval.0.i8)
  %cmp.not.i = icmp eq i32 %and.i, %retval.0.i8
  br i1 %cmp.not.i, label %if.then.i.mv_pmp_select.exit_crit_edge, label %if.then4.i

if.then.i.mv_pmp_select.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_pmp_select.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %and5.i = and i32 %18, -16
  %or.i = or i32 %and5.i, %retval.0.i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %19) #10, !srcloc !330
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %mv_pmp_select.exit

mv_pmp_select.exit:                               ; preds = %if.then4.i, %if.then.i.mv_pmp_select.exit_crit_edge, %entry.mv_pmp_select.exit_crit_edge
  %call1 = tail call i32 @sata_std_hardreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_pmp_error_handler(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pp_flags = getelementptr inbounds %struct.mv_port_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pp_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pp_flags, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %entry
  %delayed_eh_pmp_map = getelementptr inbounds %struct.mv_port_priv, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %delayed_eh_pmp_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delayed_eh_pmp_map, align 4
  %and2 = and i32 %3, -9
  %6 = ptrtoint ptr %pp_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and2, ptr %pp_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not18 = icmp eq i32 %5, 0
  br i1 %cmp.not18, label %if.then.for.end_crit_edge, label %for.body.lr.ph

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %pmp_link = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 28
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %pmp.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %pmp_map.019 = phi i32 [ %5, %for.body.lr.ph ], [ %pmp_map.1, %if.end.for.body_crit_edge ]
  %shl = shl nuw i32 1, %pmp.020
  %and3 = and i32 %shl, %pmp_map.019
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %for.body.if.end_crit_edge, label %if.then5

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %pmp_link to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pmp_link, align 8
  %arrayidx = getelementptr %struct.ata_link, ptr %8, i32 %pmp.020
  %neg = xor i32 %shl, -1
  %and6 = and i32 %pmp_map.019, %neg
  tail call void @ata_eh_analyze_ncq_error(ptr noundef %arrayidx) #10
  br label %if.end

if.end:                                           ; preds = %if.then5, %for.body.if.end_crit_edge
  %pmp_map.1 = phi i32 [ %and6, %if.then5 ], [ %pmp_map.019, %for.body.if.end_crit_edge ]
  %inc = add i32 %pmp.020, 1
  %cmp.not = icmp eq i32 %pmp_map.1, 0
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %if.then.for.end_crit_edge
  %call = tail call i32 @ata_port_freeze(ptr noundef %ap) #10
  br label %if.end7

if.end7:                                          ; preds = %for.end, %entry.if.end7_crit_edge
  tail call void @sata_pmp_error_handler(ptr noundef %ap) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_scr_read(ptr nocapture noundef readonly %link, i32 noundef %sc_reg_in, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sc_reg_in)
  %0 = icmp ult i32 %sc_reg_in, 4
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.mv_scr_read, i32 0, i32 %sc_reg_in
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 128
  %host.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_no.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %9, i32 131072
  %12 = shl i32 %11, 14
  %mul.i.i.i.i = and i32 %12, -65536
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %mul.i.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr1.i.i.i.i, i32 8192
  %and.i.i.i = shl i32 %11, 13
  %mul.i.i = and i32 %and.i.i.i, 24576
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 %switch.load
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !381
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_scr_write(ptr nocapture noundef readonly %link, i32 noundef %sc_reg_in, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sc_reg_in)
  %0 = icmp ult i32 %sc_reg_in, 4
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.mv_scr_write, i32 0, i32 %sc_reg_in
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 128
  %host.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_no.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %9, i32 131072
  %12 = shl i32 %11, 14
  %mul.i.i.i.i = and i32 %12, -65536
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %mul.i.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr1.i.i.i.i, i32 8192
  %and.i.i.i = shl i32 %11, 13
  %mul.i.i = and i32 %and.i.i.i, 24576
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 %switch.load
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sc_reg_in)
  %cmp3 = icmp eq i32 %sc_reg_in, 2
  br i1 %cmp3, label %if.then4, label %switch.lookup.if.end22_crit_edge

switch.lookup.if.end22_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then4:                                         ; preds = %switch.lookup
  %and = and i32 %val, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp5 = icmp eq i32 %and, 1
  br i1 %cmp5, label %if.then4.if.then10_crit_edge, label %lor.lhs.false

if.then4.if.then10_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.then4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !382
  %14 = and i32 %13, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %14)
  %cmp9 = icmp eq i32 %14, 16777216
  br i1 %cmp9, label %lor.lhs.false.if.then10_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.then4.if.then10_crit_edge
  %or = or i32 %val, 61440
  br label %if.end

if.end:                                           ; preds = %if.then10, %lor.lhs.false.if.end_crit_edge
  %val.addr.0 = phi i32 [ %or, %if.then10 ], [ %val, %lor.lhs.false.if.end_crit_edge ]
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %7, align 4
  %and11 = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %if.end.if.end22_crit_edge, label %if.then12

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %link, align 128
  %host.i32 = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 31
  %19 = ptrtoint ptr %host.i32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host.i32, align 4
  %private_data.i.i33 = getelementptr inbounds %struct.ata_host, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %private_data.i.i33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private_data.i.i33, align 4
  %base.i.i34 = getelementptr inbounds %struct.mv_host_priv, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %base.i.i34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i34, align 4
  %port_no.i35 = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 7
  %25 = ptrtoint ptr %port_no.i35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port_no.i35, align 4
  %add.ptr.i.i.i.i36 = getelementptr i8, ptr %24, i32 131072
  %27 = shl i32 %26, 14
  %mul.i.i.i.i37 = and i32 %27, -65536
  %add.ptr1.i.i.i.i38 = getelementptr i8, ptr %add.ptr.i.i.i.i36, i32 %mul.i.i.i.i37
  %add.ptr.i.i39 = getelementptr i8, ptr %add.ptr1.i.i.i.i38, i32 8192
  %and.i.i.i40 = shl i32 %26, 13
  %mul.i.i41 = and i32 %and.i.i.i40, 24576
  %add.ptr2.i.i42 = getelementptr i8, ptr %add.ptr.i.i39, i32 %mul.i.i41
  %add.ptr15 = getelementptr i8, ptr %add.ptr2.i.i42, i32 88
  %and16 = and i32 %val.addr.0, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and16)
  %cmp17.not = icmp eq i32 %and16, 16
  %spec.select = select i1 %cmp17.not, i32 7, i32 551
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %28 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %28) #10, !srcloc !330
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %if.end22

if.end22:                                         ; preds = %if.then12, %if.end.if.end22_crit_edge, %switch.lookup.if.end22_crit_edge
  %val.addr.1 = phi i32 [ %val.addr.0, %if.then12 ], [ %val.addr.0, %if.end.if.end22_crit_edge ], [ %val, %switch.lookup.if.end22_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %30 = tail call i32 @llvm.bswap.i32(i32 %val.addr.1) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %30) #10, !srcloc !330
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mv_sff_check_status(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 9
  %0 = ptrtoint ptr %status_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %status_addr, align 4
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #10, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !384
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %pp_flags = getelementptr inbounds %struct.mv_port_priv, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %pp_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pp_flags, align 4
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %7 = and i8 %2, -119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.then.if.end6_crit_edge, label %if.then3

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %and5 = and i32 %6, -17
  %8 = ptrtoint ptr %pp_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and5, ptr %pp_flags, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %stat.0 = phi i8 [ %2, %if.then3 ], [ %2, %entry.if.end6_crit_edge ], [ -128, %if.then.if.end6_crit_edge ]
  ret i8 %stat.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_sff_irq_clear(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %5, i32 131072
  %8 = shl i32 %7, 14
  %mul.i.i.i.i = and i32 %8, -65536
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %mul.i.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr1.i.i.i.i, i32 8192
  %and.i.i.i = shl i32 %7, 13
  %mul.i.i = and i32 %and.i.i.i, 24576
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call fastcc void @mv_clear_and_enable_port_irqs(ptr noundef %ap, ptr noundef %add.ptr2.i.i, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_bmdma_setup(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 131072
  %10 = shl i32 %9, 14
  %mul.i.i.i.i = and i32 %10, -65536
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %mul.i.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr1.i.i.i.i, i32 8192
  %and.i.i.i = shl i32 %9, 13
  %mul.i.i = and i32 %and.i.i.i, 24576
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data, align 4
  tail call fastcc void @mv_fill_sg(ptr noundef %qc)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !385
  tail call void @arm_heavy_mb() #10
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !386
  tail call void @arm_heavy_mb() #10
  %hw_tag = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 8
  %add.ptr6 = getelementptr i8, ptr %add.ptr2.i.i, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #10, !srcloc !330
  %13 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hw_tag, align 4
  %arrayidx9 = getelementptr %struct.mv_port_priv, ptr %12, i32 0, i32 5, i32 %14
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx9, align 4
  %add.ptr10 = getelementptr i8, ptr %add.ptr2.i.i, i32 556
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %17) #10, !srcloc !330
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  %ops = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %sff_exec_command = getelementptr inbounds %struct.ata_port_operations, ptr %20, i32 0, i32 43
  %21 = ptrtoint ptr %sff_exec_command to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sff_exec_command, align 4
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  tail call void %22(ptr noundef %1, ptr noundef %tf) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_bmdma_start(ptr nocapture noundef readonly %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 131072
  %10 = shl i32 %9, 14
  %mul.i.i.i.i = and i32 %10, -65536
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %mul.i.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr1.i.i.i.i, i32 8192
  %and.i.i.i = shl i32 %9, 13
  %mul.i.i = and i32 %and.i.i.i, 24576
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %11 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tf, align 4
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 548
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %and = shl i32 %12, 24
  %or = and i32 %and, 134217728
  %13 = xor i32 %or, 150994944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #10, !srcloc !330
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_bmdma_stop(ptr nocapture noundef readonly %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %host.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i.i, align 4
  %private_data.i.i.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i.i, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %7, i32 131072
  %10 = shl i32 %9, 14
  %mul.i.i.i.i.i = and i32 %10, -65536
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %mul.i.i.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr1.i.i.i.i.i, i32 8192
  %and.i.i.i.i = shl i32 %9, 13
  %mul.i.i.i = and i32 %and.i.i.i.i, 24576
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 548
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !326
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !387
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.mv_bmdma_stop_ap.exit_crit_edge, label %if.then.i

entry.mv_bmdma_stop_ap.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_bmdma_stop_ap.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and3.i = and i32 %12, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %13 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #10, !srcloc !330
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  tail call void @ata_sff_dma_pause(ptr noundef %1) #10
  br label %mv_bmdma_stop_ap.exit

mv_bmdma_stop_ap.exit:                            ; preds = %if.then.i, %entry.mv_bmdma_stop_ap.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mv_bmdma_status(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %5, i32 131072
  %8 = shl i32 %7, 14
  %mul.i.i.i.i = and i32 %8, -65536
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %mul.i.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr1.i.i.i.i, i32 8192
  %and.i.i.i = shl i32 %7, 13
  %mul.i.i = and i32 %and.i.i.i, 24576
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 552
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !388
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.else:                                          ; preds = %entry
  %and3 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else7, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %11 = trunc i32 %and3 to i8
  %phi.cast = or i8 %11, 4
  br label %if.end14

if.else7:                                         ; preds = %if.else
  %12 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host.i, align 4
  %private_data.i.i.i = getelementptr inbounds %struct.ata_host, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %private_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private_data.i.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i.i, align 4
  %18 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_no.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %17, i32 131072
  %20 = shl i32 %19, 14
  %mul.i.i.i.i.i = and i32 %20, -65536
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %mul.i.i.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr1.i.i.i.i.i, i32 8192
  %and.i.i.i.i = shl i32 %19, 13
  %mul.i.i.i = and i32 %and.i.i.i.i, 24576
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 548
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !326
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !387
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else7.mv_bmdma_stop_ap.exit_crit_edge, label %if.then.i

if.else7.mv_bmdma_stop_ap.exit_crit_edge:         ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_bmdma_stop_ap.exit

if.then.i:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  %and3.i = and i32 %22, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %23 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %23) #10, !srcloc !330
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  tail call void @ata_sff_dma_pause(ptr noundef %ap) #10
  br label %mv_bmdma_stop_ap.exit

mv_bmdma_stop_ap.exit:                            ; preds = %if.then.i, %if.else7.mv_bmdma_stop_ap.exit_crit_edge
  %altstatus_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 11
  %25 = ptrtoint ptr %altstatus_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %altstatus_addr, align 4
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %26) #10, !srcloc !383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !384
  %28 = lshr i8 %27, 5
  %29 = and i8 %28, 4
  %30 = xor i8 %29, 4
  br label %if.end14

if.end14:                                         ; preds = %mv_bmdma_stop_ap.exit, %if.then5, %entry.if.end14_crit_edge
  %status.0 = phi i8 [ %phi.cast, %if.then5 ], [ 1, %entry.if.end14_crit_edge ], [ %30, %mv_bmdma_stop_ap.exit ]
  ret i8 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_softreset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_std_hardreset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_eh_analyze_ncq_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_freeze(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sata_pmp_error_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_dma_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_qc_prep_iie(ptr nocapture noundef readonly %qc) #2 align 64 {
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
  %tf2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %protocol, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.151)
  switch i8 %5, label %entry.cleanup_crit_edge [
    i8 2, label %entry.if.end_crit_edge
    i8 6, label %entry.if.end_crit_edge144
  ]

entry.if.end_crit_edge144:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge144
  %command = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 14
  %7 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %command, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %8)
  %cmp9 = icmp eq i8 %8, 6
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %9 = ptrtoint ptr %tf2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tf2, align 4
  %and = lshr i32 %10, 3
  %and.lobit = and i32 %and, 1
  %hw_tag = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 8
  %11 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hw_tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %12)
  %cmp16 = icmp ugt i32 %12, 31
  br i1 %cmp16, label %do.end, label %if.end12.if.end32_crit_edge, !prof !350

if.end12.if.end32_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2150, i32 noundef 9, ptr noundef null) #10
  br label %if.end32

if.end32:                                         ; preds = %do.end, %if.end12.if.end32_crit_edge
  %13 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hw_tag, align 4
  %shl = shl i32 %14, 1
  %15 = or i32 %shl, %and.lobit
  %shl42 = shl i32 %14, 17
  %16 = or i32 %15, %shl42
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 128
  %pmp = getelementptr inbounds %struct.ata_link, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pmp, align 4
  %and44 = shl i32 %22, 12
  %shl45 = and i32 %and44, 61440
  %23 = or i32 %16, %shl45
  %or46 = xor i32 %23, 1
  %req_idx = getelementptr inbounds %struct.mv_port_priv, ptr %3, i32 0, i32 6
  %24 = ptrtoint ptr %req_idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %req_idx, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %arrayidx = getelementptr %struct.mv_crqb, ptr %27, i32 %25
  %arrayidx49 = getelementptr %struct.mv_port_priv, ptr %3, i32 0, i32 5, i32 %14
  %28 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx49, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx, align 4
  %addr_hi = getelementptr inbounds %struct.mv_crqb_iie, ptr %arrayidx, i32 0, i32 1
  %32 = ptrtoint ptr %addr_hi to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %addr_hi, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %or46)
  %flags55 = getelementptr inbounds %struct.mv_crqb_iie, ptr %arrayidx, i32 0, i32 2
  %34 = ptrtoint ptr %flags55 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %flags55, align 4
  %35 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %command, align 1
  %conv57 = zext i8 %36 to i32
  %shl58 = shl nuw nsw i32 %conv57, 16
  %feature = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 8
  %37 = ptrtoint ptr %feature to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %feature, align 1
  %conv59 = zext i8 %38 to i32
  %shl60 = shl nuw i32 %conv59, 24
  %or61 = or i32 %shl60, %shl58
  %39 = tail call i32 @llvm.bswap.i32(i32 %or61)
  %ata_cmd = getelementptr inbounds %struct.mv_crqb_iie, ptr %arrayidx, i32 0, i32 4
  %40 = ptrtoint ptr %ata_cmd to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %ata_cmd, align 4
  %lbal = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 10
  %41 = ptrtoint ptr %lbal to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %lbal, align 1
  %conv63 = zext i8 %42 to i32
  %lbam = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 11
  %43 = ptrtoint ptr %lbam to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %lbam, align 2
  %conv65 = zext i8 %44 to i32
  %shl66 = shl nuw nsw i32 %conv65, 8
  %or67 = or i32 %shl66, %conv63
  %lbah = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 12
  %45 = ptrtoint ptr %lbah to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %lbah, align 1
  %conv68 = zext i8 %46 to i32
  %shl69 = shl nuw nsw i32 %conv68, 16
  %or70 = or i32 %or67, %shl69
  %device = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 13
  %47 = ptrtoint ptr %device to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %device, align 4
  %conv71 = zext i8 %48 to i32
  %shl72 = shl nuw i32 %conv71, 24
  %or73 = or i32 %or70, %shl72
  %49 = tail call i32 @llvm.bswap.i32(i32 %or73)
  %arrayidx75 = getelementptr [4 x i32], ptr %ata_cmd, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx75, align 4
  %hob_lbal = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 5
  %51 = ptrtoint ptr %hob_lbal to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %hob_lbal, align 4
  %conv76 = zext i8 %52 to i32
  %hob_lbam = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 6
  %53 = ptrtoint ptr %hob_lbam to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %hob_lbam, align 1
  %conv78 = zext i8 %54 to i32
  %shl79 = shl nuw nsw i32 %conv78, 8
  %or80 = or i32 %shl79, %conv76
  %hob_lbah = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 7
  %55 = ptrtoint ptr %hob_lbah to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %hob_lbah, align 2
  %conv81 = zext i8 %56 to i32
  %shl82 = shl nuw nsw i32 %conv81, 16
  %or83 = or i32 %or80, %shl82
  %hob_feature = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 3
  %57 = ptrtoint ptr %hob_feature to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %hob_feature, align 2
  %conv84 = zext i8 %58 to i32
  %shl85 = shl nuw i32 %conv84, 24
  %or86 = or i32 %or83, %shl85
  %59 = tail call i32 @llvm.bswap.i32(i32 %or86)
  %arrayidx88 = getelementptr [4 x i32], ptr %ata_cmd, i32 0, i32 2
  %60 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %arrayidx88, align 4
  %nsect = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 9
  %61 = ptrtoint ptr %nsect to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %nsect, align 4
  %conv89 = zext i8 %62 to i32
  %hob_nsect = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 4
  %63 = ptrtoint ptr %hob_nsect to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %hob_nsect, align 1
  %conv91 = zext i8 %64 to i32
  %shl92 = shl nuw nsw i32 %conv91, 8
  %or93 = or i32 %shl92, %conv89
  %65 = tail call i32 @llvm.bswap.i32(i32 %or93)
  %arrayidx95 = getelementptr [4 x i32], ptr %ata_cmd, i32 0, i32 3
  %66 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx95, align 4
  %flags96 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %67 = ptrtoint ptr %flags96 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags96, align 4
  %and97 = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end32.cleanup_crit_edge, label %if.end100

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end100:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mv_fill_sg(ptr noundef %qc)
  br label %cleanup

cleanup:                                          ; preds = %if.end100, %if.end32.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv5_phy_errata(ptr nocapture noundef readonly %hpriv, ptr noundef %mmio, i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %mmio, i32 131072
  %0 = shl i32 %port, 14
  %mul.i.i.i = and i32 %0, -65536
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %and.i.i = shl i32 %port, 8
  %add.i = and i32 %and.i.i, 768
  %mul.i = add nuw nsw i32 %add.i, 256
  %add.ptr.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 %mul.i
  %1 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hpriv, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 48
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !389
  %4 = or i32 %3, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !390
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #10, !srcloc !330
  %add.ptr7 = getelementptr i8, ptr %add.ptr.i, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !391
  %6 = and i32 %5, -50331649
  %7 = or i32 %6, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !392
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %7) #10, !srcloc !330
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr19 = getelementptr i8, ptr %add.ptr.i, i32 116
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !393
  %9 = and i32 %8, 535298047
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %arrayidx = getelementptr %struct.mv_host_priv, ptr %hpriv, i32 0, i32 3, i32 %port
  %pre = getelementptr %struct.mv_host_priv, ptr %hpriv, i32 0, i32 3, i32 %port, i32 1
  %11 = ptrtoint ptr %pre to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pre, align 4
  %or24 = or i32 %10, %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %or27 = or i32 %or24, %14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !394
  tail call void @arm_heavy_mb() #10
  %15 = tail call i32 @llvm.bswap.i32(i32 %or27)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %15) #10, !srcloc !330
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv5_enable_leds(ptr nocapture noundef readnone %hpriv, ptr noundef %mmio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !395
  tail call void @arm_heavy_mb() #10
  %add.ptr = getelementptr i8, ptr %mmio, i32 66800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !330
  %add.ptr1 = getelementptr i8, ptr %mmio, i32 3372
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #10, !srcloc !326
  %1 = lshr i32 %0, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !396
  %or = or i32 %1, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !397
  tail call void @arm_heavy_mb() #10
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %2) #10, !srcloc !330
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv5_read_preamp(ptr nocapture noundef writeonly %hpriv, i32 noundef %idx, ptr noundef %mmio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %mmio, i32 131072
  %0 = shl i32 %idx, 14
  %mul.i.i.i = and i32 %0, -65536
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %and.i.i = shl i32 %idx, 8
  %add.i = and i32 %and.i.i, 768
  %mul.i = add nuw nsw i32 %add.i, 256
  %add.ptr.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 %mul.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 116
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !398
  %and = and i32 %2, 6144
  %arrayidx = getelementptr %struct.mv_host_priv, ptr %hpriv, i32 0, i32 3, i32 %idx
  %pre = getelementptr %struct.mv_host_priv, ptr %hpriv, i32 0, i32 3, i32 %idx, i32 1
  %3 = ptrtoint ptr %pre to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and, ptr %pre, align 4
  %and4 = and i32 %2, 224
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and4, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv5_reset_hc(ptr nocapture noundef readonly %host, ptr noundef %mmio, i32 noundef %n_hc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_hc)
  %cmp20.not = icmp eq i32 %n_hc, 0
  br i1 %cmp20.not, label %entry.for.end6_crit_edge, label %for.cond1.preheader.lr.ph

entry.for.end6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end6

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %add.ptr.i.i.i.i = getelementptr i8, ptr %mmio, i32 131072
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %mmio, i32 139264
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %hc.021 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc5, %for.end.for.cond1.preheader_crit_edge ]
  %mul = shl i32 %hc.021, 2
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.cond1.preheader
  %port.019 = phi i32 [ 0, %for.cond1.preheader ], [ %inc, %for.body3.for.body3_crit_edge ]
  %add = add nuw nsw i32 %port.019, %mul
  %2 = shl i32 %add, 14
  %mul.i.i.i.i = and i32 %2, -65536
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr1.i.i.i.i, i32 %mul.i.i.i.i
  %and.i.i.i = shl i32 %add, 13
  %mul.i.i = and i32 %and.i.i.i, 24576
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call fastcc void @mv_reset_channel(ptr noundef %1, ptr noundef %mmio, i32 noundef %add) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !399
  tail call void @arm_heavy_mb() #10
  %add.ptr.i = getelementptr i8, ptr %add.ptr2.i.i, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !400
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 520159232) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !401
  tail call void @arm_heavy_mb() #10
  %add.ptr8.i = getelementptr i8, ptr %add.ptr2.i.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !402
  tail call void @arm_heavy_mb() #10
  %add.ptr12.i = getelementptr i8, ptr %add.ptr2.i.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !403
  tail call void @arm_heavy_mb() #10
  %add.ptr16.i = getelementptr i8, ptr %add.ptr2.i.i, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !404
  tail call void @arm_heavy_mb() #10
  %add.ptr20.i = getelementptr i8, ptr %add.ptr2.i.i, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !405
  tail call void @arm_heavy_mb() #10
  %add.ptr24.i = getelementptr i8, ptr %add.ptr2.i.i, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !406
  tail call void @arm_heavy_mb() #10
  %add.ptr28.i = getelementptr i8, ptr %add.ptr2.i.i, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !407
  tail call void @arm_heavy_mb() #10
  %add.ptr32.i = getelementptr i8, ptr %add.ptr2.i.i, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !408
  tail call void @arm_heavy_mb() #10
  %add.ptr36.i = getelementptr i8, ptr %add.ptr2.i.i, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !409
  tail call void @arm_heavy_mb() #10
  %add.ptr40.i = getelementptr i8, ptr %add.ptr2.i.i, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !410
  tail call void @arm_heavy_mb() #10
  %add.ptr44.i = getelementptr i8, ptr %add.ptr2.i.i, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !411
  tail call void @arm_heavy_mb() #10
  %add.ptr48.i = getelementptr i8, ptr %add.ptr2.i.i, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 -1140850688) #10, !srcloc !330
  %inc = add nuw nsw i32 %port.019, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3

for.end:                                          ; preds = %for.body3
  %mul.i.i15 = shl i32 %hc.021, 16
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %mul.i.i15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !412
  tail call void @arm_heavy_mb() #10
  %add.ptr.i16 = getelementptr i8, ptr %add.ptr1.i.i, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !413
  tail call void @arm_heavy_mb() #10
  %add.ptr4.i = getelementptr i8, ptr %add.ptr1.i.i, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !414
  tail call void @arm_heavy_mb() #10
  %add.ptr8.i17 = getelementptr i8, ptr %add.ptr1.i.i, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i17, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !415
  tail call void @arm_heavy_mb() #10
  %add.ptr12.i18 = getelementptr i8, ptr %add.ptr1.i.i, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i18, i32 0) #10, !srcloc !330
  %add.ptr13.i = getelementptr i8, ptr %add.ptr1.i.i, i32 32
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !416
  %4 = and i32 %3, 471604252
  %5 = or i32 %4, 50529027
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !417
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %5) #10, !srcloc !330
  %inc5 = add nuw i32 %hc.021, 1
  %exitcond22.not = icmp eq i32 %inc5, %n_hc
  br i1 %exitcond22.not, label %for.end.for.end6_crit_edge, label %for.end.for.cond1.preheader_crit_edge

for.end.for.cond1.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.preheader

for.end.for.end6_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end6

for.end6:                                         ; preds = %for.end.for.end6_crit_edge, %entry.for.end6_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv5_reset_flash(ptr nocapture noundef readnone %hpriv, ptr noundef %mmio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !418
  tail call void @arm_heavy_mb() #10
  %add.ptr = getelementptr i8, ptr %mmio, i32 66668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -12529) #10, !srcloc !330
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv5_reset_bus(ptr nocapture noundef readonly %host, ptr noundef %mmio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %device = getelementptr i8, ptr %1, i32 -102
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20608, i16 %3)
  %cmp = icmp eq i16 %3, 20608
  br i1 %cmp, label %land.rhs, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.rhs:                                         ; preds = %entry
  %revision = getelementptr i8, ptr %1, i32 -92
  %4 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp3 = icmp eq i8 %5, 0
  br i1 %cmp3, label %land.rhs.if.end_crit_edge, label %land.rhs.if.then_crit_edge

land.rhs.if.then_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.rhs.if.then_crit_edge, %entry.if.then_crit_edge
  %add.ptr6 = getelementptr i8, ptr %mmio, i32 3372
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !419
  %7 = or i32 %6, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !420
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %7) #10, !srcloc !330
  br label %if.end

if.end:                                           ; preds = %if.then, %land.rhs.if.end_crit_edge
  tail call void @mv_reset_pci_bus(ptr noundef %host, ptr noundef %mmio)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_reset_pci_bus(ptr nocapture noundef readonly %host, ptr noundef %mmio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %mmio, i32 3328
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !421
  %3 = and i32 %2, -65281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !422
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !423
  tail call void @arm_heavy_mb() #10
  %add.ptr7 = getelementptr i8, ptr %mmio, i32 3332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !424
  tail call void @arm_heavy_mb() #10
  %add.ptr11 = getelementptr i8, ptr %mmio, i32 3128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !425
  tail call void @arm_heavy_mb() #10
  %add.ptr15 = getelementptr i8, ptr %mmio, i32 7428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 -16776960) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !426
  tail call void @arm_heavy_mb() #10
  %add.ptr19 = getelementptr i8, ptr %mmio, i32 3112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !427
  tail call void @arm_heavy_mb() #10
  %irq_cause_offset = getelementptr inbounds %struct.mv_host_priv, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %irq_cause_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_cause_offset, align 4
  %add.ptr23 = getelementptr i8, ptr %mmio, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !428
  tail call void @arm_heavy_mb() #10
  %irq_mask_offset = getelementptr inbounds %struct.mv_host_priv, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %irq_mask_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_mask_offset, align 4
  %add.ptr27 = getelementptr i8, ptr %mmio, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !429
  tail call void @arm_heavy_mb() #10
  %add.ptr31 = getelementptr i8, ptr %mmio, i32 7488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !430
  tail call void @arm_heavy_mb() #10
  %add.ptr35 = getelementptr i8, ptr %mmio, i32 7492
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !431
  tail call void @arm_heavy_mb() #10
  %add.ptr39 = getelementptr i8, ptr %mmio, i32 7496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !432
  tail call void @arm_heavy_mb() #10
  %add.ptr43 = getelementptr i8, ptr %mmio, i32 7504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 0) #10, !srcloc !330
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv6_phy_errata(ptr nocapture noundef readonly %hpriv, ptr noundef %mmio, i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %mmio, i32 131072
  %0 = shl i32 %port, 14
  %mul.i.i.i = and i32 %0, -65536
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 8192
  %and.i.i = shl i32 %port, 13
  %mul.i = and i32 %and.i.i, 24576
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %1 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hpriv, align 4
  %and = and i32 %2, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %add.ptr2.i, i32 816
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !433
  %4 = and i32 %3, -385
  %5 = or i32 %4, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !434
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #10, !srcloc !330
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 42949600) #10
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !435
  %8 = and i32 %7, -385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !436
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #10, !srcloc !330
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 42949600) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr20 = getelementptr i8, ptr %add.ptr2.i, i32 784
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !437
  %11 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hpriv, align 4
  br i1 %tobool.not, label %if.end.do.body54_crit_edge, label %if.then33

if.end.do.body54_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54

if.then33:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr36 = getelementptr i8, ptr %add.ptr2.i, i32 788
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #10, !srcloc !326
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !438
  %15 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hpriv, align 4
  %and41 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %and44 = and i32 %14, -1575223296
  %or45 = or i32 %and44, 5
  %and46 = and i32 %14, -4
  %or47 = or i32 %and46, 1
  %m4.0 = select i1 %tobool42.not, i32 %or47, i32 %or45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !439
  tail call void @arm_heavy_mb() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %m4.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %17) #10, !srcloc !330
  br label %do.body54

do.body54:                                        ; preds = %if.then33, %if.end.do.body54_crit_edge
  %and27 = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %18 = lshr i32 %10, 24
  %and24 = and i32 %18, 31
  %or25 = or i32 %and24, -1431650272
  %and30 = and i32 %or25, -1431650269
  %spec.select = select i1 %tobool28.not, i32 %or25, i32 %and30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !440
  tail call void @arm_heavy_mb() #10
  %19 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %19) #10, !srcloc !330
  %add.ptr60 = getelementptr i8, ptr %add.ptr2.i, i32 816
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !441
  %21 = and i32 %20, 536412159
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %arrayidx = getelementptr %struct.mv_host_priv, ptr %hpriv, i32 0, i32 3, i32 %port
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %or65 = or i32 %22, %24
  %pre = getelementptr %struct.mv_host_priv, ptr %hpriv, i32 0, i32 3, i32 %port, i32 1
  %25 = ptrtoint ptr %pre to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pre, align 4
  %or68 = or i32 %or65, %26
  %and69 = and i32 %or68, -65537
  %27 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hpriv, align 4
  %and71 = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  %and74 = and i32 %or68, 1022365664
  %or75 = or i32 %and74, 36879
  %m2.0 = select i1 %tobool72.not, i32 %and69, i32 %or75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !442
  tail call void @arm_heavy_mb() #10
  %29 = tail call i32 @llvm.bswap.i32(i32 %m2.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %29) #10, !srcloc !330
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv6_enable_leds(ptr nocapture noundef readnone %hpriv, ptr noundef %mmio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !443
  tail call void @arm_heavy_mb() #10
  %add.ptr = getelementptr i8, ptr %mmio, i32 66800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1610612736) #10, !srcloc !330
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv6_read_preamp(ptr nocapture noundef writeonly %hpriv, i32 noundef %idx, ptr noundef %mmio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %mmio, i32 98520
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !444
  %1 = and i32 %0, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i.i = getelementptr i8, ptr %mmio, i32 131072
  %2 = shl i32 %idx, 14
  %mul.i.i.i = and i32 %2, -65536
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 8192
  %and.i.i = shl i32 %idx, 13
  %mul.i = and i32 %and.i.i, 24576
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %add.ptr8 = getelementptr i8, ptr %add.ptr2.i, i32 816
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #10, !srcloc !326
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !445
  %and12 = and i32 %4, 1792
  %and16 = and i32 %4, 224
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %and12.sink = phi i32 [ %and12, %if.end ], [ 1792, %entry.cleanup_crit_edge ]
  %and16.sink = phi i32 [ %and16, %if.end ], [ 32, %entry.cleanup_crit_edge ]
  %5 = getelementptr %struct.mv_host_priv, ptr %hpriv, i32 0, i32 3, i32 %idx
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and12.sink, ptr %5, align 4
  %7 = getelementptr %struct.mv_host_priv, ptr %hpriv, i32 0, i32 3, i32 %idx, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and16.sink, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv6_reset_hc(ptr nocapture noundef readonly %host, ptr noundef %mmio, i32 noundef %n_hc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %mmio, i32 3376
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !446
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !447
  tail call void @arm_heavy_mb() #10
  %1 = or i32 %0, 67108864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #10, !srcloc !330
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %for.cond.done.sink.split_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.done.sink.split_crit_edge:               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.sink.split

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.083 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #10
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !448
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond, label %do.body14

do.body14:                                        ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !449
  tail call void @arm_heavy_mb() #10
  %or18 = or i32 %4, 16
  %5 = tail call i32 @llvm.bswap.i32(i32 %or18)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #10, !srcloc !330
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !450
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #10
  %and25 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body14.1, label %do.body14.do.end28_crit_edge

do.body14.do.end28_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

do.body14.1:                                      ; preds = %do.body14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !449
  tail call void @arm_heavy_mb() #10
  %or18.1 = or i32 %7, 16
  %9 = tail call i32 @llvm.bswap.i32(i32 %or18.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #10, !srcloc !330
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !450
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #10
  %and25.1 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.1)
  %tobool26.not.1 = icmp eq i32 %and25.1, 0
  br i1 %tobool26.not.1, label %do.body14.2, label %do.body14.1.do.end28_crit_edge

do.body14.1.do.end28_crit_edge:                   ; preds = %do.body14.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

do.body14.2:                                      ; preds = %do.body14.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !449
  tail call void @arm_heavy_mb() #10
  %or18.2 = or i32 %11, 16
  %13 = tail call i32 @llvm.bswap.i32(i32 %or18.2)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #10, !srcloc !330
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !450
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #10
  %and25.2 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.2)
  %tobool26.not.2 = icmp eq i32 %and25.2, 0
  br i1 %tobool26.not.2, label %do.body14.3, label %do.body14.2.do.end28_crit_edge

do.body14.2.do.end28_crit_edge:                   ; preds = %do.body14.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

do.body14.3:                                      ; preds = %do.body14.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !449
  tail call void @arm_heavy_mb() #10
  %or18.3 = or i32 %15, 16
  %17 = tail call i32 @llvm.bswap.i32(i32 %or18.3)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %17) #10, !srcloc !330
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !450
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #10
  %and25.3 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.3)
  %tobool26.not.3 = icmp eq i32 %and25.3, 0
  br i1 %tobool26.not.3, label %do.body14.4, label %do.body14.3.do.end28_crit_edge

do.body14.3.do.end28_crit_edge:                   ; preds = %do.body14.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

do.body14.4:                                      ; preds = %do.body14.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !449
  tail call void @arm_heavy_mb() #10
  %or18.4 = or i32 %19, 16
  %21 = tail call i32 @llvm.bswap.i32(i32 %or18.4)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %21) #10, !srcloc !330
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !450
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #10
  %and25.4 = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.4)
  %tobool26.not.4 = icmp eq i32 %and25.4, 0
  br i1 %tobool26.not.4, label %do.body14.5, label %do.body14.4.do.end28_crit_edge

do.body14.4.do.end28_crit_edge:                   ; preds = %do.body14.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

do.body14.5:                                      ; preds = %do.body14.4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !449
  tail call void @arm_heavy_mb() #10
  %or18.5 = or i32 %23, 16
  %25 = tail call i32 @llvm.bswap.i32(i32 %or18.5)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %25) #10, !srcloc !330
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !450
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #10
  %and25.5 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.5)
  %tobool26.not.5 = icmp eq i32 %and25.5, 0
  br label %do.end28

do.end28:                                         ; preds = %do.body14.5, %do.body14.4.do.end28_crit_edge, %do.body14.3.do.end28_crit_edge, %do.body14.2.do.end28_crit_edge, %do.body14.1.do.end28_crit_edge, %do.body14.do.end28_crit_edge
  %.lcssa = phi i32 [ %7, %do.body14.do.end28_crit_edge ], [ %11, %do.body14.1.do.end28_crit_edge ], [ %15, %do.body14.2.do.end28_crit_edge ], [ %19, %do.body14.3.do.end28_crit_edge ], [ %23, %do.body14.4.do.end28_crit_edge ], [ %27, %do.body14.5 ]
  %tobool26.not.lcssa = phi i1 [ %tobool26.not, %do.body14.do.end28_crit_edge ], [ %tobool26.not.1, %do.body14.1.do.end28_crit_edge ], [ %tobool26.not.2, %do.body14.2.do.end28_crit_edge ], [ %tobool26.not.3, %do.body14.3.do.end28_crit_edge ], [ %tobool26.not.4, %do.body14.4.do.end28_crit_edge ], [ %tobool26.not.5, %do.body14.5 ]
  br i1 %tobool26.not.lcssa, label %do.end28.done.sink.split_crit_edge, label %do.body37

do.end28.done.sink.split_crit_edge:               ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.sink.split

do.body37:                                        ; preds = %do.end28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !451
  tail call void @arm_heavy_mb() #10
  %and41 = and i32 %.lcssa, -21
  %29 = tail call i32 @llvm.bswap.i32(i32 %and41)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %29) #10, !srcloc !330
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !452
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #10
  %and48 = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %do.body37.do.end54_crit_edge, label %do.body37.1

do.body37.do.end54_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54

do.body37.1:                                      ; preds = %do.body37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !451
  tail call void @arm_heavy_mb() #10
  %and41.1 = and i32 %31, -21
  %33 = tail call i32 @llvm.bswap.i32(i32 %and41.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %33) #10, !srcloc !330
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !452
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #10
  %and48.1 = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.1)
  %tobool49.not.1 = icmp eq i32 %and48.1, 0
  br i1 %tobool49.not.1, label %do.body37.1.do.end54_crit_edge, label %do.body37.2

do.body37.1.do.end54_crit_edge:                   ; preds = %do.body37.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54

do.body37.2:                                      ; preds = %do.body37.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !451
  tail call void @arm_heavy_mb() #10
  %and41.2 = and i32 %35, -21
  %37 = tail call i32 @llvm.bswap.i32(i32 %and41.2)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %37) #10, !srcloc !330
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !452
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748) #10
  %and48.2 = and i32 %39, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.2)
  %tobool49.not.2 = icmp eq i32 %and48.2, 0
  br i1 %tobool49.not.2, label %do.body37.2.do.end54_crit_edge, label %do.body37.3

do.body37.2.do.end54_crit_edge:                   ; preds = %do.body37.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54

do.body37.3:                                      ; preds = %do.body37.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !451
  tail call void @arm_heavy_mb() #10
  %and41.3 = and i32 %39, -21
  %41 = tail call i32 @llvm.bswap.i32(i32 %and41.3)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %41) #10, !srcloc !330
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !452
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748) #10
  %and48.3 = and i32 %43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.3)
  %tobool49.not.3 = icmp eq i32 %and48.3, 0
  br i1 %tobool49.not.3, label %do.body37.3.do.end54_crit_edge, label %do.body37.4

do.body37.3.do.end54_crit_edge:                   ; preds = %do.body37.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54

do.body37.4:                                      ; preds = %do.body37.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !451
  tail call void @arm_heavy_mb() #10
  %and41.4 = and i32 %43, -21
  %45 = tail call i32 @llvm.bswap.i32(i32 %and41.4)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %45) #10, !srcloc !330
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !452
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748) #10
  %and48.4 = and i32 %47, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.4)
  %tobool49.not.4 = icmp eq i32 %and48.4, 0
  br i1 %tobool49.not.4, label %do.body37.4.do.end54_crit_edge, label %do.body37.5

do.body37.4.do.end54_crit_edge:                   ; preds = %do.body37.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54

do.body37.5:                                      ; preds = %do.body37.4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !451
  tail call void @arm_heavy_mb() #10
  %and41.5 = and i32 %47, -21
  %49 = tail call i32 @llvm.bswap.i32(i32 %and41.5)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %49) #10, !srcloc !330
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !452
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748) #10
  %52 = and i32 %50, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool49.not.5 = icmp eq i32 %52, 0
  br label %do.end54

do.end54:                                         ; preds = %do.body37.5, %do.body37.4.do.end54_crit_edge, %do.body37.3.do.end54_crit_edge, %do.body37.2.do.end54_crit_edge, %do.body37.1.do.end54_crit_edge, %do.body37.do.end54_crit_edge
  %tobool49.not.lcssa = phi i1 [ %tobool49.not, %do.body37.do.end54_crit_edge ], [ %tobool49.not.1, %do.body37.1.do.end54_crit_edge ], [ %tobool49.not.2, %do.body37.2.do.end54_crit_edge ], [ %tobool49.not.3, %do.body37.3.do.end54_crit_edge ], [ %tobool49.not.4, %do.body37.4.do.end54_crit_edge ], [ %tobool49.not.5, %do.body37.5 ]
  br i1 %tobool49.not.lcssa, label %do.end54.done_crit_edge, label %do.end54.done.sink.split_crit_edge

do.end54.done.sink.split_crit_edge:               ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.sink.split

do.end54.done_crit_edge:                          ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

done.sink.split:                                  ; preds = %do.end54.done.sink.split_crit_edge, %do.end28.done.sink.split_crit_edge, %for.cond.done.sink.split_crit_edge
  %.str.55.sink = phi ptr [ @.str.52, %do.end28.done.sink.split_crit_edge ], [ @.str.55, %do.end54.done.sink.split_crit_edge ], [ @.str.49, %for.cond.done.sink.split_crit_edge ]
  %dev61 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %53 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev61, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull %.str.55.sink) #13
  br label %done

done:                                             ; preds = %done.sink.split, %do.end54.done_crit_edge
  %rc.0 = phi i32 [ 0, %do.end54.done_crit_edge ], [ 1, %done.sink.split ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv6_reset_flash(ptr nocapture noundef readnone %hpriv, ptr noundef %mmio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !418
  tail call void @arm_heavy_mb() #10
  %add.ptr.i = getelementptr i8, ptr %mmio, i32 66668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -12529) #10, !srcloc !330
  %add.ptr = getelementptr i8, ptr %mmio, i32 66800
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !453
  %and = and i32 %0, 50331648
  %or = or i32 %and, 1610612736
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !454
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or) #10, !srcloc !330
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_soc_65n_phy_errata(ptr nocapture noundef readnone %hpriv, ptr noundef %mmio, i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %mmio, i32 131072
  %0 = shl i32 %port, 14
  %mul.i.i.i = and i32 %0, -65536
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 8192
  %and.i.i = shl i32 %port, 13
  %mul.i = and i32 %and.i.i, 24576
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %add.ptr = getelementptr i8, ptr %add.ptr2.i, i32 784
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !455
  %2 = and i32 %1, -121
  %3 = or i32 %2, 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !456
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #10, !srcloc !330
  %add.ptr8 = getelementptr i8, ptr %add.ptr2.i, i32 788
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !457
  %5 = and i32 %4, -16777473
  %6 = or i32 %5, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !458
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %6) #10, !srcloc !330
  %add.ptr20 = getelementptr i8, ptr %add.ptr2.i, i32 920
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !459
  %8 = and i32 %7, -255852545
  %9 = or i32 %8, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !460
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %9) #10, !srcloc !330
  %add.ptr33 = getelementptr i8, ptr %add.ptr2.i, i32 924
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !461
  %11 = and i32 %10, -255852545
  %12 = or i32 %11, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !462
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %12) #10, !srcloc !330
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mv_soc_enable_leds(ptr nocapture noundef %hpriv, ptr nocapture noundef %mmio) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_soc_reset_hc(ptr nocapture noundef readonly %host, ptr noundef %mmio, i32 noundef %n_hc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %n_ports = getelementptr inbounds %struct.mv_host_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.not = icmp eq i32 %3, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %mmio, i32 139264
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %port.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = shl i32 %port.09, 14
  %mul.i.i.i.i = and i32 %4, -65536
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr1.i.i.i.i, i32 %mul.i.i.i.i
  %and.i.i.i = shl i32 %port.09, 13
  %mul.i.i = and i32 %and.i.i.i, 24576
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call fastcc void @mv_reset_channel(ptr noundef %1, ptr noundef %mmio, i32 noundef %port.09) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !463
  tail call void @arm_heavy_mb() #10
  %add.ptr.i = getelementptr i8, ptr %add.ptr2.i.i, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !464
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 521142272) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !465
  tail call void @arm_heavy_mb() #10
  %add.ptr8.i = getelementptr i8, ptr %add.ptr2.i.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !466
  tail call void @arm_heavy_mb() #10
  %add.ptr12.i = getelementptr i8, ptr %add.ptr2.i.i, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !467
  tail call void @arm_heavy_mb() #10
  %add.ptr16.i = getelementptr i8, ptr %add.ptr2.i.i, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !468
  tail call void @arm_heavy_mb() #10
  %add.ptr20.i = getelementptr i8, ptr %add.ptr2.i.i, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !469
  tail call void @arm_heavy_mb() #10
  %add.ptr24.i = getelementptr i8, ptr %add.ptr2.i.i, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !470
  tail call void @arm_heavy_mb() #10
  %add.ptr28.i = getelementptr i8, ptr %add.ptr2.i.i, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !471
  tail call void @arm_heavy_mb() #10
  %add.ptr32.i = getelementptr i8, ptr %add.ptr2.i.i, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !472
  tail call void @arm_heavy_mb() #10
  %add.ptr36.i = getelementptr i8, ptr %add.ptr2.i.i, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !473
  tail call void @arm_heavy_mb() #10
  %add.ptr40.i = getelementptr i8, ptr %add.ptr2.i.i, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !474
  tail call void @arm_heavy_mb() #10
  %add.ptr44.i = getelementptr i8, ptr %add.ptr2.i.i, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !475
  tail call void @arm_heavy_mb() #10
  %add.ptr48.i = getelementptr i8, ptr %add.ptr2.i.i, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 524288) #10, !srcloc !330
  %inc = add nuw i32 %port.09, 1
  %5 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_ports, align 4
  %cmp = icmp ult i32 %inc, %6
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !476
  tail call void @arm_heavy_mb() #10
  %add.ptr.i6 = getelementptr i8, ptr %mmio, i32 131084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !477
  tail call void @arm_heavy_mb() #10
  %add.ptr4.i = getelementptr i8, ptr %mmio, i32 131088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !478
  tail call void @arm_heavy_mb() #10
  %add.ptr8.i7 = getelementptr i8, ptr %mmio, i32 131092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i7, i32 0) #10, !srcloc !330
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mv_soc_reset_flash(ptr nocapture noundef %hpriv, ptr nocapture noundef %mmio) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mv_soc_reset_bus(ptr nocapture noundef %host, ptr nocapture noundef %mmio) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv_soc_read_preamp(ptr nocapture noundef writeonly %hpriv, i32 noundef %idx, ptr noundef %mmio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %mmio, i32 131072
  %0 = shl i32 %idx, 14
  %mul.i.i.i = and i32 %0, -65536
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 8192
  %and.i.i = shl i32 %idx, 13
  %mul.i = and i32 %and.i.i, 24576
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %add.ptr = getelementptr i8, ptr %add.ptr2.i, i32 816
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !479
  %and = and i32 %2, 1792
  %arrayidx = getelementptr %struct.mv_host_priv, ptr %hpriv, i32 0, i32 3, i32 %idx
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and, ptr %arrayidx, align 4
  %and4 = and i32 %2, 224
  %pre = getelementptr %struct.mv_host_priv, ptr %hpriv, i32 0, i32 3, i32 %idx, i32 1
  %4 = ptrtoint ptr %pre to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and4, ptr %pre, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_pci_error(ptr nocapture noundef readonly %host, ptr noundef %mmio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %irq_cause_offset = getelementptr inbounds %struct.mv_host_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %irq_cause_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_cause_offset, align 4
  %add.ptr = getelementptr i8, ptr %mmio, i32 %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !480
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.71, i32 noundef %5) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_pci_error.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_pci_error, %if.then)) #10
          to label %do.end9 [label %if.then], !srcloc !336

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_pci_error.__UNIQUE_ID_ddebug335, ptr noundef %9, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.72) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then, %entry
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %add.ptr12 = getelementptr i8, ptr %11, i32 -136
  tail call fastcc void @mv_dump_all_regs(ptr noundef %mmio, ptr noundef %add.ptr12)
  %12 = ptrtoint ptr %irq_cause_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq_cause_offset, align 4
  %add.ptr14 = getelementptr i8, ptr %mmio, i32 %13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 0) #10, !srcloc !330
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  %n_ports = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 3
  %15 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp5.not = icmp eq i32 %16, 0
  br i1 %cmp5.not, label %do.end9.for.end_crit_edge, label %do.end9.for.body_crit_edge

do.end9.for.body_crit_edge:                       ; preds = %do.end9
  br label %for.body

do.end9.for.end_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end9.for.body_crit_edge
  %i.07 = phi i32 [ %inc31, %for.inc.for.body_crit_edge ], [ 0, %do.end9.for.body_crit_edge ]
  %printed.06 = phi i32 [ %printed.1, %for.inc.for.body_crit_edge ], [ 0, %do.end9.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ata_host, ptr %host, i32 0, i32 12, i32 %i.07
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %link = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 25
  %call15 = tail call zeroext i1 @ata_link_offline(ptr noundef %link) #10
  br i1 %call15, label %for.body.for.inc_crit_edge, label %if.then16

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then16:                                        ; preds = %for.body
  %eh_info = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 25, i32 11
  tail call void @ata_ehi_clear_desc(ptr noundef %eh_info) #10
  %inc = add i32 %printed.06, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %printed.06)
  %tobool18.not = icmp eq i32 %printed.06, 0
  br i1 %tobool18.not, label %if.then19, label %if.then16.if.end20_crit_edge

if.then16.if.end20_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info, ptr noundef nonnull @.str.74, i32 noundef %5) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then16.if.end20_crit_edge
  %action = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 25, i32 11, i32 3
  %19 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 6, ptr %action, align 4
  %active_tag = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 25, i32 3
  %20 = ptrtoint ptr %active_tag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %active_tag, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %21)
  %22 = icmp ugt i32 %21, 32
  %arrayidx.i.i = getelementptr %struct.ata_port, ptr %18, i32 0, i32 19, i32 %21
  %tobool.not11.i = icmp eq ptr %arrayidx.i.i, null
  %tobool.not.i = or i1 %22, %tobool.not11.i
  br i1 %tobool.not.i, label %if.end20.if.else_crit_edge, label %lor.lhs.false.i, !prof !350

if.end20.if.else_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

lor.lhs.false.i:                                  ; preds = %if.end20
  %ops.i = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %error_handler.i = getelementptr inbounds %struct.ata_port_operations, ptr %24, i32 0, i32 22
  %25 = ptrtoint ptr %error_handler.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %error_handler.i, align 4
  %tobool4.not.i = icmp eq ptr %26, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i.if.then24_crit_edge, label %if.end.i

lor.lhs.false.i.if.then24_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.end.i:                                         ; preds = %lor.lhs.false.i
  %flags.i = getelementptr %struct.ata_port, ptr %18, i32 0, i32 19, i32 %21, i32 6
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %28, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1
  br i1 %cmp.i, label %if.end.i.if.then24_crit_edge, label %if.end.i.if.else_crit_edge

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end.i.if.then24_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.then24:                                        ; preds = %if.end.i.if.then24_crit_edge, %lor.lhs.false.i.if.then24_crit_edge
  %err_mask25 = getelementptr %struct.ata_port, ptr %18, i32 0, i32 19, i32 %21, i32 20
  br label %if.end28

if.else:                                          ; preds = %if.end.i.if.else_crit_edge, %if.end20.if.else_crit_edge
  %err_mask26 = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 25, i32 11, i32 2
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then24
  %err_mask26.sink8 = phi ptr [ %err_mask26, %if.else ], [ %err_mask25, %if.then24 ]
  %29 = ptrtoint ptr %err_mask26.sink8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %err_mask26.sink8, align 4
  %or27 = or i32 %30, 32
  store i32 %or27, ptr %err_mask26.sink8, align 4
  %call29 = tail call i32 @ata_port_freeze(ptr noundef %18) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end28, %for.body.for.inc_crit_edge
  %printed.1 = phi i32 [ %printed.06, %for.body.for.inc_crit_edge ], [ %inc, %if.end28 ]
  %inc31 = add nuw i32 %i.07, 1
  %31 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n_ports, align 4
  %cmp = icmp ult i32 %inc31, %32
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end9.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_dump_all_regs(ptr noundef %mmio_base, ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %linebuf.i297 = alloca [38 x i8], align 1
  %linebuf.i272 = alloca [38 x i8], align 1
  %linebuf.i245 = alloca [38 x i8], align 1
  %linebuf.i219 = alloca [38 x i8], align 1
  %linebuf.i194 = alloca [38 x i8], align 1
  %linebuf.i169 = alloca [38 x i8], align 1
  %linebuf.i156 = alloca [38 x i8], align 1
  %dw.i = alloca i32, align 4
  %linebuf.i = alloca [38 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_dump_all_regs.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_dump_all_regs, %if.then)) #10
          to label %do.body3 [label %if.then], !srcloc !336

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_dump_all_regs.__UNIQUE_ID_ddebug329, ptr noundef %dev, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.75, i32 noundef 0, i32 noundef 7) #10
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_dump_all_regs.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_dump_all_regs, %if.then15)) #10
          to label %do.end19 [label %if.then15], !srcloc !336

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_dump_all_regs.__UNIQUE_ID_ddebug330, ptr noundef %dev16, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75) #10
  br label %do.end19

do.end19:                                         ; preds = %if.then15, %do.body3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dw.i) #10
  %0 = ptrtoint ptr %dw.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %dw.i, align 4
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %linebuf.i) #10
  %1 = call ptr @memset(ptr %linebuf.i, i32 255, i32 38)
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i.backedge, %do.end19
  %b.16.i = phi i32 [ 0, %do.end19 ], [ %add6.i, %for.body4.i.backedge ]
  %w.05.i = phi i32 [ 0, %do.end19 ], [ %w.05.i.be, %for.body4.i.backedge ]
  %o.04.i = phi i32 [ 0, %do.end19 ], [ %o.04.i.be, %for.body4.i.backedge ]
  %call.i = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %b.16.i, ptr noundef nonnull %dw.i) #10
  %add.ptr.i = getelementptr i8, ptr %linebuf.i, i32 %o.04.i
  %sub.i = sub i32 38, %o.04.i
  %2 = ptrtoint ptr %dw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dw.i, align 4
  %call5.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.57, i32 noundef %3) #10
  %add.i = add i32 %call5.i, %o.04.i
  %add6.i = add nuw nsw i32 %b.16.i, 4
  %inc.i = add nuw nsw i32 %w.05.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %b.16.i)
  %cmp2.i = icmp ult i32 %b.16.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %w.05.i)
  %cmp3.i = icmp ult i32 %w.05.i, 3
  %or.cond.i = select i1 %cmp2.i, i1 %cmp3.i, i1 false
  br i1 %or.cond.i, label %for.body4.i.for.body4.i.backedge_crit_edge, label %do.body.i

for.body4.i.for.body4.i.backedge_crit_edge:       ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i.backedge

for.body4.i.backedge:                             ; preds = %do.end.i.for.body4.i.backedge_crit_edge, %for.body4.i.for.body4.i.backedge_crit_edge
  %w.05.i.be = phi i32 [ %inc.i, %for.body4.i.for.body4.i.backedge_crit_edge ], [ 0, %do.end.i.for.body4.i.backedge_crit_edge ]
  %o.04.i.be = phi i32 [ %add.i, %for.body4.i.for.body4.i.backedge_crit_edge ], [ 0, %do.end.i.for.body4.i.backedge_crit_edge ]
  br label %for.body4.i

do.body.i:                                        ; preds = %for.body4.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_dump_pci_cfg.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_dump_all_regs, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !336

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_dump_pci_cfg.__UNIQUE_ID_ddebug328, ptr noundef %dev.i, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58, i32 noundef %add6.i, ptr noundef nonnull %linebuf.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body.i
  br i1 %cmp2.i, label %do.end.i.for.body4.i.backedge_crit_edge, label %mv_dump_pci_cfg.exit

do.end.i.for.body4.i.backedge_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i.backedge

mv_dump_pci_cfg.exit:                             ; preds = %do.end.i
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %linebuf.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dw.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_dump_all_regs.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_dump_all_regs, %if.then32)) #10
          to label %do.end36 [label %if.then32], !srcloc !336

if.then32:                                        ; preds = %mv_dump_pci_cfg.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_dump_all_regs.__UNIQUE_ID_ddebug331, ptr noundef %dev.i, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.75) #10
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %mv_dump_pci_cfg.exit
  %add.ptr = getelementptr i8, ptr %mmio_base, i32 3072
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %linebuf.i156) #10
  %4 = call ptr @memset(ptr %linebuf.i156, i32 255, i32 38)
  br label %for.body4.i164

for.body4.i164:                                   ; preds = %for.body4.i164.backedge, %do.end36
  %b.130.i = phi i32 [ 0, %do.end36 ], [ %add8.i, %for.body4.i164.backedge ]
  %w.029.i = phi i32 [ 0, %do.end36 ], [ %w.029.i.be, %for.body4.i164.backedge ]
  %o.028.i = phi i32 [ 0, %do.end36 ], [ %o.028.i.be, %for.body4.i164.backedge ]
  %add.ptr.i157 = getelementptr i8, ptr %linebuf.i156, i32 %o.028.i
  %sub.i158 = sub i32 38, %o.028.i
  %add.ptr5.i = getelementptr i8, ptr %add.ptr, i32 %b.130.i
  %5 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #10, !srcloc !326
  %6 = call i32 @llvm.bswap.i32(i32 %5) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !481
  %call7.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i157, i32 noundef %sub.i158, ptr noundef nonnull @.str.57, i32 noundef %6) #10
  %add.i159 = add i32 %call7.i, %o.028.i
  %add8.i = add nuw nsw i32 %b.130.i, 4
  %inc.i160 = add nuw nsw i32 %w.029.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %b.130.i)
  %cmp2.i161 = icmp ult i32 %b.130.i, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %w.029.i)
  %cmp3.i162 = icmp ult i32 %w.029.i, 3
  %or.cond.i163 = select i1 %cmp2.i161, i1 %cmp3.i162, i1 false
  br i1 %or.cond.i163, label %for.body4.i164.for.body4.i164.backedge_crit_edge, label %do.body.i165

for.body4.i164.for.body4.i164.backedge_crit_edge: ; preds = %for.body4.i164
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i164.backedge

for.body4.i164.backedge:                          ; preds = %do.end.i168.for.body4.i164.backedge_crit_edge, %for.body4.i164.for.body4.i164.backedge_crit_edge
  %w.029.i.be = phi i32 [ %inc.i160, %for.body4.i164.for.body4.i164.backedge_crit_edge ], [ 0, %do.end.i168.for.body4.i164.backedge_crit_edge ]
  %o.028.i.be = phi i32 [ %add.i159, %for.body4.i164.for.body4.i164.backedge_crit_edge ], [ 0, %do.end.i168.for.body4.i164.backedge_crit_edge ]
  br label %for.body4.i164

do.body.i165:                                     ; preds = %for.body4.i164
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_dump_mem.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_dump_all_regs, %if.then.i166)) #10
          to label %do.end.i168 [label %if.then.i166], !srcloc !336

if.then.i166:                                     ; preds = %do.body.i165
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr13.i = getelementptr i8, ptr %add.ptr, i32 %add8.i
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_dump_mem.__UNIQUE_ID_ddebug327, ptr noundef %dev.i, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.82, ptr noundef %add.ptr13.i, ptr noundef nonnull %linebuf.i156) #10
  br label %do.end.i168

do.end.i168:                                      ; preds = %if.then.i166, %do.body.i165
  br i1 %cmp2.i161, label %do.end.i168.for.body4.i164.backedge_crit_edge, label %mv_dump_mem.exit

do.end.i168.for.body4.i164.backedge_crit_edge:    ; preds = %do.end.i168
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i164.backedge

mv_dump_mem.exit:                                 ; preds = %do.end.i168
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %linebuf.i156) #10
  %add.ptr39 = getelementptr i8, ptr %mmio_base, i32 3328
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %linebuf.i169) #10
  %7 = call ptr @memset(ptr %linebuf.i169, i32 255, i32 38)
  br label %for.body4.i186

for.body4.i186:                                   ; preds = %for.body4.i186.backedge, %mv_dump_mem.exit
  %b.130.i173 = phi i32 [ 0, %mv_dump_mem.exit ], [ %add8.i181, %for.body4.i186.backedge ]
  %w.029.i174 = phi i32 [ 0, %mv_dump_mem.exit ], [ %w.029.i174.be, %for.body4.i186.backedge ]
  %o.028.i175 = phi i32 [ 0, %mv_dump_mem.exit ], [ %o.028.i175.be, %for.body4.i186.backedge ]
  %add.ptr.i176 = getelementptr i8, ptr %linebuf.i169, i32 %o.028.i175
  %sub.i177 = sub i32 38, %o.028.i175
  %add.ptr5.i178 = getelementptr i8, ptr %add.ptr39, i32 %b.130.i173
  %8 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i178) #10, !srcloc !326
  %9 = call i32 @llvm.bswap.i32(i32 %8) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !481
  %call7.i179 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i176, i32 noundef %sub.i177, ptr noundef nonnull @.str.57, i32 noundef %9) #10
  %add.i180 = add i32 %call7.i179, %o.028.i175
  %add8.i181 = add nuw nsw i32 %b.130.i173, 4
  %inc.i182 = add nuw nsw i32 %w.029.i174, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %b.130.i173)
  %cmp2.i183 = icmp ult i32 %b.130.i173, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %w.029.i174)
  %cmp3.i184 = icmp ult i32 %w.029.i174, 3
  %or.cond.i185 = select i1 %cmp2.i183, i1 %cmp3.i184, i1 false
  br i1 %or.cond.i185, label %for.body4.i186.for.body4.i186.backedge_crit_edge, label %do.body.i188

for.body4.i186.for.body4.i186.backedge_crit_edge: ; preds = %for.body4.i186
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i186.backedge

for.body4.i186.backedge:                          ; preds = %do.end.i192.for.body4.i186.backedge_crit_edge, %for.body4.i186.for.body4.i186.backedge_crit_edge
  %w.029.i174.be = phi i32 [ %inc.i182, %for.body4.i186.for.body4.i186.backedge_crit_edge ], [ 0, %do.end.i192.for.body4.i186.backedge_crit_edge ]
  %o.028.i175.be = phi i32 [ %add.i180, %for.body4.i186.for.body4.i186.backedge_crit_edge ], [ 0, %do.end.i192.for.body4.i186.backedge_crit_edge ]
  br label %for.body4.i186

do.body.i188:                                     ; preds = %for.body4.i186
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_dump_mem.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_dump_all_regs, %if.then.i190)) #10
          to label %do.end.i192 [label %if.then.i190], !srcloc !336

if.then.i190:                                     ; preds = %do.body.i188
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr13.i189 = getelementptr i8, ptr %add.ptr39, i32 %add8.i181
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_dump_mem.__UNIQUE_ID_ddebug327, ptr noundef %dev.i, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.82, ptr noundef %add.ptr13.i189, ptr noundef nonnull %linebuf.i169) #10
  br label %do.end.i192

do.end.i192:                                      ; preds = %if.then.i190, %do.body.i188
  br i1 %cmp2.i183, label %do.end.i192.for.body4.i186.backedge_crit_edge, label %for.cond1.preheader.i197

do.end.i192.for.body4.i186.backedge_crit_edge:    ; preds = %do.end.i192
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i186.backedge

for.cond1.preheader.i197:                         ; preds = %do.end.i192
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %linebuf.i169) #10
  %add.ptr41 = getelementptr i8, ptr %mmio_base, i32 3840
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %linebuf.i194) #10
  %10 = call ptr @memset(ptr %linebuf.i194, i32 255, i32 38)
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #10, !srcloc !326
  %12 = call i32 @llvm.bswap.i32(i32 %11) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !481
  %call7.i204 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %linebuf.i194, i32 noundef 38, ptr noundef nonnull @.str.57, i32 noundef %12) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_dump_mem.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_dump_all_regs, %if.then.i215)) #10
          to label %mv_dump_mem.exit218 [label %if.then.i215], !srcloc !336

if.then.i215:                                     ; preds = %for.cond1.preheader.i197
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr13.i214 = getelementptr i8, ptr %mmio_base, i32 3844
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_dump_mem.__UNIQUE_ID_ddebug327, ptr noundef %dev.i, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.82, ptr noundef %add.ptr13.i214, ptr noundef nonnull %linebuf.i194) #10
  br label %mv_dump_mem.exit218

mv_dump_mem.exit218:                              ; preds = %if.then.i215, %for.cond1.preheader.i197
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %linebuf.i194) #10
  %add.ptr43 = getelementptr i8, ptr %mmio_base, i32 7424
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %linebuf.i219) #10
  %13 = call ptr @memset(ptr %linebuf.i219, i32 255, i32 38)
  br label %for.body4.i236

for.body4.i236:                                   ; preds = %for.body4.i236.backedge, %mv_dump_mem.exit218
  %b.130.i223 = phi i32 [ 0, %mv_dump_mem.exit218 ], [ %add8.i231, %for.body4.i236.backedge ]
  %w.029.i224 = phi i32 [ 0, %mv_dump_mem.exit218 ], [ %w.029.i224.be, %for.body4.i236.backedge ]
  %o.028.i225 = phi i32 [ 0, %mv_dump_mem.exit218 ], [ %o.028.i225.be, %for.body4.i236.backedge ]
  %add.ptr.i226 = getelementptr i8, ptr %linebuf.i219, i32 %o.028.i225
  %sub.i227 = sub i32 38, %o.028.i225
  %add.ptr5.i228 = getelementptr i8, ptr %add.ptr43, i32 %b.130.i223
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i228) #10, !srcloc !326
  %15 = call i32 @llvm.bswap.i32(i32 %14) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !481
  %call7.i229 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i226, i32 noundef %sub.i227, ptr noundef nonnull @.str.57, i32 noundef %15) #10
  %add.i230 = add i32 %call7.i229, %o.028.i225
  %add8.i231 = add nuw nsw i32 %b.130.i223, 4
  %inc.i232 = add nuw nsw i32 %w.029.i224, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 104, i32 %b.130.i223)
  %cmp2.i233 = icmp ult i32 %b.130.i223, 104
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %w.029.i224)
  %cmp3.i234 = icmp ult i32 %w.029.i224, 3
  %or.cond.i235 = select i1 %cmp2.i233, i1 %cmp3.i234, i1 false
  br i1 %or.cond.i235, label %for.body4.i236.for.body4.i236.backedge_crit_edge, label %do.body.i238

for.body4.i236.for.body4.i236.backedge_crit_edge: ; preds = %for.body4.i236
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i236.backedge

for.body4.i236.backedge:                          ; preds = %do.end.i242.for.body4.i236.backedge_crit_edge, %for.body4.i236.for.body4.i236.backedge_crit_edge
  %w.029.i224.be = phi i32 [ %inc.i232, %for.body4.i236.for.body4.i236.backedge_crit_edge ], [ 0, %do.end.i242.for.body4.i236.backedge_crit_edge ]
  %o.028.i225.be = phi i32 [ %add.i230, %for.body4.i236.for.body4.i236.backedge_crit_edge ], [ 0, %do.end.i242.for.body4.i236.backedge_crit_edge ]
  br label %for.body4.i236

do.body.i238:                                     ; preds = %for.body4.i236
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_dump_mem.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_dump_all_regs, %if.then.i240)) #10
          to label %do.end.i242 [label %if.then.i240], !srcloc !336

if.then.i240:                                     ; preds = %do.body.i238
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr13.i239 = getelementptr i8, ptr %add.ptr43, i32 %add8.i231
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_dump_mem.__UNIQUE_ID_ddebug327, ptr noundef %dev.i, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.82, ptr noundef %add.ptr13.i239, ptr noundef nonnull %linebuf.i219) #10
  br label %do.end.i242

do.end.i242:                                      ; preds = %if.then.i240, %do.body.i238
  br i1 %cmp2.i233, label %do.end.i242.for.body4.i236.backedge_crit_edge, label %mv_dump_mem.exit243

do.end.i242.for.body4.i236.backedge_crit_edge:    ; preds = %do.end.i242
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i236.backedge

mv_dump_mem.exit243:                              ; preds = %do.end.i242
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %linebuf.i219) #10
  %add.ptr.i244 = getelementptr i8, ptr %mmio_base, i32 131072
  br label %for.body

for.cond64.preheader:                             ; preds = %mv_dump_mem.exit269
  %add.ptr1.i.i.i = getelementptr i8, ptr %mmio_base, i32 139264
  br label %for.body67

for.body:                                         ; preds = %mv_dump_mem.exit269.for.body_crit_edge, %mv_dump_mem.exit243
  %hc.0328 = phi i32 [ 0, %mv_dump_mem.exit243 ], [ %inc, %mv_dump_mem.exit269.for.body_crit_edge ]
  %mul.i = shl i32 %hc.0328, 16
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i244, i32 %mul.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_dump_all_regs.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_dump_all_regs, %if.then58)) #10
          to label %do.end62 [label %if.then58], !srcloc !336

if.then58:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_dump_all_regs.__UNIQUE_ID_ddebug332, ptr noundef %dev.i, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.75, i32 noundef %hc.0328) #10
  br label %do.end62

do.end62:                                         ; preds = %if.then58, %for.body
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %linebuf.i245) #10
  %16 = call ptr @memset(ptr %linebuf.i245, i32 255, i32 38)
  br label %for.body4.i262

for.body4.i262:                                   ; preds = %for.body4.i262.backedge, %do.end62
  %b.130.i249 = phi i32 [ 0, %do.end62 ], [ %add8.i257, %for.body4.i262.backedge ]
  %w.029.i250 = phi i32 [ 0, %do.end62 ], [ %w.029.i250.be, %for.body4.i262.backedge ]
  %o.028.i251 = phi i32 [ 0, %do.end62 ], [ %o.028.i251.be, %for.body4.i262.backedge ]
  %add.ptr.i252 = getelementptr i8, ptr %linebuf.i245, i32 %o.028.i251
  %sub.i253 = sub i32 38, %o.028.i251
  %add.ptr5.i254 = getelementptr i8, ptr %add.ptr1.i, i32 %b.130.i249
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i254) #10, !srcloc !326
  %18 = call i32 @llvm.bswap.i32(i32 %17) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !481
  %call7.i255 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i252, i32 noundef %sub.i253, ptr noundef nonnull @.str.57, i32 noundef %18) #10
  %add.i256 = add i32 %call7.i255, %o.028.i251
  %add8.i257 = add nuw nsw i32 %b.130.i249, 4
  %inc.i258 = add nuw nsw i32 %w.029.i250, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %b.130.i249)
  %cmp2.i259 = icmp ult i32 %b.130.i249, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %w.029.i250)
  %cmp3.i260 = icmp ult i32 %w.029.i250, 3
  %or.cond.i261 = select i1 %cmp2.i259, i1 %cmp3.i260, i1 false
  br i1 %or.cond.i261, label %for.body4.i262.for.body4.i262.backedge_crit_edge, label %do.body.i264

for.body4.i262.for.body4.i262.backedge_crit_edge: ; preds = %for.body4.i262
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i262.backedge

for.body4.i262.backedge:                          ; preds = %do.end.i268.for.body4.i262.backedge_crit_edge, %for.body4.i262.for.body4.i262.backedge_crit_edge
  %w.029.i250.be = phi i32 [ %inc.i258, %for.body4.i262.for.body4.i262.backedge_crit_edge ], [ 0, %do.end.i268.for.body4.i262.backedge_crit_edge ]
  %o.028.i251.be = phi i32 [ %add.i256, %for.body4.i262.for.body4.i262.backedge_crit_edge ], [ 0, %do.end.i268.for.body4.i262.backedge_crit_edge ]
  br label %for.body4.i262

do.body.i264:                                     ; preds = %for.body4.i262
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_dump_mem.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_dump_all_regs, %if.then.i266)) #10
          to label %do.end.i268 [label %if.then.i266], !srcloc !336

if.then.i266:                                     ; preds = %do.body.i264
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr13.i265 = getelementptr i8, ptr %add.ptr1.i, i32 %add8.i257
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_dump_mem.__UNIQUE_ID_ddebug327, ptr noundef %dev.i, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.82, ptr noundef %add.ptr13.i265, ptr noundef nonnull %linebuf.i245) #10
  br label %do.end.i268

do.end.i268:                                      ; preds = %if.then.i266, %do.body.i264
  br i1 %cmp2.i259, label %do.end.i268.for.body4.i262.backedge_crit_edge, label %mv_dump_mem.exit269

do.end.i268.for.body4.i262.backedge_crit_edge:    ; preds = %do.end.i268
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i262.backedge

mv_dump_mem.exit269:                              ; preds = %do.end.i268
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %linebuf.i245) #10
  %inc = add nuw nsw i32 %hc.0328, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %for.cond64.preheader, label %mv_dump_mem.exit269.for.body_crit_edge

mv_dump_mem.exit269.for.body_crit_edge:           ; preds = %mv_dump_mem.exit269
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body67:                                       ; preds = %mv_dump_mem.exit321.for.body67_crit_edge, %for.cond64.preheader
  %p.0330 = phi i32 [ 0, %for.cond64.preheader ], [ %inc107, %mv_dump_mem.exit321.for.body67_crit_edge ]
  %19 = shl i32 %p.0330, 14
  %mul.i.i.i = and i32 %19, -65536
  %add.ptr.i270 = getelementptr i8, ptr %add.ptr1.i.i.i, i32 %mul.i.i.i
  %and.i.i = shl i32 %p.0330, 13
  %mul.i271 = and i32 %and.i.i, 24576
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i270, i32 %mul.i271
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_dump_all_regs.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_dump_all_regs, %if.then81)) #10
          to label %do.end85 [label %if.then81], !srcloc !336

if.then81:                                        ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_dump_all_regs.__UNIQUE_ID_ddebug333, ptr noundef %dev.i, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.75, i32 noundef %p.0330) #10
  br label %do.end85

do.end85:                                         ; preds = %if.then81, %for.body67
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %linebuf.i272) #10
  %20 = call ptr @memset(ptr %linebuf.i272, i32 255, i32 38)
  br label %for.body4.i289

for.body4.i289:                                   ; preds = %for.body4.i289.backedge, %do.end85
  %b.130.i276 = phi i32 [ 0, %do.end85 ], [ %add8.i284, %for.body4.i289.backedge ]
  %w.029.i277 = phi i32 [ 0, %do.end85 ], [ %w.029.i277.be, %for.body4.i289.backedge ]
  %o.028.i278 = phi i32 [ 0, %do.end85 ], [ %o.028.i278.be, %for.body4.i289.backedge ]
  %add.ptr.i279 = getelementptr i8, ptr %linebuf.i272, i32 %o.028.i278
  %sub.i280 = sub i32 38, %o.028.i278
  %add.ptr5.i281 = getelementptr i8, ptr %add.ptr2.i, i32 %b.130.i276
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i281) #10, !srcloc !326
  %22 = call i32 @llvm.bswap.i32(i32 %21) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !481
  %call7.i282 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i279, i32 noundef %sub.i280, ptr noundef nonnull @.str.57, i32 noundef %22) #10
  %add.i283 = add i32 %call7.i282, %o.028.i278
  %add8.i284 = add nuw nsw i32 %b.130.i276, 4
  %inc.i285 = add nuw nsw i32 %w.029.i277, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %b.130.i276)
  %cmp2.i286 = icmp ult i32 %b.130.i276, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %w.029.i277)
  %cmp3.i287 = icmp ult i32 %w.029.i277, 3
  %or.cond.i288 = select i1 %cmp2.i286, i1 %cmp3.i287, i1 false
  br i1 %or.cond.i288, label %for.body4.i289.for.body4.i289.backedge_crit_edge, label %do.body.i291

for.body4.i289.for.body4.i289.backedge_crit_edge: ; preds = %for.body4.i289
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i289.backedge

for.body4.i289.backedge:                          ; preds = %do.end.i295.for.body4.i289.backedge_crit_edge, %for.body4.i289.for.body4.i289.backedge_crit_edge
  %w.029.i277.be = phi i32 [ %inc.i285, %for.body4.i289.for.body4.i289.backedge_crit_edge ], [ 0, %do.end.i295.for.body4.i289.backedge_crit_edge ]
  %o.028.i278.be = phi i32 [ %add.i283, %for.body4.i289.for.body4.i289.backedge_crit_edge ], [ 0, %do.end.i295.for.body4.i289.backedge_crit_edge ]
  br label %for.body4.i289

do.body.i291:                                     ; preds = %for.body4.i289
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_dump_mem.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_dump_all_regs, %if.then.i293)) #10
          to label %do.end.i295 [label %if.then.i293], !srcloc !336

if.then.i293:                                     ; preds = %do.body.i291
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr13.i292 = getelementptr i8, ptr %add.ptr2.i, i32 %add8.i284
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_dump_mem.__UNIQUE_ID_ddebug327, ptr noundef %dev.i, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.82, ptr noundef %add.ptr13.i292, ptr noundef nonnull %linebuf.i272) #10
  br label %do.end.i295

do.end.i295:                                      ; preds = %if.then.i293, %do.body.i291
  br i1 %cmp2.i286, label %do.end.i295.for.body4.i289.backedge_crit_edge, label %mv_dump_mem.exit296

do.end.i295.for.body4.i289.backedge_crit_edge:    ; preds = %do.end.i295
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i289.backedge

mv_dump_mem.exit296:                              ; preds = %do.end.i295
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %linebuf.i272) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_dump_all_regs.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_dump_all_regs, %if.then99)) #10
          to label %do.end103 [label %if.then99], !srcloc !336

if.then99:                                        ; preds = %mv_dump_mem.exit296
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_dump_all_regs.__UNIQUE_ID_ddebug334, ptr noundef %dev.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.75, i32 noundef %p.0330) #10
  br label %do.end103

do.end103:                                        ; preds = %if.then99, %mv_dump_mem.exit296
  %add.ptr105 = getelementptr i8, ptr %add.ptr2.i, i32 768
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %linebuf.i297) #10
  %23 = call ptr @memset(ptr %linebuf.i297, i32 255, i32 38)
  br label %for.body4.i314

for.body4.i314:                                   ; preds = %for.body4.i314.backedge, %do.end103
  %b.130.i301 = phi i32 [ 0, %do.end103 ], [ %add8.i309, %for.body4.i314.backedge ]
  %w.029.i302 = phi i32 [ 0, %do.end103 ], [ %w.029.i302.be, %for.body4.i314.backedge ]
  %o.028.i303 = phi i32 [ 0, %do.end103 ], [ %o.028.i303.be, %for.body4.i314.backedge ]
  %add.ptr.i304 = getelementptr i8, ptr %linebuf.i297, i32 %o.028.i303
  %sub.i305 = sub i32 38, %o.028.i303
  %add.ptr5.i306 = getelementptr i8, ptr %add.ptr105, i32 %b.130.i301
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i306) #10, !srcloc !326
  %25 = call i32 @llvm.bswap.i32(i32 %24) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !481
  %call7.i307 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i304, i32 noundef %sub.i305, ptr noundef nonnull @.str.57, i32 noundef %25) #10
  %add.i308 = add i32 %call7.i307, %o.028.i303
  %add8.i309 = add nuw nsw i32 %b.130.i301, 4
  %inc.i310 = add nuw nsw i32 %w.029.i302, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %b.130.i301)
  %cmp2.i311 = icmp ult i32 %b.130.i301, 92
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %w.029.i302)
  %cmp3.i312 = icmp ult i32 %w.029.i302, 3
  %or.cond.i313 = select i1 %cmp2.i311, i1 %cmp3.i312, i1 false
  br i1 %or.cond.i313, label %for.body4.i314.for.body4.i314.backedge_crit_edge, label %do.body.i316

for.body4.i314.for.body4.i314.backedge_crit_edge: ; preds = %for.body4.i314
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i314.backedge

for.body4.i314.backedge:                          ; preds = %do.end.i320.for.body4.i314.backedge_crit_edge, %for.body4.i314.for.body4.i314.backedge_crit_edge
  %w.029.i302.be = phi i32 [ %inc.i310, %for.body4.i314.for.body4.i314.backedge_crit_edge ], [ 0, %do.end.i320.for.body4.i314.backedge_crit_edge ]
  %o.028.i303.be = phi i32 [ %add.i308, %for.body4.i314.for.body4.i314.backedge_crit_edge ], [ 0, %do.end.i320.for.body4.i314.backedge_crit_edge ]
  br label %for.body4.i314

do.body.i316:                                     ; preds = %for.body4.i314
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv_dump_mem.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv_dump_all_regs, %if.then.i318)) #10
          to label %do.end.i320 [label %if.then.i318], !srcloc !336

if.then.i318:                                     ; preds = %do.body.i316
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr13.i317 = getelementptr i8, ptr %add.ptr105, i32 %add8.i309
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv_dump_mem.__UNIQUE_ID_ddebug327, ptr noundef %dev.i, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.82, ptr noundef %add.ptr13.i317, ptr noundef nonnull %linebuf.i297) #10
  br label %do.end.i320

do.end.i320:                                      ; preds = %if.then.i318, %do.body.i316
  br i1 %cmp2.i311, label %do.end.i320.for.body4.i314.backedge_crit_edge, label %mv_dump_mem.exit321

do.end.i320.for.body4.i314.backedge_crit_edge:    ; preds = %do.end.i320
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4.i314.backedge

mv_dump_mem.exit321:                              ; preds = %do.end.i320
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %linebuf.i297) #10
  %inc107 = add nuw nsw i32 %p.0330, 1
  %exitcond333.not = icmp eq i32 %inc107, 8
  br i1 %exitcond333.not, label %for.end108, label %mv_dump_mem.exit321.for.body67_crit_edge

mv_dump_mem.exit321.for.body67_crit_edge:         ; preds = %mv_dump_mem.exit321
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body67

for.end108:                                       ; preds = %mv_dump_mem.exit321
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_link_offline(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_clear_desc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_push_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_process_crpb_entries(ptr noundef %ap, ptr nocapture noundef %pp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %5, i32 131072
  %8 = shl i32 %7, 14
  %mul.i.i.i.i = and i32 %8, -65536
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %mul.i.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr1.i.i.i.i, i32 8192
  %and.i.i.i = shl i32 %7, 13
  %mul.i.i = and i32 %and.i.i.i, 24576
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %pp_flags = getelementptr inbounds %struct.mv_port_priv, ptr %pp, i32 0, i32 8
  %9 = ptrtoint ptr %pp_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pp_flags, align 4
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 32
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !326
  %12 = lshr i32 %11, 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !482
  %resp_idx = getelementptr inbounds %struct.mv_port_priv, ptr %pp, i32 0, i32 7
  %13 = ptrtoint ptr %resp_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %resp_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.not43 = icmp eq i32 %12, %14
  br i1 %cmp.not43, label %entry.if.end23_crit_edge, label %while.body.lr.ph

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

while.body.lr.ph:                                 ; preds = %entry
  %and = and i32 %10, 2
  %crpb = getelementptr inbounds %struct.mv_port_priv, ptr %pp, i32 0, i32 2
  %15 = ptrtoint ptr %crpb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %crpb, align 4
  %active_tag = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i = icmp ne i32 %and, 0
  br label %while.body

while.body:                                       ; preds = %mv_process_crpb_response.exit.thread.while.body_crit_edge, %while.body.lr.ph
  %17 = phi i32 [ %14, %while.body.lr.ph ], [ %34, %mv_process_crpb_response.exit.thread.while.body_crit_edge ]
  %done_mask.044 = phi i32 [ 0, %while.body.lr.ph ], [ %32, %mv_process_crpb_response.exit.thread.while.body_crit_edge ]
  %add = add i32 %17, 1
  %and6 = and i32 %add, 31
  %18 = ptrtoint ptr %resp_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and6, ptr %resp_idx, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %3, align 4
  %and8 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %active_tag to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %active_tag, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.mv_crpb, ptr %16, i32 %17
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx, align 4
  %25 = lshr i16 %24, 8
  %26 = and i16 %25, 31
  %and9 = zext i16 %26 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tag.0 = phi i32 [ %22, %if.then ], [ %and9, %if.else ]
  %flags.i = getelementptr %struct.mv_crpb, ptr %16, i32 %17, i32 1
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags.i, align 2
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #10
  %conv21.i = and i16 %29, 251
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv21.i)
  %tobool3.not.i = icmp eq i16 %conv21.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool3.not.i
  br i1 %or.cond.i, label %mv_process_crpb_response.exit, label %if.end.mv_process_crpb_response.exit.thread_crit_edge

if.end.mv_process_crpb_response.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %mv_process_crpb_response.exit.thread

mv_process_crpb_response.exit:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %30 = and i16 %29, -22272
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %31 = icmp eq i16 %30, 0
  %shl = shl nuw i32 1, %tag.0
  %or = select i1 %31, i32 %shl, i32 0
  %spec.select = or i32 %or, %done_mask.044
  br label %mv_process_crpb_response.exit.thread

mv_process_crpb_response.exit.thread:             ; preds = %mv_process_crpb_response.exit, %if.end.mv_process_crpb_response.exit.thread_crit_edge
  %32 = phi i32 [ %done_mask.044, %if.end.mv_process_crpb_response.exit.thread_crit_edge ], [ %spec.select, %mv_process_crpb_response.exit ]
  %33 = ptrtoint ptr %resp_idx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %resp_idx, align 4
  %cmp.not = icmp eq i32 %12, %34
  br i1 %cmp.not, label %while.end, label %mv_process_crpb_response.exit.thread.while.body_crit_edge

mv_process_crpb_response.exit.thread.while.body_crit_edge: ; preds = %mv_process_crpb_response.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %mv_process_crpb_response.exit.thread
  br i1 %cmp.not43, label %while.end.if.end23_crit_edge, label %if.then14

while.end.if.end23_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then14:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i64 @ata_qc_get_active(ptr noundef %ap) #10
  %conv16 = zext i32 %32 to i64
  %xor = xor i64 %call15, %conv16
  %call17 = tail call i32 @ata_qc_complete_multiple(ptr noundef %ap, i64 noundef %xor) #10
  %crpb_dma = getelementptr inbounds %struct.mv_port_priv, ptr %pp, i32 0, i32 3
  %35 = ptrtoint ptr %crpb_dma to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %crpb_dma, align 4
  %and18 = and i32 %36, -256
  %37 = ptrtoint ptr %resp_idx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %resp_idx, align 4
  %shl20 = shl i32 %38, 3
  %or21 = or i32 %shl20, %and18
  %add.ptr22 = getelementptr i8, ptr %add.ptr2.i.i, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %39 = tail call i32 @llvm.bswap.i32(i32 %or21) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %39) #10, !srcloc !330
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %if.end23

if.end23:                                         ; preds = %if.then14, %while.end.if.end23_crit_edge, %entry.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_handle_fbs_ncq_dev_err(ptr noundef %ap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pp_flags = getelementptr inbounds %struct.mv_port_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pp_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pp_flags, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %3, 8
  %4 = ptrtoint ptr %pp_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %pp_flags, align 4
  %delayed_eh_pmp_map = getelementptr inbounds %struct.mv_port_priv, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %delayed_eh_pmp_map to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %delayed_eh_pmp_map, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %delayed_eh_pmp_map2 = getelementptr inbounds %struct.mv_port_priv, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %delayed_eh_pmp_map2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delayed_eh_pmp_map2, align 4
  %host.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %8 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host.i.i, align 4
  %private_data.i.i.i = getelementptr inbounds %struct.ata_host, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %private_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data.i.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i.i, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %14 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_no.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %13, i32 131072
  %16 = shl i32 %15, 14
  %mul.i.i.i.i.i = and i32 %16, -65536
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %mul.i.i.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr1.i.i.i.i.i, i32 8192
  %and.i.i.i.i = shl i32 %15, 13
  %mul.i.i.i = and i32 %and.i.i.i.i, 24576
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 840
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !326
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !483
  %shr.i = lshr i32 %18, 16
  %or3 = or i32 %shr.i, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %or3)
  %cmp.not = icmp eq i32 %7, %or3
  br i1 %cmp.not, label %if.end.cond.false_crit_edge, label %if.then4

if.end.cond.false_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

if.then4:                                         ; preds = %if.end
  %19 = ptrtoint ptr %delayed_eh_pmp_map2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or3, ptr %delayed_eh_pmp_map2, align 4
  %neg = xor i32 %7, -1
  %and6 = and i32 %shr.i, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp.not12.i = icmp eq i32 %and6, 0
  br i1 %cmp.not12.i, label %if.then4.cond.false_crit_edge, label %for.body.lr.ph.i

if.then4.cond.false_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

for.body.lr.ph.i:                                 ; preds = %if.then4
  %pmp_link.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 28
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pmp_map.addr.015.i = phi i32 [ %and6, %for.body.lr.ph.i ], [ %pmp_map.addr.1.i, %if.end.i.for.body.i_crit_edge ]
  %pmp.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %pmp.013.i
  %and.i = and i32 %shl.i, %pmp_map.addr.015.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %pmp_link.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pmp_link.i, align 8
  %arrayidx.i = getelementptr %struct.ata_link, ptr %21, i32 %pmp.013.i
  %eh_info.i = getelementptr %struct.ata_link, ptr %21, i32 %pmp.013.i, i32 11
  %neg.i = xor i32 %shl.i, -1
  %and1.i = and i32 %pmp_map.addr.015.i, %neg.i
  tail call void @ata_ehi_clear_desc(ptr noundef %eh_info.i) #10
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info.i, ptr noundef nonnull @.str.92) #10
  %err_mask.i = getelementptr %struct.ata_link, ptr %21, i32 %pmp.013.i, i32 11, i32 2
  %22 = ptrtoint ptr %err_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %err_mask.i, align 4
  %or.i = or i32 %23, 1
  store i32 %or.i, ptr %err_mask.i, align 4
  %action.i = getelementptr %struct.ata_link, ptr %21, i32 %pmp.013.i, i32 11, i32 3
  %24 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %action.i, align 4
  %or2.i = or i32 %25, 6
  store i32 %or2.i, ptr %action.i, align 4
  %call.i = tail call i32 @ata_link_abort(ptr noundef %arrayidx.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %pmp_map.addr.1.i = phi i32 [ %and1.i, %if.then.i ], [ %pmp_map.addr.015.i, %for.body.i.if.end.i_crit_edge ]
  %inc.i = add i32 %pmp.013.i, 1
  %cmp.not.i = icmp eq i32 %pmp_map.addr.1.i, 0
  br i1 %cmp.not.i, label %if.end.i.cond.false_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end.i.cond.false_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

cond.false:                                       ; preds = %if.end.i.cond.false_crit_edge, %if.then4.cond.false_crit_edge, %if.end.cond.false_crit_edge
  %call.i2 = tail call i32 @__sw_hweight16(i32 noundef %or3) #10
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %26 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %print_id, align 4
  %28 = ptrtoint ptr %delayed_eh_pmp_map2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %delayed_eh_pmp_map2, align 4
  %qc_active = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 21
  %30 = ptrtoint ptr %qc_active to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %qc_active, align 16
  %nr_active_links = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 22
  %32 = ptrtoint ptr %nr_active_links to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_active_links, align 8
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %27, ptr noundef nonnull @.str.85, i32 noundef %29, i64 noundef %31, i32 noundef %call.i2, i32 noundef %33) #13
  %34 = ptrtoint ptr %nr_active_links to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_active_links, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %call.i2)
  %cmp141.not = icmp sgt i32 %35, %call.i2
  br i1 %cmp141.not, label %cond.false.cleanup_crit_edge, label %land.lhs.true

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %cond.false
  %36 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %host.i.i, align 4
  %private_data.i.i.i4 = getelementptr inbounds %struct.ata_host, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %private_data.i.i.i4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %private_data.i.i.i4, align 4
  %base.i.i.i5 = getelementptr inbounds %struct.mv_host_priv, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %base.i.i.i5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i.i5, align 4
  %42 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port_no.i.i, align 4
  %add.ptr.i.i.i.i.i7 = getelementptr i8, ptr %41, i32 131072
  %44 = shl i32 %43, 14
  %mul.i.i.i.i.i8 = and i32 %44, -65536
  %add.ptr1.i.i.i.i.i9 = getelementptr i8, ptr %add.ptr.i.i.i.i.i7, i32 %mul.i.i.i.i.i8
  %add.ptr.i.i.i10 = getelementptr i8, ptr %add.ptr1.i.i.i.i.i9, i32 8192
  %and.i.i.i.i11 = shl i32 %43, 13
  %mul.i.i.i12 = and i32 %and.i.i.i.i11, 24576
  %add.ptr2.i.i.i13 = getelementptr i8, ptr %add.ptr.i.i.i10, i32 %mul.i.i.i12
  %add.ptr.i14 = getelementptr i8, ptr %add.ptr2.i.i.i13, i32 20
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !484
  %add.ptr5.i = getelementptr i8, ptr %add.ptr2.i.i.i13, i32 24
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !485
  %47 = xor i32 %46, %45
  %48 = and i32 %47, -536674304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i.not = icmp eq i32 %48, 0
  br i1 %cmp.i.not, label %if.then145, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then145:                                       ; preds = %land.lhs.true
  tail call fastcc void @mv_process_crpb_entries(ptr noundef %ap, ptr noundef %1)
  tail call fastcc void @mv_stop_edma(ptr noundef %ap)
  tail call fastcc void @mv_stop_edma(ptr noundef %ap) #10
  %49 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port_no.i.i, align 4
  %shr.i.i.i = lshr i32 %50, 2
  %mul.i.i = mul i32 %shr.i.i.i, 9
  %and.i.i.i = shl i32 %50, 1
  %mul2.i.i = and i32 %and.i.i.i, 6
  %add.i.i = add i32 %mul.i.i, %mul2.i.i
  %shl.i.i = shl i32 3, %add.i.i
  %51 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %host.i.i, align 4
  %private_data.i.i.i17 = getelementptr inbounds %struct.ata_host, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %private_data.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %private_data.i.i.i17, align 4
  %main_irq_mask.i.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %main_irq_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %main_irq_mask.i.i.i, align 4
  %neg.i.i.i = xor i32 %shl.i.i, -1
  %and.i8.i.i = and i32 %56, %neg.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i8.i.i, i32 %56)
  %cmp.not.i.i.i = icmp eq i32 %and.i8.i.i, %56
  br i1 %cmp.not.i.i.i, label %if.then145.cleanup_crit_edge, label %if.then.i.i.i

if.then145.cleanup_crit_edge:                     ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %main_irq_mask.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and.i8.i.i, ptr %main_irq_mask.i.i.i, align 4
  %and.i.i.i.i18 = and i32 %and.i8.i.i, 2097408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i18)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i18, 0
  %and1.i.i.i.i = and i32 %and.i8.i.i, -171
  %spec.select.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %and.i8.i.i, i32 %and1.i.i.i.i
  %and2.i.i.i.i = and i32 %spec.select.i.i.i.i, 2228224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  %and5.i.i.i.i = and i32 %spec.select.i.i.i.i, -87041
  %mask.addr.1.i.i.i.i = select i1 %tobool3.not.i.i.i.i, i32 %spec.select.i.i.i.i, i32 %and5.i.i.i.i
  %main_irq_mask_addr.i.i.i.i = getelementptr inbounds %struct.mv_host_priv, ptr %54, i32 0, i32 8
  %58 = ptrtoint ptr %main_irq_mask_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %main_irq_mask_addr.i.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  tail call void @arm_heavy_mb() #10
  %60 = tail call i32 @llvm.bswap.i32(i32 %mask.addr.1.i.i.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %60) #10, !srcloc !330
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #10, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then145.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %cond.false.cleanup_crit_edge
  %.str.90.sink = phi ptr [ @.str.87, %if.then145.cleanup_crit_edge ], [ @.str.87, %if.then.i.i.i ], [ @.str.90, %cond.false.cleanup_crit_edge ], [ @.str.90, %land.lhs.true.cleanup_crit_edge ]
  %62 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %print_id, align 4
  %call159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.90.sink, i32 noundef %63, ptr noundef nonnull @.str.85) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_port_intr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_qc_complete_multiple(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ata_qc_get_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_link_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight16(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_scr_write_flush(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_async_notification(ptr noundef) local_unnamed_addr #1

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
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_unlock_native_capacity(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_change_queue_depth(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_do_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_platform_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 8
  %n_ports = alloca i32, align 4
  %port_number = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #10
  %0 = load i64, ptr @__const.mv_platform_probe.ppi, align 8
  %1 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %ppi, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n_ports) #10
  %2 = ptrtoint ptr %n_ports to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %n_ports, align 4
  %.b292 = load i1, ptr @mv_platform_probe.__print_once, align 1
  br i1 %.b292, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @mv_platform_probe.__print_once, align 1
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @ata_print_version(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 6
  %3 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_resources, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.not = icmp eq i32 %4, 2
  br i1 %cmp.not, label %if.end5, label %do.end, !prof !352

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.110) #13
  br label %cleanup185

if.end5:                                          ; preds = %if.end
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %cmp6 = icmp eq ptr %call, null
  br i1 %cmp6, label %if.end5.cleanup185_crit_edge, label %if.end8

if.end5.cleanup185_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup185

if.end8:                                          ; preds = %if.end5
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %6, ptr noundef nonnull @.str.112, ptr noundef nonnull %n_ports, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool15.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool15.not, label %if.end21, label %do.end19

do.end19:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.114, i32 noundef %call.i.i) #13
  br label %cleanup185

if.end21:                                         ; preds = %if.then11
  %7 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp22 = icmp slt i32 %8, 1
  br i1 %cmp22, label %do.end26, label %if.end28

do.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.117, i32 noundef %8) #13
  br label %cleanup185

if.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call31 = call i32 @irq_of_parse_and_map(ptr noundef %10, i32 noundef 0) #10
  br label %if.end36

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %11 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %platform_data.i, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %15 = ptrtoint ptr %n_ports to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %n_ports, align 4
  %call35 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.end28
  %irq.0 = phi i32 [ %call31, %if.end28 ], [ %call35, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq.0)
  %cmp37 = icmp slt i32 %irq.0, 0
  br i1 %cmp37, label %if.end36.cleanup185_crit_edge, label %if.end39

if.end36.cleanup185_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup185

if.end39:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq.0)
  %tobool40.not = icmp eq i32 %irq.0, 0
  br i1 %tobool40.not, label %if.end39.cleanup185_crit_edge, label %if.end42

if.end39.cleanup185_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup185

if.end42:                                         ; preds = %if.end39
  %16 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_ports, align 4
  %call44 = call ptr @ata_host_alloc_pinfo(ptr noundef %dev9, ptr noundef nonnull %ppi, i32 noundef %17) #10
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev9, i32 noundef 132, i32 noundef 3520) #10
  %tobool47.not = icmp eq ptr %call44, null
  %tobool48.not = icmp eq ptr %call.i, null
  %or.cond = select i1 %tobool47.not, i1 true, i1 %tobool48.not
  br i1 %or.cond, label %if.end42.cleanup185_crit_edge, label %if.end50

if.end42.cleanup185_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup185

if.end50:                                         ; preds = %if.end42
  %18 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_ports, align 4
  %20 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %19, i32 4) #10
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !350

devm_kcalloc.exit.thread:                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %port_clks310 = getelementptr inbounds %struct.mv_host_priv, ptr %call.i, i32 0, i32 13
  %22 = ptrtoint ptr %port_clks310 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %port_clks310, align 4
  br label %cleanup185

devm_kcalloc.exit:                                ; preds = %if.end50
  %23 = extractvalue { i32, i1 } %20, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev9, i32 noundef %23, i32 noundef 3520) #10
  %port_clks = getelementptr inbounds %struct.mv_host_priv, ptr %call.i, i32 0, i32 13
  %24 = ptrtoint ptr %port_clks to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call5.i.i, ptr %port_clks, align 4
  %tobool54.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool54.not, label %devm_kcalloc.exit.cleanup185_crit_edge, label %if.end56

devm_kcalloc.exit.cleanup185_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup185

if.end56:                                         ; preds = %devm_kcalloc.exit
  %25 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_ports, align 4
  %27 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %26, i32 4) #10
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %devm_kcalloc.exit296.thread, label %devm_kcalloc.exit296, !prof !350

devm_kcalloc.exit296.thread:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %port_phys314 = getelementptr inbounds %struct.mv_host_priv, ptr %call.i, i32 0, i32 14
  %29 = ptrtoint ptr %port_phys314 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %port_phys314, align 4
  br label %cleanup185

devm_kcalloc.exit296:                             ; preds = %if.end56
  %30 = extractvalue { i32, i1 } %27, 0
  %call5.i.i293 = call noalias ptr @devm_kmalloc(ptr noundef %dev9, i32 noundef %30, i32 noundef 3520) #10
  %port_phys = getelementptr inbounds %struct.mv_host_priv, ptr %call.i, i32 0, i32 14
  %31 = ptrtoint ptr %port_phys to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call5.i.i293, ptr %port_phys, align 4
  %tobool60.not = icmp eq ptr %call5.i.i293, null
  br i1 %tobool60.not, label %devm_kcalloc.exit296.cleanup185_crit_edge, label %if.end62

devm_kcalloc.exit296.cleanup185_crit_edge:        ; preds = %devm_kcalloc.exit296
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup185

if.end62:                                         ; preds = %devm_kcalloc.exit296
  %private_data = getelementptr inbounds %struct.ata_host, ptr %call44, i32 0, i32 5
  %32 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %private_data, align 4
  %board_idx = getelementptr inbounds %struct.mv_host_priv, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %board_idx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 7, ptr %board_idx, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %call44, i32 0, i32 2
  %34 = ptrtoint ptr %iomap to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %iomap, align 4
  %35 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %37 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %36
  %add.i = add i32 %sub.i, %38
  %call65 = call ptr @devm_ioremap(ptr noundef %dev9, i32 noundef %36, i32 noundef %add.i) #10
  %base = getelementptr inbounds %struct.mv_host_priv, ptr %call.i, i32 0, i32 6
  %39 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call65, ptr %base, align 4
  %tobool67.not = icmp eq ptr %call65, null
  br i1 %tobool67.not, label %if.end62.cleanup185_crit_edge, label %if.end69

if.end62.cleanup185_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup185

if.end69:                                         ; preds = %if.end62
  %add.ptr = getelementptr i8, ptr %call65, i32 -131072
  %40 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr, ptr %base, align 4
  %call72 = call ptr @clk_get(ptr noundef %dev9, ptr noundef null) #10
  %clk = getelementptr inbounds %struct.mv_host_priv, ptr %call.i, i32 0, i32 12
  %41 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call72, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end78, label %if.else80

do.end78:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev9, ptr noundef nonnull @.str.120) #13
  br label %if.end83

if.else80:                                        ; preds = %if.end69
  %call.i297 = call i32 @clk_prepare(ptr noundef %call72) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i297)
  %tobool.not.i = icmp eq i32 %call.i297, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else80.if.end83_crit_edge

if.else80.if.end83_crit_edge:                     ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.end.i:                                         ; preds = %if.else80
  %call1.i = call i32 @clk_enable(ptr noundef %call72) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end83_crit_edge, label %if.then3.i

if.end.i.if.end83_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @clk_unprepare(ptr noundef %call72) #10
  br label %if.end83

if.end83:                                         ; preds = %if.then3.i, %if.end.i.if.end83_crit_edge, %if.else80.if.end83_crit_edge, %do.end78
  %42 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp84324 = icmp sgt i32 %43, 0
  br i1 %cmp84324, label %if.end83.for.body_crit_edge, label %if.end83.for.end_crit_edge

if.end83.for.end_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end83.for.body_crit_edge:                      ; preds = %if.end83
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end83.for.body_crit_edge
  %port.0325 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end83.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %port_number) #10
  %44 = call ptr @memset(ptr %port_number, i32 255, i32 16)
  %call86 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %port_number, ptr noundef nonnull @.str.123, i32 noundef %port.0325)
  %call89 = call ptr @clk_get(ptr noundef %dev9, ptr noundef nonnull %port_number) #10
  %45 = ptrtoint ptr %port_clks to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %port_clks, align 4
  %arrayidx = getelementptr ptr, ptr %46, i32 %port.0325
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call89, ptr %arrayidx, align 4
  %48 = load ptr, ptr %port_clks, align 4
  %arrayidx92 = getelementptr ptr, ptr %48, i32 %port.0325
  %49 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx92, align 4
  %cmp.i298 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i298, label %for.body.if.end98_crit_edge, label %if.then94

for.body.if.end98_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then94:                                        ; preds = %for.body
  %call.i299 = call i32 @clk_prepare(ptr noundef %50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i299)
  %tobool.not.i300 = icmp eq i32 %call.i299, 0
  br i1 %tobool.not.i300, label %if.end.i303, label %if.then94.if.end98_crit_edge

if.then94.if.end98_crit_edge:                     ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.end.i303:                                      ; preds = %if.then94
  %call1.i301 = call i32 @clk_enable(ptr noundef %50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i301)
  %tobool2.not.i302 = icmp eq i32 %call1.i301, 0
  br i1 %tobool2.not.i302, label %if.end.i303.if.end98_crit_edge, label %if.then3.i304

if.end.i303.if.end98_crit_edge:                   ; preds = %if.end.i303
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then3.i304:                                    ; preds = %if.end.i303
  call void @__sanitizer_cov_trace_pc() #12
  call void @clk_unprepare(ptr noundef %50) #10
  br label %if.end98

if.end98:                                         ; preds = %if.then3.i304, %if.end.i303.if.end98_crit_edge, %if.then94.if.end98_crit_edge, %for.body.if.end98_crit_edge
  %call100 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %port_number, ptr noundef nonnull @.str.124, i32 noundef %port.0325)
  %call103 = call ptr @devm_phy_optional_get(ptr noundef %dev9, ptr noundef nonnull %port_number) #10
  %51 = ptrtoint ptr %port_phys to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %port_phys, align 4
  %arrayidx105 = getelementptr ptr, ptr %52, i32 %port.0325
  %53 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call103, ptr %arrayidx105, align 4
  %54 = load ptr, ptr %port_phys, align 4
  %arrayidx107 = getelementptr ptr, ptr %54, i32 %port.0325
  %55 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx107, align 4
  %cmp.i306 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i306, label %if.then109, label %for.inc

if.then109:                                       ; preds = %if.end98
  %arrayidx107.le = getelementptr ptr, ptr %54, i32 %port.0325
  %57 = ptrtoint ptr %56 to i32
  %58 = ptrtoint ptr %arrayidx107.le to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %arrayidx107.le, align 4
  %cmp115.not = icmp eq ptr %56, inttoptr (i32 -517 to ptr)
  br i1 %cmp115.not, label %if.then109.cleanup_crit_edge, label %do.end119

if.then109.cleanup_crit_edge:                     ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end119:                                        ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev9, ptr noundef nonnull @.str.126, i32 noundef %57) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end119, %if.then109.cleanup_crit_edge
  %n_ports122 = getelementptr inbounds %struct.mv_host_priv, ptr %call.i, i32 0, i32 5
  %59 = ptrtoint ptr %n_ports122 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %port.0325, ptr %n_ports122, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %port_number) #10
  br label %err

for.inc:                                          ; preds = %if.end98
  %call126 = call i32 @phy_power_on(ptr noundef %56) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %port_number) #10
  %inc = add nuw nsw i32 %port.0325, 1
  %60 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %n_ports, align 4
  %cmp84 = icmp slt i32 %inc, %61
  br i1 %cmp84, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end83.for.end_crit_edge
  %.lcssa = phi i32 [ %43, %if.end83.for.end_crit_edge ], [ %61, %for.inc.for.end_crit_edge ]
  %n_ports128 = getelementptr inbounds %struct.mv_host_priv, ptr %call.i, i32 0, i32 5
  %62 = ptrtoint ptr %n_ports128 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %.lcssa, ptr %n_ports128, align 4
  %call129 = call ptr @mv_mbus_dram_info() #10
  %tobool130.not = icmp eq ptr %call129, null
  br i1 %tobool130.not, label %for.end.if.end132_crit_edge, label %if.then131

for.end.if.end132_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

if.then131:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @mv_conf_mbus_windows(ptr noundef nonnull %call.i, ptr noundef nonnull %call129)
  br label %if.end132

if.end132:                                        ; preds = %if.then131, %for.end.if.end132_crit_edge
  %call134 = call fastcc i32 @mv_create_dma_pools(ptr noundef nonnull %call.i, ptr noundef %dev9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end137, label %if.end132.err_crit_edge

if.end132.err_crit_edge:                          ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end137:                                        ; preds = %if.end132
  %63 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %of_node, align 8
  %tobool140.not = icmp eq ptr %64, null
  br i1 %tobool140.not, label %if.end137.if.end146_crit_edge, label %land.lhs.true

if.end137.if.end146_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

land.lhs.true:                                    ; preds = %if.end137
  %call143 = call i32 @of_device_is_compatible(ptr noundef nonnull %64, ptr noundef nonnull @.str.128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %land.lhs.true.if.end146_crit_edge, label %if.then145

land.lhs.true.if.end146_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

if.then145:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %call.i, align 4
  %or = or i32 %66, 8192
  store i32 %or, ptr %call.i, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %land.lhs.true.if.end146_crit_edge, %if.end137.if.end146_crit_edge
  %call147 = call fastcc i32 @mv_init_host(ptr noundef nonnull %call44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %do.end153, label %if.end146.err_crit_edge

if.end146.err_crit_edge:                          ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

do.end153:                                        ; preds = %if.end146
  %n_ports155 = getelementptr inbounds %struct.ata_host, ptr %call44, i32 0, i32 3
  %67 = ptrtoint ptr %n_ports155 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %n_ports155, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9, ptr noundef nonnull @.str.130, i32 noundef 32, i32 noundef %68) #13
  %call156 = call i32 @ata_host_activate(ptr noundef nonnull %call44, i32 noundef %irq.0, ptr noundef nonnull @mv_interrupt, i32 noundef 128, ptr noundef nonnull @mv6_sht) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %do.end153.cleanup185_crit_edge, label %do.end153.err_crit_edge

do.end153.err_crit_edge:                          ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

do.end153.cleanup185_crit_edge:                   ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup185

err:                                              ; preds = %do.end153.err_crit_edge, %if.end146.err_crit_edge, %if.end132.err_crit_edge, %cleanup
  %rc.3 = phi i32 [ %57, %cleanup ], [ %call134, %if.end132.err_crit_edge ], [ %call147, %if.end146.err_crit_edge ], [ %call156, %do.end153.err_crit_edge ]
  %69 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %clk, align 4
  %cmp.i307 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i307, label %err.if.end165_crit_edge, label %if.then162

err.if.end165_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end165

if.then162:                                       ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  call void @clk_disable(ptr noundef %70) #10
  call void @clk_unprepare(ptr noundef %70) #10
  %71 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %clk, align 4
  call void @clk_put(ptr noundef %72) #10
  br label %if.end165

if.end165:                                        ; preds = %if.then162, %err.if.end165_crit_edge
  %n_ports167 = getelementptr inbounds %struct.mv_host_priv, ptr %call.i, i32 0, i32 5
  %73 = ptrtoint ptr %n_ports167 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %n_ports167, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp168326 = icmp sgt i32 %74, 0
  br i1 %cmp168326, label %if.end165.for.body169_crit_edge, label %if.end165.cleanup185_crit_edge

if.end165.cleanup185_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup185

if.end165.for.body169_crit_edge:                  ; preds = %if.end165
  br label %for.body169

for.body169:                                      ; preds = %if.end178.for.body169_crit_edge, %if.end165.for.body169_crit_edge
  %port.1327 = phi i32 [ %inc183, %if.end178.for.body169_crit_edge ], [ 0, %if.end165.for.body169_crit_edge ]
  %75 = ptrtoint ptr %port_clks to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %port_clks, align 4
  %arrayidx171 = getelementptr ptr, ptr %76, i32 %port.1327
  %77 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx171, align 4
  %cmp.i308 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i308, label %for.body169.if.end178_crit_edge, label %if.then173

for.body169.if.end178_crit_edge:                  ; preds = %for.body169
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end178

if.then173:                                       ; preds = %for.body169
  call void @__sanitizer_cov_trace_pc() #12
  call void @clk_disable(ptr noundef %78) #10
  call void @clk_unprepare(ptr noundef %78) #10
  %79 = ptrtoint ptr %port_clks to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %port_clks, align 4
  %arrayidx177 = getelementptr ptr, ptr %80, i32 %port.1327
  %81 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx177, align 4
  call void @clk_put(ptr noundef %82) #10
  br label %if.end178

if.end178:                                        ; preds = %if.then173, %for.body169.if.end178_crit_edge
  %83 = ptrtoint ptr %port_phys to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %port_phys, align 4
  %arrayidx180 = getelementptr ptr, ptr %84, i32 %port.1327
  %85 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx180, align 4
  %call181 = call i32 @phy_power_off(ptr noundef %86) #10
  %inc183 = add nuw nsw i32 %port.1327, 1
  %87 = ptrtoint ptr %n_ports167 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %n_ports167, align 4
  %cmp168 = icmp slt i32 %inc183, %88
  br i1 %cmp168, label %if.end178.for.body169_crit_edge, label %if.end178.cleanup185_crit_edge

if.end178.cleanup185_crit_edge:                   ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup185

if.end178.for.body169_crit_edge:                  ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body169

cleanup185:                                       ; preds = %if.end178.cleanup185_crit_edge, %if.end165.cleanup185_crit_edge, %do.end153.cleanup185_crit_edge, %if.end62.cleanup185_crit_edge, %devm_kcalloc.exit296.cleanup185_crit_edge, %devm_kcalloc.exit296.thread, %devm_kcalloc.exit.cleanup185_crit_edge, %devm_kcalloc.exit.thread, %if.end42.cleanup185_crit_edge, %if.end39.cleanup185_crit_edge, %if.end36.cleanup185_crit_edge, %do.end26, %do.end19, %if.end5.cleanup185_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i.i, %do.end19 ], [ -22, %do.end26 ], [ -22, %if.end5.cleanup185_crit_edge ], [ %irq.0, %if.end36.cleanup185_crit_edge ], [ -22, %if.end39.cleanup185_crit_edge ], [ -12, %if.end42.cleanup185_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup185_crit_edge ], [ -12, %devm_kcalloc.exit296.cleanup185_crit_edge ], [ -12, %if.end62.cleanup185_crit_edge ], [ 0, %do.end153.cleanup185_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit296.thread ], [ %rc.3, %if.end165.cleanup185_crit_edge ], [ %rc.3, %if.end178.cleanup185_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_ports) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_platform_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  tail call void @ata_host_detach(ptr noundef %1) #10
  %clk = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %7) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %n_ports = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp27.not = icmp eq i32 %9, 0
  br i1 %cmp27.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %port_clks = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 13
  %port_phys = getelementptr inbounds %struct.mv_host_priv, ptr %3, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %for.body.lr.ph
  %port.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end10.for.body_crit_edge ]
  %10 = ptrtoint ptr %port_clks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_clks, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %port.028
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %cmp.i26 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26, label %for.body.if.end10_crit_edge, label %if.then5

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_disable(ptr noundef %13) #10
  tail call void @clk_unprepare(ptr noundef %13) #10
  %14 = ptrtoint ptr %port_clks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port_clks, align 4
  %arrayidx9 = getelementptr ptr, ptr %15, i32 %port.028
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx9, align 4
  tail call void @clk_put(ptr noundef %17) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %for.body.if.end10_crit_edge
  %18 = ptrtoint ptr %port_phys to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port_phys, align 4
  %arrayidx11 = getelementptr ptr, ptr %19, i32 %port.028
  %20 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx11, align 4
  %call12 = tail call i32 @phy_power_off(ptr noundef %21) #10
  %inc = add nuw i32 %port.028, 1
  %22 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_ports, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %if.end10.for.body_crit_edge, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end10.for.end_crit_edge, %if.end.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_platform_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @ata_host_suspend(ptr noundef nonnull %1, [1 x i32] %state.coerce) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv_platform_resume(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup9_crit_edge, label %if.then

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup9

if.then:                                          ; preds = %entry
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %call1 = tail call ptr @mv_mbus_dram_info() #10
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mv_conf_mbus_windows(ptr noundef %3, ptr noundef nonnull %call1)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %call4 = tail call fastcc i32 @mv_init_host(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.132) #13
  br label %cleanup9

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ata_host_resume(ptr noundef nonnull %1) #10
  br label %cleanup9

cleanup9:                                         ; preds = %if.end7, %do.end, %entry.cleanup9_crit_edge
  %retval.1 = phi i32 [ %call4, %do.end ], [ 0, %if.end7 ], [ 0, %entry.cleanup9_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mv_mbus_dram_info() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv_conf_mbus_windows(ptr nocapture noundef readonly %hpriv, ptr nocapture noundef readonly %dram) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.mv_host_priv, ptr %hpriv, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !486
  tail call void @arm_heavy_mb() #10
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 131120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !487
  tail call void @arm_heavy_mb() #10
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %3, i32 131124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !486
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr.1 = getelementptr i8, ptr %5, i32 131136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !487
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr7.1 = getelementptr i8, ptr %7, i32 131140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.1, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !486
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr.2 = getelementptr i8, ptr %9, i32 131152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !487
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr7.2 = getelementptr i8, ptr %11, i32 131156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.2, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !486
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr.3 = getelementptr i8, ptr %13, i32 131168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3, i32 0) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !487
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr7.3 = getelementptr i8, ptr %15, i32 131172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.3, i32 0) #10, !srcloc !330
  %num_cs = getelementptr inbounds %struct.mbus_dram_target_info, ptr %dram, i32 0, i32 1
  %16 = ptrtoint ptr %num_cs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_cs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp956 = icmp sgt i32 %17, 0
  br i1 %cmp956, label %for.body10.lr.ph, label %entry.for.end39_crit_edge

entry.for.end39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end39

for.body10.lr.ph:                                 ; preds = %entry
  %cs11 = getelementptr inbounds %struct.mbus_dram_target_info, ptr %dram, i32 0, i32 2
  br label %for.body10

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.body10.lr.ph
  %i.157 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc38, %for.body10.for.body10_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !488
  tail call void @arm_heavy_mb() #10
  %size = getelementptr %struct.mbus_dram_window, ptr %cs11, i32 %i.157, i32 3
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %size, align 8
  %mbus_attr = getelementptr %struct.mbus_dram_window, ptr %cs11, i32 %i.157, i32 1
  %20 = ptrtoint ptr %mbus_attr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mbus_attr, align 1
  %conv = zext i8 %21 to i32
  %shl16 = shl nuw nsw i32 %conv, 8
  %22 = ptrtoint ptr %dram to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dram, align 8
  %conv18 = zext i8 %23 to i32
  %shl19 = shl nuw nsw i32 %conv18, 4
  %24 = trunc i64 %19 to i32
  %25 = add i32 %24, -1
  %26 = and i32 %25, -65536
  %27 = or i32 %26, %shl16
  %28 = or i32 %shl19, %27
  %conv23 = or i32 %28, 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %conv23)
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %shl25 = shl i32 %i.157, 4
  %add26 = add i32 %shl25, 131120
  %add.ptr27 = getelementptr i8, ptr %31, i32 %add26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %29) #10, !srcloc !330
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !489
  tail call void @arm_heavy_mb() #10
  %base31 = getelementptr %struct.mbus_dram_window, ptr %cs11, i32 %i.157, i32 2
  %32 = ptrtoint ptr %base31 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %base31, align 8
  %conv32 = trunc i64 %33 to i32
  %34 = tail call i32 @llvm.bswap.i32(i32 %conv32)
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add35 = add i32 %shl25, 131124
  %add.ptr36 = getelementptr i8, ptr %36, i32 %add35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %34) #10, !srcloc !330
  %inc38 = add nuw nsw i32 %i.157, 1
  %37 = ptrtoint ptr %num_cs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_cs, align 4
  %cmp9 = icmp slt i32 %inc38, %38
  br i1 %cmp9, label %for.body10.for.body10_crit_edge, label %for.body10.for.end39_crit_edge

for.body10.for.end39_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end39

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10

for.end39:                                        ; preds = %for.body10.for.end39_crit_edge, %entry.for.end39_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 152)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 152)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !22, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !45, !47, !49, !51, !52, !53, !54, !55, !56, !57, !59, !61, !63, !65, !67, !68, !69, !70, !72, !74, !75, !76, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !94, !95, !96, !97, !99, !101, !103, !105, !107, !108, !109, !111, !112, !113, !114, !115, !117, !118, !119, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !160, !162, !164, !165, !166, !168, !170, !172, !174, !176, !178, !180, !181, !182, !183, !184, !185, !186, !188, !189, !190, !191, !193, !194, !196, !198, !199, !200, !202, !203, !205, !206, !208, !209, !211, !212, !214, !215, !217, !218, !219, !221, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !255, !256, !257, !259, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !279, !280, !281, !283, !285, !286, !287, !289, !290, !291, !293, !294, !295, !296, !298, !300, !302, !303, !304, !306, !308, !309, !310, !312, !313, !314, !315}
!llvm.module.flags = !{!317, !318, !319, !320, !321, !322, !323, !324}
!llvm.ident = !{!325}

!0 = !{ptr @__param_msi, !1, !"__param_msi", i1 false, i1 false}
!1 = !{!"../drivers/ata/sata_mv.c", i32 72, i32 1}
!2 = !{ptr @__UNIQUE_ID_msitype321, !1, !"__UNIQUE_ID_msitype321", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_msi322, !4, !"__UNIQUE_ID_msi322", i1 false, i1 false}
!4 = !{!"../drivers/ata/sata_mv.c", i32 73, i32 1}
!5 = !{ptr @__param_irq_coalescing_io_count, !6, !"__param_irq_coalescing_io_count", i1 false, i1 false}
!6 = !{!"../drivers/ata/sata_mv.c", i32 77, i32 1}
!7 = !{ptr @__UNIQUE_ID_irq_coalescing_io_counttype323, !6, !"__UNIQUE_ID_irq_coalescing_io_counttype323", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_irq_coalescing_io_count324, !9, !"__UNIQUE_ID_irq_coalescing_io_count324", i1 false, i1 false}
!9 = !{!"../drivers/ata/sata_mv.c", i32 78, i32 1}
!10 = !{ptr @__param_irq_coalescing_usecs, !11, !"__param_irq_coalescing_usecs", i1 false, i1 false}
!11 = !{!"../drivers/ata/sata_mv.c", i32 82, i32 1}
!12 = !{ptr @__UNIQUE_ID_irq_coalescing_usecstype325, !11, !"__UNIQUE_ID_irq_coalescing_usecstype325", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_irq_coalescing_usecs326, !14, !"__UNIQUE_ID_irq_coalescing_usecs326", i1 false, i1 false}
!14 = !{!"../drivers/ata/sata_mv.c", i32 83, i32 1}
!15 = !{ptr @__UNIQUE_ID_author337, !16, !"__UNIQUE_ID_author337", i1 false, i1 false}
!16 = !{!"../drivers/ata/sata_mv.c", i32 4485, i32 1}
!17 = !{ptr @__UNIQUE_ID_description338, !18, !"__UNIQUE_ID_description338", i1 false, i1 false}
!18 = !{!"../drivers/ata/sata_mv.c", i32 4486, i32 1}
!19 = !{ptr @__UNIQUE_ID_file339, !20, !"__UNIQUE_ID_file339", i1 false, i1 false}
!20 = !{!"../drivers/ata/sata_mv.c", i32 4487, i32 1}
!21 = !{ptr @__UNIQUE_ID_license340, !20, !"__UNIQUE_ID_license340", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_version341, !23, !"__UNIQUE_ID_version341", i1 false, i1 false}
!23 = !{!"../drivers/ata/sata_mv.c", i32 4489, i32 1}
!24 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @__modver_attr, !23, !"__modver_attr", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_alias342, !29, !"__UNIQUE_ID_alias342", i1 false, i1 false}
!29 = !{!"../drivers/ata/sata_mv.c", i32 4490, i32 1}
!30 = !{ptr @__initcall__kmod_sata_mv__343_4492_mv_init6, !31, !"__initcall__kmod_sata_mv__343_4492_mv_init6", i1 false, i1 false}
!31 = !{!"../drivers/ata/sata_mv.c", i32 4492, i32 1}
!32 = !{ptr @__exitcall_mv_exit, !33, !"__exitcall_mv_exit", i1 false, i1 false}
!33 = !{!"../drivers/ata/sata_mv.c", i32 4493, i32 1}
!34 = !{ptr @msi, !35, !"msi", i1 false, i1 false}
!35 = !{!"../drivers/ata/sata_mv.c", i32 71, i32 12}
!36 = !{ptr @irq_coalescing_io_count, !37, !"irq_coalescing_io_count", i1 false, i1 false}
!37 = !{!"../drivers/ata/sata_mv.c", i32 76, i32 12}
!38 = !{ptr @irq_coalescing_usecs, !39, !"irq_coalescing_usecs", i1 false, i1 false}
!39 = !{!"../drivers/ata/sata_mv.c", i32 81, i32 12}
!40 = !{ptr @__param_str_msi, !1, !"__param_str_msi", i1 false, i1 false}
!41 = !{ptr @__param_str_irq_coalescing_io_count, !6, !"__param_str_irq_coalescing_io_count", i1 false, i1 false}
!42 = !{ptr @__param_str_irq_coalescing_usecs, !11, !"__param_str_irq_coalescing_usecs", i1 false, i1 false}
!43 = !{ptr @mv_pci_driver, !44, !"mv_pci_driver", i1 false, i1 false}
!44 = !{!"../drivers/ata/sata_mv.c", i32 4305, i32 26}
!45 = !{ptr @mv_pci_tbl, !46, !"mv_pci_tbl", i1 false, i1 false}
!46 = !{!"../drivers/ata/sata_mv.c", i32 790, i32 35}
!47 = distinct !{null, !48, !"__print_once", i1 false, i1 false}
!48 = !{!"../drivers/ata/sata_mv.c", i32 4375, i32 2}
!49 = !{ptr @.str.3, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/ata/sata_mv.c", i32 4403, i32 3}
!51 = !{ptr @.str.4, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.5, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.6, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.7, !50, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mv_pci_init_one._entry, !50, !"_entry", i1 false, i1 false}
!56 = !{ptr @mv_pci_init_one._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.8, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/ata/sata_mv.c", i32 4416, i32 46}
!59 = !{ptr @.str.9, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/ata/sata_mv.c", i32 4417, i32 50}
!61 = !{ptr @mv_port_info, !62, !"mv_port_info", i1 false, i1 false}
!62 = !{!"../drivers/ata/sata_mv.c", i32 739, i32 35}
!63 = !{ptr @mv5_ops, !64, !"mv5_ops", i1 false, i1 false}
!64 = !{!"../drivers/ata/sata_mv.c", i32 679, i32 35}
!65 = !{ptr @.str.10, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/ata/sata_mv.c", i32 2098, i32 3}
!67 = !{ptr @.str.11, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @mv_qc_prep._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @mv_qc_prep._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @mv_qc_issue.limit_warnings, !71, !"limit_warnings", i1 false, i1 false}
!71 = !{!"../drivers/ata/sata_mv.c", i32 2331, i32 13}
!72 = !{ptr @.str.12, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/ata/sata_mv.c", i32 2372, i32 4}
!74 = !{ptr @.str.13, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @mv_qc_issue._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @mv_qc_issue._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.15, !73, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @mv_qc_issue._entry.14, !73, !"_entry", i1 false, i1 false}
!79 = !{ptr @mv_qc_issue._entry_ptr.16, !73, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.17, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/ata/sata_mv.c", i32 1244, i32 3}
!82 = !{ptr @.str.18, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @mv_stop_edma._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @mv_stop_edma._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.19, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/ata/sata_mv.c", i32 2256, i32 3}
!87 = !{ptr @.str.20, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @mv_send_fis._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @mv_send_fis._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @mv6_ops, !91, !"mv6_ops", i1 false, i1 false}
!91 = !{!"../drivers/ata/sata_mv.c", i32 699, i32 35}
!92 = !{ptr @.str.21, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/ata/sata_mv.c", i32 1412, i32 4}
!94 = !{ptr @.str.22, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @mv6_dev_config._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @mv6_dev_config._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @mv_iie_ops, !98, !"mv_iie_ops", i1 false, i1 false}
!98 = !{!"../drivers/ata/sata_mv.c", i32 733, i32 35}
!99 = !{ptr @.str.23, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/ata/sata_mv.c", i32 3995, i32 40}
!101 = !{ptr @.str.24, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/ata/sata_mv.c", i32 4000, i32 40}
!103 = !{ptr @.str.25, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/ata/sata_mv.c", i32 4005, i32 40}
!105 = !{ptr @.str.26, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/ata/sata_mv.c", i32 3965, i32 3}
!107 = !{ptr @.str.27, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @mv_init_host.__UNIQUE_ID_ddebug336, !106, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!109 = !{ptr @.str.28, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/ata/sata_mv.c", i32 3782, i32 4}
!111 = !{ptr @.str.29, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.30, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @mv_chip_id._entry, !110, !"_entry", i1 false, i1 false}
!114 = !{ptr @mv_chip_id._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.32, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/ata/sata_mv.c", i32 3802, i32 4}
!117 = !{ptr @mv_chip_id._entry.31, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @mv_chip_id._entry_ptr.33, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @mv_chip_id._entry.34, !120, !"_entry", i1 false, i1 false}
!120 = !{!"../drivers/ata/sata_mv.c", i32 3823, i32 4}
!121 = !{ptr @mv_chip_id._entry_ptr.35, !120, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.37, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/ata/sata_mv.c", i32 3852, i32 4}
!124 = !{ptr @mv_chip_id._entry.36, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @mv_chip_id._entry_ptr.38, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.40, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/ata/sata_mv.c", i32 3856, i32 4}
!128 = !{ptr @mv_chip_id._entry.39, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @mv_chip_id._entry_ptr.41, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.43, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/ata/sata_mv.c", i32 3873, i32 4}
!132 = !{ptr @mv_chip_id._entry.42, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @mv_chip_id._entry_ptr.44, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.46, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/ata/sata_mv.c", i32 3889, i32 3}
!136 = !{ptr @.str.47, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @mv_chip_id._entry.45, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @mv_chip_id._entry_ptr.48, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @mv5xxx_ops, !140, !"mv5xxx_ops", i1 false, i1 false}
!140 = !{!"../drivers/ata/sata_mv.c", i32 821, i32 31}
!141 = !{ptr @mv6xxx_ops, !142, !"mv6xxx_ops", i1 false, i1 false}
!142 = !{!"../drivers/ata/sata_mv.c", i32 830, i32 31}
!143 = !{ptr @.str.49, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/ata/sata_mv.c", i32 3279, i32 3}
!145 = !{ptr @.str.50, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @mv6_reset_hc._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @mv6_reset_hc._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.52, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/ata/sata_mv.c", i32 3293, i32 3}
!150 = !{ptr @mv6_reset_hc._entry.51, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @mv6_reset_hc._entry_ptr.53, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.55, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/ata/sata_mv.c", i32 3307, i32 3}
!154 = !{ptr @mv6_reset_hc._entry.54, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @mv6_reset_hc._entry_ptr.56, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @mv_soc_65n_ops, !157, !"mv_soc_65n_ops", i1 false, i1 false}
!157 = !{!"../drivers/ata/sata_mv.c", i32 848, i32 31}
!158 = !{ptr @mv_soc_ops, !159, !"mv_soc_ops", i1 false, i1 false}
!159 = !{!"../drivers/ata/sata_mv.c", i32 839, i32 31}
!160 = !{ptr @.str.57, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/ata/sata_mv.c", i32 1277, i32 11}
!162 = !{ptr @.str.58, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/ata/sata_mv.c", i32 1280, i32 3}
!164 = !{ptr @.str.59, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @mv_dump_pci_cfg.__UNIQUE_ID_ddebug328, !163, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!166 = !{ptr @.str.60, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/ata/sata_mv.c", i32 4338, i32 11}
!168 = !{ptr @.str.61, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/ata/sata_mv.c", i32 4340, i32 11}
!170 = !{ptr @.str.62, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/ata/sata_mv.c", i32 4342, i32 11}
!172 = !{ptr @.str.63, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/ata/sata_mv.c", i32 4345, i32 9}
!174 = !{ptr @.str.64, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/ata/sata_mv.c", i32 4347, i32 9}
!176 = !{ptr @.str.65, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/ata/sata_mv.c", i32 4349, i32 9}
!178 = !{ptr @.str.66, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/ata/sata_mv.c", i32 4353, i32 2}
!180 = !{ptr @.str.67, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.68, !179, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @mv_print_info._entry, !179, !"_entry", i1 false, i1 false}
!183 = !{ptr @mv_print_info._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.69, !179, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.70, !179, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.71, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/ata/sata_mv.c", i32 2956, i32 2}
!188 = !{ptr @.str.72, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @mv_pci_error._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @mv_pci_error._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.73, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/ata/sata_mv.c", i32 2958, i32 2}
!193 = !{ptr @mv_pci_error.__UNIQUE_ID_ddebug335, !192, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!194 = !{ptr @.str.74, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/ata/sata_mv.c", i32 2970, i32 6}
!196 = !{ptr @.str.75, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/ata/sata_mv.c", i32 1295, i32 2}
!198 = !{ptr @.str.76, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @mv_dump_all_regs.__UNIQUE_ID_ddebug329, !197, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!200 = !{ptr @.str.77, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/ata/sata_mv.c", i32 1299, i32 2}
!202 = !{ptr @mv_dump_all_regs.__UNIQUE_ID_ddebug330, !201, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!203 = !{ptr @.str.78, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/ata/sata_mv.c", i32 1302, i32 2}
!205 = !{ptr @mv_dump_all_regs.__UNIQUE_ID_ddebug331, !204, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!206 = !{ptr @.str.79, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/ata/sata_mv.c", i32 1309, i32 3}
!208 = !{ptr @mv_dump_all_regs.__UNIQUE_ID_ddebug332, !207, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!209 = !{ptr @.str.80, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/ata/sata_mv.c", i32 1314, i32 3}
!211 = !{ptr @mv_dump_all_regs.__UNIQUE_ID_ddebug333, !210, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!212 = !{ptr @.str.81, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/ata/sata_mv.c", i32 1316, i32 3}
!214 = !{ptr @mv_dump_all_regs.__UNIQUE_ID_ddebug334, !213, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!215 = !{ptr @.str.82, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/ata/sata_mv.c", i32 1262, i32 3}
!217 = !{ptr @.str.83, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @mv_dump_mem.__UNIQUE_ID_ddebug327, !216, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!219 = !{ptr @.str.84, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/ata/sata_mv.c", i32 2527, i32 2}
!221 = !{ptr @.str.85, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @mv_handle_fbs_ncq_dev_err._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @mv_handle_fbs_ncq_dev_err._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.87, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/ata/sata_mv.c", i32 2537, i32 3}
!226 = !{ptr @mv_handle_fbs_ncq_dev_err._entry.86, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @mv_handle_fbs_ncq_dev_err._entry_ptr.88, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.90, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/ata/sata_mv.c", i32 2540, i32 2}
!230 = !{ptr @mv_handle_fbs_ncq_dev_err._entry.89, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @mv_handle_fbs_ncq_dev_err._entry_ptr.91, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.92, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/ata/sata_mv.c", i32 2480, i32 27}
!234 = !{ptr @.str.93, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/ata/sata_mv.c", i32 2671, i32 25}
!236 = !{ptr @.str.94, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/ata/sata_mv.c", i32 2675, i32 26}
!238 = !{ptr @.str.95, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/ata/sata_mv.c", i32 2682, i32 27}
!240 = !{ptr @.str.96, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/ata/sata_mv.c", i32 2691, i32 26}
!242 = !{ptr @.str.97, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/ata/sata_mv.c", i32 2698, i32 26}
!244 = !{ptr @.str.98, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/ata/sata_mv.c", i32 2703, i32 4}
!246 = !{ptr @.str.99, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/ata/sata_mv.c", i32 2703, i32 23}
!248 = !{ptr @.str.100, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/ata/sata_mv.c", i32 2715, i32 27}
!250 = !{ptr @.str.101, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/ata/sata_mv.c", i32 2724, i32 27}
!252 = !{ptr @.str.102, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/ata/sata_mv.c", i32 2582, i32 4}
!254 = !{ptr @.str.103, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @mv_handle_dev_err._entry, !253, !"_entry", i1 false, i1 false}
!256 = !{ptr @mv_handle_dev_err._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @mv_handle_dev_err._entry.104, !258, !"_entry", i1 false, i1 false}
!258 = !{!"../drivers/ata/sata_mv.c", i32 2594, i32 4}
!259 = !{ptr @mv_handle_dev_err._entry_ptr.105, !258, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.106, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/ata/sata_mv.c", i32 2606, i32 15}
!262 = distinct !{null, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/ata/sata_mv.c", i32 2610, i32 10}
!264 = !{ptr @.str.108, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/ata/sata_mv.c", i32 2614, i32 11}
!266 = !{ptr @.str.109, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/ata/sata_mv.c", i32 2616, i32 25}
!268 = !{ptr @mv5_sht, !269, !"mv5_sht", i1 false, i1 false}
!269 = !{!"../drivers/ata/sata_mv.c", i32 662, i32 34}
!270 = !{ptr @mv6_sht, !271, !"mv6_sht", i1 false, i1 false}
!271 = !{!"../drivers/ata/sata_mv.c", i32 668, i32 34}
!272 = !{ptr @mv_platform_driver, !273, !"mv_platform_driver", i1 false, i1 false}
!273 = !{!"../drivers/ata/sata_mv.c", i32 4285, i32 31}
!274 = distinct !{null, !275, !"__print_once", i1 false, i1 false}
!275 = !{!"../drivers/ata/sata_mv.c", i32 4055, i32 2}
!276 = !{ptr @.str.110, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/ata/sata_mv.c", i32 4061, i32 3}
!278 = !{ptr @.str.111, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @mv_platform_probe._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @mv_platform_probe._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.112, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/ata/sata_mv.c", i32 4074, i32 48}
!283 = !{ptr @.str.114, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/ata/sata_mv.c", i32 4077, i32 4}
!285 = !{ptr @mv_platform_probe._entry.113, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @mv_platform_probe._entry_ptr.115, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.117, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/ata/sata_mv.c", i32 4083, i32 4}
!289 = !{ptr @mv_platform_probe._entry.116, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @mv_platform_probe._entry_ptr.118, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.120, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/ata/sata_mv.c", i32 4127, i32 3}
!293 = !{ptr @.str.121, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @mv_platform_probe._entry.119, !292, !"_entry", i1 false, i1 false}
!295 = !{ptr @mv_platform_probe._entry_ptr.122, !292, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.123, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/ata/sata_mv.c", i32 4133, i32 24}
!298 = !{ptr @.str.124, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/ata/sata_mv.c", i32 4138, i32 24}
!300 = !{ptr @.str.126, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/ata/sata_mv.c", i32 4145, i32 5}
!302 = !{ptr @mv_platform_probe._entry.125, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @mv_platform_probe._entry_ptr.127, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.128, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/ata/sata_mv.c", i32 4174, i32 6}
!306 = !{ptr @.str.130, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/ata/sata_mv.c", i32 4182, i32 2}
!308 = !{ptr @mv_platform_probe._entry.129, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @mv_platform_probe._entry_ptr.131, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.132, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/ata/sata_mv.c", i32 4263, i32 4}
!312 = !{ptr @.str.133, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @mv_platform_resume._entry, !311, !"_entry", i1 false, i1 false}
!314 = !{ptr @mv_platform_resume._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @mv_sata_dt_ids, !316, !"mv_sata_dt_ids", i1 false, i1 false}
!316 = !{!"../drivers/ata/sata_mv.c", i32 4277, i32 34}
!317 = !{i32 1, !"wchar_size", i32 2}
!318 = !{i32 1, !"min_enum_size", i32 4}
!319 = !{i32 8, !"branch-target-enforcement", i32 0}
!320 = !{i32 8, !"sign-return-address", i32 0}
!321 = !{i32 8, !"sign-return-address-all", i32 0}
!322 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!323 = !{i32 7, !"uwtable", i32 1}
!324 = !{i32 7, !"frame-pointer", i32 2}
!325 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!326 = !{i64 5103549}
!327 = !{i64 2156699194}
!328 = !{i64 2156700198}
!329 = !{i64 2156560439}
!330 = !{i64 5103131}
!331 = !{i64 2156561038}
!332 = !{i64 2156699696}
!333 = !{i64 2156695697}
!334 = !{i64 2156716150}
!335 = !{i64 2156698622}
!336 = !{i64 2148814829, i64 2148814834, i64 2148814847, i64 2148814891, i64 2148814925, i64 2148814946}
!337 = !{i64 2156719510}
!338 = !{i64 2156720016}
!339 = !{i64 2156567823}
!340 = !{i64 2156568241}
!341 = !{i64 2156568667}
!342 = !{i64 2156569128}
!343 = !{i64 2156569558}
!344 = !{i64 2156569984}
!345 = !{i64 2156570425}
!346 = !{i64 2156570855}
!347 = !{i64 2156571281}
!348 = !{!"auto-init"}
!349 = !{i64 2156645649}
!350 = !{!"branch_weights", i32 1, i32 2000}
!351 = !{i64 2156638966}
!352 = !{!"branch_weights", i32 2000, i32 1}
!353 = !{i64 2156637180}
!354 = !{i64 2156637740}
!355 = !{i64 2156565710}
!356 = !{i64 2156566722}
!357 = !{i64 2156697331}
!358 = !{i64 2156614879}
!359 = !{i64 2156615108}
!360 = !{i64 2156615814}
!361 = !{i64 2156698006}
!362 = !{i8 0, i8 2}
!363 = !{i64 2156696203}
!364 = !{i64 2156562880}
!365 = !{i64 2156563370}
!366 = !{i64 2156563888}
!367 = !{i64 2156564422}
!368 = !{i64 2156646285}
!369 = !{i64 2156603320}
!370 = !{i64 2156571998}
!371 = !{i64 2156573074}
!372 = !{i64 2156598308}
!373 = !{i64 2156598532}
!374 = !{i64 2156564792}
!375 = !{i64 2156599223}
!376 = !{i64 2156599468}
!377 = !{i64 2156600232}
!378 = !{i64 2156600478}
!379 = distinct !{!379, !380}
!380 = !{!"llvm.loop.peeled.count", i32 1}
!381 = !{i64 2156594967}
!382 = !{i64 2156595404}
!383 = !{i64 5103329}
!384 = !{i64 2152642674}
!385 = !{i64 2156603679}
!386 = !{i64 2156604112}
!387 = !{i64 2156604909}
!388 = !{i64 2156605423}
!389 = !{i64 2156651223}
!390 = !{i64 2156651441}
!391 = !{i64 2156652126}
!392 = !{i64 2156652345}
!393 = !{i64 2156653035}
!394 = !{i64 2156653255}
!395 = !{i64 2156649602}
!396 = !{i64 2156650308}
!397 = !{i64 2156650534}
!398 = !{i64 2156649387}
!399 = !{i64 2156653687}
!400 = !{i64 2156654079}
!401 = !{i64 2156654514}
!402 = !{i64 2156654938}
!403 = !{i64 2156655362}
!404 = !{i64 2156655786}
!405 = !{i64 2156656210}
!406 = !{i64 2156656634}
!407 = !{i64 2156657058}
!408 = !{i64 2156657482}
!409 = !{i64 2156657906}
!410 = !{i64 2156658330}
!411 = !{i64 2156658729}
!412 = !{i64 2156659165}
!413 = !{i64 2156659583}
!414 = !{i64 2156660001}
!415 = !{i64 2156660419}
!416 = !{i64 2156661064}
!417 = !{i64 2156661275}
!418 = !{i64 2156648682}
!419 = !{i64 2156648049}
!420 = !{i64 2156648275}
!421 = !{i64 2156661937}
!422 = !{i64 2156662152}
!423 = !{i64 2156662593}
!424 = !{i64 2156663040}
!425 = !{i64 2156663449}
!426 = !{i64 2156663915}
!427 = !{i64 2156664371}
!428 = !{i64 2156664832}
!429 = !{i64 2156665292}
!430 = !{i64 2156665754}
!431 = !{i64 2156666211}
!432 = !{i64 2156666661}
!433 = !{i64 2156679089}
!434 = !{i64 2156679306}
!435 = !{i64 2156680532}
!436 = !{i64 2156680749}
!437 = !{i64 2156681975}
!438 = !{i64 2156682520}
!439 = !{i64 2156682779}
!440 = !{i64 2156683172}
!441 = !{i64 2156683850}
!442 = !{i64 2156684109}
!443 = !{i64 2156678388}
!444 = !{i64 2156677662}
!445 = !{i64 2156678164}
!446 = !{i64 2156668165}
!447 = !{i64 2156668381}
!448 = !{i64 2156669556}
!449 = !{i64 2156671357}
!450 = !{i64 2156671987}
!451 = !{i64 2156674345}
!452 = !{i64 2156675038}
!453 = !{i64 2156667340}
!454 = !{i64 2156667557}
!455 = !{i64 2156692033}
!456 = !{i64 2156692251}
!457 = !{i64 2156692932}
!458 = !{i64 2156693150}
!459 = !{i64 2156693851}
!460 = !{i64 2156694074}
!461 = !{i64 2156694780}
!462 = !{i64 2156695003}
!463 = !{i64 2156685038}
!464 = !{i64 2156685431}
!465 = !{i64 2156685869}
!466 = !{i64 2156686293}
!467 = !{i64 2156686717}
!468 = !{i64 2156687141}
!469 = !{i64 2156687565}
!470 = !{i64 2156687989}
!471 = !{i64 2156688413}
!472 = !{i64 2156688837}
!473 = !{i64 2156689261}
!474 = !{i64 2156689685}
!475 = !{i64 2156690085}
!476 = !{i64 2156690524}
!477 = !{i64 2156690942}
!478 = !{i64 2156691360}
!479 = !{i64 2156684787}
!480 = !{i64 2156639911}
!481 = !{i64 2156575860}
!482 = !{i64 2156638503}
!483 = !{i64 2156624189}
!484 = !{i64 2156624723}
!485 = !{i64 2156625261}
!486 = !{i64 2156720326}
!487 = !{i64 2156720774}
!488 = !{i64 2156721318}
!489 = !{i64 2156722061}
