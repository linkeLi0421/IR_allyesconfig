; ModuleID = '/llk/IR_all_yes/drivers/ata/sata_sil.c_pt.bc'
source_filename = "../drivers/ata/sata_sil.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.anon.85 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sil_drivelist = type { ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.ata_bmdma_prd = type { i32, i32 }

@__UNIQUE_ID_author289 = internal constant [28 x i8] c"sata_sil.author=Jeff Garzik\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [72 x i8] c"sata_sil.description=low-level driver for Silicon Image SATA controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [35 x i8] c"sata_sil.file=drivers/ata/sata_sil\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [21 x i8] c"sata_sil.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version293 = internal constant [21 x i8] c"sata_sil.version=2.4\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sata_sil\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.4\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_slow_down = internal constant [19 x i8] c"sata_sil.slow_down\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@slow_down = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_slow_down = internal constant %struct.kernel_param { ptr @__param_str_slow_down, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @slow_down } }, section "__param", align 4
@__UNIQUE_ID_slow_downtype294 = internal constant [32 x i8] c"sata_sil.parmtype=slow_down:int\00", section ".modinfo", align 1
@__UNIQUE_ID_slow_down295 = internal constant [123 x i8] c"sata_sil.parm=slow_down:Sledgehammer used to work around random problems, by limiting commands to 15 sectors (0=off, 1=on)\00", section ".modinfo", align 1
@__initcall__kmod_sata_sil__296_807_sil_pci_driver_init6 = internal global ptr @sil_pci_driver_init, section ".initcall6.init", align 4
@sil_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @sil_pci_tbl, ptr @sil_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @sil_pci_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_sil_pci_driver_exit = internal global ptr @sil_pci_driver_exit, section ".exitcall.exit", align 4
@sil_pci_tbl = internal constant { [8 x %struct.pci_device_id], [64 x i8] } { [8 x %struct.pci_device_id] [%struct.pci_device_id { i32 4245, i32 12562, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4245, i32 576, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4245, i32 13586, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4245, i32 12564, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4098, i32 17262, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 17273, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4098, i32 17274, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@sil_port_info = internal constant { [4 x %struct.ata_port_info], [48 x i8] } { [4 x %struct.ata_port_info] [%struct.ata_port_info { i32 1073741826, i32 0, i32 31, i32 7, i32 63, ptr @sil_ops, ptr null }, %struct.ata_port_info { i32 1342177282, i32 0, i32 31, i32 7, i32 63, ptr @sil_ops, ptr null }, %struct.ata_port_info { i32 536870914, i32 0, i32 31, i32 7, i32 63, ptr @sil_ops, ptr null }, %struct.ata_port_info { i32 536870914, i32 0, i32 31, i32 7, i32 63, ptr @sil_ops, ptr null }], [48 x i8] zeroinitializer }, align 32
@sil_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@sil_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 742, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"quirky BIOS, skipping spindown on poweroff and hibernation\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sil_init_one\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/ata/sata_sil.c\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sil_init_one._entry_ptr = internal global ptr @sil_init_one._entry, section ".printk_index", align 4
@sil_port = internal constant { [4 x %struct.anon.85], [48 x i8] } { [4 x %struct.anon.85] [%struct.anon.85 { i32 128, i32 138, i32 0, i32 16, i32 64, i32 256, i32 328, i32 180, i32 332 }, %struct.anon.85 { i32 192, i32 202, i32 8, i32 24, i32 68, i32 384, i32 456, i32 244, i32 460 }, %struct.anon.85 { i32 640, i32 650, i32 512, i32 528, i32 576, i32 768, i32 840, i32 692, i32 844 }, %struct.anon.85 { i32 704, i32 714, i32 520, i32 536, i32 580, i32 896, i32 968, i32 756, i32 972 }], [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmio\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tf\00", [29 x i8] zeroinitializer }, align 32
@sil_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 256, i16 0, i32 0, i32 0, i32 2147483647, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@sil_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr @sil_qc_prep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sil_set_mode, ptr null, ptr @sil_dev_config, ptr @sil_freeze, ptr @sil_thaw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sil_scr_read, ptr @sil_scr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sil_bmdma_setup, ptr @sil_bmdma_start, ptr @sil_bmdma_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma32_port_ops }, [44 x i8] zeroinitializer }, align 32
@ata_bmdma32_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@sil_blacklist = internal constant { [14 x %struct.sil_drivelist], [48 x i8] } { [14 x %struct.sil_drivelist] [%struct.sil_drivelist { ptr @.str.15, i32 1 }, %struct.sil_drivelist { ptr @.str.16, i32 1 }, %struct.sil_drivelist { ptr @.str.17, i32 1 }, %struct.sil_drivelist { ptr @.str.18, i32 1 }, %struct.sil_drivelist { ptr @.str.19, i32 1 }, %struct.sil_drivelist { ptr @.str.20, i32 1 }, %struct.sil_drivelist { ptr @.str.21, i32 1 }, %struct.sil_drivelist { ptr @.str.22, i32 1 }, %struct.sil_drivelist { ptr @.str.23, i32 1 }, %struct.sil_drivelist { ptr @.str.24, i32 1 }, %struct.sil_drivelist { ptr @.str.25, i32 1 }, %struct.sil_drivelist { ptr @.str.26, i32 1 }, %struct.sil_drivelist { ptr @.str.27, i32 2 }, %struct.sil_drivelist zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sil_dev_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016ata%u.%02u: applying Seagate errata fix (mod15write workaround)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sil_dev_config\00", [17 x i8] zeroinitializer }, align 32
@sil_dev_config._entry_ptr = internal global ptr @sil_dev_config._entry, section ".printk_index", align 4
@sil_dev_config._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.5, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016ata%u.%02u: applying Maxtor errata fix %s\0A\00", [51 x i8] zeroinitializer }, align 32
@sil_dev_config._entry_ptr.14 = internal global ptr @sil_dev_config._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ST320012AS\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ST330013AS\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ST340017AS\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ST360015AS\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ST380023AS\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ST3120023AS\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ST340014ASL\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ST360014ASL\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ST380011ASL\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ST3120022ASL\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ST3160021ASL\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TOSHIBA MK2561GSYN\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 4D060H3\00", [17 x i8] zeroinitializer }, align 32
@sil_init_controller._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.5, i32 668, ptr @.str.31, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"cache line size not set.  Driver may not function\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sil_init_controller\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sil_init_controller._entry_ptr = internal global ptr @sil_init_controller._entry, section ".printk_index", align 4
@sil_init_controller._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.30, ptr @.str.5, i32 680, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Applying R_ERR on DMA activate FIS errata fix\0A\00", [49 x i8] zeroinitializer }, align 32
@sil_init_controller._entry_ptr.34 = internal global ptr @sil_init_controller._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BMDMA2 stat 0x%x\00", [47 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 244, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant [10 x i8] c"slow_down\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 246, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"sil_pci_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 148, i32 26 }
@___asan_gen_.55 = private unnamed_addr constant [12 x i8] c"sil_pci_tbl\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 114, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant [14 x i8] c"sil_port_info\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 182, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant [26 x i8] c"sil_init_one.__print_once\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 741, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [9 x i8] c"sil_port\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 230, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 778, i32 44 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 779, i32 56 }
@___asan_gen_.89 = private unnamed_addr constant [8 x i8] c"sil_sht\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 159, i32 34 }
@___asan_gen_.92 = private unnamed_addr constant [8 x i8] c"sil_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 168, i32 35 }
@___asan_gen_.95 = private unnamed_addr constant [14 x i8] c"sil_blacklist\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 131, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 634, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 643, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 132, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 133, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 134, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 135, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 136, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 137, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 138, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 139, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 140, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 141, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 142, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 143, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 144, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 667, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 679, i32 5 }
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.171 = private constant [26 x i8] c"../drivers/ata/sata_sil.c\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 496, i32 26 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__UNIQUE_ID_slow_down295, ptr @__UNIQUE_ID_slow_downtype294, ptr @__UNIQUE_ID_version293, ptr @__exitcall_sil_pci_driver_exit, ptr @__initcall__kmod_sata_sil__296_807_sil_pci_driver_init6, ptr @__modver_attr, ptr @__param_slow_down, ptr @sil_dev_config._entry, ptr @sil_dev_config._entry.12, ptr @sil_dev_config._entry_ptr, ptr @sil_dev_config._entry_ptr.14, ptr @sil_init_controller._entry, ptr @sil_init_controller._entry.32, ptr @sil_init_controller._entry_ptr, ptr @sil_init_controller._entry_ptr.34, ptr @sil_init_one._entry, ptr @sil_init_one._entry_ptr, ptr @sil_pci_driver_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @slow_down, ptr @sil_pci_driver, ptr @sil_pci_tbl, ptr @sil_port_info, ptr @sil_init_one.__print_once, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @sil_port, ptr @.str.8, ptr @.str.9, ptr @sil_sht, ptr @sil_ops, ptr @sil_blacklist, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slow_down to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil_pci_tbl to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil_port_info to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil_port to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil_blacklist to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil_dev_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil_dev_config._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil_init_controller._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil_init_controller._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sil_pci_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @sil_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sil_pci_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @sil_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sil_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %pi = alloca %struct.ata_port_info, align 4
  %ppi = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pi) #7
  %arrayidx = getelementptr [4 x %struct.ata_port_info], ptr @sil_port_info, i32 0, i32 %1
  %2 = call ptr @memcpy(ptr %pi, ptr %arrayidx, i32 28)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #7
  %3 = getelementptr inbounds [2 x ptr], ptr %ppi, i32 0, i32 1
  %4 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pi, ptr %ppi, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %3, align 4
  %.b91 = load i1, ptr @sil_init_one.__print_once, align 1
  br i1 %.b91, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @sil_init_one.__print_once, align 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void @ata_print_version(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  %spec.store.select = select i1 %cmp, i32 4, i32 2
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call7 = call ptr @ata_host_alloc_pinfo(ptr noundef %dev6, ptr noundef nonnull %ppi, i32 noundef %spec.store.select) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = call i32 @pcim_enable_device(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %call15 = call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 32, ptr noundef nonnull @.str.1) #7
  %6 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call15, label %if.end14.cleanup_crit_edge [
    i32 -16, label %if.then17
    i32 0, label %if.end21
  ]

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  call void @pcim_pin_device(ptr noundef %pdev) #7
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %call22 = call ptr @pcim_iomap_table(ptr noundef %pdev) #7
  %iomap = getelementptr inbounds %struct.ata_host, ptr %call7, i32 0, i32 2
  %7 = ptrtoint ptr %iomap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call22, ptr %iomap, align 4
  %call.i = call i32 @dma_set_mask(ptr noundef %dev6, i64 noundef 4294967295) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end27, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %dev6, i64 noundef 4294967295) #7
  %8 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomap, align 4
  %arrayidx29 = getelementptr ptr, ptr %9, i32 5
  %10 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx29, align 4
  %n_ports30 = getelementptr inbounds %struct.ata_host, ptr %call7, i32 0, i32 3
  %12 = ptrtoint ptr %n_ports30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_ports30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp3192.not = icmp eq i32 %13, 0
  br i1 %cmp3192.not, label %if.end27.for.end_crit_edge, label %if.end27.for.body_crit_edge

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  br label %for.body

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end27.for.body_crit_edge
  %i.093 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end27.for.body_crit_edge ]
  %arrayidx32 = getelementptr %struct.ata_host, ptr %call7, i32 0, i32 12, i32 %i.093
  %14 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx32, align 4
  %ioaddr33 = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 8
  %arrayidx34 = getelementptr [4 x %struct.anon.85], ptr @sil_port, i32 0, i32 %i.093
  %16 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx34, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %17
  %18 = ptrtoint ptr %ioaddr33 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr, ptr %ioaddr33, align 4
  %ctl = getelementptr [4 x %struct.anon.85], ptr @sil_port, i32 0, i32 %i.093, i32 1
  %19 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctl, align 4
  %add.ptr36 = getelementptr i8, ptr %11, i32 %20
  %ctl_addr = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 8, i32 12
  %21 = ptrtoint ptr %ctl_addr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr36, ptr %ctl_addr, align 4
  %altstatus_addr = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 8, i32 11
  %22 = ptrtoint ptr %altstatus_addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr36, ptr %altstatus_addr, align 4
  %bmdma = getelementptr [4 x %struct.anon.85], ptr @sil_port, i32 0, i32 %i.093, i32 2
  %23 = ptrtoint ptr %bmdma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bmdma, align 4
  %add.ptr38 = getelementptr i8, ptr %11, i32 %24
  %bmdma_addr = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 8, i32 13
  %25 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr38, ptr %bmdma_addr, align 4
  %scr = getelementptr [4 x %struct.anon.85], ptr @sil_port, i32 0, i32 %i.093, i32 5
  %26 = ptrtoint ptr %scr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scr, align 4
  %add.ptr40 = getelementptr i8, ptr %11, i32 %27
  %scr_addr = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 8, i32 14
  %28 = ptrtoint ptr %scr_addr to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr40, ptr %scr_addr, align 4
  call void @ata_sff_std_ports(ptr noundef %ioaddr33) #7
  call void @ata_port_pbar_desc(ptr noundef %15, i32 noundef 5, i32 noundef -1, ptr noundef nonnull @.str.8) #7
  call void @ata_port_pbar_desc(ptr noundef %15, i32 noundef 5, i32 noundef %17, ptr noundef nonnull @.str.9) #7
  %inc = add nuw i32 %i.093, 1
  %29 = ptrtoint ptr %n_ports30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %n_ports30, align 4
  %cmp31 = icmp ult i32 %inc, %30
  br i1 %cmp31, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end27.for.end_crit_edge
  call fastcc void @sil_init_controller(ptr noundef nonnull %call7)
  call void @pci_set_master(ptr noundef %pdev) #7
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  %call43 = call i32 @ata_host_activate(ptr noundef nonnull %call7, i32 noundef %32, ptr noundef nonnull @sil_interrupt, i32 noundef 128, ptr noundef nonnull @sil_sht) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end21.cleanup_crit_edge, %if.then17, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %for.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ], [ -16, %if.then17 ], [ %call.i, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pi) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sil_pci_device_resume(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @ata_pci_device_do_resume(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sil_init_controller(ptr noundef %1)
  tail call void @ata_host_resume(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc_pinfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcim_pin_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_std_ports(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_pbar_desc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sil_init_controller(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  %cache_line.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  %iomap = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 2
  %2 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cache_line.i) #7
  %6 = ptrtoint ptr %cache_line.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %cache_line.i, align 1
  %call.i = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 12, ptr noundef nonnull %cache_line.i) #7
  %7 = ptrtoint ptr %cache_line.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cache_line.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cache_line.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %do.end12, label %if.then

if.then:                                          ; preds = %entry
  %n_ports = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 3
  %9 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp97.not = icmp eq i32 %10, 0
  br i1 %cmp97.not, label %if.then.if.end_crit_edge, label %do.body.lr.ph

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body.lr.ph:                                    ; preds = %if.then
  %11 = lshr i8 %8, 3
  %inc = add nuw nsw i8 %11, 1
  %conv4 = zext i8 %inc to i16
  %or = mul nuw nsw i16 %conv4, 257
  %12 = call i16 @llvm.bswap.i16(i16 %or)
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %i.098 = phi i32 [ 0, %do.body.lr.ph ], [ %inc9, %do.body.do.body_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  call void @arm_heavy_mb() #7
  %fifo_cfg = getelementptr [4 x %struct.anon.85], ptr @sil_port, i32 0, i32 %i.098, i32 4
  %13 = ptrtoint ptr %fifo_cfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fifo_cfg, align 4
  %add.ptr8 = getelementptr i8, ptr %5, i32 %14
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8, i16 %12) #7, !srcloc !113
  %inc9 = add nuw i32 %i.098, 1
  %15 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_ports, align 4
  %cmp = icmp ult i32 %inc9, %16
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.29) #10
  br label %if.end

if.end:                                           ; preds = %do.end12, %do.body.if.end_crit_edge, %if.then.if.end_crit_edge
  %ports = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 12
  %17 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ports, align 4
  %flags = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and = and i32 %20, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end.if.end50_crit_edge, label %for.cond17.preheader

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

for.cond17.preheader:                             ; preds = %if.end
  %n_ports18 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 3
  %21 = ptrtoint ptr %n_ports18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_ports18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp1999.not = icmp eq i32 %22, 0
  br i1 %cmp1999.not, label %for.cond17.preheader.if.end50_crit_edge, label %for.cond17.preheader.for.body21_crit_edge

for.cond17.preheader.for.body21_crit_edge:        ; preds = %for.cond17.preheader
  br label %for.body21

for.cond17.preheader.if.end50_crit_edge:          ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

for.body21:                                       ; preds = %for.inc47.for.body21_crit_edge, %for.cond17.preheader.for.body21_crit_edge
  %i.1101 = phi i32 [ %inc48, %for.inc47.for.body21_crit_edge ], [ 0, %for.cond17.preheader.for.body21_crit_edge ]
  %cnt.0100 = phi i32 [ %cnt.1, %for.inc47.for.body21_crit_edge ], [ 0, %for.cond17.preheader.for.body21_crit_edge ]
  %sfis_cfg = getelementptr [4 x %struct.anon.85], ptr @sil_port, i32 0, i32 %i.1101, i32 8
  %23 = ptrtoint ptr %sfis_cfg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sfis_cfg, align 4
  %add.ptr23 = getelementptr i8, ptr %5, i32 %24
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #7, !srcloc !114
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  %and27 = and i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and27)
  %cmp28.not = icmp eq i32 %and27, 1
  br i1 %cmp28.not, label %if.end31, label %for.body21.for.inc47_crit_edge

for.body21.for.inc47_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc47

if.end31:                                         ; preds = %for.body21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0100)
  %tobool32.not = icmp eq i32 %cnt.0100, 0
  br i1 %tobool32.not, label %do.end36, label %if.end31.do.body39_crit_edge

if.end31.do.body39_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

do.end36:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.33) #10
  br label %do.body39

