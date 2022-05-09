; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_hpt366.c_pt.bc'
source_filename = "../drivers/ata/pata_hpt366.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hpt_clock = type { i8, i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.78 = type { ptr }
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
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }

@__initcall__kmod_pata_hpt366__289_416_hpt36x_pci_driver_init6 = internal global ptr @hpt36x_pci_driver_init, section ".initcall6.init", align 4
@hpt36x_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @hpt36x, ptr @hpt36x_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @hpt36x_reinit_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_hpt36x_pci_driver_exit = internal global ptr @hpt36x_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [28 x i8] c"pata_hpt366.author=Alan Cox\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [70 x i8] c"pata_hpt366.description=low-level driver for the Highpoint HPT366/368\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [41 x i8] c"pata_hpt366.file=drivers/ata/pata_hpt366\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [24 x i8] c"pata_hpt366.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version294 = internal constant [27 x i8] c"pata_hpt366.version=0.6.11\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pata_hpt366\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.6.11\00", [25 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@hpt36x = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4355, i32 4, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@hpt36x_init_one.info_hpt366 = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 31, ptr @hpt366_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@hpt366_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hpt36x_cable_detect, ptr @hpt366_filter, ptr @hpt366_set_piomode, ptr @hpt366_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@__const.hpt36x_init_one.ppi = private unnamed_addr constant [2 x ptr] [ptr @hpt36x_init_one.info_hpt366, ptr null], align 8
@hpt366_40 = internal constant { [14 x %struct.hpt_clock], [48 x i8] } { [14 x %struct.hpt_clock] [%struct.hpt_clock { i8 68, i32 -1878009533 }, %struct.hpt_clock { i8 67, i32 -1878337213 }, %struct.hpt_clock { i8 66, i32 -1878271677 }, %struct.hpt_clock { i8 65, i32 -1878468285 }, %struct.hpt_clock { i8 64, i32 -1878468285 }, %struct.hpt_clock { i8 34, i32 -1610032829 }, %struct.hpt_clock { i8 33, i32 -1609508523 }, %struct.hpt_clock { i8 32, i32 -1609508356 }, %struct.hpt_clock { i8 12, i32 -1073161885 }, %struct.hpt_clock { i8 11, i32 -1072637580 }, %struct.hpt_clock { i8 10, i32 -1072637545 }, %struct.hpt_clock { i8 9, i32 -1072637497 }, %struct.hpt_clock { i8 8, i32 -1072113191 }, %struct.hpt_clock { i8 0, i32 18930137 }], [48 x i8] zeroinitializer }, align 32
@hpt366_25 = internal constant { [14 x %struct.hpt_clock], [48 x i8] } { [14 x %struct.hpt_clock] [%struct.hpt_clock { i8 68, i32 -1865841375 }, %struct.hpt_clock { i8 67, i32 -1865448159 }, %struct.hpt_clock { i8 66, i32 -1865448159 }, %struct.hpt_clock { i8 65, i32 -1865710303 }, %struct.hpt_clock { i8 64, i32 -1865710303 }, %struct.hpt_clock { i8 34, i32 -1597340383 }, %struct.hpt_clock { i8 33, i32 -1597340366 }, %struct.hpt_clock { i8 32, i32 -1597340299 }, %struct.hpt_clock { i8 12, i32 -1060469471 }, %struct.hpt_clock { i8 11, i32 -1060469454 }, %struct.hpt_clock { i8 10, i32 -1060469438 }, %struct.hpt_clock { i8 9, i32 -1060076174 }, %struct.hpt_clock { i8 8, i32 -1060076155 }, %struct.hpt_clock { i8 0, i32 18908549 }], [48 x i8] zeroinitializer }, align 32
@hpt366_33 = internal constant { [14 x %struct.hpt_clock], [48 x i8] } { [14 x %struct.hpt_clock] [%struct.hpt_clock { i8 68, i32 -1865832655 }, %struct.hpt_clock { i8 67, i32 -1865439439 }, %struct.hpt_clock { i8 66, i32 -1865767119 }, %struct.hpt_clock { i8 65, i32 -1865701583 }, %struct.hpt_clock { i8 64, i32 -1865898191 }, %struct.hpt_clock { i8 34, i32 -1597462735 }, %struct.hpt_clock { i8 33, i32 -1597462734 }, %struct.hpt_clock { i8 32, i32 -1597462633 }, %struct.hpt_clock { i8 12, i32 -1060591823 }, %struct.hpt_clock { i8 11, i32 -1060591806 }, %struct.hpt_clock { i8 10, i32 -1060067501 }, %struct.hpt_clock { i8 9, i32 -1060067421 }, %struct.hpt_clock { i8 8, i32 -1060067414 }, %struct.hpt_clock { i8 0, i32 18917287 }], [48 x i8] zeroinitializer }, align 32
@hpt36x_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UDMA\00", [27 x i8] zeroinitializer }, align 32
@bad_ata33 = internal constant { [40 x ptr], [32 x i8] } { [40 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.19, ptr @.str.45, ptr @.str.46, ptr null], [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"UDMA3\00", [26 x i8] zeroinitializer }, align 32
@bad_ata66_3 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.47, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"UDMA4\00", [26 x i8] zeroinitializer }, align 32
@bad_ata66_4 = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.47, ptr null], [32 x i8] zeroinitializer }, align 32
@hpt_dma_blacklisted._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014ata%u.%02u: %s is not supported for %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hpt_dma_blacklisted\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/ata/pata_hpt366.c\00", [38 x i8] zeroinitializer }, align 32
@hpt_dma_blacklisted._entry_ptr = internal global ptr @hpt_dma_blacklisted._entry, section ".printk_index", align 4
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 92720U8\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 92040U6\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 91360U4\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 91020U3\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90845U3\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90650U2\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 91360D8\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 91190D7\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 91020D6\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90845D5\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90680D4\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90510D3\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90340D2\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 91152D8\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 91008D7\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90845D6\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90840D6\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90720D5\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90648D5\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90576D4\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90510D4\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90432D3\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90288D2\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90256D2\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 91000D8\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90910D8\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90875D7\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90840D7\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90750D6\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90625D5\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90500D4\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 91728D8\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 91512D7\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 91303D6\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 91080D5\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90845D4\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90648D3\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90432D2\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"WDC AC310200R\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IBM-DTLA-307075\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IBM-DTLA-307060\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IBM-DTLA-307045\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IBM-DTLA-307030\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IBM-DTLA-307020\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IBM-DTLA-307015\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IBM-DTLA-305040\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IBM-DTLA-305030\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IBM-DTLA-305020\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IC35L010AVER07-0\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IC35L020AVER07-0\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IC35L030AVER07-0\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IC35L040AVER07-0\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IC35L060AVER07-0\00", [47 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.62 = private unnamed_addr constant [18 x i8] c"hpt36x_pci_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 405, i32 26 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 422, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"hpt36x\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 400, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant [12 x i8] c"info_hpt366\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 342, i32 36 }
@___asan_gen_.80 = private unnamed_addr constant [16 x i8] c"hpt366_port_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 289, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant [10 x i8] c"hpt366_40\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 54, i32 31 }
@___asan_gen_.86 = private unnamed_addr constant [10 x i8] c"hpt366_25\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 92, i32 31 }
@___asan_gen_.89 = private unnamed_addr constant [10 x i8] c"hpt366_33\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 73, i32 31 }
@___asan_gen_.92 = private unnamed_addr constant [11 x i8] c"hpt36x_sht\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 281, i32 34 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 200, i32 33 }
@___asan_gen_.98 = private unnamed_addr constant [10 x i8] c"bad_ata33\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 133, i32 27 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 202, i32 33 }
@___asan_gen_.104 = private unnamed_addr constant [12 x i8] c"bad_ata66_3\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 168, i32 27 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 204, i32 33 }
@___asan_gen_.110 = private unnamed_addr constant [12 x i8] c"bad_ata66_4\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 149, i32 27 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 183, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 134, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 134, i32 20 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 134, i32 38 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 134, i32 56 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 135, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 135, i32 20 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 136, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 136, i32 20 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 136, i32 38 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 136, i32 56 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 137, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 137, i32 20 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 137, i32 38 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 138, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 138, i32 20 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 138, i32 38 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 138, i32 56 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 139, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 139, i32 20 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 139, i32 38 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 140, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 141, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 141, i32 20 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 141, i32 38 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 142, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 142, i32 20 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 142, i32 38 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 142, i32 56 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 143, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 143, i32 20 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 143, i32 38 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 144, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 144, i32 20 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 144, i32 38 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 144, i32 56 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 145, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 145, i32 38 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 145, i32 56 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 169, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 150, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 151, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 152, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 153, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 154, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 155, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 156, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 157, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 158, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 159, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 160, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 161, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 162, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.282 = private constant [29 x i8] c"../drivers/ata/pata_hpt366.c\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 163, i32 2 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_version294, ptr @__exitcall_hpt36x_pci_driver_exit, ptr @__initcall__kmod_pata_hpt366__289_416_hpt36x_pci_driver_init6, ptr @__modver_attr, ptr @hpt36x_pci_driver_exit, ptr @hpt_dma_blacklisted._entry, ptr @hpt_dma_blacklisted._entry_ptr, ptr @hpt36x_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @hpt36x, ptr @hpt36x_init_one.info_hpt366, ptr @hpt366_port_ops, ptr @hpt366_40, ptr @hpt366_25, ptr @hpt366_33, ptr @hpt36x_sht, ptr @.str.3, ptr @bad_ata33, ptr @.str.4, ptr @bad_ata66_3, ptr @.str.5, ptr @bad_ata66_4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt36x_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt36x to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt36x_init_one.info_hpt366 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt366_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt366_40 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt366_25 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt366_33 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt36x_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bad_ata33 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bad_ata66_3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bad_ata66_4 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt_dma_blacklisted._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hpt36x_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @hpt36x_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hpt36x_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @hpt36x_pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpt36x_init_one(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 8
  %reg1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #5
  %0 = load i64, ptr @__const.hpt36x_init_one.ppi, align 8
  %1 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %ppi, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg1) #5
  %2 = ptrtoint ptr %reg1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg1, align 4, !annotation !165
  %call = tail call i32 @pcim_enable_device(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %revision = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 12
  %3 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp = icmp ugt i8 %4, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @hpt36x_init_chipset(ptr noundef %dev)
  %call4 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 64, ptr noundef nonnull %reg1) #5
  %5 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg1, align 4
  %and = lshr i32 %6, 8
  %shr = and i32 %and, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %shr)
  %switch.selectcmp = icmp eq i32 %shr, 5
  %switch.select = select i1 %switch.selectcmp, ptr @hpt366_25, ptr @hpt366_33
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %shr)
  %switch.selectcmp15 = icmp eq i32 %shr, 9
  %switch.select16 = select i1 %switch.selectcmp15, ptr @hpt366_40, ptr %switch.select
  %call6 = call i32 @ata_pci_bmdma_init_one(ptr noundef %dev, ptr noundef nonnull %ppi, ptr noundef nonnull @hpt36x_sht, ptr noundef nonnull %switch.select16, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end3 ], [ %call, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpt36x_reinit_one(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @ata_pci_device_do_resume(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @hpt36x_init_chipset(ptr noundef %dev)
  tail call void @ata_host_resume(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hpt36x_init_chipset(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %drive_fast = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %drive_fast) #5
  %0 = ptrtoint ptr %drive_fast to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %drive_fast, align 1, !annotation !165
  %call = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 12, i8 noundef zeroext 32) #5
  %call1 = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 13, i8 noundef zeroext 120) #5
  %call2 = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 62, i8 noundef zeroext 8) #5
  %call3 = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 63, i8 noundef zeroext 8) #5
  %call4 = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 81, ptr noundef nonnull %drive_fast) #5
  %1 = ptrtoint ptr %drive_fast to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %drive_fast, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %tobool.not = icmp sgt i8 %2, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and6 = and i8 %2, 127
  %call8 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 81, i8 noundef zeroext %and6) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %drive_fast) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_init_one(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpt36x_cable_detect(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  %ata66 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -136
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ata66) #5
  %4 = ptrtoint ptr %ata66 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %ata66, align 1, !annotation !165
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 90, ptr noundef nonnull %ata66) #5
  %5 = ptrtoint ptr %ata66 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ata66, align 1
  %7 = and i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %. = select i1 %tobool.not, i32 2, i32 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ata66) #5
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpt366_filter(ptr noundef %adev, i32 noundef %mask) #2 align 64 {
entry:
  %model_num.i39 = alloca [41 x i8], align 1
  %model_num.i27 = alloca [41 x i8], align 1
  %model_num.i = alloca [41 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %class = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 9
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %class, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.if.end17_crit_edge [
    i32 1, label %if.then
    i32 3, label %if.then14
  ]

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %model_num.i) #5
  %3 = call ptr @memset(ptr %model_num.i, i32 255, i32 41)
  %4 = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 25
  call void @ata_id_c_string(ptr noundef %4, ptr noundef nonnull %model_num.i, i32 noundef 27, i32 noundef 41) #5
  %call.i = call i32 @match_string(ptr noundef nonnull @bad_ata33, i32 noundef -1, ptr noundef nonnull %model_num.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %hpt_dma_blacklisted.exit, label %17

hpt_dma_blacklisted.exit:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adev, align 128
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 128
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %print_id.i, align 4
  %pmp.i = getelementptr inbounds %struct.ata_link, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pmp.i, align 4
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %13 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %devno.i, align 4
  %add.i = add i32 %14, %12
  %arrayidx.i = getelementptr ptr, ptr @bad_ata33, i32 %call.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %10, i32 noundef %add.i, ptr noundef nonnull @.str.3, ptr noundef %16) #8
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %model_num.i) #5
  %and = and i32 %mask, -1044481
  br label %18

