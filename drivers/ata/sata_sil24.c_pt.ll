; ModuleID = '/llk/IR_all_yes/drivers/ata/sata_sil24.c_pt.bc'
source_filename = "../drivers/ata/sata_sil24.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sil24_cerr_info = type { i32, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.83 = type { ptr }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.84, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.84 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%union.sil24_cmd_block = type { %struct.sil24_atapi_block }
%struct.sil24_atapi_block = type { %struct.sil24_prb, [16 x i8], [253 x %struct.sil24_sge] }
%struct.sil24_prb = type { i16, i16, i32, [24 x i8] }
%struct.sil24_sge = type { i64, i32, i32 }
%struct.sil24_ata_block = type { %struct.sil24_prb, [253 x %struct.sil24_sge] }
%struct.sil24_port_priv = type { ptr, i32, i32 }

@__param_str_msi = internal constant [15 x i8] c"sata_sil24.msi\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@sata_sil24_msi = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_msi = internal constant %struct.kernel_param { ptr @__param_str_msi, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @sata_sil24_msi } }, section "__param", align 4
@__UNIQUE_ID_msitype290 = internal constant [29 x i8] c"sata_sil24.parmtype=msi:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_msi291 = internal constant [48 x i8] c"sata_sil24.parm=msi:Enable MSI (Default: false)\00", section ".modinfo", align 1
@__initcall__kmod_sata_sil24__292_1359_sil24_pci_driver_init6 = internal global ptr @sil24_pci_driver_init, section ".initcall6.init", align 4
@sil24_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @sil24_pci_tbl, ptr @sil24_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @sil24_pci_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_sil24_pci_driver_exit = internal global ptr @sil24_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [28 x i8] c"sata_sil24.author=Tejun Heo\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [69 x i8] c"sata_sil24.description=Silicon Image 3124/3132 SATA low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [39 x i8] c"sata_sil24.file=drivers/ata/sata_sil24\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [23 x i8] c"sata_sil24.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sata_sil24\00", [21 x i8] zeroinitializer }, align 32
@sil24_pci_tbl = internal constant { [8 x %struct.pci_device_id], [64 x i8] } { [8 x %struct.pci_device_id] [%struct.pci_device_id { i32 4245, i32 12580, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 12580, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4245, i32 12594, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4245, i32 578, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4245, i32 580, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4245, i32 12593, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4245, i32 13617, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@sil24_port_info = internal constant { [3 x %struct.ata_port_info], [44 x i8] } { [3 x %struct.ata_port_info] [%struct.ata_port_info { i32 -1056045950, i32 0, i32 31, i32 7, i32 63, ptr @sil24_ops, ptr null }, %struct.ata_port_info { i32 1074660482, i32 0, i32 31, i32 7, i32 63, ptr @sil24_ops, ptr null }, %struct.ata_port_info { i32 918658, i32 0, i32 31, i32 7, i32 63, ptr @sil24_ops, ptr null }], [44 x i8] zeroinitializer }, align 32
@sil24_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.1\00", [28 x i8] zeroinitializer }, align 32
@sil24_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1293, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Applying completion IRQ loss on PCI-X errata fix\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sil24_init_one\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/ata/sata_sil24.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sil24_init_one._entry_ptr = internal global ptr @sil24_init_one._entry, section ".printk_index", align 4
@sil24_init_one._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1308, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA enable failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sil24_init_one._entry_ptr.10 = internal global ptr @sil24_init_one._entry.7, section ".printk_index", align 4
@sil24_init_one._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1320, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Using MSI\0A\00", [21 x i8] zeroinitializer }, align 32
@sil24_init_one._entry_ptr.13 = internal global ptr @sil24_init_one._entry.11, section ".printk_index", align 4
@sil24_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 31, i32 -1, i16 253, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 0, i8 16, i32 0, ptr null, ptr @ata_ncq_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@sil24_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr @sil24_qc_defer, ptr null, ptr @sil24_qc_prep, ptr @sil24_qc_issue, ptr @sil24_qc_fill_rtf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sil24_dev_config, ptr @sil24_freeze, ptr @sil24_thaw, ptr null, ptr @sil24_softreset, ptr @sil24_hardreset, ptr null, ptr null, ptr @sil24_softreset, ptr @sil24_pmp_hardreset, ptr null, ptr @sil24_error_handler, ptr null, ptr @sil24_post_internal_cmd, ptr null, ptr null, ptr @sil24_scr_read, ptr @sil24_scr_write, ptr @sil24_pmp_attach, ptr @sil24_pmp_detach, ptr null, ptr null, ptr @sil24_port_resume, ptr @sil24_port_start, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sata_pmp_port_ops }, [44 x i8] zeroinitializer }, align 32
@sata_pmp_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"port not ready\00", [17 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SRST command error\00", [45 x i8] zeroinitializer }, align 32
@sil24_softreset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013ata%u.%02u: softreset failed (%s)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sil24_softreset\00", [16 x i8] zeroinitializer }, align 32
@sil24_softreset._entry_ptr = internal global ptr @sil24_softreset._entry, section ".printk_index", align 4
@sil24_softreset._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.4, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013ata%u: softreset failed (%s)\0A\00", [32 x i8] zeroinitializer }, align 32
@sil24_softreset._entry_ptr.21 = internal global ptr @sil24_softreset._entry.19, section ".printk_index", align 4
@sil24_hardreset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014ata%u: controller in dubious state, performing PORT_RST\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sil24_hardreset\00", [16 x i8] zeroinitializer }, align 32
@sil24_hardreset._entry_ptr = internal global ptr @sil24_hardreset._entry, section ".printk_index", align 4
@sata_deb_timing_long = external dso_local constant [0 x i32], align 4
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PHY debouncing failed\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"link not ready\00", [17 x i8] zeroinitializer }, align 32
@sil24_hardreset._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.23, ptr @.str.4, i32 765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013ata%u.%02u: hardreset failed (%s)\0A\00", [59 x i8] zeroinitializer }, align 32
@sil24_hardreset._entry_ptr.28 = internal global ptr @sil24_hardreset._entry.26, section ".printk_index", align 4
@sil24_hardreset._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.23, ptr @.str.4, i32 765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013ata%u: hardreset failed (%s)\0A\00", [32 x i8] zeroinitializer }, align 32
@sil24_hardreset._entry_ptr.31 = internal global ptr @sil24_hardreset._entry.29, section ".printk_index", align 4
@sil24_pmp_hardreset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 940, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013ata%u.%02u: hardreset failed (port not ready)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sil24_pmp_hardreset\00", [44 x i8] zeroinitializer }, align 32
@sil24_pmp_hardreset._entry_ptr = internal global ptr @sil24_pmp_hardreset._entry, section ".printk_index", align 4
@sil24_pmp_hardreset._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.4, i32 940, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ata%u: hardreset failed (port not ready)\0A\00", [52 x i8] zeroinitializer }, align 32
@sil24_pmp_hardreset._entry_ptr.36 = internal global ptr @sil24_pmp_hardreset._entry.34, section ".printk_index", align 4
@sil24_scr_map = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 0, i32 3], [16 x i8] zeroinitializer }, align 32
@sil24_pmp_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 920, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016ata%u: disabling NCQ support due to sil24-mv4140 quirk\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sil24_pmp_attach\00", [47 x i8] zeroinitializer }, align 32
@sil24_pmp_attach._entry_ptr = internal global ptr @sil24_pmp_attach._entry, section ".printk_index", align 4
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@sil24_init_controller._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 1249, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to clear port RST\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sil24_init_controller\00", [42 x i8] zeroinitializer }, align 32
@sil24_init_controller._entry_ptr = internal global ptr @sil24_init_controller._entry, section ".printk_index", align 4
@sil24_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 1151, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"IRQ status == 0xffffffff, PCI fault or device removal?\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sil24_interrupt\00", [16 x i8] zeroinitializer }, align 32
@sil24_interrupt._entry_ptr = internal global ptr @sil24_interrupt._entry, section ".printk_index", align 4
@sil24_host_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 1136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016ata%u: spurious interrupt (slot_stat 0x%x active_tag %d sactive 0x%x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sil24_host_intr\00", [16 x i8] zeroinitializer }, align 32
@sil24_host_intr._entry_ptr = internal global ptr @sil24_host_intr._entry, section ".printk_index", align 4
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"irq_stat 0x%08x\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SDB notify\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PHY RDY changed\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"device exchanged\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"unknown FIS\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PMP DMA CS errata\00", [46 x i8] zeroinitializer }, align 32
@sil24_cerr_db = internal constant { [37 x %struct.sil24_cerr_info], [100 x i8] } { [37 x %struct.sil24_cerr_info] [%struct.sil24_cerr_info { i32 1, i32 0, ptr @.str.55 }, %struct.sil24_cerr_info { i32 1, i32 0, ptr @.str.56 }, %struct.sil24_cerr_info { i32 1, i32 0, ptr @.str.57 }, %struct.sil24_cerr_info { i32 16, i32 6, ptr @.str.58 }, %struct.sil24_cerr_info { i32 16, i32 6, ptr @.str.59 }, %struct.sil24_cerr_info { i32 2, i32 6, ptr @.str.60 }, %struct.sil24_cerr_info { i32 2, i32 6, ptr @.str.61 }, %struct.sil24_cerr_info { i32 2, i32 6, ptr @.str.62 }, %struct.sil24_cerr_info { i32 2, i32 6, ptr @.str.63 }, %struct.sil24_cerr_info zeroinitializer, %struct.sil24_cerr_info zeroinitializer, %struct.sil24_cerr_info { i32 2, i32 6, ptr @.str.64 }, %struct.sil24_cerr_info zeroinitializer, %struct.sil24_cerr_info zeroinitializer, %struct.sil24_cerr_info zeroinitializer, %struct.sil24_cerr_info zeroinitializer, %struct.sil24_cerr_info { i32 64, i32 6, ptr @.str.65 }, %struct.sil24_cerr_info { i32 32, i32 6, ptr @.str.66 }, %struct.sil24_cerr_info { i32 32, i32 6, ptr @.str.67 }, %struct.sil24_cerr_info { i32 32, i32 6, ptr @.str.68 }, %struct.sil24_cerr_info zeroinitializer, %struct.sil24_cerr_info zeroinitializer, %struct.sil24_cerr_info zeroinitializer, %struct.sil24_cerr_info zeroinitializer, %struct.sil24_cerr_info { i32 64, i32 6, ptr @.str.69 }, %struct.sil24_cerr_info { i32 32, i32 6, ptr @.str.70 }, %struct.sil24_cerr_info { i32 32, i32 6, ptr @.str.71 }, %struct.sil24_cerr_info { i32 32, i32 6, ptr @.str.72 }, %struct.sil24_cerr_info zeroinitializer, %struct.sil24_cerr_info zeroinitializer, %struct.sil24_cerr_info zeroinitializer, %struct.sil24_cerr_info zeroinitializer, %struct.sil24_cerr_info { i32 32, i32 6, ptr @.str.73 }, %struct.sil24_cerr_info { i32 32, i32 6, ptr @.str.74 }, %struct.sil24_cerr_info { i32 32, i32 6, ptr @.str.75 }, %struct.sil24_cerr_info { i32 32, i32 6, ptr @.str.76 }, %struct.sil24_cerr_info { i32 2, i32 6, ptr @.str.77 }], [100 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unknown command error %d\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"device error\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"device error via D2H FIS\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"device error via SDB FIS\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"error in data FIS\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to transmit command FIS\00", [33 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"protocol mismatch\00", [46 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"data direction mismatch\00", [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ran out of SGEs while writing\00", [34 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ran out of SGEs while reading\00", [34 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid data direction for ATAPI CDB\00", [59 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SGT not on qword boundary\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PCI target abort while fetching SGT\00", [60 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PCI master abort while fetching SGT\00", [60 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PCI parity error while fetching SGT\00", [60 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PRB not on qword boundary\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PCI target abort while fetching PRB\00", [60 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PCI master abort while fetching PRB\00", [60 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PCI parity error while fetching PRB\00", [60 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"undefined error while transferring data\00", [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PCI target abort while transferring data\00", [55 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PCI master abort while transferring data\00", [55 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PCI parity error while transferring data\00", [55 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"FIS received while sending service FIS\00", [57 x i8] zeroinitializer }, align 32
@ata_ncq_sdev_groups = external dso_local global [0 x ptr], align 4
@___asan_gen_.78 = private unnamed_addr constant [15 x i8] c"sata_sil24_msi\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 416, i32 13 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"sil24_pci_driver\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 365, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1359, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant [14 x i8] c"sil24_pci_tbl\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 353, i32 35 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"sil24_port_info\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 427, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant [28 x i8] c"sil24_init_one.__print_once\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1274, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1292, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1308, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1320, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [10 x i8] c"sil24_sht\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 376, i32 34 }
@___asan_gen_.133 = private unnamed_addr constant [10 x i8] c"sil24_ops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 387, i32 35 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 661, i32 12 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 673, i32 12 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 676, i32 12 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 686, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 706, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 740, i32 12 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 747, i32 12 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 765, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 940, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [14 x i8] c"sil24_scr_map\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 493, i32 12 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 919, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1213, i32 45 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1214, i32 64 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1248, i32 5 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1150, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1134, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 989, i32 25 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 992, i32 26 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 998, i32 26 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1000, i32 7 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1000, i32 27 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1007, i32 26 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1028, i32 27 }
@___asan_gen_.268 = private unnamed_addr constant [14 x i8] c"sil24_cerr_db\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 264, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1069, i32 27 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 266, i32 9 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 268, i32 9 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 270, i32 9 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 272, i32 9 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 274, i32 9 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 276, i32 10 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 278, i32 9 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 280, i32 9 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 282, i32 9 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 284, i32 9 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 286, i32 10 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 288, i32 9 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 290, i32 9 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 292, i32 9 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 294, i32 10 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 296, i32 9 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 298, i32 9 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 300, i32 9 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 302, i32 9 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 304, i32 9 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 306, i32 9 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 308, i32 9 }
@___asan_gen_.340 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.341 = private constant [28 x i8] c"../drivers/ata/sata_sil24.c\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 310, i32 9 }
@llvm.compiler.used = appending global [113 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__UNIQUE_ID_msi291, ptr @__UNIQUE_ID_msitype290, ptr @__exitcall_sil24_pci_driver_exit, ptr @__initcall__kmod_sata_sil24__292_1359_sil24_pci_driver_init6, ptr @__param_msi, ptr @sil24_hardreset._entry, ptr @sil24_hardreset._entry.26, ptr @sil24_hardreset._entry.29, ptr @sil24_hardreset._entry_ptr, ptr @sil24_hardreset._entry_ptr.28, ptr @sil24_hardreset._entry_ptr.31, ptr @sil24_host_intr._entry, ptr @sil24_host_intr._entry_ptr, ptr @sil24_init_controller._entry, ptr @sil24_init_controller._entry_ptr, ptr @sil24_init_one._entry, ptr @sil24_init_one._entry.11, ptr @sil24_init_one._entry.7, ptr @sil24_init_one._entry_ptr, ptr @sil24_init_one._entry_ptr.10, ptr @sil24_init_one._entry_ptr.13, ptr @sil24_interrupt._entry, ptr @sil24_interrupt._entry_ptr, ptr @sil24_pci_driver_exit, ptr @sil24_pmp_attach._entry, ptr @sil24_pmp_attach._entry_ptr, ptr @sil24_pmp_hardreset._entry, ptr @sil24_pmp_hardreset._entry.34, ptr @sil24_pmp_hardreset._entry_ptr, ptr @sil24_pmp_hardreset._entry_ptr.36, ptr @sil24_softreset._entry, ptr @sil24_softreset._entry.19, ptr @sil24_softreset._entry_ptr, ptr @sil24_softreset._entry_ptr.21, ptr @sata_sil24_msi, ptr @sil24_pci_driver, ptr @.str, ptr @sil24_pci_tbl, ptr @sil24_port_info, ptr @sil24_init_one.__print_once, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @sil24_sht, ptr @sil24_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @sil24_scr_map, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @sil24_cerr_db, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_sil24_msi to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil24_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil24_pci_tbl to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil24_port_info to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil24_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil24_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil24_init_one._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil24_init_one._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil24_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil24_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil24_softreset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil24_softreset._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil24_hardreset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil24_hardreset._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil24_hardreset._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil24_pmp_hardreset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil24_pmp_hardreset._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil24_scr_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil24_pmp_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil24_init_controller._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil24_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil24_host_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil24_cerr_db to i32), i32 444, i32 544, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sil24_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @sil24_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sil24_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @sil24_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sil24_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %pi = alloca %struct.ata_port_info, align 4
  %ppi = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pi) #6
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [3 x %struct.ata_port_info], ptr @sil24_port_info, i32 0, i32 %1
  %2 = call ptr @memcpy(ptr %pi, ptr %arrayidx, i32 28)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #6
  %3 = getelementptr inbounds [2 x ptr], ptr %ppi, i32 0, i32 1
  %4 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pi, ptr %ppi, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %3, align 4
  %.b79 = load i1, ptr @sil24_init_one.__print_once, align 1
  br i1 %.b79, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @sil24_init_one.__print_once, align 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void @ata_print_version(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = call i32 @pcim_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 5, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call8 = call ptr @pcim_iomap_table(ptr noundef %pdev) #6
  %6 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pi, align 4
  %and = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end7.if.end22_crit_edge, label %if.then10

if.end7.if.end22_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then10:                                        ; preds = %if.end7
  %8 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call8, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 64
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !186
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !187
  %11 = and i32 %10, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool16.not = icmp eq i32 %11, 0
  br i1 %tobool16.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev18, ptr noundef nonnull @.str.2) #9
  br label %if.end22

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pi, align 4
  %and20 = and i32 %13, -16777217
  store i32 %and20, ptr %pi, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %do.end, %if.end7.if.end22_crit_edge
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %14 = ptrtoint ptr %ppi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ppi, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %shr = lshr i32 %17, 30
  %add = add nuw nsw i32 %shr, 1
  %call27 = call ptr @ata_host_alloc_pinfo(ptr noundef %dev23, ptr noundef nonnull %ppi, i32 noundef %add) #6
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end22.cleanup_crit_edge, label %if.end30

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.end22
  %iomap31 = getelementptr inbounds %struct.ata_host, ptr %call27, i32 0, i32 2
  %18 = ptrtoint ptr %iomap31 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call8, ptr %iomap31, align 4
  %call.i = call i32 @dma_set_mask(ptr noundef %dev23, i64 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end40, label %do.end38

do.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end40:                                         ; preds = %if.end30
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %dev23, i64 noundef -1) #6
  %call41 = call i32 @pcie_set_readrq(ptr noundef %pdev, i32 noundef 4096) #6
  call fastcc void @sil24_init_controller(ptr noundef nonnull %call27)
  %19 = load i8, ptr @sata_sil24_msi, align 1, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool42.not = icmp eq i8 %19, 0
  br i1 %tobool42.not, label %if.end40.if.end50_crit_edge, label %land.lhs.true

if.end40.if.end50_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

land.lhs.true:                                    ; preds = %if.end40
  %call43 = call i32 @pci_enable_msi(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %do.end48, label %land.lhs.true.if.end50_crit_edge

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.end48:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev23, ptr noundef nonnull @.str.12) #9
  call void @pci_intx(ptr noundef %pdev, i32 noundef 0) #6
  br label %if.end50

if.end50:                                         ; preds = %do.end48, %land.lhs.true.if.end50_crit_edge, %if.end40.if.end50_crit_edge
  call void @pci_set_master(ptr noundef %pdev) #6
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 4
  %call51 = call i32 @ata_host_activate(ptr noundef nonnull %call27, i32 noundef %21, ptr noundef nonnull @sil24_interrupt, i32 noundef 128, ptr noundef nonnull @sil24_sht) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.end38, %if.end22.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end38 ], [ %call51, %if.end50 ], [ %call, %if.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ -12, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pi) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sil24_pci_device_resume(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomap, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call1 = tail call i32 @ata_pci_device_do_resume(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %power = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 12
  %6 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %do.body, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !189
  tail call void @arm_heavy_mb() #6
  %add.ptr = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 128) #6, !srcloc !190
  br label %if.end3

if.end3:                                          ; preds = %do.body, %if.end.if.end3_crit_edge
  tail call fastcc void @sil24_init_controller(ptr noundef %1)
  tail call void @ata_host_resume(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc_pinfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_set_readrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sil24_init_controller(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iomap = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomap, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !191
  tail call void @arm_heavy_mb() #6
  %add.ptr = getelementptr i8, ptr %3, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !192
  tail call void @arm_heavy_mb() #6
  %add.ptr4 = getelementptr i8, ptr %3, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #6, !srcloc !190
  %n_ports = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 3
  %4 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp43.not = icmp eq i32 %5, 0
  br i1 %cmp43.not, label %entry.do.body27_crit_edge, label %for.body.lr.ph

entry.do.body27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body27

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end26.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end26.for.body_crit_edge ]
  %arrayidx5 = getelementptr %struct.ata_host, ptr %host, i32 0, i32 12, i32 %i.044
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5, align 4
  %host.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 31
  %8 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host.i, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %11, i32 2
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 7
  %14 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i = shl i32 %15, 13
  %add.ptr.i = getelementptr i8, ptr %13, i32 %mul.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !193
  tail call void @arm_heavy_mb() #6
  %add.ptr9 = getelementptr i8, ptr %add.ptr.i, i32 4176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 201457664) #6, !srcloc !190
  %add.ptr10 = getelementptr i8, ptr %add.ptr.i, i32 4096
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #6, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !194
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %for.body.if.end26_crit_edge, label %do.body14

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

do.body14:                                        ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !195
  tail call void @arm_heavy_mb() #6
  %add.ptr17 = getelementptr i8, ptr %add.ptr.i, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 16777216) #6, !srcloc !190
  %call19 = tail call i32 @ata_wait_register(ptr noundef null, ptr noundef %add.ptr10, i32 noundef 1, i32 noundef 1, i32 noundef 10, i32 noundef 100) #6
  %and20 = and i32 %call19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body14.if.end26_crit_edge, label %do.end25

do.body14.if.end26_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

do.end25:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.41) #9
  br label %if.end26

if.end26:                                         ; preds = %do.end25, %do.body14.if.end26_crit_edge, %for.body.if.end26_crit_edge
  tail call fastcc void @sil24_config_port(ptr noundef %7)
  %inc = add nuw i32 %i.044, 1
  %20 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_ports, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %if.end26.for.body_crit_edge, label %if.end26.do.body27_crit_edge

if.end26.do.body27_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body27

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body27:                                        ; preds = %if.end26.do.body27_crit_edge, %entry.do.body27_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !196
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 251658240) #6, !srcloc !190
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_intx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sil24_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iomap = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 2
  %0 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomap, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 68
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !186
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.43) #9
  br label %out

if.end:                                           ; preds = %entry
  %and = and i32 %5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end3:                                          ; preds = %if.end
  tail call void @_raw_spin_lock(ptr noundef %dev_instance) #6
  %n_ports = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 3
  %8 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp424.not = icmp eq i32 %9, 0
  br i1 %cmp424.not, label %if.end3.for.end_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end3.for.body_crit_edge
  %handled.027 = phi i32 [ %handled.1, %for.inc.for.body_crit_edge ], [ 0, %if.end3.for.body_crit_edge ]
  %i.025 = phi i32 [ %inc10, %for.inc.for.body_crit_edge ], [ 0, %if.end3.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.025
  %and5 = and i32 %shl, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %for.body.for.inc_crit_edge, label %if.then7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then7:                                         ; preds = %for.body
  %arrayidx8 = getelementptr %struct.ata_host, ptr %dev_instance, i32 0, i32 12, i32 %i.025
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx8, align 4
  %host.i.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 31
  %12 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host.i.i, align 4
  %iomap.i.i = getelementptr inbounds %struct.ata_host, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %iomap.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iomap.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %15, i32 2
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %port_no.i.i.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 7
  %18 = ptrtoint ptr %port_no.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_no.i.i.i, align 4
  %mul.i.i.i = shl i32 %19, 13
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %mul.i.i.i
  %flags.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 3
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then7.if.end.i_crit_edge, label %do.body.i

if.then7.if.end.i_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.body.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !198
  tail call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #6, !srcloc !190
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %if.then7.if.end.i_crit_edge
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i.i, i32 6144
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #6, !srcloc !186
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !199
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %tobool5.not.i = icmp sgt i32 %23, -1
  br i1 %tobool5.not.i, label %if.end9.i, label %if.then8.i, !prof !200

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @sil24_error_intr(ptr noundef %11) #6
  br label %sil24_host_intr.exit

if.end9.i:                                        ; preds = %if.end.i
  %conv.i = zext i32 %23 to i64
  %call11.i = tail call i32 @ata_qc_complete_multiple(ptr noundef %11, i64 noundef %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp.i = icmp sgt i32 %call11.i, 0
  br i1 %cmp.i, label %if.end9.i.sil24_host_intr.exit_crit_edge, label %if.end14.i

if.end9.i.sil24_host_intr.exit_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sil24_host_intr.exit

if.end14.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp15.i = icmp slt i32 %call11.i, 0
  br i1 %cmp15.i, label %if.then17.i, label %if.end20.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %err_mask.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 25, i32 11, i32 2
  %24 = ptrtoint ptr %err_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %err_mask.i, align 4
  %or.i = or i32 %25, 2
  store i32 %or.i, ptr %err_mask.i, align 4
  %action.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 25, i32 11, i32 3
  %26 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %action.i, align 4
  %or18.i = or i32 %27, 6
  store i32 %or18.i, ptr %action.i, align 4
  %call19.i = tail call i32 @ata_port_freeze(ptr noundef %11) #6
  br label %sil24_host_intr.exit

if.end20.i:                                       ; preds = %if.end14.i
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 4
  %and22.i = and i32 %29, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %land.lhs.true.i, label %if.end20.i.sil24_host_intr.exit_crit_edge

if.end20.i.sil24_host_intr.exit_crit_edge:        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sil24_host_intr.exit

land.lhs.true.i:                                  ; preds = %if.end20.i
  %call24.i = tail call i32 @ata_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %land.lhs.true.i.sil24_host_intr.exit_crit_edge, label %do.end29.i

land.lhs.true.i.sil24_host_intr.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sil24_host_intr.exit

do.end29.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 5
  %30 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %print_id.i, align 4
  %active_tag.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 25, i32 3
  %32 = ptrtoint ptr %active_tag.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %active_tag.i, align 8
  %sactive.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 25, i32 4
  %34 = ptrtoint ptr %sactive.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sactive.i, align 4
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %31, i32 noundef %23, i32 noundef %33, i32 noundef %35) #9
  br label %sil24_host_intr.exit

sil24_host_intr.exit:                             ; preds = %do.end29.i, %land.lhs.true.i.sil24_host_intr.exit_crit_edge, %if.end20.i.sil24_host_intr.exit_crit_edge, %if.then17.i, %if.end9.i.sil24_host_intr.exit_crit_edge, %if.then8.i
  %inc = add i32 %handled.027, 1
  br label %for.inc

for.inc:                                          ; preds = %sil24_host_intr.exit, %for.body.for.inc_crit_edge
  %handled.1 = phi i32 [ %inc, %sil24_host_intr.exit ], [ %handled.027, %for.body.for.inc_crit_edge ]
  %inc10 = add nuw i32 %i.025, 1
  %36 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n_ports, align 4
  %cmp4 = icmp ult i32 %inc10, %37
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end3.for.end_crit_edge
  %handled.0.lcssa = phi i32 [ 0, %if.end3.for.end_crit_edge ], [ %handled.1, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %dev_instance) #6
  br label %out

out:                                              ; preds = %for.end, %if.end.out_crit_edge, %do.end
  %handled.2 = phi i32 [ 0, %do.end ], [ %handled.0.lcssa, %for.end ], [ 0, %if.end.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.2)
  %tobool12.not = icmp ne i32 %handled.2, 0
  %cond = zext i1 %tobool12.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sil24_qc_defer(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %protocol, align 4
  %8 = and i8 %7, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.i.not = icmp eq i8 %8, 0
  %excl_link = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 29
  %9 = ptrtoint ptr %excl_link to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %excl_link, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool.i.not, label %lor.end, label %lor.end.thread

lor.end:                                          ; preds = %entry
  br i1 %tobool3.not, label %if.else12, label %lor.end.if.then_crit_edge, !prof !200

lor.end.if.then_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.end.thread:                                   ; preds = %entry
  br i1 %tobool3.not, label %lor.end.thread.if.then20_crit_edge, label %lor.end.thread.if.then_crit_edge, !prof !200

lor.end.thread.if.then_crit_edge:                 ; preds = %lor.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.end.thread.if.then20_crit_edge:               ; preds = %lor.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

if.then:                                          ; preds = %lor.end.thread.if.then_crit_edge, %lor.end.if.then_crit_edge
  %cmp = icmp eq ptr %3, %10
  br i1 %cmp, label %if.then7, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %if.then
  %nr_active_links = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 22
  %11 = ptrtoint ptr %nr_active_links to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_active_links, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %if.then7.if.end29.sink.split_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7.if.end29.sink.split_crit_edge:           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.sink.split

if.else12:                                        ; preds = %lor.end
  %flags = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else12.if.end29_crit_edge, label %if.else12.if.then20_crit_edge, !prof !200

if.else12.if.then20_crit_edge:                    ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

if.else12.if.end29_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then20:                                        ; preds = %if.else12.if.then20_crit_edge, %lor.end.thread.if.then20_crit_edge
  %15 = ptrtoint ptr %excl_link to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %3, ptr %excl_link, align 4
  %nr_active_links22 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 22
  %16 = ptrtoint ptr %nr_active_links22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_active_links22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool23.not = icmp eq i32 %17, 0
  br i1 %tobool23.not, label %if.then20.if.end29.sink.split_crit_edge, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then20.if.end29.sink.split_crit_edge:          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.sink.split

if.end29.sink.split:                              ; preds = %if.then20.if.end29.sink.split_crit_edge, %if.then7.if.end29.sink.split_crit_edge
  %flags10 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %18 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags10, align 4
  %or27 = or i32 %19, 32
  store i32 %or27, ptr %flags10, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %if.else12.if.end29_crit_edge
  %call30 = tail call i32 @ata_std_qc_defer(ptr noundef %qc) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then20.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.end29 ], [ 2, %if.then7.cleanup_crit_edge ], [ 2, %if.then.cleanup_crit_edge ], [ 2, %if.then20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sil24_qc_prep(ptr noundef %qc) #2 align 64 {
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
  %hw_tag = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 8
  %6 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 32
  %.tag.i = select i1 %cmp.i.i, i32 0, i32 %7, !prof !201
  %arrayidx = getelementptr %union.sil24_cmd_block, ptr %5, i32 %.tag.i
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %protocol, align 4
  %10 = and i8 %9, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.i.not = icmp eq i8 %10, 0
  br i1 %tobool.i.not, label %if.then, label %if.else25

if.then:                                          ; preds = %entry
  %sge4 = getelementptr inbounds %struct.sil24_ata_block, ptr %arrayidx, i32 0, i32 1
  %11 = and i8 %9, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.i80.not = icmp eq i8 %11, 0
  br i1 %tobool.i80.not, label %if.then.if.end46_crit_edge, label %if.then8

if.then.if.end46_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %12 = and i8 %9, 4
  %13 = zext i8 %12 to i16
  %14 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tf, align 4
  %and = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %prot.1.v = select i1 %tobool.not, i16 8, i16 16
  %prot.1 = or i16 %prot.1.v, %13
  %16 = shl nuw nsw i16 %prot.1, 8
  %prot23 = getelementptr inbounds %struct.sil24_prb, ptr %arrayidx, i32 0, i32 1
  %17 = ptrtoint ptr %prot23 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %prot23, align 2
  br label %if.end46

if.else25:                                        ; preds = %entry
  %sge27 = getelementptr inbounds %struct.sil24_atapi_block, ptr %arrayidx, i32 0, i32 2
  %cdb = getelementptr inbounds %struct.sil24_atapi_block, ptr %arrayidx, i32 0, i32 1
  %18 = call ptr @memset(ptr %cdb, i32 0, i32 16)
  %cdb32 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 5
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %cdb_len = getelementptr inbounds %struct.ata_device, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %cdb_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cdb_len, align 32
  %23 = call ptr @memcpy(ptr %cdb, ptr %cdb32, i32 %22)
  %24 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %protocol, align 4
  %26 = and i8 %25, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.i82.not = icmp eq i8 %26, 0
  br i1 %tobool.i82.not, label %if.else25.if.end46_crit_edge, label %if.then37

if.else25.if.end46_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then37:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tf, align 4
  %and40 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %. = select i1 %tobool41.not, i16 4096, i16 8192
  br label %if.end46

if.end46:                                         ; preds = %if.then37, %if.else25.if.end46_crit_edge, %if.then8, %if.then.if.end46_crit_edge
  %sge.0 = phi ptr [ %sge27, %if.else25.if.end46_crit_edge ], [ %sge4, %if.then8 ], [ %sge4, %if.then.if.end46_crit_edge ], [ %sge27, %if.then37 ]
  %ctrl.0 = phi i16 [ 0, %if.else25.if.end46_crit_edge ], [ 256, %if.then8 ], [ 0, %if.then.if.end46_crit_edge ], [ %., %if.then37 ]
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %ctrl.0, ptr %arrayidx, align 4
  %dev49 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %30 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev49, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 128
  %pmp = getelementptr inbounds %struct.ata_link, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pmp, align 4
  %conv50 = trunc i32 %35 to i8
  %fis = getelementptr inbounds %struct.sil24_prb, ptr %arrayidx, i32 0, i32 3
  tail call void @ata_tf_to_fis(ptr noundef %tf, i8 noundef zeroext %conv50, i32 noundef 1, ptr noundef %fis) #6
  %flags52 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %36 = ptrtoint ptr %flags52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags52, align 4
  %and53 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end46.if.end56_crit_edge, label %if.then55

if.end46.if.end56_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then55:                                        ; preds = %if.end46
  %n_elem.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 9
  %38 = ptrtoint ptr %n_elem.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_elem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp11.not.i = icmp eq i32 %39, 0
  br i1 %cmp11.not.i, label %if.then55.sil24_fill_sg.exit_crit_edge, label %for.body.preheader.i

if.then55.sil24_fill_sg.exit_crit_edge:           ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  br label %sil24_fill_sg.exit

for.body.preheader.i:                             ; preds = %if.then55
  %sg1.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 17
  %40 = ptrtoint ptr %sg1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sg1.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %si.014.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %sg.013.i = phi ptr [ %call.i, %for.body.i.for.body.i_crit_edge ], [ %41, %for.body.preheader.i ]
  %sge.addr.012.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %sge.0, %for.body.preheader.i ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.013.i, i32 0, i32 3
  %42 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_address.i, align 4
  %conv.i = zext i32 %43 to i64
  %44 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #6
  %45 = ptrtoint ptr %sge.addr.012.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %sge.addr.012.i, align 8
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.013.i, i32 0, i32 4
  %46 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_length.i, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #6
  %cnt.i = getelementptr inbounds %struct.sil24_sge, ptr %sge.addr.012.i, i32 0, i32 1
  %49 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %cnt.i, align 8
  %flags.i = getelementptr inbounds %struct.sil24_sge, ptr %sge.addr.012.i, i32 0, i32 2
  %50 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %flags.i, align 4
  %incdec.ptr.i = getelementptr %struct.sil24_sge, ptr %sge.addr.012.i, i32 1
  %inc.i = add nuw i32 %si.014.i, 1
  %call.i = tail call ptr @sg_next(ptr noundef %sg.013.i) #6
  %51 = ptrtoint ptr %n_elem.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n_elem.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %52
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.sil24_fill_sg.exit_crit_edge

for.body.i.sil24_fill_sg.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sil24_fill_sg.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

sil24_fill_sg.exit:                               ; preds = %for.body.i.sil24_fill_sg.exit_crit_edge, %if.then55.sil24_fill_sg.exit_crit_edge
  %last_sge.0.lcssa.i = phi ptr [ null, %if.then55.sil24_fill_sg.exit_crit_edge ], [ %sge.addr.012.i, %for.body.i.sil24_fill_sg.exit_crit_edge ]
  %flags2.i = getelementptr inbounds %struct.sil24_sge, ptr %last_sge.0.lcssa.i, i32 0, i32 2
  %53 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 128, ptr %flags2.i, align 4
  br label %if.end56

if.end56:                                         ; preds = %sil24_fill_sg.exit, %if.end46.if.end56_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sil24_qc_issue(ptr nocapture noundef readonly %qc) #2 align 64 {
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
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host.i, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i = shl i32 %11, 13
  %add.ptr.i = getelementptr i8, ptr %9, i32 %mul.i.i
  %hw_tag = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 8
  %12 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %13)
  %cmp.i.i = icmp eq i32 %13, 32
  %.tag.i = select i1 %cmp.i.i, i32 0, i32 %13, !prof !201
  %cmd_block_dma = getelementptr inbounds %struct.sil24_port_priv, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %cmd_block_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmd_block_dma, align 4
  %mul = shl i32 %.tag.i, 12
  %add = add i32 %mul, %15
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 7168
  %mul3 = shl i32 %.tag.i, 3
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %mul3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !202
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !203
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %add)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %16) #6, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !204
  tail call void @arm_heavy_mb() #6
  %add.ptr12 = getelementptr i8, ptr %add.ptr4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #6, !srcloc !190
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @sil24_qc_fill_rtf(ptr noundef %qc) #2 align 64 {
entry:
  %fis.i = alloca [24 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %hw_tag = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 8
  %2 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_tag, align 4
  %result_tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 21
  %host.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host.i.i, align 4
  %iomap.i.i = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %iomap.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomap.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %port_no.i.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %port_no.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_no.i.i.i, align 4
  %mul.i.i.i = shl i32 %11, 13
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %mul.i.i.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fis.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp.i.i.i = icmp eq i32 %3, 32
  %tag.op.i = shl i32 %3, 7
  %mul.i = select i1 %cmp.i.i.i, i32 0, i32 %tag.op.i, !prof !201
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i
  %fis3.i = getelementptr inbounds %struct.sil24_prb, ptr %add.ptr2.i, i32 0, i32 3
  %12 = call ptr @memset(ptr %fis.i, i32 255, i32 24)
  call void @mmiocpy(ptr noundef nonnull %fis.i, ptr noundef %fis3.i, i32 noundef 24) #6
  call void @ata_tf_from_fis(ptr noundef nonnull %fis.i, ptr noundef %result_tf) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fis.i) #6
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sil24_dev_config(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %host.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host.i, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i = shl i32 %11, 13
  %add.ptr.i = getelementptr i8, ptr %9, i32 %mul.i.i
  %cdb_len = getelementptr inbounds %struct.ata_device, ptr %dev, i32 0, i32 17
  %12 = ptrtoint ptr %cdb_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cdb_len, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %13)
  %cmp = icmp eq i32 %13, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %cmp, label %do.body, label %do.body1

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 536870912) #6, !srcloc !190
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr4 = getelementptr i8, ptr %add.ptr.i, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 536870912) #6, !srcloc !190
  br label %if.end