do.body39:                                        ; preds = %do.end36, %if.end31.do.body39_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  call void @arm_heavy_mb() #7
  %and42 = and i32 %26, -4
  %27 = call i32 @llvm.bswap.i32(i32 %and42)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %27) #7, !srcloc !117
  %inc46 = add i32 %cnt.0100, 1
  br label %for.inc47

for.inc47:                                        ; preds = %do.body39, %for.body21.for.inc47_crit_edge
  %cnt.1 = phi i32 [ %cnt.0100, %for.body21.for.inc47_crit_edge ], [ %inc46, %do.body39 ]
  %inc48 = add nuw i32 %i.1101, 1
  %28 = ptrtoint ptr %n_ports18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n_ports18, align 4
  %cmp19 = icmp ult i32 %inc48, %29
  br i1 %cmp19, label %for.inc47.for.body21_crit_edge, label %for.inc47.if.end50_crit_edge

for.inc47.if.end50_crit_edge:                     ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

for.inc47.for.body21_crit_edge:                   ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21

if.end50:                                         ; preds = %for.inc47.if.end50_crit_edge, %for.cond17.preheader.if.end50_crit_edge, %if.end.if.end50_crit_edge
  %n_ports51 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 3
  %30 = ptrtoint ptr %n_ports51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_ports51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %cmp52 = icmp eq i32 %31, 4
  br i1 %cmp52, label %if.then54, label %if.end50.if.end71_crit_edge