17:                                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %model_num.i) #5
  br label %18

18:                                               ; preds = %17, %hpt_dma_blacklisted.exit
  %19 = phi i32 [ %mask, %17 ], [ %and, %hpt_dma_blacklisted.exit ]
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %model_num.i27) #5
  %20 = call ptr @memset(ptr %model_num.i27, i32 255, i32 41)
  call void @ata_id_c_string(ptr noundef %4, ptr noundef nonnull %model_num.i27, i32 noundef 27, i32 noundef 41) #5
  %call.i28 = call i32 @match_string(ptr noundef nonnull @bad_ata66_3, i32 noundef -1, ptr noundef nonnull %model_num.i27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i28)
  %cmp.i29 = icmp sgt i32 %call.i28, -1
  br i1 %cmp.i29, label %hpt_dma_blacklisted.exit38, label %33

hpt_dma_blacklisted.exit38:                       ; preds = %18
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adev, align 128
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 128
  %print_id.i30 = getelementptr inbounds %struct.ata_port, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %print_id.i30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %print_id.i30, align 4
  %pmp.i31 = getelementptr inbounds %struct.ata_link, ptr %22, i32 0, i32 1
  %27 = ptrtoint ptr %pmp.i31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pmp.i31, align 4
  %devno.i32 = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %29 = ptrtoint ptr %devno.i32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %devno.i32, align 4
  %add.i33 = add i32 %30, %28
  %arrayidx.i34 = getelementptr ptr, ptr @bad_ata66_3, i32 %call.i28
  %31 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i34, align 4
  %call4.i35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %26, i32 noundef %add.i33, ptr noundef nonnull @.str.4, ptr noundef %32) #8
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %model_num.i27) #5
  %and5 = and i32 %19, -1015809
  br label %34