if.end:                                           ; preds = %do.body1, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sil24_freeze(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i = shl i32 %7, 13
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  tail call void @arm_heavy_mb() #6
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 4116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -65536) #6, !srcloc !190
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sil24_thaw(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i = shl i32 %7, 13
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 4104
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !207
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #6, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  tail call void @arm_heavy_mb() #6
  %add.ptr8 = getelementptr i8, ptr %add.ptr.i, i32 4112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 -754450432) #6, !srcloc !190
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sil24_softreset(ptr noundef readonly %link, ptr nocapture noundef writeonly %class, i32 noundef %deadline) #2 align 64 {
entry:
  %fis.i53 = alloca [24 x i8], align 1
  %tf = alloca %struct.ata_taskfile, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  br i1 %tobool.i.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %link1.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25
  %cmp.i.i = icmp eq ptr %link1.i.i, %link
  br i1 %cmp.i.i, label %land.lhs.true.i.sata_srst_pmp.exit_crit_edge, label %ata_is_host_link.exit.i

land.lhs.true.i.sata_srst_pmp.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sata_srst_pmp.exit

ata_is_host_link.exit.i:                          ; preds = %land.lhs.true.i
  %slave_link.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %slave_link.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave_link.i.i, align 128
  %cmp3.i.i = icmp eq ptr %5, %link
  br i1 %cmp3.i.i, label %ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge, label %ata_is_host_link.exit.i.if.end.i_crit_edge