if.end50.if.end71_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then54:                                        ; preds = %if.end50
  %add.ptr57 = getelementptr i8, ptr %5, i32 512
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #7, !srcloc !114
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  %and61 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %cmp62 = icmp eq i32 %and61, 0
  br i1 %cmp62, label %do.body65, label %if.then54.if.end71_crit_edge

if.then54.if.end71_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

do.body65:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  call void @arm_heavy_mb() #7
  %or68 = or i32 %33, 2
  %34 = call i32 @llvm.bswap.i32(i32 %or68)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %34) #7, !srcloc !117
  br label %if.end71

if.end71:                                         ; preds = %do.body65, %if.then54.if.end71_crit_edge, %if.end50.if.end71_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sil_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iomap = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 2
  %0 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 5
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @_raw_spin_lock(ptr noundef %dev_instance) #7
  %n_ports = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 3
  %4 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp29.not = icmp eq i32 %5, 0
  br i1 %cmp29.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %handled.031 = phi i32 [ %handled.1, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.030 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx1 = getelementptr %struct.ata_host, ptr %dev_instance, i32 0, i32 12, i32 %i.030
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1, align 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no, align 4
  %bmdma23 = getelementptr [4 x %struct.anon.85], ptr @sil_port, i32 0, i32 %9, i32 3
  %10 = ptrtoint ptr %bmdma23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bmdma23, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !114
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  %flags = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and5 = and i32 %13, -17
  %spec.select = select i1 %tobool.not, i32 %13, i32 %and5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select)
  %cmp6 = icmp eq i32 %spec.select, -1
  %and7 = and i32 %spec.select, 262160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %or.cond = or i1 %cmp6, %tobool8.not
  br i1 %or.cond, label %for.body.cleanup_crit_edge, label %if.end10

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %for.body
  %eh_info.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 25, i32 11
  %active_tag.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 25, i32 3
  %16 = ptrtoint ptr %active_tag.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %active_tag.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %17)
  %18 = icmp ugt i32 %17, 32
  %arrayidx.i.i.i = getelementptr %struct.ata_port, ptr %7, i32 0, i32 19, i32 %17
  %tobool.not11.i.i = icmp eq ptr %arrayidx.i.i.i, null
  %tobool.not.i.i = or i1 %18, %tobool.not11.i.i
  br i1 %tobool.not.i.i, label %if.end10.ata_qc_from_tag.exit.i_crit_edge, label %lor.lhs.false.i.i, !prof !121