33:                                               ; preds = %18
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %model_num.i27) #5
  br label %34

34:                                               ; preds = %33, %hpt_dma_blacklisted.exit38
  %35 = phi i32 [ %19, %33 ], [ %and5, %hpt_dma_blacklisted.exit38 ]
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %model_num.i39) #5
  %36 = call ptr @memset(ptr %model_num.i39, i32 255, i32 41)
  call void @ata_id_c_string(ptr noundef %4, ptr noundef nonnull %model_num.i39, i32 noundef 27, i32 noundef 41) #5
  %call.i40 = call i32 @match_string(ptr noundef nonnull @bad_ata66_4, i32 noundef -1, ptr noundef nonnull %model_num.i39) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i40)
  %cmp.i41 = icmp sgt i32 %call.i40, -1
  br i1 %cmp.i41, label %hpt_dma_blacklisted.exit50, label %49

hpt_dma_blacklisted.exit50:                       ; preds = %34
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adev, align 128
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 128
  %print_id.i42 = getelementptr inbounds %struct.ata_port, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %print_id.i42 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %print_id.i42, align 4
  %pmp.i43 = getelementptr inbounds %struct.ata_link, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %pmp.i43 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pmp.i43, align 4
  %devno.i44 = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %45 = ptrtoint ptr %devno.i44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %devno.i44, align 4
  %add.i45 = add i32 %46, %44
  %arrayidx.i46 = getelementptr ptr, ptr @bad_ata66_4, i32 %call.i40
  %47 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i46, align 4
  %call4.i47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %42, i32 noundef %add.i45, ptr noundef nonnull @.str.5, ptr noundef %48) #8
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %model_num.i39) #5
  %and10 = and i32 %35, -983041
  br label %if.end17