ata_is_host_link.exit.i.if.end.i_crit_edge:       ; preds = %ata_is_host_link.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge: ; preds = %ata_is_host_link.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sata_srst_pmp.exit

if.end.i:                                         ; preds = %ata_is_host_link.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %pmp.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %6 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pmp.i, align 4
  %phi.cast = trunc i32 %7 to i8
  br label %sata_srst_pmp.exit

sata_srst_pmp.exit:                               ; preds = %if.end.i, %ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge, %land.lhs.true.i.sata_srst_pmp.exit_crit_edge
  %retval.0.i = phi i8 [ %phi.cast, %if.end.i ], [ 15, %ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge ], [ 15, %land.lhs.true.i.sata_srst_pmp.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tf) #6
  %8 = call ptr @memset(ptr %tf, i32 255, i32 24)
  %call2 = tail call fastcc i32 @sil24_init_port(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %sata_srst_pmp.exit.do.body_crit_edge

sata_srst_pmp.exit.do.body_crit_edge:             ; preds = %sata_srst_pmp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end:                                           ; preds = %sata_srst_pmp.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %9, %deadline
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then3, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub4 = sub i32 %deadline, %10
  %call5 = tail call i32 @jiffies_to_msecs(i32 noundef %sub4) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %timeout_msec.0 = phi i32 [ %call5, %if.then3 ], [ 0, %if.end.if.end6_crit_edge ]
  %device = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 14
  %11 = call ptr @memset(ptr %tf, i32 0, i32 24)
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 128
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 128
  %ctl.i = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ctl.i, align 4
  %ctl1.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 2
  %18 = ptrtoint ptr %ctl1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %ctl1.i, align 1
  %devno.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 14, i32 0, i32 1
  %19 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %devno.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp eq i32 %20, 0
  %spec.select.i = select i1 %cmp.i, i8 -96, i8 -80
  %21 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 13
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %spec.select.i, ptr %21, align 4
  %host.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %23 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host.i.i, align 4
  %iomap.i.i = getelementptr inbounds %struct.ata_host, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %iomap.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iomap.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %26, i32 2
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i, align 4
  %port_no.i.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %29 = ptrtoint ptr %port_no.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port_no.i.i.i, align 4
  %mul.i.i.i = shl i32 %30, 13
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 %mul.i.i.i
  %private_data.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %31 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %private_data.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %cmd_block_dma.i = getelementptr inbounds %struct.sil24_port_priv, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %cmd_block_dma.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cmd_block_dma.i, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -32768, ptr %34, align 4
  %fis.i = getelementptr inbounds %struct.sil24_prb, ptr %34, i32 0, i32 3
  call void @ata_tf_to_fis(ptr noundef nonnull %tf, i8 noundef zeroext %retval.0.i, i32 noundef 0, ptr noundef %fis.i) #6
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 4112
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !186
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  call void @arm_heavy_mb() #6
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i.i, i32 4116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 50331648) #6, !srcloc !190
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !211
  call void @arm_heavy_mb() #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  call void @arm_heavy_mb() #6
  %39 = call i32 @llvm.bswap.i32(i32 %36) #6
  %add.ptr13.i = getelementptr i8, ptr %add.ptr.i.i, i32 7168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %39) #6, !srcloc !190
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  call void @arm_heavy_mb() #6
  %add.ptr20.i = getelementptr i8, ptr %add.ptr.i.i, i32 7172
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 0) #6, !srcloc !190
  %add.ptr21.i = getelementptr i8, ptr %add.ptr.i.i, i32 4104
  %call22.i = call i32 @ata_wait_register(ptr noundef %1, ptr noundef %add.ptr21.i, i32 noundef 196608, i32 noundef 0, i32 noundef 10, i32 noundef %timeout_msec.0) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !214
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 768) #6, !srcloc !190
  %40 = and i32 %call22.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end13