if.end10.ata_qc_from_tag.exit.i_crit_edge:        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %ata_qc_from_tag.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end10
  %ops.i.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 1
  %19 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i.i, align 4
  %error_handler.i.i = getelementptr inbounds %struct.ata_port_operations, ptr %20, i32 0, i32 22
  %21 = ptrtoint ptr %error_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %error_handler.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %22, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false.i.i.ata_qc_from_tag.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.ata_qc_from_tag.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ata_qc_from_tag.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i.i = getelementptr %struct.ata_port, ptr %7, i32 0, i32 19, i32 %17, i32 6
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %24, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 1
  %call..i.i = select i1 %cmp.i.i, ptr %arrayidx.i.i.i, ptr null
  br label %ata_qc_from_tag.exit.i

ata_qc_from_tag.exit.i:                           ; preds = %if.end.i.i, %lor.lhs.false.i.i.ata_qc_from_tag.exit.i_crit_edge, %if.end10.ata_qc_from_tag.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx.i.i.i, %lor.lhs.false.i.i.ata_qc_from_tag.exit.i_crit_edge ], [ null, %if.end10.ata_qc_from_tag.exit.i_crit_edge ], [ %call..i.i, %if.end.i.i ]
  %and.i = and i32 %spec.select, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %ata_qc_from_tag.exit.i.if.end18.i_crit_edge, label %if.then.i, !prof !122

ata_qc_from_tag.exit.i.if.end18.i_crit_edge:      ; preds = %ata_qc_from_tag.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then.i:                                        ; preds = %ata_qc_from_tag.exit.i
  %link.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 25
  %25 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %link.i, align 128
  %scr_addr.i.i.i = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8, i32 14
  %27 = ptrtoint ptr %scr_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %scr_addr.i.i.i, align 8
  %add.ptr2.i.i.i = getelementptr i8, ptr %28, i32 8
  %tobool.not.i112.i = icmp eq ptr %add.ptr2.i.i.i, null
  br i1 %tobool.not.i112.i, label %if.then.i.sil_scr_read.exit.i_crit_edge, label %if.then.i.i

if.then.i.sil_scr_read.exit.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sil_scr_read.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %add.ptr2.i.i.i) #7, !srcloc !114
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  br label %sil_scr_read.exit.i

sil_scr_read.exit.i:                              ; preds = %if.then.i.i, %if.then.i.sil_scr_read.exit.i_crit_edge
  %serror.0.i = phi i32 [ -1, %if.then.i.sil_scr_read.exit.i_crit_edge ], [ %30, %if.then.i.i ]
  %31 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %link.i, align 128
  %scr_addr.i.i114.i = getelementptr inbounds %struct.ata_port, ptr %32, i32 0, i32 8, i32 14
  %33 = ptrtoint ptr %scr_addr.i.i114.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %scr_addr.i.i114.i, align 8
  %add.ptr2.i.i115.i = getelementptr i8, ptr %34, i32 8
  %tobool.not.i116.i = icmp eq ptr %add.ptr2.i.i115.i, null
  br i1 %tobool.not.i116.i, label %sil_scr_read.exit.i.sil_scr_write.exit.i_crit_edge, label %do.body.i.i

sil_scr_read.exit.i.sil_scr_write.exit.i_crit_edge: ; preds = %sil_scr_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sil_scr_write.exit.i

do.body.i.i:                                      ; preds = %sil_scr_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %35 = tail call i32 @llvm.bswap.i32(i32 %serror.0.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %add.ptr2.i.i115.i, i32 %35) #7, !srcloc !117
  br label %sil_scr_write.exit.i

sil_scr_write.exit.i:                             ; preds = %do.body.i.i, %sil_scr_read.exit.i.sil_scr_write.exit.i_crit_edge
  %and8.i = and i32 %serror.0.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end.i, label %cleanup.i

if.end.i:                                         ; preds = %sil_scr_write.exit.i
  %and14.i = and i32 %spec.select, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.end18.i_crit_edge

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.i:                                        ; preds = %sil_scr_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %serror13.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 25, i32 11, i32 1
  br label %freeze.i

if.end18.i:                                       ; preds = %if.end.i.if.end18.i_crit_edge, %ata_qc_from_tag.exit.i.if.end18.i_crit_edge
  %tobool19.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool19.not.i, label %if.end18.i.if.then28.i_crit_edge, label %lor.rhs.i, !prof !121

if.end18.i.if.then28.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28.i

lor.rhs.i:                                        ; preds = %if.end18.i
  %tf.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %retval.0.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %tf.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tf.i, align 4
  %and20.i = and i32 %37, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.end30.i, label %lor.rhs.i.if.then28.i_crit_edge, !prof !122

lor.rhs.i.if.then28.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28.i

if.then28.i:                                      ; preds = %lor.rhs.i.if.then28.i_crit_edge, %if.end18.i.if.then28.i_crit_edge
  %ops.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 1
  %38 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i, align 4
  %sff_check_status.i = getelementptr inbounds %struct.ata_port_operations, ptr %39, i32 0, i32 39
  %40 = ptrtoint ptr %sff_check_status.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sff_check_status.i, align 4
  %call29.i = tail call zeroext i8 %41(ptr noundef %7) #7
  br label %cleanup

if.end30.i:                                       ; preds = %lor.rhs.i
  %hsm_task_state.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 37
  %42 = ptrtoint ptr %hsm_task_state.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hsm_task_state.i, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %43, label %if.end30.i.err_hsm.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 3, label %sw.bb36.i
    i32 2, label %if.end30.i.sw.epilog.i_crit_edge
  ]

if.end30.i.sw.epilog.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end30.i.err_hsm.i_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_hsm.i

sw.bb.i:                                          ; preds = %if.end30.i
  %dev.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %retval.0.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 4
  %flags31.i = getelementptr inbounds %struct.ata_device, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %flags31.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags31.i, align 4
  %and32.i = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %sw.bb.i.err_hsm.i_crit_edge, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i.err_hsm.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_hsm.i

sw.bb36.i:                                        ; preds = %if.end30.i
  %protocol.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %retval.0.i.i, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %protocol.i, align 4
  %51 = and i8 %50, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.i.not.i = icmp eq i8 %51, 0
  br i1 %tobool.i.not.i, label %sw.bb36.i.sw.epilog.i_crit_edge, label %if.then39.i

sw.bb36.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.then39.i:                                      ; preds = %sw.bb36.i
  %ops40.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 1
  %52 = ptrtoint ptr %ops40.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops40.i, align 4
  %bmdma_stop.i = getelementptr inbounds %struct.ata_port_operations, ptr %53, i32 0, i32 51
  %54 = ptrtoint ptr %bmdma_stop.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bmdma_stop.i, align 4
  tail call void %55(ptr noundef nonnull %retval.0.i.i) #7
  %and41.i = and i32 %spec.select, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.then39.i.sw.epilog.i_crit_edge, label %if.then43.i