49:                                               ; preds = %34
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %model_num.i39) #5
  br label %if.end17

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and15 = and i32 %mask, -1048449
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %49, %hpt_dma_blacklisted.exit50, %entry.if.end17_crit_edge
  %mask.addr.2 = phi i32 [ %and15, %if.then14 ], [ %mask, %entry.if.end17_crit_edge ], [ %35, %49 ], [ %and10, %hpt_dma_blacklisted.exit50 ]
  ret i32 %mask.addr.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hpt366_set_piomode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pio_mode, align 16
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %dev.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %6 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devno.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #5
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %reg.i, align 4, !annotation !165
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not10.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not10.i.i, label %entry.do.body.i.i_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.do.body.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %13 = phi i8 [ %15, %if.end.i.i.while.body.i.i_crit_edge ], [ %12, %entry.while.body.i.i_crit_edge ]
  %clocks.011.i.i = phi ptr [ %incdec.ptr.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %10, %entry.while.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %1)
  %cmp.i.i = icmp eq i8 %13, %1
  br i1 %cmp.i.i, label %hpt366_set_mode.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.hpt_clock, ptr %clocks.011.i.i, i32 1
  %14 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %incdec.ptr.i.i, align 4
  %tobool.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.do.body.i.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %entry.do.body.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/pata_hpt366.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 129, 0\0A.popsection", ""() #5, !srcloc !166
  unreachable