if.else.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %call28.i = call fastcc i32 @sil24_init_port(ptr noundef %1) #6
  %41 = and i32 %call22.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool30.not.i = icmp eq i32 %41, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %38) #6
  %.str.15..str.16 = select i1 %tobool30.not.i, ptr @.str.15, ptr @.str.16
  br label %do.body

if.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !215
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %38) #6, !srcloc !190
  %42 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %host.i.i, align 4
  %iomap.i.i55 = getelementptr inbounds %struct.ata_host, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %iomap.i.i55 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iomap.i.i55, align 4
  %arrayidx.i.i56 = getelementptr ptr, ptr %45, i32 2
  %46 = ptrtoint ptr %arrayidx.i.i56 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i56, align 4
  %48 = ptrtoint ptr %port_no.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port_no.i.i.i, align 4
  %mul.i.i.i58 = shl i32 %49, 13
  %add.ptr.i.i59 = getelementptr i8, ptr %47, i32 %mul.i.i.i58
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fis.i53) #6
  %fis3.i = getelementptr inbounds %struct.sil24_prb, ptr %add.ptr.i.i59, i32 0, i32 3
  %50 = call ptr @memset(ptr %fis.i53, i32 255, i32 24)
  call void @mmiocpy(ptr noundef nonnull %fis.i53, ptr noundef %fis3.i, i32 noundef 24) #6
  call void @ata_tf_from_fis(ptr noundef nonnull %fis.i53, ptr noundef nonnull %tf) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fis.i53) #6
  %call14 = call i32 @ata_port_classify(ptr noundef %1, ptr noundef nonnull %tf) #6
  %51 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call14, ptr %class, align 4
  br label %cleanup