if.then39.i.sw.epilog.i_crit_edge:                ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.then43.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #9
  %err_mask.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %retval.0.i.i, i32 0, i32 20
  %56 = ptrtoint ptr %err_mask.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %err_mask.i, align 4
  %or44.i = or i32 %57, 32
  store i32 %or44.i, ptr %err_mask.i, align 4
  %58 = ptrtoint ptr %hsm_task_state.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4, ptr %hsm_task_state.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then43.i, %if.then39.i.sw.epilog.i_crit_edge, %sw.bb36.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge, %if.end30.i.sw.epilog.i_crit_edge
  %ops48.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 1
  %59 = ptrtoint ptr %ops48.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops48.i, align 4
  %sff_check_status49.i = getelementptr inbounds %struct.ata_port_operations, ptr %60, i32 0, i32 39
  %61 = ptrtoint ptr %sff_check_status49.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sff_check_status49.i, align 4
  %call50.i = tail call zeroext i8 %62(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call50.i)
  %tobool52.not.i = icmp sgt i8 %call50.i, -1
  br i1 %tobool52.not.i, label %if.end60.i, label %sw.epilog.i.err_hsm.i_crit_edge, !prof !122

sw.epilog.i.err_hsm.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_hsm.i

if.end60.i:                                       ; preds = %sw.epilog.i
  tail call void @ata_bmdma_irq_clear(ptr noundef %7) #7
  %call61.i = tail call i32 @ata_sff_hsm_move(ptr noundef %7, ptr noundef nonnull %retval.0.i.i, i8 noundef zeroext %call50.i, i32 noundef 0) #7
  %err_mask62.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %retval.0.i.i, i32 0, i32 20
  %63 = ptrtoint ptr %err_mask62.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %err_mask62.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool63.not.i = icmp eq i32 %64, 0
  br i1 %tobool63.not.i, label %if.end60.i.cleanup_crit_edge, label %land.lhs.true.i, !prof !122

if.end60.i.cleanup_crit_edge:                     ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end60.i
  %protocol71.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %retval.0.i.i, i32 0, i32 4, i32 1
  %65 = ptrtoint ptr %protocol71.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %protocol71.i, align 4
  %67 = and i8 %66, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.i118.not.i = icmp eq i8 %67, 0
  br i1 %tobool.i118.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then74.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then74.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info.i, ptr noundef nonnull @.str.35, i32 noundef %spec.select) #7
  br label %cleanup

err_hsm.i:                                        ; preds = %sw.epilog.i.err_hsm.i_crit_edge, %sw.bb.i.err_hsm.i_crit_edge, %if.end30.i.err_hsm.i_crit_edge
  %err_mask76.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %retval.0.i.i, i32 0, i32 20
  br label %freeze.i

freeze.i:                                         ; preds = %err_hsm.i, %cleanup.i
  %serror13.sink123.i = phi ptr [ %serror13.i, %cleanup.i ], [ %err_mask76.i, %err_hsm.i ]
  %serror.0.sink.i = phi i32 [ %serror.0.i, %cleanup.i ], [ 2, %err_hsm.i ]
  %68 = ptrtoint ptr %serror13.sink123.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %serror13.sink123.i, align 4
  %or.i = or i32 %69, %serror.0.sink.i
  store i32 %or.i, ptr %serror13.sink123.i, align 4
  %call78.i = tail call i32 @ata_port_freeze(ptr noundef %7) #7
  br label %cleanup

cleanup:                                          ; preds = %freeze.i, %if.then74.i, %land.lhs.true.i.cleanup_crit_edge, %if.end60.i.cleanup_crit_edge, %if.then28.i, %if.end.i.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %handled.1 = phi i32 [ %handled.031, %for.body.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ], [ 1, %if.then28.i ], [ 1, %if.end60.i.cleanup_crit_edge ], [ 1, %land.lhs.true.i.cleanup_crit_edge ], [ 1, %if.then74.i ], [ 1, %freeze.i ]
  %inc = add nuw i32 %i.030, 1
  %70 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %n_ports, align 4
  %cmp = icmp ult i32 %inc, %71
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %handled.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %handled.1, %cleanup.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %dev_instance) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.0.lcssa)
  %tobool13.not = icmp ne i32 %handled.0.lcssa, 0
  %cond = zext i1 %tobool13.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sil_qc_prep(ptr nocapture noundef readonly %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %n_elem.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 9
  %2 = ptrtoint ptr %n_elem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_elem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp16.not.i = icmp eq i32 %3, 0
  br i1 %cmp16.not.i, label %if.end.return_crit_edge, label %for.body.preheader.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

for.body.preheader.i:                             ; preds = %if.end
  %sg2.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 17
  %4 = ptrtoint ptr %sg2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg2.i, align 4
  %6 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qc, align 4
  %bmdma_prd.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %bmdma_prd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmdma_prd.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %sg.019.i = phi ptr [ %call.i, %for.body.i.for.body.i_crit_edge ], [ %5, %for.body.preheader.i ]
  %prd.018.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %9, %for.body.preheader.i ]
  %si.017.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.019.i, i32 0, i32 3
  %10 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_address.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.019.i, i32 0, i32 4
  %12 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_length.i, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %15 = ptrtoint ptr %prd.018.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %prd.018.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  %flags_len.i = getelementptr inbounds %struct.ata_bmdma_prd, ptr %prd.018.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags_len.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %flags_len.i, align 4
  %incdec.ptr.i = getelementptr %struct.ata_bmdma_prd, ptr %prd.018.i, i32 1
  %inc.i = add nuw i32 %si.017.i, 1
  %call.i = tail call ptr @sg_next(ptr noundef %sg.019.i) #7
  %18 = ptrtoint ptr %n_elem.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_elem.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %19
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %tobool.not.i = icmp eq ptr %prd.018.i, null
  br i1 %tobool.not.i, label %for.end.i.return_crit_edge, label %if.then.i, !prof !121

for.end.i.return_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags_len.i.le = getelementptr inbounds %struct.ata_bmdma_prd, ptr %prd.018.i, i32 0, i32 1
  %20 = ptrtoint ptr %flags_len.i.le to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags_len.i.le, align 4
  %or.i = or i32 %21, 128
  store i32 %or.i, ptr %flags_len.i.le, align 4
  br label %return

return:                                           ; preds = %if.then.i, %for.end.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sil_set_mode(ptr noundef %link, ptr noundef %r_failed) #2 align 64 {
entry:
  %dev_mode = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no, align 4
  %xfer_mode = getelementptr [4 x %struct.anon.85], ptr @sil_port, i32 0, i32 %9, i32 7
  %10 = ptrtoint ptr %xfer_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xfer_mode, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dev_mode) #7
  %12 = ptrtoint ptr %dev_mode to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %dev_mode, align 8
  %call = tail call i32 @ata_do_set_mode(ptr noundef %link, ptr noundef %r_failed) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %link, i32 noundef 2) #7
  %tobool4.not54 = icmp eq ptr %call3, null
  br i1 %tobool4.not54, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %dev.055 = phi ptr [ %call18, %for.inc.for.body_crit_edge ], [ %call3, %if.end.for.body_crit_edge ]
  %class.i = getelementptr inbounds %struct.ata_device, ptr %dev.055, i32 0, i32 9
  %13 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %class.i, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %14, label %if.then7 [
    i32 1, label %for.body.if.else_crit_edge
    i32 3, label %for.body.if.else_crit_edge57
    i32 5, label %for.body.if.else_crit_edge58
    i32 7, label %for.body.if.else_crit_edge59
    i32 9, label %for.body.if.else_crit_edge60
  ]

for.body.if.else_crit_edge60:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

for.body.if.else_crit_edge59:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

for.body.if.else_crit_edge58:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

for.body.if.else_crit_edge57:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %devno = getelementptr inbounds %struct.ata_device, ptr %dev.055, i32 0, i32 1
  %16 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %devno, align 4
  %arrayidx8 = getelementptr [2 x i32], ptr %dev_mode, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx8, align 4
  br label %for.inc