hpt366_set_mode.exit:                             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %5, i32 -136
  %mul.i = shl i32 %7, 2
  %add.i = add i32 %mul.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %1)
  %cmp.i = icmp ult i8 %1, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %1)
  %cmp3.i = icmp ult i8 %1, 64
  %..i = select i1 %cmp3.i, i32 808976639, i32 805765120
  %mask.0.i = select i1 %cmp.i, i32 -1040646145, i32 %..i
  %timing.i.i = getelementptr inbounds %struct.hpt_clock, ptr %clocks.011.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %timing.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %timing.i.i, align 4
  %call9.i = call i32 @pci_read_config_dword(ptr noundef %add.ptr.i, i32 noundef %add.i, ptr noundef nonnull %reg.i) #5
  %18 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg.i, align 4
  %neg.i = xor i32 %mask.0.i, -1
  %and.i = and i32 %19, %neg.i
  %and10.i = and i32 %17, %mask.0.i
  %or.i = or i32 %and.i, %and10.i
  %and11.i = and i32 %or.i, 1073741823
  store i32 %and11.i, ptr %reg.i, align 4
  %call12.i = call i32 @pci_write_config_dword(ptr noundef %add.ptr.i, i32 noundef %add.i, i32 noundef %and11.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hpt366_set_dmamode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %0 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dma_mode, align 1
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %dev.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %6 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devno.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #5
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %reg.i, align 4, !annotation !165
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not10.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not10.i.i, label %entry.do.body.i.i_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.do.body.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %13 = phi i8 [ %15, %if.end.i.i.while.body.i.i_crit_edge ], [ %12, %entry.while.body.i.i_crit_edge ]
  %clocks.011.i.i = phi ptr [ %incdec.ptr.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %10, %entry.while.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %1)
  %cmp.i.i = icmp eq i8 %13, %1
  br i1 %cmp.i.i, label %hpt366_set_mode.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.hpt_clock, ptr %clocks.011.i.i, i32 1
  %14 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %incdec.ptr.i.i, align 4
  %tobool.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.do.body.i.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %entry.do.body.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/pata_hpt366.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 129, 0\0A.popsection", ""() #5, !srcloc !166
  unreachable

hpt366_set_mode.exit:                             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %5, i32 -136
  %mul.i = shl i32 %7, 2
  %add.i = add i32 %mul.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %1)
  %cmp.i = icmp ult i8 %1, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %1)
  %cmp3.i = icmp ult i8 %1, 64
  %..i = select i1 %cmp3.i, i32 808976639, i32 805765120
  %mask.0.i = select i1 %cmp.i, i32 -1040646145, i32 %..i
  %timing.i.i = getelementptr inbounds %struct.hpt_clock, ptr %clocks.011.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %timing.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %timing.i.i, align 4
  %call9.i = call i32 @pci_read_config_dword(ptr noundef %add.ptr.i, i32 noundef %add.i, ptr noundef nonnull %reg.i) #5
  %18 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg.i, align 4
  %neg.i = xor i32 %mask.0.i, -1
  %and.i = and i32 %19, %neg.i
  %and10.i = and i32 %17, %mask.0.i
  %or.i = or i32 %and.i, %and10.i
  %and11.i = and i32 %or.i, 1073741823
  store i32 %and11.i, ptr %reg.i, align 4
  %call12.i = call i32 @pci_write_config_dword(ptr noundef %add.ptr.i, i32 noundef %add.i, i32 noundef %and11.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_id_c_string(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

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
declare dso_local i32 @ata_pci_device_do_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !{ptr @__initcall__kmod_pata_hpt366__289_416_hpt36x_pci_driver_init6, !1, !"__initcall__kmod_pata_hpt366__289_416_hpt36x_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_hpt366.c", i32 416, i32 1}
!2 = !{ptr @__exitcall_hpt36x_pci_driver_exit, !1, !"__exitcall_hpt36x_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_hpt366.c", i32 418, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_hpt366.c", i32 419, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_hpt366.c", i32 420, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version294, !11, !"__UNIQUE_ID_version294", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_hpt366.c", i32 422, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @hpt36x_pci_driver, !17, !"hpt36x_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_hpt366.c", i32 405, i32 26}
!18 = !{ptr @hpt36x, !19, !"hpt36x", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_hpt366.c", i32 400, i32 35}
!20 = !{ptr @hpt36x_init_one.info_hpt366, !21, !"info_hpt366", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_hpt366.c", i32 342, i32 36}
!22 = !{ptr @hpt366_port_ops, !23, !"hpt366_port_ops", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_hpt366.c", i32 289, i32 35}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_hpt366.c", i32 200, i32 33}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/ata/pata_hpt366.c", i32 202, i32 33}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/ata/pata_hpt366.c", i32 204, i32 33}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/ata/pata_hpt366.c", i32 183, i32 3}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @hpt_dma_blacklisted._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @hpt_dma_blacklisted._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/ata/pata_hpt366.c", i32 134, i32 2}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/ata/pata_hpt366.c", i32 134, i32 20}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/ata/pata_hpt366.c", i32 134, i32 38}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/ata/pata_hpt366.c", i32 134, i32 56}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/ata/pata_hpt366.c", i32 135, i32 2}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/ata/pata_hpt366.c", i32 135, i32 20}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/ata/pata_hpt366.c", i32 136, i32 2}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/ata/pata_hpt366.c", i32 136, i32 20}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/ata/pata_hpt366.c", i32 136, i32 38}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/ata/pata_hpt366.c", i32 136, i32 56}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/ata/pata_hpt366.c", i32 137, i32 2}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/ata/pata_hpt366.c", i32 137, i32 20}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/ata/pata_hpt366.c", i32 137, i32 38}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/ata/pata_hpt366.c", i32 138, i32 2}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/ata/pata_hpt366.c", i32 138, i32 20}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/ata/pata_hpt366.c", i32 138, i32 38}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/ata/pata_hpt366.c", i32 138, i32 56}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/ata/pata_hpt366.c", i32 139, i32 2}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/ata/pata_hpt366.c", i32 139, i32 20}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/ata/pata_hpt366.c", i32 139, i32 38}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/ata/pata_hpt366.c", i32 140, i32 2}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/ata/pata_hpt366.c", i32 141, i32 2}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/ata/pata_hpt366.c", i32 141, i32 20}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/ata/pata_hpt366.c", i32 141, i32 38}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/ata/pata_hpt366.c", i32 142, i32 2}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/ata/pata_hpt366.c", i32 142, i32 20}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/ata/pata_hpt366.c", i32 142, i32 38}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/ata/pata_hpt366.c", i32 142, i32 56}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/ata/pata_hpt366.c", i32 143, i32 2}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/ata/pata_hpt366.c", i32 143, i32 20}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/ata/pata_hpt366.c", i32 143, i32 38}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/ata/pata_hpt366.c", i32 144, i32 2}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/ata/pata_hpt366.c", i32 144, i32 20}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/ata/pata_hpt366.c", i32 144, i32 38}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/ata/pata_hpt366.c", i32 144, i32 56}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/ata/pata_hpt366.c", i32 145, i32 2}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/ata/pata_hpt366.c", i32 145, i32 38}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/ata/pata_hpt366.c", i32 145, i32 56}
!112 = !{ptr @bad_ata33, !113, !"bad_ata33", i1 false, i1 false}
!113 = !{!"../drivers/ata/pata_hpt366.c", i32 133, i32 27}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/ata/pata_hpt366.c", i32 169, i32 2}
!116 = !{ptr @bad_ata66_3, !117, !"bad_ata66_3", i1 false, i1 false}
!117 = !{!"../drivers/ata/pata_hpt366.c", i32 168, i32 27}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/ata/pata_hpt366.c", i32 150, i32 2}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/ata/pata_hpt366.c", i32 151, i32 2}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/ata/pata_hpt366.c", i32 152, i32 2}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/ata/pata_hpt366.c", i32 153, i32 2}
!126 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/ata/pata_hpt366.c", i32 154, i32 2}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/ata/pata_hpt366.c", i32 155, i32 2}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/ata/pata_hpt366.c", i32 156, i32 2}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/ata/pata_hpt366.c", i32 157, i32 2}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/ata/pata_hpt366.c", i32 158, i32 2}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/ata/pata_hpt366.c", i32 159, i32 2}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/ata/pata_hpt366.c", i32 160, i32 2}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/ata/pata_hpt366.c", i32 161, i32 2}
!142 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/ata/pata_hpt366.c", i32 162, i32 2}
!144 = !{ptr @.str.61, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/ata/pata_hpt366.c", i32 163, i32 2}
!146 = !{ptr @bad_ata66_4, !147, !"bad_ata66_4", i1 false, i1 false}
!147 = !{!"../drivers/ata/pata_hpt366.c", i32 149, i32 27}
!148 = !{ptr @hpt366_40, !149, !"hpt366_40", i1 false, i1 false}
!149 = !{!"../drivers/ata/pata_hpt366.c", i32 54, i32 31}
!150 = !{ptr @hpt366_25, !151, !"hpt366_25", i1 false, i1 false}
!151 = !{!"../drivers/ata/pata_hpt366.c", i32 92, i32 31}
!152 = !{ptr @hpt366_33, !153, !"hpt366_33", i1 false, i1 false}
!153 = !{!"../drivers/ata/pata_hpt366.c", i32 73, i32 31}
!154 = !{ptr @hpt36x_sht, !155, !"hpt36x_sht", i1 false, i1 false}
!155 = !{!"../drivers/ata/pata_hpt366.c", i32 281, i32 34}
!156 = !{i32 1, !"wchar_size", i32 2}
!157 = !{i32 1, !"min_enum_size", i32 4}
!158 = !{i32 8, !"branch-target-enforcement", i32 0}
!159 = !{i32 8, !"sign-return-address", i32 0}
!160 = !{i32 8, !"sign-return-address-all", i32 0}
!161 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!162 = !{i32 7, !"uwtable", i32 1}
!163 = !{i32 7, !"frame-pointer", i32 2}
!164 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!165 = !{!"auto-init"}
!166 = !{i64 2155695413, i64 2155695903, i64 2155695450, i64 2155695506, i64 2155695540, i64 2155695564, i64 2155695605, i64 2155695626, i64 2155695654, i64 2155695688}