do.body:                                          ; preds = %if.else.i, %sata_srst_pmp.exit.do.body_crit_edge
  %reason.0 = phi ptr [ @.str.14, %sata_srst_pmp.exit.do.body_crit_edge ], [ %.str.15..str.16, %if.else.i ]
  %52 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %link, align 128
  %nr_pmp_links.i = getelementptr inbounds %struct.ata_port, ptr %53, i32 0, i32 27
  %54 = ptrtoint ptr %nr_pmp_links.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_pmp_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i60.not = icmp eq i32 %55, 0
  br i1 %cmp.i60.not, label %lor.lhs.false, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %do.body
  %slave_link = getelementptr inbounds %struct.ata_port, ptr %53, i32 0, i32 26
  %56 = ptrtoint ptr %slave_link to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %slave_link, align 128
  %tobool18.not = icmp eq ptr %57, null
  br i1 %tobool18.not, label %do.end27, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %do.body.do.end_crit_edge
  %print_id = getelementptr inbounds %struct.ata_port, ptr %53, i32 0, i32 5
  %58 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %print_id, align 4
  %pmp22 = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %60 = ptrtoint ptr %pmp22 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pmp22, align 4
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %59, i32 noundef %61, ptr noundef nonnull %reason.0) #9
  br label %cleanup

do.end27:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %print_id30 = getelementptr inbounds %struct.ata_port, ptr %53, i32 0, i32 5
  %62 = ptrtoint ptr %print_id30 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %print_id30, align 4
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %63, ptr noundef nonnull %reason.0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %do.end, %if.end13
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -5, %do.end27 ], [ -5, %do.end ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sil24_hardreset(ptr noundef %link, ptr nocapture noundef readnone %class, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %5, i32 2
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i = shl i32 %9, 13
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i.i
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 4
  %do_port_rst = getelementptr inbounds %struct.sil24_port_priv, ptr %11, i32 0, i32 2
  %print_id = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 4096
  %add.ptr10 = getelementptr i8, ptr %add.ptr.i, i32 4100
  %nr_pmp_links = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 27
  %12 = ptrtoint ptr %do_port_rst to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %do_port_rst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %phi.cmp = icmp eq i32 %.pr, 0
  br label %retry

retry:                                            ; preds = %if.then35, %entry
  %13 = phi i1 [ false, %if.then35 ], [ %phi.cmp, %entry ]
  br i1 %13, label %retry.if.end_crit_edge, label %do.end

retry.if.end_crit_edge:                           ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %retry
  %14 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %print_id, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %15) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #6, !srcloc !190
  tail call void @ata_msleep(ptr noundef %1, i32 noundef 10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !217
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 16777216) #6, !srcloc !190
  %call12 = tail call i32 @ata_wait_register(ptr noundef %1, ptr noundef %add.ptr, i32 noundef -2147483648, i32 noundef 0, i32 noundef 10, i32 noundef 5000) #6
  tail call fastcc void @sil24_config_port(ptr noundef %1)
  %16 = ptrtoint ptr %nr_pmp_links to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_pmp_links, align 4
  %18 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host.i, align 4
  %iomap.i.i = getelementptr inbounds %struct.ata_host, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %iomap.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iomap.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %21, i32 2
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %24 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i.i = shl i32 %25, 13
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %mul.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i92 = getelementptr i8, ptr %add.ptr.i.i, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 2097152) #6, !srcloc !190
  br label %sil24_config_pmp.exit

do.body1.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i.i, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 2097152) #6, !srcloc !190
  br label %sil24_config_pmp.exit

sil24_config_pmp.exit:                            ; preds = %do.body1.i, %do.body.i
  %26 = ptrtoint ptr %do_port_rst to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %do_port_rst, align 4
  br label %if.end

if.end:                                           ; preds = %sil24_config_pmp.exit, %retry.if.end_crit_edge
  %call14 = tail call i32 @sata_set_spd(ptr noundef %link) #6
  %call15 = tail call zeroext i1 @ata_link_online(ptr noundef %link) #6
  %spec.select = select i1 %call15, i32 5000, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #6, !srcloc !190
  %call23 = tail call i32 @ata_wait_register(ptr noundef %1, ptr noundef %add.ptr, i32 noundef 2, i32 noundef 2, i32 noundef 10, i32 noundef %spec.select) #6
  %call24 = tail call i32 @sata_link_debounce(ptr noundef %link, ptr noundef nonnull @sata_deb_timing_long, i32 noundef %deadline) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end27:                                         ; preds = %if.end
  %and = and i32 %call23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.end27.cleanup_crit_edge, label %if.then29

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then29:                                        ; preds = %if.end27
  %call30 = tail call zeroext i1 @ata_link_offline(ptr noundef %link) #6
  br i1 %call30, label %if.then29.cleanup_crit_edge, label %if.then29.err_crit_edge

if.then29.err_crit_edge:                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err:                                              ; preds = %if.then29.err_crit_edge, %if.end.err_crit_edge
  %reason.0 = phi ptr [ @.str.24, %if.end.err_crit_edge ], [ @.str.25, %if.then29.err_crit_edge ]
  br i1 %13, label %if.then35, label %do.body38

if.then35:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %do_port_rst to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %do_port_rst, align 4
  br label %retry

do.body38:                                        ; preds = %err
  %28 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %link, align 128
  %nr_pmp_links.i = getelementptr inbounds %struct.ata_port, ptr %29, i32 0, i32 27
  %30 = ptrtoint ptr %nr_pmp_links.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_pmp_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.not = icmp eq i32 %31, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %do.body38.do.end46_crit_edge

do.body38.do.end46_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end46

lor.lhs.false:                                    ; preds = %do.body38
  %slave_link = getelementptr inbounds %struct.ata_port, ptr %29, i32 0, i32 26
  %32 = ptrtoint ptr %slave_link to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %slave_link, align 128
  %tobool42.not = icmp eq ptr %33, null
  br i1 %tobool42.not, label %do.end53, label %lor.lhs.false.do.end46_crit_edge

lor.lhs.false.do.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end46

do.end46:                                         ; preds = %lor.lhs.false.do.end46_crit_edge, %do.body38.do.end46_crit_edge
  %print_id49 = getelementptr inbounds %struct.ata_port, ptr %29, i32 0, i32 5
  %34 = ptrtoint ptr %print_id49 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %print_id49, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %36 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pmp, align 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %35, i32 noundef %37, ptr noundef nonnull %reason.0) #9
  br label %cleanup

do.end53:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %print_id56 = getelementptr inbounds %struct.ata_port, ptr %29, i32 0, i32 5
  %38 = ptrtoint ptr %print_id56 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %print_id56, align 4
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %39, ptr noundef nonnull %reason.0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %do.end46, %if.then29.cleanup_crit_edge, %if.end27.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end53 ], [ -5, %do.end46 ], [ -11, %if.end27.cleanup_crit_edge ], [ 0, %if.then29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sil24_pmp_hardreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %call = tail call fastcc i32 @sil24_init_port(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end18, label %do.body

do.body:                                          ; preds = %entry
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 128
  %nr_pmp_links.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %nr_pmp_links.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_pmp_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %do.body
  %slave_link = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 26
  %6 = ptrtoint ptr %slave_link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slave_link, align 128
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %do.end11, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %do.body.do.end_crit_edge
  %print_id = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %10 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pmp, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %9, i32 noundef %11) #9
  br label %cleanup

do.end11:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %print_id14 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %print_id14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %print_id14, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %13) #9
  br label %cleanup