if.else:                                          ; preds = %for.body.if.else_crit_edge, %for.body.if.else_crit_edge57, %for.body.if.else_crit_edge58, %for.body.if.else_crit_edge59, %for.body.if.else_crit_edge60
  %flags = getelementptr inbounds %struct.ata_device, ptr %dev.055, i32 0, i32 3
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and = and i32 %20, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  %devno14 = getelementptr inbounds %struct.ata_device, ptr %dev.055, i32 0, i32 1
  %21 = ptrtoint ptr %devno14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %devno14, align 4
  %arrayidx15 = getelementptr [2 x i32], ptr %dev_mode, i32 0, i32 %22
  br i1 %tobool9.not, label %if.else13, label %if.then10

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %arrayidx15, align 4
  br label %for.inc

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else13, %if.then10, %if.then7
  %call18 = tail call ptr @ata_dev_next(ptr noundef nonnull %dev.055, ptr noundef %link, i32 noundef 2) #7
  %tobool4.not = icmp eq ptr %call18, null
  br i1 %tobool4.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %26 = and i32 %25, -855638017
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %dev_mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dev_mode, align 8
  %or = or i32 %27, %29
  %arrayidx24 = getelementptr inbounds [2 x i32], ptr %dev_mode, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx24, align 4
  %shl = shl i32 %31, 4
  %or25 = or i32 %or, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %32 = tail call i32 @llvm.bswap.i32(i32 %or25)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %32) #7, !srcloc !117
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dev_mode) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sil_dev_config(ptr noundef %dev) #2 align 64 {
entry:
  %model_num = alloca [41 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %flags = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 25, i32 12, i32 0, i32 5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 262144
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %model_num) #7
  %6 = call ptr @memset(ptr %model_num, i32 255, i32 41)
  %horkage = getelementptr inbounds %struct.ata_device, ptr %dev, i32 0, i32 2
  %7 = ptrtoint ptr %horkage to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %horkage, align 8
  %or = or i32 %8, 16777216
  store i32 %or, ptr %horkage, align 8
  %9 = getelementptr inbounds %struct.ata_device, ptr %dev, i32 0, i32 25
  call void @ata_id_c_string(ptr noundef %9, ptr noundef nonnull %model_num, i32 noundef 27, i32 noundef 41) #7
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) @.str.15, ptr noundef nonnull dereferenceable(11) %model_num, i32 11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool7.not = icmp eq i32 %bcmp, 0
  br i1 %tobool7.not, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %for.inc.11.if.then_crit_edge, %for.inc.10.if.then_crit_edge, %for.inc.9.if.then_crit_edge, %for.inc.8.if.then_crit_edge, %for.inc.7.if.then_crit_edge, %for.inc.6.if.then_crit_edge, %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %n.066.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ], [ 7, %for.inc.6.if.then_crit_edge ], [ 8, %for.inc.7.if.then_crit_edge ], [ 9, %for.inc.8.if.then_crit_edge ], [ 10, %for.inc.9.if.then_crit_edge ], [ 11, %for.inc.10.if.then_crit_edge ], [ 12, %for.inc.11.if.then_crit_edge ]
  %quirk = getelementptr [14 x %struct.sil_drivelist], ptr @sil_blacklist, i32 0, i32 %n.066.lcssa, i32 1
  %10 = ptrtoint ptr %quirk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %quirk, align 4
  br label %for.end

for.inc:                                          ; preds = %entry
  %bcmp68 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) @.str.16, ptr noundef nonnull dereferenceable(11) %model_num, i32 11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp68)
  %tobool7.not.1 = icmp eq i32 %bcmp68, 0
  br i1 %tobool7.not.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %bcmp69 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) @.str.17, ptr noundef nonnull dereferenceable(11) %model_num, i32 11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp69)
  %tobool7.not.2 = icmp eq i32 %bcmp69, 0
  br i1 %tobool7.not.2, label %for.inc.1.if.then_crit_edge, label %for.inc.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %bcmp70 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) @.str.18, ptr noundef nonnull dereferenceable(11) %model_num, i32 11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp70)
  %tobool7.not.3 = icmp eq i32 %bcmp70, 0
  br i1 %tobool7.not.3, label %for.inc.2.if.then_crit_edge, label %for.inc.3

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %bcmp71 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) @.str.19, ptr noundef nonnull dereferenceable(11) %model_num, i32 11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp71)
  %tobool7.not.4 = icmp eq i32 %bcmp71, 0
  br i1 %tobool7.not.4, label %for.inc.3.if.then_crit_edge, label %for.inc.4

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %bcmp72 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) @.str.20, ptr noundef nonnull dereferenceable(12) %model_num, i32 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp72)
  %tobool7.not.5 = icmp eq i32 %bcmp72, 0
  br i1 %tobool7.not.5, label %for.inc.4.if.then_crit_edge, label %for.inc.5

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %bcmp73 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) @.str.21, ptr noundef nonnull dereferenceable(12) %model_num, i32 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp73)
  %tobool7.not.6 = icmp eq i32 %bcmp73, 0
  br i1 %tobool7.not.6, label %for.inc.5.if.then_crit_edge, label %for.inc.6

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  %bcmp74 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) @.str.22, ptr noundef nonnull dereferenceable(12) %model_num, i32 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp74)
  %tobool7.not.7 = icmp eq i32 %bcmp74, 0
  br i1 %tobool7.not.7, label %for.inc.6.if.then_crit_edge, label %for.inc.7

for.inc.6.if.then_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.7:                                        ; preds = %for.inc.6
  %bcmp75 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) @.str.23, ptr noundef nonnull dereferenceable(12) %model_num, i32 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp75)
  %tobool7.not.8 = icmp eq i32 %bcmp75, 0
  br i1 %tobool7.not.8, label %for.inc.7.if.then_crit_edge, label %for.inc.8

for.inc.7.if.then_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.8:                                        ; preds = %for.inc.7
  %bcmp76 = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) @.str.24, ptr noundef nonnull dereferenceable(13) %model_num, i32 13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp76)
  %tobool7.not.9 = icmp eq i32 %bcmp76, 0
  br i1 %tobool7.not.9, label %for.inc.8.if.then_crit_edge, label %for.inc.9

for.inc.8.if.then_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.9:                                        ; preds = %for.inc.8
  %bcmp77 = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) @.str.25, ptr noundef nonnull dereferenceable(13) %model_num, i32 13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp77)
  %tobool7.not.10 = icmp eq i32 %bcmp77, 0
  br i1 %tobool7.not.10, label %for.inc.9.if.then_crit_edge, label %for.inc.10

for.inc.9.if.then_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.10:                                       ; preds = %for.inc.9
  %bcmp78 = call i32 @bcmp(ptr noundef nonnull dereferenceable(19) @.str.26, ptr noundef nonnull dereferenceable(19) %model_num, i32 19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp78)
  %tobool7.not.11 = icmp eq i32 %bcmp78, 0
  br i1 %tobool7.not.11, label %for.inc.10.if.then_crit_edge, label %for.inc.11

for.inc.10.if.then_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.11:                                       ; preds = %for.inc.10
  %bcmp79 = call i32 @bcmp(ptr noundef nonnull dereferenceable(15) @.str.27, ptr noundef nonnull dereferenceable(15) %model_num, i32 15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp79)
  %tobool7.not.12 = icmp eq i32 %bcmp79, 0
  br i1 %tobool7.not.12, label %for.inc.11.if.then_crit_edge, label %for.inc.11.for.end_crit_edge