if.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call i32 @sata_std_hardreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end11, %do.end
  %retval.0 = phi i32 [ %call19, %if.end18 ], [ %call, %do.end11 ], [ %call, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sil24_error_handler(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @sil24_init_port(ptr noundef %ap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ata_eh_freeze_port(ptr noundef %ap) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @sata_pmp_error_handler(ptr noundef %ap) #6
  %do_port_rst = getelementptr inbounds %struct.sil24_port_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %do_port_rst to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %do_port_rst, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sil24_post_internal_cmd(ptr nocapture noundef readonly %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %flags = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @sil24_init_port(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ata_eh_freeze_port(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sil24_scr_read(ptr nocapture noundef readonly %link, i32 noundef %sc_reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sc_reg)
  %cmp = icmp ult i32 %sc_reg, 4
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %5, i32 2
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i = shl i32 %9, 13
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 7936
  %arrayidx = getelementptr [4 x i32], ptr @sil24_scr_map, i32 0, i32 %sc_reg
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %mul = shl i32 %11, 2
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #6, !srcloc !186
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !219
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sil24_scr_write(ptr nocapture noundef readonly %link, i32 noundef %sc_reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sc_reg)
  %cmp = icmp ult i32 %sc_reg, 4
  br i1 %cmp, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %5, i32 2
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i = shl i32 %9, 13
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 7936
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !220
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %val)
  %arrayidx = getelementptr [4 x i32], ptr @sil24_scr_map, i32 0, i32 %sc_reg
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %mul = shl i32 %12, 2
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %10) #6, !srcloc !190
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sil24_pmp_attach(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 14, i32 0, i32 25
  %host.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %1 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %host.i.i, align 4
  %iomap.i.i = getelementptr inbounds %struct.ata_host, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %iomap.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iomap.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %4, i32 2
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %port_no.i.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %7 = ptrtoint ptr %port_no.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port_no.i.i.i, align 4
  %mul.i.i.i = shl i32 %8, 13
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %mul.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 2097152) #6, !srcloc !190
  %call = tail call fastcc i32 @sil24_init_port(ptr noundef %ap)
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1094717867, i32 %10)
  %11 = icmp eq i32 %10, 1094717867
  br i1 %11, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %12 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %print_id, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %13) #9
  %flags = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 3
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and5 = and i32 %15, -1025
  store i32 %and5, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sil24_pmp_detach(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sil24_init_port(ptr noundef %ap)
  %host.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i.i, align 4
  %iomap.i.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomap.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomap.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %port_no.i.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i.i.i, align 4
  %mul.i.i.i = shl i32 %7, 13
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %mul.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i.i, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 2097152) #6, !srcloc !190
  %flags = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %or = or i32 %9, 1024
  store i32 %or, ptr %flags, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sil24_port_resume(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_pmp_links = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 27
  %0 = ptrtoint ptr %nr_pmp_links to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_pmp_links, align 4
  %host.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %2 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i.i, align 4
  %iomap.i.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %iomap.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomap.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %5, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %port_no.i.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i.i.i, align 4
  %mul.i.i.i = shl i32 %9, 13
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %mul.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 2097152) #6, !srcloc !190
  br label %sil24_config_pmp.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i.i, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 2097152) #6, !srcloc !190
  br label %sil24_config_pmp.exit

sil24_config_pmp.exit:                            ; preds = %do.body1.i, %do.body.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sil24_port_start(ptr noundef %ap) #2 align 64 {
entry:
  %cb_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev1 = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cb_dma) #6
  %4 = ptrtoint ptr %cb_dma to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %cb_dma, align 4, !annotation !221
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 12, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i20 = call ptr @dmam_alloc_attrs(ptr noundef %3, i32 noundef 126976, ptr noundef nonnull %cb_dma, i32 noundef 3264, i32 noundef 0) #6
  %tobool3.not = icmp eq ptr %call.i20, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i20, ptr %call.i, align 4
  %6 = ptrtoint ptr %cb_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cb_dma, align 4
  %cmd_block_dma = getelementptr inbounds %struct.sil24_port_priv, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %cmd_block_dma to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %cmd_block_dma, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %private_data, align 4
  call void @ata_port_pbar_desc(ptr noundef %ap, i32 noundef 0, i32 noundef -1, ptr noundef nonnull @.str.39) #6
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %10 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %11, 13
  call void @ata_port_pbar_desc(ptr noundef %ap, i32 noundef 2, i32 noundef %mul.i, ptr noundef nonnull @.str.40) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cb_dma) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_qc_defer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_tf_to_fis(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_tf_from_fis(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sil24_init_port(ptr noundef %ap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i = shl i32 %7, 13
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i.i
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  %nr_pmp_links.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 27
  %10 = ptrtoint ptr %nr_pmp_links.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_pmp_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.not = icmp eq i32 %11, 0
  br i1 %cmp.i.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  tail call void @arm_heavy_mb() #6
  %add.ptr.i18 = getelementptr i8, ptr %add.ptr.i, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 1073741824) #6, !srcloc !190
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 3968
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then
  %i.015.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %i.015.i, 3
  %add.ptr2.i = getelementptr i8, ptr %add.ptr1.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !223
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #6, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !224
  tail call void @arm_heavy_mb() #6
  %add.ptr10.i = getelementptr i8, ptr %add.ptr2.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 0) #6, !srcloc !190
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %for.body.i.do.body_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.do.body_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %for.body.i.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !225
  tail call void @arm_heavy_mb() #6
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 67108864) #6, !srcloc !190
  %call3 = tail call i32 @ata_wait_register(ptr noundef %ap, ptr noundef %add.ptr, i32 noundef 4, i32 noundef 4, i32 noundef 10, i32 noundef 100) #6
  %call5 = tail call i32 @ata_wait_register(ptr noundef %ap, ptr noundef %add.ptr, i32 noundef -2147483648, i32 noundef 0, i32 noundef 10, i32 noundef 100) #6
  %and = and i32 %call5, -2147483644
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and)
  %cmp.not = icmp eq i32 %and, -2147483648
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %if.then6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %do_port_rst = getelementptr inbounds %struct.sil24_port_priv, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %do_port_rst to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %do_port_rst, align 4
  %action = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 12, i32 0, i32 3
  %13 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %action, align 4
  %or = or i32 %14, 6
  store i32 %or, ptr %action, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then6 ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_classify(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_wait_register(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_msleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sil24_config_port(ptr nocapture noundef readonly %ap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i = shl i32 %7, 13
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i.i
  %flags = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not, label %do.body1, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134217728) #6, !srcloc !190
  br label %do.body5

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr4 = getelementptr i8, ptr %add.ptr.i, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 134217728) #6, !srcloc !190
  br label %do.body5

do.body5:                                         ; preds = %do.body1, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !226
  tail call void @arm_heavy_mb() #6
  %add.ptr8 = getelementptr i8, ptr %add.ptr.i, i32 4162
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8, i16 128) #6, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %add.ptr12 = getelementptr i8, ptr %add.ptr.i, i32 4166
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr12, i16 128) #6, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %add.ptr16 = getelementptr i8, ptr %add.ptr.i, i32 4170
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr16, i16 128) #6, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !230
  tail call void @arm_heavy_mb() #6
  %add.ptr20 = getelementptr i8, ptr %add.ptr.i, i32 4160
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr20, i16 0) #6, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !231
  tail call void @arm_heavy_mb() #6
  %add.ptr24 = getelementptr i8, ptr %add.ptr.i, i32 4164
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr24, i16 0) #6, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !232
  tail call void @arm_heavy_mb() #6
  %add.ptr28 = getelementptr i8, ptr %add.ptr.i, i32 4168
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr28, i16 0) #6, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !233
  tail call void @arm_heavy_mb() #6
  %add.ptr32 = getelementptr i8, ptr %add.ptr.i, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 262144) #6, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !234
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 1075838976) #6, !srcloc !190
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_set_spd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_link_online(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_link_debounce(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_link_offline(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_std_hardreset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_eh_freeze_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sata_pmp_error_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_pbar_desc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sil24_error_intr(ptr noundef %ap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i = shl i32 %7, 13
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i.i
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 4104
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !186
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !236
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #6, !srcloc !190
  %eh_info = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11
  tail call void @ata_ehi_clear_desc(ptr noundef %eh_info) #6
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info, ptr noundef nonnull @.str.47, i32 noundef %11) #6
  %and = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info, ptr noundef nonnull @.str.48) #6
  %call5 = tail call i32 @sata_async_notification(ptr noundef %ap) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and6 = and i32 %11, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %probe_mask.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 6
  %12 = ptrtoint ptr %probe_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %probe_mask.i, align 4
  %or.i = or i32 %13, 3
  store i32 %or.i, ptr %probe_mask.i, align 4
  %flags.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 5
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %or1.i = or i32 %15, 1
  store i32 %or1.i, ptr %flags.i, align 4
  %action.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 3
  %16 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %action.i, align 4
  %or2.i = or i32 %17, 14
  store i32 %or2.i, ptr %action.i, align 4
  %err_mask.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 2
  %18 = ptrtoint ptr %err_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %err_mask.i, align 4
  %or3.i = or i32 %19, 16
  store i32 %or3.i, ptr %err_mask.i, align 4
  %and9 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %cond = select i1 %tobool10.not, ptr @.str.51, ptr @.str.50
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info, ptr noundef nonnull @.str.49, ptr noundef nonnull %cond) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %freeze.0 = phi i32 [ 1, %if.then8 ], [ 0, %if.end.if.end11_crit_edge ]
  %and12 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end16, label %if.end16.thread

if.end16:                                         ; preds = %if.end11
  %and17 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end91.thread, label %if.end16.if.then19_crit_edge

if.end16.if.then19_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.end16.thread:                                  ; preds = %if.end11
  %err_mask = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 2
  %20 = ptrtoint ptr %err_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %err_mask, align 4
  %or = or i32 %21, 2
  store i32 %or, ptr %err_mask, align 4
  %action = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 3
  %22 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %action, align 4
  %or15 = or i32 %23, 6
  store i32 %or15, ptr %action, align 4
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info, ptr noundef nonnull @.str.52) #6
  %and17192 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17192)
  %tobool18.not193 = icmp eq i32 %and17192, 0
  br i1 %tobool18.not193, label %if.end16.thread.if.then93_crit_edge, label %if.end16.thread.if.then19_crit_edge

if.end16.thread.if.then19_crit_edge:              ; preds = %if.end16.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.end16.thread.if.then93_crit_edge:              ; preds = %if.end16.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then93

if.then19:                                        ; preds = %if.end16.thread.if.then19_crit_edge, %if.end16.if.then19_crit_edge
  %freeze.1194 = phi i32 [ 1, %if.end16.thread.if.then19_crit_edge ], [ %freeze.0, %if.end16.if.then19_crit_edge ]
  %nr_active_links = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 22
  %24 = ptrtoint ptr %nr_active_links to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_active_links, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp = icmp sgt i32 %25, 2
  br i1 %cmp, label %if.then22, label %if.then19.if.end27_crit_edge

if.then19.if.end27_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then22:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  %err_mask23 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 2
  %26 = ptrtoint ptr %err_mask23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %err_mask23, align 4
  %or24 = or i32 %27, 256
  store i32 %or24, ptr %err_mask23, align 4
  %action25 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 3
  %28 = ptrtoint ptr %action25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %action25, align 4
  %or26 = or i32 %29, 6
  store i32 %or26, ptr %action25, align 4
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info, ptr noundef nonnull @.str.53) #6
  %do_port_rst = getelementptr inbounds %struct.sil24_port_priv, ptr %9, i32 0, i32 2
  %30 = ptrtoint ptr %do_port_rst to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %do_port_rst, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.then19.if.end27_crit_edge
  %freeze.2 = phi i32 [ 1, %if.then22 ], [ %freeze.1194, %if.then19.if.end27_crit_edge ]
  %nr_pmp_links.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 27
  %31 = ptrtoint ptr %nr_pmp_links.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_pmp_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.not = icmp eq i32 %32, 0
  br i1 %cmp.i.not, label %if.else44, label %if.then29

if.then29:                                        ; preds = %if.end27
  %add.ptr32 = getelementptr i8, ptr %add.ptr.i, i32 7684
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #6, !srcloc !186
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !237
  %shr = lshr i32 %34, 5
  %and36 = and i32 %shr, 15
  %35 = ptrtoint ptr %nr_pmp_links.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr_pmp_links.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and36, i32 %36)
  %cmp37 = icmp slt i32 %and36, %36
  br i1 %cmp37, label %if.then38, label %if.then29.if.end47_crit_edge