for.inc.11.for.end_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.11.if.then_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.end:                                          ; preds = %for.inc.11.for.end_crit_edge, %if.then
  %quirks.0 = phi i32 [ %11, %if.then ], [ 0, %for.inc.11.for.end_crit_edge ]
  %12 = load i32, ptr @slow_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not = icmp eq i32 %12, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %for.end.if.then15_crit_edge

for.end.if.then15_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

lor.lhs.false:                                    ; preds = %for.end
  %flags10 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags10, align 4
  %and11 = and i32 %14, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %and13 = and i32 %quirks.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %or.cond = select i1 %tobool12.not, i1 true, i1 %tobool14.not
  br i1 %or.cond, label %if.end23, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %for.end.if.then15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.then15.if.end22_crit_edge, label %do.end

if.then15.if.end22_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.end:                                           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 128
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
  %devno = getelementptr inbounds %struct.ata_device, ptr %dev, i32 0, i32 1
  %23 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %devno, align 4
  %add = add i32 %24, %22
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %20, i32 noundef %add) #10
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.then15.if.end22_crit_edge
  %max_sectors = getelementptr inbounds %struct.ata_device, ptr %dev, i32 0, i32 16
  %25 = ptrtoint ptr %max_sectors to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 15, ptr %max_sectors, align 4
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false
  %and24 = and i32 %quirks.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.then26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.then26.if.end42_crit_edge, label %do.end31

if.then26.if.end42_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

do.end31:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 128
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 128
  %print_id35 = getelementptr inbounds %struct.ata_port, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %print_id35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %print_id35, align 4
  %pmp37 = getelementptr inbounds %struct.ata_link, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %pmp37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pmp37, align 4
  %devno38 = getelementptr inbounds %struct.ata_device, ptr %dev, i32 0, i32 1
  %34 = ptrtoint ptr %devno38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %devno38, align 4
  %add39 = add i32 %35, %33
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %31, i32 noundef %add39, ptr noundef nonnull %model_num) #10
  br label %if.end42

if.end42:                                         ; preds = %do.end31, %if.then26.if.end42_crit_edge
  %udma_mask = getelementptr inbounds %struct.ata_device, ptr %dev, i32 0, i32 20
  %36 = ptrtoint ptr %udma_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %udma_mask, align 4
  %and43 = and i32 %37, 63
  store i32 %and43, ptr %udma_mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end23.cleanup_crit_edge, %if.end22
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %model_num) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sil_freeze(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  %sien = getelementptr [4 x %struct.anon.85], ptr @sil_port, i32 0, i32 %7, i32 6
  %8 = ptrtoint ptr %sien to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sien, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !117
  %add.ptr2 = getelementptr i8, ptr %5, i32 72
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !114
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %12 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_no, align 4
  %shl = shl i32 4194304, %13
  %or = or i32 %shl, %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %14) #7, !srcloc !117
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %bmdma_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 13
  %16 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bmdma_addr, align 4
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %17) #7, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  %19 = and i8 %18, -2
  %20 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bmdma_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %21, i8 %19) #7, !srcloc !135
  %22 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bmdma_addr, align 4
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %23) #7, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sil_thaw(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %ops = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %sff_check_status = getelementptr inbounds %struct.ata_port_operations, ptr %7, i32 0, i32 39
  %8 = ptrtoint ptr %sff_check_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sff_check_status, align 4
  %call = tail call zeroext i8 %9(ptr noundef %ap) #7
  tail call void @ata_bmdma_irq_clear(ptr noundef %ap) #7
  %flags = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %12 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_no, align 4
  %sien = getelementptr [4 x %struct.anon.85], ptr @sil_port, i32 0, i32 %13, i32 6
  %14 = ptrtoint ptr %sien to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sien, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 256) #7, !srcloc !117
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %add.ptr2 = getelementptr i8, ptr %5, i32 72
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !114
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  %port_no6 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %18 = ptrtoint ptr %port_no6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_no6, align 4
  %shl = shl i32 4194304, %19
  %neg = xor i32 %shl, -1
  %and7 = and i32 %17, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %and7)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %20) #7, !srcloc !117
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sil_scr_read(ptr nocapture noundef readonly %link, i32 noundef %sc_reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %scr_addr.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 14
  %2 = ptrtoint ptr %scr_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scr_addr.i, align 8
  %4 = zext i32 %sc_reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %sc_reg, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %entry.sil_scr_addr.exit_crit_edge
  ]

entry.sil_scr_addr.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sil_scr_addr.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  br label %sil_scr_addr.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr2.i = getelementptr i8, ptr %3, i32 8
  br label %sil_scr_addr.exit

sil_scr_addr.exit:                                ; preds = %sw.bb1.i, %sw.bb.i, %entry.sil_scr_addr.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr2.i, %sw.bb1.i ], [ %add.ptr.i, %sw.bb.i ], [ %3, %entry.sil_scr_addr.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %sil_scr_addr.exit.cleanup_crit_edge, label %if.then

sil_scr_addr.exit.cleanup_crit_edge:              ; preds = %sil_scr_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %sil_scr_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %retval.0.i) #7, !srcloc !114
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sil_scr_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %sil_scr_addr.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sil_scr_write(ptr nocapture noundef readonly %link, i32 noundef %sc_reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %scr_addr.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 14
  %2 = ptrtoint ptr %scr_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scr_addr.i, align 8
  %4 = zext i32 %sc_reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %sc_reg, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %entry.sil_scr_addr.exit_crit_edge
  ]

entry.sil_scr_addr.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sil_scr_addr.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  br label %sil_scr_addr.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr2.i = getelementptr i8, ptr %3, i32 8
  br label %sil_scr_addr.exit

sil_scr_addr.exit:                                ; preds = %sw.bb1.i, %sw.bb.i, %entry.sil_scr_addr.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr2.i, %sw.bb1.i ], [ %add.ptr.i, %sw.bb.i ], [ %3, %entry.sil_scr_addr.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %sil_scr_addr.exit.cleanup_crit_edge, label %do.body

sil_scr_addr.exit.cleanup_crit_edge:              ; preds = %sil_scr_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %sil_scr_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %val)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %retval.0.i, i32 %5) #7, !srcloc !117
  br label %cleanup