if.then29.if.end47_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then38:                                        ; preds = %if.then29
  %pmp_link = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 28
  %37 = ptrtoint ptr %pmp_link to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pmp_link, align 8
  %eh_info39 = getelementptr %struct.ata_link, ptr %38, i32 %and36, i32 11
  %active_tag = getelementptr %struct.ata_link, ptr %38, i32 %and36, i32 3
  %39 = ptrtoint ptr %active_tag to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %active_tag, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %40)
  %41 = icmp ugt i32 %40, 32
  %arrayidx.i.i = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %40
  %tobool.not11.i = icmp eq ptr %arrayidx.i.i, null
  %tobool.not.i = or i1 %41, %tobool.not11.i
  br i1 %tobool.not.i, label %if.then38.ata_qc_from_tag.exit_crit_edge, label %lor.lhs.false.i, !prof !201

if.then38.ata_qc_from_tag.exit_crit_edge:         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_qc_from_tag.exit

lor.lhs.false.i:                                  ; preds = %if.then38
  %ops.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  %42 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i, align 4
  %error_handler.i = getelementptr inbounds %struct.ata_port_operations, ptr %43, i32 0, i32 22
  %44 = ptrtoint ptr %error_handler.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %error_handler.i, align 4
  %tobool4.not.i = icmp eq ptr %45, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i.ata_qc_from_tag.exit_crit_edge, label %if.end.i

lor.lhs.false.i.ata_qc_from_tag.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_qc_from_tag.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %flags.i168 = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %40, i32 6
  %46 = ptrtoint ptr %flags.i168 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i168, align 4
  %and.i = and i32 %47, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i169 = icmp eq i32 %and.i, 1
  %call..i = select i1 %cmp.i169, ptr %arrayidx.i.i, ptr null
  br label %ata_qc_from_tag.exit

ata_qc_from_tag.exit:                             ; preds = %if.end.i, %lor.lhs.false.i.ata_qc_from_tag.exit_crit_edge, %if.then38.ata_qc_from_tag.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i.i, %lor.lhs.false.i.ata_qc_from_tag.exit_crit_edge ], [ null, %if.then38.ata_qc_from_tag.exit_crit_edge ], [ %call..i, %if.end.i ]
  tail call void @ata_ehi_clear_desc(ptr noundef %eh_info39) #6
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info39, ptr noundef nonnull @.str.47, i32 noundef %11) #6
  br label %if.end47

if.else44:                                        ; preds = %if.end27
  %active_tag45 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 3
  %48 = ptrtoint ptr %active_tag45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %active_tag45, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %49)
  %50 = icmp ugt i32 %49, 32
  %arrayidx.i.i170 = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %49
  %tobool.not11.i171 = icmp eq ptr %arrayidx.i.i170, null
  %tobool.not.i172 = or i1 %50, %tobool.not11.i171
  br i1 %tobool.not.i172, label %if.else44.if.end47_crit_edge, label %lor.lhs.false.i176, !prof !201

if.else44.if.end47_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

lor.lhs.false.i176:                               ; preds = %if.else44
  %ops.i173 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  %51 = ptrtoint ptr %ops.i173 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i173, align 4
  %error_handler.i174 = getelementptr inbounds %struct.ata_port_operations, ptr %52, i32 0, i32 22
  %53 = ptrtoint ptr %error_handler.i174 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %error_handler.i174, align 4
  %tobool4.not.i175 = icmp eq ptr %54, null
  br i1 %tobool4.not.i175, label %lor.lhs.false.i176.if.end47_crit_edge, label %if.end.i181

lor.lhs.false.i176.if.end47_crit_edge:            ; preds = %lor.lhs.false.i176
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.end.i181:                                      ; preds = %lor.lhs.false.i176
  call void @__sanitizer_cov_trace_pc() #8
  %flags.i177 = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %49, i32 6
  %55 = ptrtoint ptr %flags.i177 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags.i177, align 4
  %and.i178 = and i32 %56, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i178)
  %cmp.i179 = icmp eq i32 %and.i178, 1
  %call..i180 = select i1 %cmp.i179, ptr %arrayidx.i.i170, ptr null
  br label %if.end47

if.end47:                                         ; preds = %if.end.i181, %lor.lhs.false.i176.if.end47_crit_edge, %if.else44.if.end47_crit_edge, %ata_qc_from_tag.exit, %if.then29.if.end47_crit_edge
  %err_mask20.0 = phi i32 [ 0, %ata_qc_from_tag.exit ], [ 2, %if.then29.if.end47_crit_edge ], [ 0, %if.else44.if.end47_crit_edge ], [ 0, %lor.lhs.false.i176.if.end47_crit_edge ], [ 0, %if.end.i181 ]
  %action21.0 = phi i32 [ 0, %ata_qc_from_tag.exit ], [ 6, %if.then29.if.end47_crit_edge ], [ 0, %if.else44.if.end47_crit_edge ], [ 0, %lor.lhs.false.i176.if.end47_crit_edge ], [ 0, %if.end.i181 ]
  %freeze.3 = phi i32 [ %freeze.2, %ata_qc_from_tag.exit ], [ 1, %if.then29.if.end47_crit_edge ], [ %freeze.2, %if.else44.if.end47_crit_edge ], [ %freeze.2, %lor.lhs.false.i176.if.end47_crit_edge ], [ %freeze.2, %if.end.i181 ]
  %ehi.0 = phi ptr [ %eh_info39, %ata_qc_from_tag.exit ], [ %eh_info, %if.then29.if.end47_crit_edge ], [ %eh_info, %if.else44.if.end47_crit_edge ], [ %eh_info, %lor.lhs.false.i176.if.end47_crit_edge ], [ %eh_info, %if.end.i181 ]
  %qc.0 = phi ptr [ %retval.0.i, %ata_qc_from_tag.exit ], [ null, %if.then29.if.end47_crit_edge ], [ null, %if.else44.if.end47_crit_edge ], [ %arrayidx.i.i170, %lor.lhs.false.i176.if.end47_crit_edge ], [ %call..i180, %if.end.i181 ]
  %add.ptr50 = getelementptr i8, ptr %add.ptr.i, i32 4132
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #6, !srcloc !186
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %58)
  %cmp54 = icmp ugt i32 %58, 36
  %arrayidx56 = getelementptr [37 x %struct.sil24_cerr_info], ptr @sil24_cerr_db, i32 0, i32 %58
  %tobool58.not199 = icmp eq ptr %arrayidx56, null
  %tobool58.not = or i1 %cmp54, %tobool58.not199
  br i1 %tobool58.not, label %if.end47.if.else70_crit_edge, label %land.lhs.true

if.end47.if.else70_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else70

land.lhs.true:                                    ; preds = %if.end47
  %desc = getelementptr [37 x %struct.sil24_cerr_info], ptr @sil24_cerr_db, i32 0, i32 %58, i32 2
  %59 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %desc, align 4
  %tobool59.not = icmp eq ptr %60, null
  br i1 %tobool59.not, label %land.lhs.true.if.else70_crit_edge, label %if.then60

land.lhs.true.if.else70_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else70

if.then60:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx56, align 4
  %action63 = getelementptr [37 x %struct.sil24_cerr_info], ptr @sil24_cerr_db, i32 0, i32 %58, i32 1
  %63 = ptrtoint ptr %action63 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %action63, align 4
  %or64 = or i32 %64, %action21.0
  %and65 = and i32 %or64, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  %spec.select167 = select i1 %tobool66.not, i32 %freeze.3, i32 1
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %ehi.0, ptr noundef nonnull @.str.49, ptr noundef nonnull %60) #6
  br label %if.end73

if.else70:                                        ; preds = %land.lhs.true.if.else70_crit_edge, %if.end47.if.else70_crit_edge
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %ehi.0, ptr noundef nonnull @.str.54, i32 noundef %58) #6
  br label %if.end73

if.end73:                                         ; preds = %if.else70, %if.then60
  %.pn = phi i32 [ %62, %if.then60 ], [ 256, %if.else70 ]
  %action21.1 = phi i32 [ %or64, %if.then60 ], [ 6, %if.else70 ]
  %freeze.5 = phi i32 [ %spec.select167, %if.then60 ], [ 1, %if.else70 ]
  %err_mask20.1 = or i32 %.pn, %err_mask20.0
  %tobool74.not = icmp eq ptr %qc.0, null
  %err_mask79 = getelementptr inbounds %struct.ata_eh_info, ptr %ehi.0, i32 0, i32 2
  %err_mask76 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc.0, i32 0, i32 20
  %err_mask79.sink200 = select i1 %tobool74.not, ptr %err_mask79, ptr %err_mask76
  %65 = ptrtoint ptr %err_mask79.sink200 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %err_mask79.sink200, align 4
  %or80 = or i32 %66, %err_mask20.1
  store i32 %or80, ptr %err_mask79.sink200, align 4
  %action82 = getelementptr inbounds %struct.ata_eh_info, ptr %ehi.0, i32 0, i32 3
  %67 = ptrtoint ptr %action82 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %action82, align 4
  %or83 = or i32 %68, %action21.1
  store i32 %or83, ptr %action82, align 4
  %69 = ptrtoint ptr %nr_pmp_links.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nr_pmp_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp.i185.not = icmp eq i32 %70, 0
  br i1 %cmp.i185.not, label %if.end73.if.end91_crit_edge, label %do.body86

if.end73.if.end91_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91

do.body86:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !239
  tail call void @arm_heavy_mb() #6
  %add.ptr89 = getelementptr i8, ptr %add.ptr.i, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 1073741824) #6, !srcloc !190
  br label %if.end91

if.end91:                                         ; preds = %do.body86, %if.end73.if.end91_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freeze.5)
  %tobool92.not = icmp eq i32 %freeze.5, 0
  br i1 %tobool92.not, label %if.then97, label %if.end91.if.then93_crit_edge

if.end91.if.then93_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then93

if.end91.thread:                                  ; preds = %if.end16
  br i1 %tobool7.not, label %if.end91.thread.if.end106_crit_edge, label %if.end91.thread.if.then93_crit_edge

if.end91.thread.if.then93_crit_edge:              ; preds = %if.end91.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then93

if.end91.thread.if.end106_crit_edge:              ; preds = %if.end91.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

if.then93:                                        ; preds = %if.end91.thread.if.then93_crit_edge, %if.end91.if.then93_crit_edge, %if.end16.thread.if.then93_crit_edge
  %call94 = tail call i32 @ata_port_freeze(ptr noundef %ap) #6
  br label %if.end106

if.then97:                                        ; preds = %if.end91
  br i1 %tobool74.not, label %if.else102, label %if.then99

if.then99:                                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc.0, i32 0, i32 1
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 128
  %call101 = tail call i32 @ata_link_abort(ptr noundef %74) #6
  br label %if.end106

if.else102:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #8
  %call103 = tail call i32 @ata_port_abort(ptr noundef %ap) #6
  br label %if.end106