cleanup:                                          ; preds = %do.body, %sil_scr_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %sil_scr_addr.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sil_bmdma_setup(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %bmdma_addr = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 13
  %2 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bmdma_addr, align 4
  %bmdma_prd_dma = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %bmdma_prd_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bmdma_prd_dma, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !117
  %ops = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %sff_exec_command = getelementptr inbounds %struct.ata_port_operations, ptr %8, i32 0, i32 43
  %9 = ptrtoint ptr %sff_exec_command to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sff_exec_command, align 4
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  tail call void %10(ptr noundef %1, ptr noundef %tf) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sil_bmdma_start(ptr nocapture noundef readonly %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %0 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tf, align 4
  %and = and i32 %1, 8
  %2 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qc, align 4
  %host = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_no, align 4
  %bmdma23 = getelementptr [4 x %struct.anon.85], ptr @sil_port, i32 0, i32 %11, i32 3
  %12 = ptrtoint ptr %bmdma23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bmdma23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i8 9, i8 1
  %add.ptr = getelementptr i8, ptr %9, i32 %13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %spec.select) #7, !srcloc !135
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sil_bmdma_stop(ptr nocapture noundef readonly %qc) #2 align 64 {
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
  %iomap = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no, align 4
  %bmdma23 = getelementptr [4 x %struct.anon.85], ptr @sil_port, i32 0, i32 %9, i32 3
  %10 = ptrtoint ptr %bmdma23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bmdma23, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #7, !srcloc !135
  tail call void @ata_sff_dma_pause(ptr noundef %1) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_do_set_mode(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_id_c_string(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_bmdma_irq_clear(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_dma_pause(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_hsm_move(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_push_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_freeze(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_queuecmd(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_ioctl(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_slave_config(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_slave_destroy(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_unlock_native_capacity(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_do_resume(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !21, !23, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !92, !93, !94, !95, !97, !98, !99, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__UNIQUE_ID_author289, !1, !"__UNIQUE_ID_author289", i1 false, i1 false}
!1 = !{!"../drivers/ata/sata_sil.c", i32 240, i32 1}
!2 = !{ptr @__UNIQUE_ID_description290, !3, !"__UNIQUE_ID_description290", i1 false, i1 false}
!3 = !{!"../drivers/ata/sata_sil.c", i32 241, i32 1}
!4 = !{ptr @__UNIQUE_ID_file291, !5, !"__UNIQUE_ID_file291", i1 false, i1 false}
!5 = !{!"../drivers/ata/sata_sil.c", i32 242, i32 1}
!6 = !{ptr @__UNIQUE_ID_license292, !5, !"__UNIQUE_ID_license292", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version293, !8, !"__UNIQUE_ID_version293", i1 false, i1 false}
!8 = !{!"../drivers/ata/sata_sil.c", i32 244, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_slow_down, !14, !"__param_slow_down", i1 false, i1 false}
!14 = !{!"../drivers/ata/sata_sil.c", i32 247, i32 1}
!15 = !{ptr @__UNIQUE_ID_slow_downtype294, !14, !"__UNIQUE_ID_slow_downtype294", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_slow_down295, !17, !"__UNIQUE_ID_slow_down295", i1 false, i1 false}
!17 = !{!"../drivers/ata/sata_sil.c", i32 248, i32 1}
!18 = !{ptr @__initcall__kmod_sata_sil__296_807_sil_pci_driver_init6, !19, !"__initcall__kmod_sata_sil__296_807_sil_pci_driver_init6", i1 false, i1 false}
!19 = !{!"../drivers/ata/sata_sil.c", i32 807, i32 1}
!20 = !{ptr @__exitcall_sil_pci_driver_exit, !19, !"__exitcall_sil_pci_driver_exit", i1 false, i1 false}
!21 = !{ptr @slow_down, !22, !"slow_down", i1 false, i1 false}
!22 = !{!"../drivers/ata/sata_sil.c", i32 246, i32 12}
!23 = !{ptr @__param_str_slow_down, !14, !"__param_str_slow_down", i1 false, i1 false}
!24 = !{ptr @sil_pci_driver, !25, !"sil_pci_driver", i1 false, i1 false}
!25 = !{!"../drivers/ata/sata_sil.c", i32 148, i32 26}
!26 = !{ptr @sil_pci_tbl, !27, !"sil_pci_tbl", i1 false, i1 false}
!27 = !{!"../drivers/ata/sata_sil.c", i32 114, i32 35}
!28 = distinct !{null, !29, !"__print_once", i1 false, i1 false}
!29 = !{!"../drivers/ata/sata_sil.c", i32 731, i32 2}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/ata/sata_sil.c", i32 741, i32 3}
!32 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @sil_init_one._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @sil_init_one._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/ata/sata_sil.c", i32 778, i32 44}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/ata/sata_sil.c", i32 779, i32 56}
!42 = !{ptr @sil_port_info, !43, !"sil_port_info", i1 false, i1 false}
!43 = !{!"../drivers/ata/sata_sil.c", i32 182, i32 35}
!44 = !{ptr @sil_ops, !45, !"sil_ops", i1 false, i1 false}
!45 = !{!"../drivers/ata/sata_sil.c", i32 168, i32 35}
!46 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/ata/sata_sil.c", i32 634, i32 4}
!48 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @sil_dev_config._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @sil_dev_config._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/ata/sata_sil.c", i32 643, i32 4}
!53 = !{ptr @sil_dev_config._entry.12, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @sil_dev_config._entry_ptr.14, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/ata/sata_sil.c", i32 132, i32 4}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/ata/sata_sil.c", i32 133, i32 4}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/ata/sata_sil.c", i32 134, i32 4}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/ata/sata_sil.c", i32 135, i32 4}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/ata/sata_sil.c", i32 136, i32 4}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/ata/sata_sil.c", i32 137, i32 4}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/ata/sata_sil.c", i32 138, i32 4}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/ata/sata_sil.c", i32 139, i32 4}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/ata/sata_sil.c", i32 140, i32 4}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/ata/sata_sil.c", i32 141, i32 4}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/ata/sata_sil.c", i32 142, i32 4}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/ata/sata_sil.c", i32 143, i32 4}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/ata/sata_sil.c", i32 144, i32 4}
!81 = !{ptr @sil_blacklist, !82, !"sil_blacklist", i1 false, i1 false}
!82 = !{!"../drivers/ata/sata_sil.c", i32 131, i32 3}
!83 = distinct !{null, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/ata/sata_sil.c", i32 699, i32 13}
!85 = distinct !{null, !86, !"broken_systems", i1 false, i1 false}
!86 = !{!"../drivers/ata/sata_sil.c", i32 697, i32 36}
!87 = !{ptr @sil_port, !88, !"sil_port", i1 false, i1 false}
!88 = !{!"../drivers/ata/sata_sil.c", i32 230, i32 3}
!89 = !{ptr @.str.29, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/ata/sata_sil.c", i32 667, i32 3}
!91 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @sil_init_controller._entry, !90, !"_entry", i1 false, i1 false}
!94 = !{ptr @sil_init_controller._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/ata/sata_sil.c", i32 679, i32 5}
!97 = !{ptr @sil_init_controller._entry.32, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @sil_init_controller._entry_ptr.34, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/ata/sata_sil.c", i32 496, i32 26}
!101 = !{ptr @sil_sht, !102, !"sil_sht", i1 false, i1 false}
!102 = !{!"../drivers/ata/sata_sil.c", i32 159, i32 34}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i64 2155736125}
!113 = !{i64 4998998}
!114 = !{i64 5000036}
!115 = !{i64 2155738733}
!116 = !{i64 2155740769}
!117 = !{i64 4999618}
!118 = !{i64 2155741514}
!119 = !{i64 2155741760}
!120 = !{i64 2155726704}
!121 = !{!"branch_weights", i32 1, i32 2000}
!122 = !{!"branch_weights", i32 2000, i32 1}
!123 = !{i64 2155725550}
!124 = !{i64 2155725754}
!125 = !{i64 2155724138}
!126 = !{i64 2155724339}
!127 = !{i64 2155724935}
!128 = !{i64 2155726976}
!129 = !{i64 2155727672}
!130 = !{i64 2155727891}
!131 = !{i64 2155728577}
!132 = !{i64 4999816}
!133 = !{i64 2152539161}
!134 = !{i64 2152540766}
!135 = !{i64 4999421}
!136 = !{i64 2155728844}
!137 = !{i64 2155729567}
!138 = !{i64 2155729786}
!139 = !{i64 2152541740}