if.end106:                                        ; preds = %if.else102, %if.then99, %if.then93, %if.end91.thread.if.end106_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_qc_complete_multiple(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_freeze(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_clear_desc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_push_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_async_notification(ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @ata_pci_device_do_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !21, !23, !25, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !59, !60, !61, !63, !64, !65, !66, !68, !70, !72, !73, !74, !75, !76, !77, !79, !80, !81, !82, !83, !84, !85, !87, !89, !90, !91, !92, !94, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175}
!llvm.module.flags = !{!177, !178, !179, !180, !181, !182, !183, !184}
!llvm.ident = !{!185}

!0 = !{ptr @__param_msi, !1, !"__param_msi", i1 false, i1 false}
!1 = !{!"../drivers/ata/sata_sil24.c", i32 417, i32 1}
!2 = !{ptr @__UNIQUE_ID_msitype290, !1, !"__UNIQUE_ID_msitype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_msi291, !4, !"__UNIQUE_ID_msi291", i1 false, i1 false}
!4 = !{!"../drivers/ata/sata_sil24.c", i32 418, i32 1}
!5 = !{ptr @__initcall__kmod_sata_sil24__292_1359_sil24_pci_driver_init6, !6, !"__initcall__kmod_sata_sil24__292_1359_sil24_pci_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/ata/sata_sil24.c", i32 1359, i32 1}
!7 = !{ptr @__exitcall_sil24_pci_driver_exit, !6, !"__exitcall_sil24_pci_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author293, !9, !"__UNIQUE_ID_author293", i1 false, i1 false}
!9 = !{!"../drivers/ata/sata_sil24.c", i32 1361, i32 1}
!10 = !{ptr @__UNIQUE_ID_description294, !11, !"__UNIQUE_ID_description294", i1 false, i1 false}
!11 = !{!"../drivers/ata/sata_sil24.c", i32 1362, i32 1}
!12 = !{ptr @__UNIQUE_ID_file295, !13, !"__UNIQUE_ID_file295", i1 false, i1 false}
!13 = !{!"../drivers/ata/sata_sil24.c", i32 1363, i32 1}
!14 = !{ptr @__UNIQUE_ID_license296, !13, !"__UNIQUE_ID_license296", i1 false, i1 false}
!15 = !{ptr @sata_sil24_msi, !16, !"sata_sil24_msi", i1 false, i1 false}
!16 = !{!"../drivers/ata/sata_sil24.c", i32 416, i32 13}
!17 = !{ptr @__param_str_msi, !1, !"__param_str_msi", i1 false, i1 false}
!18 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @sil24_pci_driver, !20, !"sil24_pci_driver", i1 false, i1 false}
!20 = !{!"../drivers/ata/sata_sil24.c", i32 365, i32 26}
!21 = !{ptr @sil24_pci_tbl, !22, !"sil24_pci_tbl", i1 false, i1 false}
!22 = !{!"../drivers/ata/sata_sil24.c", i32 353, i32 35}
!23 = distinct !{null, !24, !"__print_once", i1 false, i1 false}
!24 = !{!"../drivers/ata/sata_sil24.c", i32 1274, i32 2}
!25 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/ata/sata_sil24.c", i32 1292, i32 4}
!28 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @sil24_init_one._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @sil24_init_one._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/ata/sata_sil24.c", i32 1308, i32 3}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @sil24_init_one._entry.7, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @sil24_init_one._entry_ptr.10, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/ata/sata_sil24.c", i32 1320, i32 3}
!41 = !{ptr @sil24_init_one._entry.11, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sil24_init_one._entry_ptr.13, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @sil24_port_info, !44, !"sil24_port_info", i1 false, i1 false}
!44 = !{!"../drivers/ata/sata_sil24.c", i32 427, i32 35}
!45 = !{ptr @sil24_ops, !46, !"sil24_ops", i1 false, i1 false}
!46 = !{!"../drivers/ata/sata_sil24.c", i32 387, i32 35}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/ata/sata_sil24.c", i32 661, i32 12}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/ata/sata_sil24.c", i32 673, i32 12}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/ata/sata_sil24.c", i32 676, i32 12}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/ata/sata_sil24.c", i32 686, i32 2}
!55 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @sil24_softreset._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @sil24_softreset._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @sil24_softreset._entry.19, !54, !"_entry", i1 false, i1 false}
!60 = !{ptr @sil24_softreset._entry_ptr.21, !54, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/ata/sata_sil24.c", i32 706, i32 3}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @sil24_hardreset._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @sil24_hardreset._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/ata/sata_sil24.c", i32 740, i32 12}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/ata/sata_sil24.c", i32 747, i32 12}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/ata/sata_sil24.c", i32 765, i32 2}
!72 = !{ptr @sil24_hardreset._entry.26, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @sil24_hardreset._entry_ptr.28, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @sil24_hardreset._entry.29, !71, !"_entry", i1 false, i1 false}
!76 = !{ptr @sil24_hardreset._entry_ptr.31, !71, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/ata/sata_sil24.c", i32 940, i32 3}
!79 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @sil24_pmp_hardreset._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @sil24_pmp_hardreset._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @sil24_pmp_hardreset._entry.34, !78, !"_entry", i1 false, i1 false}
!84 = !{ptr @sil24_pmp_hardreset._entry_ptr.36, !78, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @sil24_scr_map, !86, !"sil24_scr_map", i1 false, i1 false}
!86 = !{!"../drivers/ata/sata_sil24.c", i32 493, i32 12}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/ata/sata_sil24.c", i32 919, i32 3}
!89 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @sil24_pmp_attach._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @sil24_pmp_attach._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/ata/sata_sil24.c", i32 1213, i32 45}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/ata/sata_sil24.c", i32 1214, i32 64}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/ata/sata_sil24.c", i32 1248, i32 5}
!98 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @sil24_init_controller._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @sil24_init_controller._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/ata/sata_sil24.c", i32 1150, i32 3}
!103 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @sil24_interrupt._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @sil24_interrupt._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/ata/sata_sil24.c", i32 1134, i32 3}
!108 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @sil24_host_intr._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @sil24_host_intr._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/ata/sata_sil24.c", i32 989, i32 25}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/ata/sata_sil24.c", i32 992, i32 26}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/ata/sata_sil24.c", i32 998, i32 26}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/ata/sata_sil24.c", i32 1000, i32 7}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/ata/sata_sil24.c", i32 1000, i32 27}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/ata/sata_sil24.c", i32 1007, i32 26}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/ata/sata_sil24.c", i32 1028, i32 27}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/ata/sata_sil24.c", i32 1069, i32 27}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/ata/sata_sil24.c", i32 266, i32 9}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/ata/sata_sil24.c", i32 268, i32 9}
!131 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/ata/sata_sil24.c", i32 270, i32 9}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/ata/sata_sil24.c", i32 272, i32 9}
!135 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/ata/sata_sil24.c", i32 274, i32 9}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/ata/sata_sil24.c", i32 276, i32 10}
!139 = !{ptr @.str.61, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/ata/sata_sil24.c", i32 278, i32 9}
!141 = !{ptr @.str.62, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/ata/sata_sil24.c", i32 280, i32 9}
!143 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/ata/sata_sil24.c", i32 282, i32 9}
!145 = !{ptr @.str.64, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/ata/sata_sil24.c", i32 284, i32 9}
!147 = !{ptr @.str.65, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/ata/sata_sil24.c", i32 286, i32 10}
!149 = !{ptr @.str.66, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/ata/sata_sil24.c", i32 288, i32 9}
!151 = !{ptr @.str.67, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/ata/sata_sil24.c", i32 290, i32 9}
!153 = !{ptr @.str.68, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/ata/sata_sil24.c", i32 292, i32 9}
!155 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/ata/sata_sil24.c", i32 294, i32 10}
!157 = !{ptr @.str.70, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/ata/sata_sil24.c", i32 296, i32 9}
!159 = !{ptr @.str.71, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/ata/sata_sil24.c", i32 298, i32 9}
!161 = !{ptr @.str.72, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/ata/sata_sil24.c", i32 300, i32 9}
!163 = !{ptr @.str.73, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/ata/sata_sil24.c", i32 302, i32 9}
!165 = !{ptr @.str.74, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/ata/sata_sil24.c", i32 304, i32 9}
!167 = !{ptr @.str.75, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/ata/sata_sil24.c", i32 306, i32 9}
!169 = !{ptr @.str.76, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/ata/sata_sil24.c", i32 308, i32 9}
!171 = !{ptr @.str.77, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/ata/sata_sil24.c", i32 310, i32 9}
!173 = !{ptr @sil24_cerr_db, !174, !"sil24_cerr_db", i1 false, i1 false}
!174 = !{!"../drivers/ata/sata_sil24.c", i32 264, i32 3}
!175 = !{ptr @sil24_sht, !176, !"sil24_sht", i1 false, i1 false}
!176 = !{!"../drivers/ata/sata_sil24.c", i32 376, i32 34}
!177 = !{i32 1, !"wchar_size", i32 2}
!178 = !{i32 1, !"min_enum_size", i32 4}
!179 = !{i32 8, !"branch-target-enforcement", i32 0}
!180 = !{i32 8, !"sign-return-address", i32 0}
!181 = !{i32 8, !"sign-return-address-all", i32 0}
!182 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!183 = !{i32 7, !"uwtable", i32 1}
!184 = !{i32 7, !"frame-pointer", i32 2}
!185 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!186 = !{i64 5016116}
!187 = !{i64 2155825876}
!188 = !{i8 0, i8 2}
!189 = !{i64 2155831078}
!190 = !{i64 5015698}
!191 = !{i64 2155821071}
!192 = !{i64 2155821465}
!193 = !{i64 2155821856}
!194 = !{i64 2155822541}
!195 = !{i64 2155822771}
!196 = !{i64 2155824839}
!197 = !{i64 2155818510}
!198 = !{i64 2155814744}
!199 = !{i64 2155815466}
!200 = !{!"branch_weights", i32 2000, i32 1}
!201 = !{!"branch_weights", i32 1, i32 2000}
!202 = !{i64 2155802640}
!203 = !{i64 2155802852}
!204 = !{i64 2155803261}
!205 = !{i64 2155810038}
!206 = !{i64 2155810729}
!207 = !{i64 2155810946}
!208 = !{i64 2155811356}
!209 = !{i64 2155787270}
!210 = !{i64 2155787524}
!211 = !{i64 2155787949}
!212 = !{i64 2155788177}
!213 = !{i64 2155788618}
!214 = !{i64 2155789065}
!215 = !{i64 2155789494}
!216 = !{i64 2155796394}
!217 = !{i64 2155796842}
!218 = !{i64 2155797289}
!219 = !{i64 2155778875}
!220 = !{i64 2155779506}
!221 = !{!"auto-init"}
!222 = !{i64 2155785193}
!223 = !{i64 2155785637}
!224 = !{i64 2155786037}
!225 = !{i64 2155786443}
!226 = !{i64 2155780820}
!227 = !{i64 5015078}
!228 = !{i64 2155781242}
!229 = !{i64 2155781662}
!230 = !{i64 2155782082}
!231 = !{i64 2155782498}
!232 = !{i64 2155782912}
!233 = !{i64 2155783335}
!234 = !{i64 2155783807}
!235 = !{i64 2155812077}
!236 = !{i64 2155812299}
!237 = !{i64 2155812998}
!238 = !{i64 2155813492}
!239 = !{i64 2155814120}
